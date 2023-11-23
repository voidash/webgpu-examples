extern crate criterion;
use bls12_381::fp::*;

use bls12_381::util::*;
use criterion::{criterion_group, criterion_main, Criterion};

    

fn bench_adc() {
   let a = adc(0x0397_a383_2017_0cd4,0x734c_1b2c_9e76_1d30,0x095a_3c6b_22a7_fcfc);
   assert_eq!(a,a);
}

fn bench_mac() {
   let a = mac(0x0397_a383_2017_0cd4,0x734c_1b2c_9e76_1d30,0x095a_3c6b_22a7_fcfc,1);
   assert_eq!(a,a);
}

fn fp_multiply() {
    let a = Fp([
        0x0397_a383_2017_0cd4,
        0x734c_1b2c_9e76_1d30,
        0x5ed2_55ad_9a48_beb5,
        0x095a_3c6b_22a7_fcfc,
        0x2294_ce75_d4e2_6a27,
        0x1333_8bd8_7001_1ebb,
    ]);
    let b = Fp([
        0xb9c3_c7c5_b119_6af7,
        0x2580_e208_6ce3_35c1,
        0xf49a_ed3d_8a57_ef42,
        0x41f2_81e4_9846_e878,
        0xe076_2346_c384_52ce,
        0x0652_e893_26e5_7dc0,
    ]);
    let c = Fp([
        0xf96e_f3d7_11ab_5355,
        0xe8d4_59ea_00f1_48dd,
        0x53f7_354a_5f00_fa78,
        0x9e34_a4f3_125c_5f83,
        0x3fbe_0c47_ca74_c19e,
        0x01b0_6a8b_bd4a_dfe4,
    ]);

    assert_eq!(a * b, c);
}

fn fp_subtract() {
    let a = Fp([
        0x5360_bb59_7867_8032,
        0x7dd2_75ae_799e_128e,
        0x5c5b_5071_ce4f_4dcf,
        0xcdb2_1f93_078d_bb3e,
        0xc323_65c5_e73f_474a,
        0x115a_2a54_89ba_be5b,
    ]);
    let b = Fp([
        0x9fd2_8773_3d23_dda0,
        0xb16b_f2af_738b_3554,
        0x3e57_a75b_d3cc_6d1d,
        0x900b_c0bd_627f_d6d6,
        0xd319_a080_efb2_45fe,
        0x15fd_caa4_e4bb_2091,
    ]);
    let c = Fp([
        0x6d8d_33e6_3b43_4d3d,
        0xeb12_82fd_b766_dd39,
        0x8534_7bb6_f133_d6d5,
        0xa21d_aa5a_9892_f727,
        0x3b25_6cfb_3ad8_ae23,
        0x155d_7199_de7f_8464,
    ]);

    assert_eq!(a - b, c);

}

fn criterion_benchmark(c: &mut Criterion) {
    c.bench_function("Bigint adc", |b| b.iter(|| bench_adc()));
    c.bench_function("Bigint mac", |b| b.iter(|| bench_mac()));
    c.bench_function("Fp multiply", |b| b.iter(|| fp_multiply()));
    c.bench_function("Fp subtract", |b| b.iter(|| fp_subtract()));
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);

