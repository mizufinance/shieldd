//! Minimal prime-field arithmetic over the decaf377 companion **scalar** order
//! `r`-context field used by the DTK constraint system. Only what the Tier-3
//! lt-chain recurrence recovery needs: parse a signed decimal/hex coefficient,
//! add/sub/mul, and modular inverse (for the proportionality matcher). This is
//! an extraction-time analysis aid, entirely outside the Lean TCB.

use num_bigint::{BigInt, BigUint, Sign};
use num_traits::{One, Zero};
use std::ops::{Add, Mul, Neg, Sub};

/// The field order (gnark's `.sr1cs` coefficients live in `[0, MODULUS)`), the
/// BLS12-377 scalar field / decaf377 base field prime.
pub fn modulus() -> BigUint {
    BigUint::parse_bytes(
        b"8444461749428370424248824938781546531375899335154063827935233455917409239041",
        10,
    )
    .expect("valid modulus literal")
}

/// A canonical field element in `[0, MODULUS)`.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct Fp(BigUint);

impl Fp {
    pub fn zero() -> Self {
        Fp(BigUint::zero())
    }

    pub fn one() -> Self {
        Fp(BigUint::one())
    }

    pub fn is_zero(&self) -> bool {
        self.0.is_zero()
    }

    /// Reduce a signed integer into the field.
    pub fn from_bigint(v: &BigInt) -> Self {
        let m = modulus();
        let mi = BigInt::from_biguint(Sign::Plus, m.clone());
        let r = ((v % &mi) + &mi) % &mi; // non-negative representative
        Fp(r.to_biguint().expect("non-negative after reduction"))
    }

    /// Parse an `.sr1cs` coefficient string (decimal, optional `-`, or `0x…`).
    pub fn parse(coeff: &str) -> Self {
        let s = coeff.trim();
        let v = if let Some(hex) = s.strip_prefix("0x").or_else(|| s.strip_prefix("0X")) {
            BigInt::parse_bytes(hex.as_bytes(), 16).expect("hex coeff")
        } else if let Some(hex) = s.strip_prefix("-0x").or_else(|| s.strip_prefix("-0X")) {
            -BigInt::parse_bytes(hex.as_bytes(), 16).expect("hex coeff")
        } else {
            BigInt::parse_bytes(s.as_bytes(), 10).expect("decimal coeff")
        };
        Fp::from_bigint(&v)
    }

    /// Render as the canonical decimal representative (matches `.sr1cs` positive form).
    pub fn to_decimal(&self) -> String {
        self.0.to_str_radix(10)
    }

    /// Modular inverse via Fermat (modulus is prime). Panics on zero.
    pub fn inverse(&self) -> Self {
        assert!(!self.is_zero(), "inverse of zero");
        let m = modulus();
        Fp(self.0.modpow(&(&m - 2u32), &m))
    }
}

impl Add for &Fp {
    type Output = Fp;
    fn add(self, rhs: &Fp) -> Fp {
        Fp((&self.0 + &rhs.0) % modulus())
    }
}

impl Sub for &Fp {
    type Output = Fp;
    fn sub(self, rhs: &Fp) -> Fp {
        let m = modulus();
        Fp((&self.0 + (&m - &rhs.0)) % m)
    }
}

impl Mul for &Fp {
    type Output = Fp;
    fn mul(self, rhs: &Fp) -> Fp {
        Fp((&self.0 * &rhs.0) % modulus())
    }
}

impl Neg for &Fp {
    type Output = Fp;
    fn neg(self) -> Fp {
        let m = modulus();
        Fp((&m - &self.0) % m)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn parse_and_reduce_negative() {
        assert_eq!(Fp::parse("-1"), &Fp::zero() - &Fp::one());
        assert_eq!(Fp::parse("-1").to_decimal(), (&modulus() - 1u32).to_str_radix(10));
    }

    #[test]
    fn inverse_roundtrips() {
        let a = Fp::parse("7");
        assert_eq!(&a * &a.inverse(), Fp::one());
    }
}
