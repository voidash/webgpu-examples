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
    // a - (b+borrow) + carry
    let c = pollster::block_on(run(&vec![1, 2, 1], "sbb_test"));
    // 1 - (2 + 1);
    // wrapping subtraction
    assert!(c[0] == 4294967294);
    // borrow of u32::MAX
    assert!(c[1] == 4294967295);
}
