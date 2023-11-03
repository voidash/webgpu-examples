// this is fp2.wgsl

struct Fp2 {
  c0 : Fp,
  c1: Fp
}

fn Fp2_frobenius_map(fp2: Fp2) -> Fp2{
    
}

fn Fp2_conjugate(fp2: Fp2) -> Fp2 {
    return Fp2(c0, Fp_neg());
}



