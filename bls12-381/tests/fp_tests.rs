use fp::run;

#[test]
fn multiply_test() {
    let c = pollster::block_on(run(&vec![9, 4], "multiply_test"));
    // 9 * 4
    assert!(c[0] == 36);
    // no carry
    assert!(c[1] == 0);
}

#[test]
fn adc_test() {
    // a + b + carry
    let c = pollster::block_on(run(&vec![1, 2, 4], "adc_test"));
    // 1 + 2 + 4
    assert!(c[0] == 7);
    // no carry
    assert!(c[1] == 0);
}

#[test]
fn mac_test() {
    // a + (b*c) + carry
    let c = pollster::block_on(run(&vec![1, 2, 4, 5], "mac_test"));
    // 1 + (2 * 4) + 5;
    assert!(c[0] == 14);
    // no carry
    assert!(c[1] == 0);
}

#[test]
fn sbb_test() {
    // a - (b+borrow)
    let c = pollster::block_on(run(&vec![1, 2, 1], "sbb_test"));
    // 1 - (2 + 1);
    // wrapping subtraction
    assert!(c[0] == 4294967294);
    // borrow of u32::MAX
    assert!(c[1] == 4294967295);
}

#[test]
fn add_test() {
    let a: Vec<u32> = vec![
        0x78678032, 0x5360bb59, 0x799e128e, 0x7dd275ae, 0xce4f4dcf, 0x5c5b5071, 0x78dbb3e,
        0xcdb21f93, 0xe73f474a, 0xc32365c5, 0x89babe5b, 0x115a2a54,
    ];

    let b: Vec<u32> = vec![
        0x3d23dda0, 0x9fd28773, 0x738b3554, 0xb16bf2af, 0xd3cc6d1d, 0x3e57a75b, 0x627fd6d6,
        0x900bc0bd, 0xefb245fe, 0xd319a080, 0xe4bb2091, 0x15fdcaa4,
    ];

    let c: Vec<u32> = vec![
        0xb58bb327, 0x393442cc, 0x3bd547e3, 0x1092685f, 0xab6ac4c9, 0x3382252c, 0x76887f55,
        0xf94694cb, 0x93a5e071, 0x4b215e90, 0x34f5f853, 0xd56e30f,
    ];
}
