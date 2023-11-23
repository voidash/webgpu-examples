
extern crate criterion;

use bls12_381::fp::*;
use bls12_381::g1::*;

use subtle::{Choice, ConditionallySelectable, ConstantTimeEq, CtOption};

use criterion::{criterion_group, criterion_main, Criterion};


fn g1_test_is_on_curve() {
    assert!(bool::from(G1Affine::identity().is_on_curve()));
    assert!(bool::from(G1Affine::generator().is_on_curve()));
    assert!(bool::from(G1Projective::identity().is_on_curve()));
    assert!(bool::from(G1Projective::generator().is_on_curve()));

    let z = Fp::from_raw_unchecked([
        0xba7a_fa1f_9a6f_e250,
        0xfa0f_5b59_5eaf_e731,
        0x3bdc_4776_94c3_06e7,
        0x2149_be4b_3949_fa24,
        0x64aa_6e06_49b2_078c,
        0x12b1_08ac_3364_3c3e,
    ]);

    let gen = G1Affine::generator();
    let mut test = G1Projective {
        x: gen.x * z,
        y: gen.y * z,
        z,
    };

    assert!(bool::from(test.is_on_curve()));

    test.x = z;
    assert!(!bool::from(test.is_on_curve()));
}


fn test_conditionally_select_affine() {
    let a = G1Affine::generator();
    let b = G1Affine::identity();

    assert_eq!(G1Affine::conditional_select(&a, &b, Choice::from(0u8)), a);
    assert_eq!(G1Affine::conditional_select(&a, &b, Choice::from(1u8)), b);
}


fn test_conditionally_select_projective() {
    let a = G1Projective::generator();
    let b = G1Projective::identity();

    assert_eq!(
        G1Projective::conditional_select(&a, &b, Choice::from(0u8)),
        a
    );
    assert_eq!(
        G1Projective::conditional_select(&a, &b, Choice::from(1u8)),
        b
    );
}

fn criterion_benchmark(c: &mut Criterion) {
    c.bench_function("g1 is on curve", |b| b.iter(|| g1_test_is_on_curve()));
    c.bench_function("g1 conditionally select affine", |b| b.iter(|| test_conditionally_select_affine()));
    c.bench_function("g1 conditional select projective", |b| b.iter(|| test_conditionally_select_projective()));
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);


