@group(0)
@binding(0)
var<storage, read_write> v_indices: array<u32>; // this is used as both input and output for convenience

struct Fp {
    value: array<u32,12>
}

// p = 4002409555221667393417789825735904156556882819939007885332058136124031650490837864442687629129015664037894272559787
// little endian
// for i in range(381,0,-16):
//     modulus.append(hex(int(bin(p)[2:][i-16 if (i-16) > 0 else 0 :i],base=2))))
// 
const MODULUS = array<u32,12>(
    0xffffaaabu,
    0xb9feffffu,
    0xb153ffffu,
    0x1eabfffeu,
    0xf6b0f624u,
    0x6730d2a0u,
    0xf38512bfu,
    0x64774b84u,
    0x434bacd7u,
    0x4b1ba7b6u,
    0x397fe69au,
    0x1a0111eau,
);


// 2 ^ 384 mod p
const R = Fp(array<u32,12>(
    0x0002fffdu,
    0x76090000u,
    0xc40c0002u,
    0xebf4000bu,
    0x53c758bau,
    0x5f489857u,
    0x70525745u,
    0x77ce5853u,
    0xa256ec6du,
    0x5c071a97u,
    0xfa80e493u,
    0x15f65ec3u
));


// 2 ^ (384*2) mod p
const R2 = Fp(array<u32,12>(
    0x1c341746u,
    0xf4df1f34u,
    0x09d104f1u,
    0x0a76e6a6u,
    0x4c95b6d5u,
    0x8de5476cu,
    0x939d83c0u,
    0x67eb88a9u,
    0xb519952du,
    0x9a793e85u,
    0x92cae3aau,
    0x11988fe5u,
));


// 2 ^ (384*3) mod p
const R3 = Fp(array<u32,12>(
    0xd94ca1e0u,
    0xed48ac6bu,
    0x03a7adf8u,
    0x315f831eu,
    0x615e29ddu,
    0x9a53352au,
    0x921e1761u,
    0x34c04e5eu,
    0x65724728u,
    0x2512d435u,
    0x91755d4du,
    0x0aa63460u,
));






// -(p^{-1} mod 2 ^ 32) mod 2 ^ 32
//  p with respect to 2 ^32 can be found with extended Eucledian algorithm
// p * p ^ {-1} + 2 ^ 32 * n' = 1 as gcd(p,2^32) = 1

// >>> gcdExtended(p,2**32)
// (1, 196611, -183218565085364330533720803313833161286265889208537591468314938759776294891409139001262666995330922939384922111)

// because inverse in montgomery form is - p ^ {-1} mod 2 ^ 32 
// >>> a = -196611

// since the modulo field 2 ^32 doesn't have negative numbers you have to get its equivalent positive representation
// i.e add by 2^32 until you get positive number 
// >>> while a < 0:
// ...     a += 2 ** 32
// ... 
// >>> a
// 4294770685
// >>> hex(a)
// '0xfffcfffd'
const INV: u32 = 0xfffcfffdu; 


// multiply operation
fn multiply(a: u32, b: u32) -> array<u32, 2> {
  // Split a and b into lower and upper 16 bits
    let a_low: u32 = a & 0xFFFFu;
    let a_high: u32 = a >> 16u;
    let b_low: u32 = b & 0xFFFFu;
    let b_high: u32 = b >> 16u;

  // Perform the multiplication
    let product_low: u32 = a_low * b_low;
    let product_mid: u32 = (a_low * b_high) + (a_high * b_low);
    let product_high: u32 = a_high * b_high;

  // Carry propagation
    let carry: u32 = (product_low >> 16u) + (product_mid & 0xFFFFu);
    let carry_high: u32 = (product_high >> 16u) + (product_mid >> 16u) + (carry >> 16u);

  // Assemble the result
    let result_low: u32 = (carry << 16u) | (product_low & 0xFFFFu);
    let result_high: u32 = carry_high + product_high + 1u;

    return array<u32, 2>(result_high, result_low);
}

// 32 bit addition
fn sum(a: u32, b: u32) -> array<u32,2> {
    let a_31bit = a & 0x7fffffffu;
    let b_31bit = b & 0x7fffffffu;

    let sum = a_31bit + b_31bit;

    let msb_a = a >> 31u;
    let msb_b = b >> 31u;
    let msb_sum = sum >> 31u;
    let carry = (msb_a & msb_b) | (msb_a & msb_sum) | (msb_b & msb_sum);

    return array<u32,2>(carry, sum);
}


// a + (b * c ) + carry 
// returns new result and new carry over
fn mac(a: u32, b: u32, c: u32, carry: u32) -> array<u32,2> {
    let bc_multiply = multiply(b, c);
    let bc_total = sum(bc_multiply[0], carry);


    let a_bc_sum = sum(a, bc_total[0]);

    let carry = bc_total[1] + bc_multiply[1] + a_bc_sum[1];

    return array<u32,2>(carry, a_bc_sum[0]);
}

// a + b + carry
// returns the result and new carry over
fn adc(a: u32, b: u32, carry: u32) -> array<u32,2> {
    let ab = sum(a, b);
    let abc = sum(ab[0], carry);

    let carry = ab[1] + abc[1];

    return array<u32,2>(carry, abc[0]);
}

// https://shorturl.at/mCIPT
// a - (b + borrow)
fn sbb(a: u32, b: u32, borrow: u32) -> array<u32,2> {
    let b32: u32 = (borrow >> 31u) & 1u;
    let borr = b + borrow;
    let ret = a - borr;
    var ret_borr = 0u;
    if a > b {
        ret_borr = 4294967295u;
    }
    return array<u32,2>(ret, ret_borr);
}

fn montgomery_reduce(
    // n = 12 , 2*n-1 = 23
    t0: u32,
    t1: u32,
    t2: u32,
    t3: u32,
    t4: u32,
    t5: u32,
    t6: u32,
    t7: u32,
    t8: u32,
    t9: u32,
    t10: u32,
    t11: u32,
    t12: u32,
    t13: u32,
    t14: u32,
    t15: u32,
    t16: u32,
    t17: u32,
    t18: u32,
    t19: u32,
    t20: u32,
    t21: u32,
    t22: u32,
    t23: u32,
) {
    //for i = 0 to n-1 do
    //  ki <- (ti*N') mod b
    //  t <- t + kiNb^{i}
    // t <- t/R (probably will be shift left)
    // if t >= N then t <- t-N
    // return t

    var k = t0 * INV;
    var f = mac(t0, k, MODULUS[0], 0u);
    var r1 = mac(t1, k, MODULUS[1], f[1]);
    var r2 = mac(t2, k, MODULUS[2], r1[1]);
    var r3 = mac(t3, k, MODULUS[3], r2[1]);
    var r4 = mac(t4, k, MODULUS[4], r3[1]);
    var r5 = mac(t5, k, MODULUS[5], r4[1]);
    var r6 = mac(t6, k, MODULUS[6], r5[1]);
    var r7 = mac(t7, k, MODULUS[7], r6[1]);
    var r8 = mac(t8, k, MODULUS[8], r7[1]);
    var r9 = mac(t9, k, MODULUS[9], r8[1]);
    var r10 = mac(t10, k, MODULUS[10], r9[1]);
    var r11 = mac(t11, k, MODULUS[11], r10[1]);

    var r12 = adc(t12, 0u, r11[1]);
    var rem_carry = r12[1];

    k = r1[0] * INV;
    f = mac(r1[0], k, MODULUS[0], 0u);
    r2 = mac(r2[0], k, MODULUS[1], f[1]);
    r3 = mac(r3[0], k, MODULUS[2], r2[1]);
    r4 = mac(r4[0], k, MODULUS[3], r3[1]);
    r5 = mac(r5[0], k, MODULUS[4], r4[1]);
    r6 = mac(r6[0], k, MODULUS[5], r5[1]);
    r7 = mac(r7[0], k, MODULUS[6], r6[1]);
    r8 = mac(r8[0], k, MODULUS[7], r7[1]);
    r9 = mac(r9[0], k, MODULUS[8], r8[1]);
    r10 = mac(r10[0], k, MODULUS[9], r9[1]);
    r11 = mac(r11[0], k, MODULUS[10], r10[1]);
    r12 = mac(r12[0], k, MODULUS[11], r11[1]);

    var r13 = adc(t13, rem_carry, r12[1]);
    rem_carry = r13[1];

    k = r2[0] * INV;
    f = mac(r2[0], k, MODULUS[0], 0u);
    r3 = mac(r3[0], k, MODULUS[1], f[1]);
    r4 = mac(r4[0], k, MODULUS[2], r3[1]);
    r5 = mac(r5[0], k, MODULUS[3], r4[1]);
    r6 = mac(r6[0], k, MODULUS[4], r5[1]);
    r7 = mac(r7[0], k, MODULUS[5], r6[1]);
    r8 = mac(r8[0], k, MODULUS[6], r7[1]);
    r9 = mac(r9[0], k, MODULUS[7], r8[1]);
    r10 = mac(r10[0], k, MODULUS[8], r9[1]);
    r11 = mac(r11[0], k, MODULUS[9], r10[1]);
    r12 = mac(r12[0], k, MODULUS[10], r11[1]);
    r13 = mac(r13[0], k, MODULUS[11], r12[1]);

    var r14 = adc(t14, rem_carry, r13[1]);
    rem_carry = r14[1];

    k = r3[0] * INV;
    f = mac(r3[0], k, MODULUS[0], 0u);
    r4 = mac(r4[0], k, MODULUS[1], f[1]);
    r5 = mac(r5[0], k, MODULUS[2], r4[1]);
    r6 = mac(r6[0], k, MODULUS[3], r5[1]);
    r7 = mac(r7[0], k, MODULUS[4], r6[1]);
    r8 = mac(r8[0], k, MODULUS[5], r7[1]);
    r9 = mac(r9[0], k, MODULUS[6], r8[1]);
    r10 = mac(r10[0], k, MODULUS[7], r9[1]);
    r11 = mac(r11[0], k, MODULUS[8], r10[1]);
    r12 = mac(r12[0], k, MODULUS[9], r11[1]);
    r13 = mac(r13[0], k, MODULUS[10], r12[1]);
    r14 = mac(r14[0], k, MODULUS[11], r13[1]);

    var r15 = adc(t15, rem_carry, r14[1]);
    rem_carry = r15[1];

    k = r4[0] * INV;
    f = mac(r4[0], k, MODULUS[0], 0u);
    r5 = mac(r5[0], k, MODULUS[1], f[1]);
    r6 = mac(r6[0], k, MODULUS[2], r5[1]);
    r7 = mac(r7[0], k, MODULUS[3], r6[1]);
    r8 = mac(r8[0], k, MODULUS[4], r7[1]);
    r9 = mac(r9[0], k, MODULUS[5], r8[1]);
    r10 = mac(r10[0], k, MODULUS[6], r9[1]);
    r11 = mac(r11[0], k, MODULUS[7], r10[1]);
    r12 = mac(r12[0], k, MODULUS[8], r11[1]);
    r13 = mac(r13[0], k, MODULUS[9], r12[1]);
    r14 = mac(r14[0], k, MODULUS[10], r13[1]);
    r15 = mac(r15[0], k, MODULUS[11], r14[1]);

    var r16 = adc(t16, rem_carry, r15[1]);
    rem_carry = r16[1];


    k = r5[0] * INV;
    f = mac(r5[0], k, MODULUS[0], 0u);
    r6 = mac(r6[0], k, MODULUS[1], r5[1]);
    r7 = mac(r7[0], k, MODULUS[2], r6[1]);
    r8 = mac(r8[0], k, MODULUS[3], r7[1]);
    r9 = mac(r9[0], k, MODULUS[4], r8[1]);
    r10 = mac(r10[0], k, MODULUS[5], r9[1]);
    r11 = mac(r11[0], k, MODULUS[6], r10[1]);
    r12 = mac(r12[0], k, MODULUS[7], r11[1]);
    r13 = mac(r13[0], k, MODULUS[8], r12[1]);
    r14 = mac(r14[0], k, MODULUS[9], r13[1]);
    r15 = mac(r15[0], k, MODULUS[10], r14[1]);
    r16 = mac(r16[0], k, MODULUS[11], r15[1]);

    var r17 = adc(t17, rem_carry, r16[1]);
    rem_carry = r17[1];


    k = r6[0] * INV;
    f = mac(r6[0], k, MODULUS[0], 0u);
    r7 = mac(r7[0], k, MODULUS[1], r6[1]);
    r8 = mac(r8[0], k, MODULUS[2], r7[1]);
    r9 = mac(r9[0], k, MODULUS[3], r8[1]);
    r10 = mac(r10[0], k, MODULUS[4], r9[1]);
    r11 = mac(r11[0], k, MODULUS[5], r10[1]);
    r12 = mac(r12[0], k, MODULUS[6], r11[1]);
    r13 = mac(r13[0], k, MODULUS[7], r12[1]);
    r14 = mac(r14[0], k, MODULUS[8], r13[1]);
    r15 = mac(r15[0], k, MODULUS[9], r14[1]);
    r16 = mac(r16[0], k, MODULUS[10], r15[1]);
    r17 = mac(r17[0], k, MODULUS[11], r16[1]);

    var r18 = adc(t18, rem_carry, r17[1]);
    rem_carry = r18[1];

    k = r7[0] * INV;
    f = mac(r7[0], k, MODULUS[0], 0u);
    r8 = mac(r8[0], k, MODULUS[1], r7[1]);
    r9 = mac(r9[0], k, MODULUS[2], r8[1]);
    r10 = mac(r10[0], k, MODULUS[3], r9[1]);
    r11 = mac(r11[0], k, MODULUS[4], r10[1]);
    r12 = mac(r12[0], k, MODULUS[5], r11[1]);
    r13 = mac(r13[0], k, MODULUS[6], r12[1]);
    r14 = mac(r14[0], k, MODULUS[7], r13[1]);
    r15 = mac(r15[0], k, MODULUS[8], r14[1]);
    r16 = mac(r16[0], k, MODULUS[9], r15[1]);
    r17 = mac(r17[0], k, MODULUS[10], r16[1]);
    r18 = mac(r18[0], k, MODULUS[11], r17[1]);

    var r19 = adc(t19, rem_carry, r18[1]);
    rem_carry = r19[1];

    k = r8[0] * INV;
    f = mac(r8[0], k, MODULUS[0], 0u);
    r9 = mac(r9[0], k, MODULUS[1], r8[1]);
    r10 = mac(r10[0], k, MODULUS[2], r9[1]);
    r11 = mac(r11[0], k, MODULUS[3], r10[1]);
    r12 = mac(r12[0], k, MODULUS[4], r11[1]);
    r13 = mac(r13[0], k, MODULUS[5], r12[1]);
    r14 = mac(r14[0], k, MODULUS[6], r13[1]);
    r15 = mac(r15[0], k, MODULUS[7], r14[1]);
    r16 = mac(r16[0], k, MODULUS[8], r15[1]);
    r17 = mac(r17[0], k, MODULUS[9], r16[1]);
    r18 = mac(r18[0], k, MODULUS[10], r17[1]);
    r19 = mac(r19[0], k, MODULUS[11], r18[1]);

    var r20 = adc(t20, rem_carry, r19[1]);
    rem_carry = r20[1];

    k = r9[0] * INV;
    f = mac(r9[0], k, MODULUS[0], 0u);
    r10 = mac(r10[0], k, MODULUS[1], r9[1]);
    r11 = mac(r11[0], k, MODULUS[2], r10[1]);
    r12 = mac(r12[0], k, MODULUS[3], r11[1]);
    r13 = mac(r13[0], k, MODULUS[4], r12[1]);
    r14 = mac(r14[0], k, MODULUS[5], r13[1]);
    r15 = mac(r15[0], k, MODULUS[6], r14[1]);
    r16 = mac(r16[0], k, MODULUS[7], r15[1]);
    r17 = mac(r17[0], k, MODULUS[8], r16[1]);
    r18 = mac(r18[0], k, MODULUS[9], r17[1]);
    r19 = mac(r19[0], k, MODULUS[10], r18[1]);
    r20 = mac(r20[0], k, MODULUS[11], r19[1]);

    var r21 = adc(t20, rem_carry, r20[1]);
    rem_carry = r21[1];

    k = r10[0] * INV;
    f = mac(r10[0], k, MODULUS[0], 0u);
    r11 = mac(r11[0], k, MODULUS[1], r10[1]);
    r12 = mac(r12[0], k, MODULUS[2], r11[1]);
    r13 = mac(r13[0], k, MODULUS[3], r12[1]);
    r14 = mac(r14[0], k, MODULUS[4], r13[1]);
    r15 = mac(r15[0], k, MODULUS[5], r14[1]);
    r16 = mac(r16[0], k, MODULUS[6], r15[1]);
    r17 = mac(r17[0], k, MODULUS[7], r16[1]);
    r18 = mac(r18[0], k, MODULUS[8], r17[1]);
    r19 = mac(r19[0], k, MODULUS[9], r18[1]);
    r20 = mac(r20[0], k, MODULUS[10], r19[1]);
    r21 = mac(r21[0], k, MODULUS[11], r20[1]);

    var r22 = adc(t22, rem_carry, r21[1]);
    rem_carry = r22[1];


    k = r11[0] * INV;
    f = mac(r11[0], k, MODULUS[0], 0u);
    r12 = mac(r12[0], k, MODULUS[1], r11[1]);
    r13 = mac(r13[0], k, MODULUS[2], r12[1]);
    r14 = mac(r14[0], k, MODULUS[3], r13[1]);
    r15 = mac(r15[0], k, MODULUS[4], r14[1]);
    r16 = mac(r16[0], k, MODULUS[5], r15[1]);
    r17 = mac(r17[0], k, MODULUS[6], r16[1]);
    r18 = mac(r18[0], k, MODULUS[7], r17[1]);
    r19 = mac(r19[0], k, MODULUS[8], r18[1]);
    r20 = mac(r20[0], k, MODULUS[9], r19[1]);
    r21 = mac(r21[0], k, MODULUS[10], r20[1]);
    r22 = mac(r22[0], k, MODULUS[11], r21[1]);

    var r23 = adc(t23, rem_carry, r22[1]);

    // implement subtract p
}

fn subtract_p(data: Fp) -> Fp {
    let r1_a = sbb(data.value[0], MODULUS[0], 0u);
    let r2_a = sbb(data.value[1], MODULUS[1], 0u);
    let r3_a = sbb(data.value[2], MODULUS[2], 0u);
    let r4_a = sbb(data.value[3], MODULUS[3], 0u);
    let r5_a = sbb(data.value[4], MODULUS[4], 0u);
    let r6_a = sbb(data.value[5], MODULUS[5], 0u);
    let r7_a = sbb(data.value[6], MODULUS[6], 0u);
    let r8_a = sbb(data.value[7], MODULUS[7], 0u);
    let r9_a = sbb(data.value[8], MODULUS[8], 0u);
    let r10_a = sbb(data.value[9], MODULUS[9], 0u);
    let r11_a = sbb(data.value[10], MODULUS[10], 0u);
    let r11_a = sbb(data.value[11], MODULUS[11], 0u);

    var borrow_inv: u32 = 1u;
    if r11_a[1] == 1u {
        borrow_inv = 0u;
    }

    let r0 = (data.value[0] & r11_a[1]) | (r1_a[0] & ~r11_a[1]);
    let r1 = (data.value[0] & r11_a[1]) | (r1_a[0] & ~r11_a[1]);
    let r2 = (data.value[0] & r11_a[1]) | (r1_a[0] & ~r11_a[1]);
    let r3 = (data.value[0] & r11_a[1]) | (r1_a[0] & ~r11_a[1]);
    let r4 = (data.value[0] & r11_a[1]) | (r1_a[0] & ~r11_a[1]);
    let r5 = (data.value[0] & r11_a[1]) | (r1_a[0] & ~r11_a[1]);
    let r6 = (data.value[0] & r11_a[1]) | (r1_a[0] & ~r11_a[1]);
    let r7 = (data.value[0] & r11_a[1]) | (r1_a[0] & ~r11_a[1]);
    let r8 = (data.value[0] & r11_a[1]) | (r1_a[0] & ~r11_a[1]);
    let r9 = (data.value[0] & r11_a[1]) | (r1_a[0] & ~r11_a[1]);
    let r10 = (data.value[0] & r11_a[1]) | (r1_a[0] & ~r11_a[1]);
    let r11 = (data.value[0] & r11_a[1]) | (r1_a[0] & ~r11_a[1]);

    return Fp(array<u32,12>(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11));
}


@compute
@workgroup_size(64,1,1)
fn main(@builtin(global_invocation_id) global_id: vec3<u32>) {
    v_indices[global_id.x] = v_indices[global_id.x];
}
