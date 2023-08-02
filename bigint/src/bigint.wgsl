@group(0)
@binding(0)
var<storage, read_write> v_indices: array<u32>; // this is used as both input and output for convenience

@group(0)
@binding(1)
var<storage, read_write> v_indices2: array<u32>; // this is used as both input and output for convenience

// multiply operation
fn multiply(a: u32, b: u32) -> array<u32, 2> {
  // Split a and b into lower and upper 16 bits
    let a_low: u32 = a & 0xFFFFu;
    let a_high: u32 = a >> 16u;
    let b_low: u32 = b & 0xFFFFu;
    let b_high: u32 = b >> 16u;

    //      16 16
    //    x 16 16
    //     --------
    // t2   t1  t0
    // t22  t11  X
    //-------------  
    // t3 (t1+t2) t0

    var t0 = a_low * b_low;
    var t1 = a_low * b_high + (t0 >> 16u);
    var t2 = t1 >> 16u;

    t1 = (t1 & 0xFFFFu) + a_high * b_low;
    t2 = t2 + a_high * b_high + (t1 >> 16u);


    let f = ((t1 & 0xffffu) << 16u) + (t0 & 0xffffu);

    return array<u32, 2>(f, t2);
}

// 32 bit addition
fn sum(a: u32, b: u32) -> array<u32,2> {
    let a_31bit = a & 0x7fffffffu;
    let b_31bit = b & 0x7fffffffu;

    let sum = a + b;

    let sum_31bit = a_31bit + b_31bit;

    let msb_a = a >> 31u;
    let msb_b = b >> 31u;
    let msb_sum = sum_31bit >> 31u;
    let carry = (msb_a & msb_b) | (msb_a & msb_sum) | (msb_b & msb_sum);

    return array<u32,2>(sum, carry);
}

fn bigint_sum() {
}

@compute
@workgroup_size(1,1,1)
fn multiply_test() {
    let a = multiply(v_indices[0], v_indices[1]);
    v_indices[0] = a[0];
    v_indices[1] = a[1];
}

@compute
@workgroup_size(1,1,1)
fn sum_test() {
    let a = multiply(v_indices[0], v_indices[1]);
    v_indices[0] = a[0];
    v_indices[1] = a[1];
}

@compute
@workgroup_size(1,1,1)
fn bigint_sum_test() {
    let l1_len = v_indices[0];

    // bigint_sum(v_indices[0], v_indices[1]);
}


