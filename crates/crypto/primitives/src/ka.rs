//! Canonical prime-subgroup Jubjub Diffie–Hellman keys.
use anyhow::{ensure, Result};
use ff::Field;
use group::{Group, GroupEncoding};
use rand_core::{CryptoRng, RngCore};
use zeroize::Zeroizing;

use crate::{encoding, generators, Fr, SubgroupPoint};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Public(SubgroupPoint);

#[derive(Clone, PartialEq, Eq)]
pub struct Secret(Zeroizing<[u8; 32]>);

#[derive(Clone, PartialEq, Eq)]
pub struct SharedSecret(Zeroizing<[u8; 32]>);

impl Public {
    pub fn from_point(point: SubgroupPoint) -> Result<Self> {
        ensure!(
            !bool::from(point.is_identity()),
            "identity key-agreement public key"
        );
        Ok(Self(point))
    }

    pub fn point(&self) -> &SubgroupPoint {
        &self.0
    }
    pub fn to_bytes(&self) -> [u8; 32] {
        self.0.to_bytes()
    }
}

impl TryFrom<[u8; 32]> for Public {
    type Error = anyhow::Error;
    fn try_from(bytes: [u8; 32]) -> Result<Self> {
        Ok(Self(encoding::nonidentity(&bytes)?))
    }
}

impl TryFrom<&[u8]> for Public {
    type Error = anyhow::Error;
    fn try_from(bytes: &[u8]) -> Result<Self> {
        Self::try_from(<[u8; 32]>::try_from(bytes)?)
    }
}

impl Secret {
    pub fn new<R: RngCore + CryptoRng>(rng: &mut R) -> Self {
        loop {
            let scalar = Fr::random(&mut *rng);
            if !bool::from(scalar.is_zero()) {
                return Self(Zeroizing::new(scalar.to_bytes()));
            }
        }
    }

    pub fn from_scalar(scalar: Fr) -> Result<Self> {
        ensure!(!bool::from(scalar.is_zero()), "zero key-agreement secret");
        Ok(Self(Zeroizing::new(scalar.to_bytes())))
    }

    pub fn public(&self) -> Public {
        Public(*generators::SPEND_AUTH * self.scalar())
    }

    pub fn diversified_public(&self, generator: &SubgroupPoint) -> Result<Public> {
        Public::from_point(generator * self.scalar())
    }

    pub fn key_agreement_with(&self, other: &Public) -> SharedSecret {
        SharedSecret(Zeroizing::new((other.0 * self.scalar()).to_bytes()))
    }

    pub fn to_bytes(&self) -> [u8; 32] {
        *self.0
    }

    fn scalar(&self) -> Fr {
        Fr::from_bytes(&self.0).unwrap()
    }
}

impl TryFrom<[u8; 32]> for Secret {
    type Error = anyhow::Error;
    fn try_from(bytes: [u8; 32]) -> Result<Self> {
        Self::from_scalar(encoding::scalar(&bytes)?)
    }
}

impl TryFrom<&[u8]> for Secret {
    type Error = anyhow::Error;
    fn try_from(bytes: &[u8]) -> Result<Self> {
        Self::try_from(<[u8; 32]>::try_from(bytes)?)
    }
}

impl TryFrom<[u8; 32]> for SharedSecret {
    type Error = anyhow::Error;
    fn try_from(bytes: [u8; 32]) -> Result<Self> {
        encoding::nonidentity(&bytes)?;
        Ok(Self(Zeroizing::new(bytes)))
    }
}

impl SharedSecret {
    pub fn to_bytes(&self) -> [u8; 32] {
        *self.0
    }
}

impl std::fmt::Debug for Secret {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str("Secret([REDACTED])")
    }
}

impl std::fmt::Debug for SharedSecret {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str("SharedSecret([REDACTED])")
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn agreement_and_canonical_key_boundaries() {
        let a = Secret::from_scalar(Fr::from(3)).unwrap();
        let b = Secret::from_scalar(Fr::from(5)).unwrap();
        let base = SubgroupPoint::generator() * Fr::from(7);
        assert_eq!(
            a.key_agreement_with(&b.diversified_public(&base).unwrap()),
            b.key_agreement_with(&a.diversified_public(&base).unwrap())
        );
        assert_eq!(Public::try_from(a.public().to_bytes()).unwrap(), a.public());
        assert!(Secret::try_from([0; 32]).is_err());
        assert!(Secret::try_from([255; 32]).is_err());
        assert!(Public::try_from(SubgroupPoint::identity().to_bytes()).is_err());
        assert!(Public::try_from((-crate::Fq::ONE).to_bytes()).is_err());
        assert!(a.diversified_public(&SubgroupPoint::identity()).is_err());
        let shared = a.key_agreement_with(&b.public());
        assert_eq!(SharedSecret::try_from(shared.to_bytes()).unwrap(), shared);
        assert_eq!(format!("{shared:?}"), "SharedSecret([REDACTED])");
        assert!(SharedSecret::try_from(SubgroupPoint::identity().to_bytes()).is_err());
        assert!(SharedSecret::try_from((-crate::Fq::ONE).to_bytes()).is_err());
        assert!(SharedSecret::try_from([255; 32]).is_err());
        assert_eq!(format!("{a:?}"), "Secret([REDACTED])");
    }
}
