
#[test]
fn bigint_conversion_test() {
    use bigint_wgpu::bigint_convert;
    let value = "23423423423423423423423423423";
    println!("{:?}", bigint_convert(value));
}

#[test]
fn bigint_sum_test() {
    use bigint_wgpu::sum;
    let lhs = "123234234234234234234234234232342342344";
    let rhs = "1223422342343242342234234234234123423423";
    let val = sum(lhs,rhs);
    assert_eq!(val, vec![3271162247,4273361191,1425034138,4112293728]);
}