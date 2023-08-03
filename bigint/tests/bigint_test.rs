
#[test]
fn bigint_conversion_test() {
    use bigint_wgpu::bigint_convert;
    let value = "23423423423423423423423423423";
    println!("{:?}", bigint_convert(value));
}

#[test]
fn bigint_sum_test() {
    use bigint_wgpu::sum;
    let lhs = "13423423423423423423423423423";
    let rhs = "12234";
    let val = sum(lhs,rhs);
}