use rug::Integer;

const field_prime = Integer::from_str_radix("1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab",16).unwrap();
// Implementation of BLS-12381

struct Fq1(Integer);

impl Fq1 {
    fn new(a0: Integer) -> Self {
        Self(a0 % field_prime)
    }
}

impl std::ops::Add for Fq1 {
    type Output = Fq1;

    fn add(self,other: Fq1) -> Fq1 {
        Fq1((self.0 + other.0) % field_prime)
    }
}

impl std::ops::Sub for Fq1 {
    type Output = Fq1;

    fn sub(self,other: Fq1) -> Fq1 {
        Fq1((self.0 - other.0) % field_prime)
    }
}

fn 

impl std::ops::Mul for Fq1 {
    type Output = Fq1;

    fn mul(self,other: Fq1) -> Fq1 {
        Fq1((self.0 * other.0) % field_prime)
    }
}
fn main() {
    println!("{}", field_prime);
}
