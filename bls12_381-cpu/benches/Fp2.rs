
extern crate criterion;
use bls12_381::fp2::*;
use bls12_381::fp::*;

use criterion::{criterion_group, criterion_main, Criterion};

fn fp2_add() {
    let a = Fp2 {
        c0: Fp::from_raw_unchecked([
            0xc9a2_1831_63ee_70d4,
            0xbc37_70a7_196b_5c91,
            0xa247_f8c1_304c_5f44,
            0xb01f_c2a3_726c_80b5,
            0xe1d2_93e5_bbd9_19c9,
            0x04b7_8e80_020e_f2ca,
        ]),
        c1: Fp::from_raw_unchecked([
            0x952e_a446_0462_618f,
            0x238d_5edd_f025_c62f,
            0xf6c9_4b01_2ea9_2e72,
            0x03ce_24ea_c1c9_3808,
            0x0559_50f9_45da_483c,
            0x010a_768d_0df4_eabc,
        ]),
    };
    let b = Fp2 {
        c0: Fp::from_raw_unchecked([
            0xa1e0_9175_a4d2_c1fe,
            0x8b33_acfc_204e_ff12,
            0xe244_15a1_1b45_6e42,
            0x61d9_96b1_b6ee_1936,
            0x1164_dbe8_667c_853c,
            0x0788_557a_cc7d_9c79,
        ]),
        c1: Fp::from_raw_unchecked([
            0xda6a_87cc_6f48_fa36,
            0x0fc7_b488_277c_1903,
            0x9445_ac4a_dc44_8187,
            0x0261_6d5b_c909_9209,
            0xdbed_4677_2db5_8d48,
            0x11b9_4d50_76c7_b7b1,
        ]),
    };
    let c = Fp2 {
        c0: Fp::from_raw_unchecked([
            0x6b82_a9a7_08c1_32d2,
            0x476b_1da3_39ba_5ba4,
            0x848c_0e62_4b91_cd87,
            0x11f9_5955_295a_99ec,
            0xf337_6fce_2255_9f06,
            0x0c3f_e3fa_ce8c_8f43,
        ]),
        c1: Fp::from_raw_unchecked([
            0x6f99_2c12_73ab_5bc5,
            0x3355_1366_17a1_df33,
            0x8b0e_f74c_0aed_aff9,
            0x062f_9246_8ad2_ca12,
            0xe146_9770_738f_d584,
            0x12c3_c3dd_84bc_a26d,
        ]),
    };

    assert_eq!(a + b, c);
}
fn fp2_subtract() {
    let a = Fp2 {
        c0: Fp::from_raw_unchecked([
            0xc9a2_1831_63ee_70d4,
            0xbc37_70a7_196b_5c91,
            0xa247_f8c1_304c_5f44,
            0xb01f_c2a3_726c_80b5,
            0xe1d2_93e5_bbd9_19c9,
            0x04b7_8e80_020e_f2ca,
        ]),
        c1: Fp::from_raw_unchecked([
            0x952e_a446_0462_618f,
            0x238d_5edd_f025_c62f,
            0xf6c9_4b01_2ea9_2e72,
            0x03ce_24ea_c1c9_3808,
            0x0559_50f9_45da_483c,
            0x010a_768d_0df4_eabc,
        ]),
    };
    let b = Fp2 {
        c0: Fp::from_raw_unchecked([
            0xa1e0_9175_a4d2_c1fe,
            0x8b33_acfc_204e_ff12,
            0xe244_15a1_1b45_6e42,
            0x61d9_96b1_b6ee_1936,
            0x1164_dbe8_667c_853c,
            0x0788_557a_cc7d_9c79,
        ]),
        c1: Fp::from_raw_unchecked([
            0xda6a_87cc_6f48_fa36,
            0x0fc7_b488_277c_1903,
            0x9445_ac4a_dc44_8187,
            0x0261_6d5b_c909_9209,
            0xdbed_4677_2db5_8d48,
            0x11b9_4d50_76c7_b7b1,
        ]),
    };
    let c = Fp2 {
        c0: Fp::from_raw_unchecked([
            0xe1c0_86bb_bf1b_5981,
            0x4faf_c3a9_aa70_5d7e,
            0x2734_b5c1_0bb7_e726,
            0xb2bd_7776_af03_7a3e,
            0x1b89_5fb3_98a8_4164,
            0x1730_4aef_6f11_3cec,
        ]),
        c1: Fp::from_raw_unchecked([
            0x74c3_1c79_9519_1204,
            0x3271_aa54_79fd_ad2b,
            0xc9b4_7157_4915_a30f,
            0x65e4_0313_ec44_b8be,
            0x7487_b238_5b70_67cb,
            0x0952_3b26_d0ad_19a4,
        ]),
    };

    assert_eq!(a - b, c);
}

fn fp2_negation() {
    let a = Fp2 {
        c0: Fp::from_raw_unchecked([
            0xc9a2_1831_63ee_70d4,
            0xbc37_70a7_196b_5c91,
            0xa247_f8c1_304c_5f44,
            0xb01f_c2a3_726c_80b5,
            0xe1d2_93e5_bbd9_19c9,
            0x04b7_8e80_020e_f2ca,
        ]),
        c1: Fp::from_raw_unchecked([
            0x952e_a446_0462_618f,
            0x238d_5edd_f025_c62f,
            0xf6c9_4b01_2ea9_2e72,
            0x03ce_24ea_c1c9_3808,
            0x0559_50f9_45da_483c,
            0x010a_768d_0df4_eabc,
        ]),
    };
    let b = Fp2 {
        c0: Fp::from_raw_unchecked([
            0xf05c_e7ce_9c11_39d7,
            0x6274_8f57_97e8_a36d,
            0xc4e8_d9df_c664_96df,
            0xb457_88e1_8118_9209,
            0x6949_13d0_8772_930d,
            0x1549_836a_3770_f3cf,
        ]),
        c1: Fp::from_raw_unchecked([
            0x24d0_5bb9_fb9d_491c,
            0xfb1e_a120_c12e_39d0,
            0x7067_879f_c807_c7b1,
            0x60a9_269a_31bb_dab6,
            0x45c2_56bc_fd71_649b,
            0x18f6_9b5d_2b8a_fbde,
        ]),
    };

    assert_eq!(-a, b);
}

fn criterion_benchmark(c: &mut Criterion) {
    c.bench_function("Fp2 multiply", |b| b.iter(|| fp2_add()));
    c.bench_function("Fp2 subtract", |b| b.iter(|| fp2_subtract()));
    c.bench_function("Fp2 negate", |b| b.iter(|| fp2_negation()));
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);


