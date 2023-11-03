struct Fp2 {
  c0: Fp,
  c1: Fp
}

fn Fp2_one() -> Fp2 {
  return Fp2(Fp_one(), Fp_zero());
}

fn Fp2_frobenius_map(fp2: Fp2) -> Fp2{
   return Fp2_conjugate(fp2);
}

fn Fp2_conjugate(fp2: Fp2) -> Fp2 {
    return Fp2(fp2.c0, Fp_neg(fp2.c1));
}

fn Fp2_mul_by_nonresidue(fp2: Fp2) -> Fp2 {
    return Fp2(Fp_sub(fp2.c0,fp2.c1), Fp_add(fp2.c0,fp2.c1));
}

fn Fp2_lexicographically_largest(fp2: Fp2) -> u32 { 
  var is_zero = 0u;
  if fp2.c1.value[0] == 0u {
      is_zero = 1u; 
  }

  return Fp_lexicographically_largest(fp2.c1) | (Fp_lexicographically_largest(fp2.c0) & is_zero);
}

fn Fp2_add(lhs: Fp2, rhs: Fp2) -> Fp2 {
  return Fp2(Fp_add(lhs.c0, rhs.c0),Fp_add(lhs.c1, rhs.c1));
} 

fn Fp2_sub(lhs: Fp2, rhs: Fp2) -> Fp2 {
  return Fp2(Fp_sub(lhs.c0, rhs.c0),Fp_sub(lhs.c1, rhs.c1));
} 

fn Fp2_neg(fp2 : Fp2) -> Fp2 {
  return Fp2(Fp_neg(fp2.c0), Fp_neg(fp2.c1));
} 

fn Fp2_mul(lhs: Fp2, rhs: Fp2 ) -> Fp2 {
// F_{p^2} x F_{p^2} multiplication implemented with operand scanning (schoolbook)
// computes the result as:
//
//   a·b = (a_0 b_0 + a_1 b_1 β) + (a_0 b_1 + a_1 b_0)i
//
// In BLS12-381's F_{p^2}, our β is -1, so the resulting F_{p^2} element is:
//
//   c_0 = a_0 b_0 - a_1 b_1
//   c_1 = a_0 b_1 + a_1 b_0
//
// Each of these is a "sum of products", which we can compute efficiently.

  return Fp2(
    Fp2_sum_of_products(array<Fp,2>(lhs.c0, Fp_neg(lhs.c1)), array<Fp,2>(rhs.c0, rhs.c1)),
    Fp2_sum_of_products(array<Fp,2>(lhs.c0,lhs.c1), array<Fp,2>(rhs.c1, rhs.c0))
);
}


fn Fp2_square(fp2: Fp2) -> Fp2 {
// Complex squaring:
//
// v0  = c0 * c1
// c0' = (c0 + c1) * (c0 + \beta*c1) - v0 - \beta * v0
// c1' = 2 * v0
//
// In BLS12-381's F_{p^2}, our \beta is -1 so we
// can modify this formula:
//
// c0' = (c0 + c1) * (c0 - c1)
// c1' = 2 * c0 * c1

  let a = Fp_add(fp2.c0, fp2.c1);
  let b = Fp_sub(fp2.c0, fp2.c1);
  let c = Fp_add(fp2.c0, fp2.c0);

  return Fp2(
    Fp_mul(a,b),
    Fp_mul(c,fp2.c1)
  );
}
