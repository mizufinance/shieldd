use std::convert::{From, TryFrom};

/// A marker type that captures the relationships between a domain type (`Self`) and a protobuf type (`Self::Proto`).
pub trait DomainType
where
    Self: Clone + Sized + TryFrom<Self::Proto>,
    Self::Proto: prost::Name + prost::Message + Default + From<Self> + Send + Sync + 'static,
    anyhow::Error: From<<Self as TryFrom<Self::Proto>>::Error>,
{
    type Proto;

    /// Encode this domain type to a byte vector, via proto type `P`.
    fn encode_to_vec(&self) -> Vec<u8> {
        use prost::Message;
        self.to_proto().encode_to_vec()
    }

    /// Convert this domain type to the associated proto type.
    ///
    /// This uses the `From` impl internally, so it works exactly
    /// like `.into()`, but does not require type inference.
    fn to_proto(&self) -> Self::Proto {
        Self::Proto::from(self.clone())
    }

    /// Decode this domain type from a byte buffer, via proto type `P`.
    fn decode<B: bytes::Buf>(buf: B) -> anyhow::Result<Self> {
        <Self::Proto as prost::Message>::decode(buf)?
            .try_into()
            .map_err(Into::into)
    }
}

// Implementations on foreign types.
//
// This should only be done here in cases where the domain type lives in a crate
// that shouldn't depend on the Shieldd proto framework.

use crate::shieldd::crypto::redjubjub_rdsa::v1::{
    BindingSignature, SpendAuthSignature, SpendVerificationKey,
};

use reddsa::{
    sapling::{Binding, SpendAuth},
    Signature, VerificationKey,
};

impl DomainType for Signature<SpendAuth> {
    type Proto = SpendAuthSignature;
}
impl DomainType for Signature<Binding> {
    type Proto = BindingSignature;
}
impl DomainType for VerificationKey<SpendAuth> {
    type Proto = SpendVerificationKey;
}

impl From<Signature<SpendAuth>> for SpendAuthSignature {
    fn from(sig: Signature<SpendAuth>) -> Self {
        Self {
            inner: <[u8; 64]>::from(sig).to_vec(),
        }
    }
}

impl From<Signature<Binding>> for BindingSignature {
    fn from(sig: Signature<Binding>) -> Self {
        Self {
            inner: <[u8; 64]>::from(sig).to_vec(),
        }
    }
}

impl From<VerificationKey<SpendAuth>> for SpendVerificationKey {
    fn from(key: VerificationKey<SpendAuth>) -> Self {
        Self {
            inner: <[u8; 32]>::from(key).to_vec(),
        }
    }
}

impl TryFrom<SpendAuthSignature> for Signature<SpendAuth> {
    type Error = anyhow::Error;
    fn try_from(value: SpendAuthSignature) -> Result<Self, Self::Error> {
        Ok(Signature::from(<[u8; 64]>::try_from(
            value.inner.as_slice(),
        )?))
    }
}

impl TryFrom<BindingSignature> for Signature<Binding> {
    type Error = anyhow::Error;
    fn try_from(value: BindingSignature) -> Result<Self, Self::Error> {
        Ok(Signature::from(<[u8; 64]>::try_from(
            value.inner.as_slice(),
        )?))
    }
}

impl TryFrom<SpendVerificationKey> for VerificationKey<SpendAuth> {
    type Error = anyhow::Error;
    fn try_from(value: SpendVerificationKey) -> Result<Self, Self::Error> {
        let bytes: [u8; 32] = value.inner.as_slice().try_into()?;
        shieldd_sdk_crypto::encoding::nonidentity(&bytes)?;
        Ok(VerificationKey::try_from(bytes)?)
    }
}
