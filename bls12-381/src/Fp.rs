use core::fmt;
use core::ops::{Add, AddAssign, Mul, MulAssign, Neg, Sub, SubAssign};
use rand_core::RngCore;

// implementation is in little endian order
#[derive(Copy, Clone)]
pub struct Fp(pub(crate) [u64; 6]);

// montnogomery reduction will be awesome
