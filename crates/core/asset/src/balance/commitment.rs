use group::GroupEncoding;
use shieldd_sdk_crypto::Fr;
use shieldd_sdk_crypto::{generators::VALUE_BLINDING, SubgroupPoint};
use shieldd_sdk_proto::shieldd::core::asset::v1 as pb;
use shieldd_sdk_proto::DomainType;

use crate::Value;

impl Value {
    #[allow(non_snake_case)]
    pub fn commit(&self, blinding: Fr) -> Commitment {
        let G_v = self.asset_id.value_generator();
        let H = *VALUE_BLINDING;

        let v = Fr::from(self.amount);
        let C = G_v * v + H * blinding;

        Commitment(C)
    }
}

#[derive(Copy, Clone, Debug, PartialEq, Eq, Default)]
pub struct Commitment(pub SubgroupPoint);

impl Commitment {
    pub fn to_bytes(&self) -> [u8; 32] {
        (*self).into()
    }
}

#[derive(thiserror::Error, Debug)]
pub enum Error {
    #[error("Invalid valid commitment")]
    InvalidBalanceCommitment,
}

impl std::ops::Add<Commitment> for Commitment {
    type Output = Commitment;
    fn add(self, rhs: Commitment) -> Self::Output {
        Commitment(self.0 + rhs.0)
    }
}

impl std::ops::Sub<Commitment> for Commitment {
    type Output = Commitment;
    fn sub(self, rhs: Commitment) -> Self::Output {
        Commitment(self.0 - rhs.0)
    }
}

impl std::ops::Neg for Commitment {
    type Output = Commitment;
    fn neg(self) -> Self::Output {
        Commitment(-self.0)
    }
}

impl From<Commitment> for [u8; 32] {
    fn from(commitment: Commitment) -> [u8; 32] {
        commitment.0.to_bytes()
    }
}

impl TryFrom<[u8; 32]> for Commitment {
    type Error = Error;

    fn try_from(bytes: [u8; 32]) -> Result<Commitment, Self::Error> {
        let inner = shieldd_sdk_crypto::encoding::point(&bytes)
            .map_err(|_| Error::InvalidBalanceCommitment)?;

        Ok(Commitment(inner))
    }
}

impl TryFrom<&[u8]> for Commitment {
    type Error = Error;

    fn try_from(slice: &[u8]) -> Result<Commitment, Self::Error> {
        let bytes = slice[..]
            .try_into()
            .map_err(|_| Error::InvalidBalanceCommitment)?;

        let inner = shieldd_sdk_crypto::encoding::point(&bytes)
            .map_err(|_| Error::InvalidBalanceCommitment)?;

        Ok(Commitment(inner))
    }
}

impl DomainType for Commitment {
    type Proto = pb::BalanceCommitment;
}

impl From<Commitment> for pb::BalanceCommitment {
    fn from(cv: Commitment) -> Self {
        Self {
            inner: cv.to_bytes().to_vec(),
        }
    }
}

impl TryFrom<pb::BalanceCommitment> for Commitment {
    type Error = anyhow::Error;
    fn try_from(value: pb::BalanceCommitment) -> Result<Self, Self::Error> {
        value.inner.as_slice().try_into().map_err(Into::into)
    }
}
