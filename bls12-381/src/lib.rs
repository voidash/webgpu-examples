use rug::Integer;

const field_prime : &str = "1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab";
// Implementation of BLS-12381

struct Fq1(Integer);

impl Fq1 {
    fn new(a0: Integer) -> Self {
        Self(a0 % Integer::from_str_radix(field_prime, 16).unwrap())
    }
}

impl std::ops::Add for Fq1 {
    type Output = Fq1;

    fn add(self,other: Fq1) -> Fq1 {
        Fq1((self.0 + other.0) % Integer::from_str_radix(field_prime, 16).unwrap())
    }
}

impl std::ops::Sub for Fq1 {
    type Output = Fq1;

    fn sub(self,other: Fq1) -> Fq1 {
        Fq1((self.0 - other.0) % Integer::from_str_radix(field_prime, 16).unwrap())
    }
}

impl std::ops::Mul for Fq1 {
    type Output = Fq1;

    fn mul(self,other: Fq1) -> Fq1 {
        Fq1((self.0 * other.0) % Integer::from_str_radix(field_prime, 16).unwrap())
    }
}

// iterative binary extended euclidean algorithm
fn beea(u: &Integer, v: &Integer, x1: &Integer, x2: &Integer, p: &Integer) -> Integer {
    let mut u = Integer::from(u);
    let mut v = v.clone();
    let mut x1 = x1.clone();
    let mut x2 = x2.clone();
    let mut result = Integer::from(0);

    while u > 0 && v > 0 {
        if &u == &Integer::from(1) {
            result = x1 % p;
            break;
        }

        if &v == &Integer::from(1) {
            result = x2 % p;
            break;
        }

        if u.is_even() {
            if x1.is_even() {
                u /= 2;
                x1 /= 2;
            } else {
                u /= 2;
                x1 = Integer::from(&x1 + p)/ 2;
            }
        } else if v.is_even() {
            if x2.is_even() {
                v /= 2;
                x2 /= 2;
            } else {
                v /= 2;
                x2 = Integer::from(&x2 + p) / 2;
            }
        } else if u >= v {
            u -= v.clone();
            x1 -= x2.clone();
        } else if u < v {
            v -= u.clone();
            x2 -= x1.clone();
        }
    }
    result

}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn test_beeea() {
        let u = Integer::from(123);
        let v = Integer::from(5);
        // let v = Integer::from_str_radix(field_prime, 16).unwrap();
        let x1 = Integer::from(1);
        let x2 = Integer::from(0);
        let p = Integer::from(5);
    
        let result = beea(&u, &v, &x1, &x2, &p);
        assert_eq!(result,2);
    }

}

