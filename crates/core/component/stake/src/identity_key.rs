use serde::{Deserialize, Serialize};
use shieldd_sdk_proto::{
    // TODO: why is this not in the keys crate?
    core::keys::v1 as pb,
    serializers::bech32str::{self, validator_identity_key::BECH32_PREFIX},
    DomainType,
};

use decaf377_rdsa::{Signature, SpendAuth, VerificationKey, VerificationKeyBytes};
use shieldd_sdk_keys::ensure_nonidentity_spend_auth_key;

/// The length of an identity key in bytes.
/// TODO(erwan): move this to the keys crate, one day.
pub const IDENTITY_KEY_LEN_BYTES: usize = 32;

/// The root of a validator's identity.
///
/// This key is a [`SpendAuth`] [`VerificationKey`]; currently, the wallet
/// software reuses an account's spend authorization key as the validator
/// identity, but there is no real requirement that it must be generated that
/// way.
///
/// Using a [`SpendAuth`] key means that validators can reuse code and processes
/// designed for custodying funds to protect their identity.
#[derive(Copy, Clone, PartialEq, Eq, PartialOrd, Ord, Serialize, Deserialize)]
#[serde(try_from = "pb::IdentityKey", into = "pb::IdentityKey")]
pub struct IdentityKey(VerificationKeyBytes<SpendAuth>);

impl IdentityKey {
    pub fn to_bytes(&self) -> [u8; IDENTITY_KEY_LEN_BYTES] {
        self.0.into()
    }

    pub fn verification_key(&self) -> VerificationKey<SpendAuth> {
        self.0
            .try_into()
            .expect("IdentityKey construction validates its encoding")
    }

    pub fn verify(&self, message: &[u8], signature: &Signature<SpendAuth>) -> anyhow::Result<()> {
        let verification_key = self.verification_key();
        ensure_nonidentity_spend_auth_key(&verification_key, "validator identity key")?;
        Ok(verification_key.verify(message, signature)?)
    }
}

impl TryFrom<VerificationKey<SpendAuth>> for IdentityKey {
    type Error = anyhow::Error;

    fn try_from(key: VerificationKey<SpendAuth>) -> Result<Self, Self::Error> {
        ensure_nonidentity_spend_auth_key(&key, "validator identity key")?;
        Ok(Self(key.into()))
    }
}

impl TryFrom<VerificationKeyBytes<SpendAuth>> for IdentityKey {
    type Error = anyhow::Error;

    fn try_from(key: VerificationKeyBytes<SpendAuth>) -> Result<Self, Self::Error> {
        let verification_key: VerificationKey<SpendAuth> = key.try_into()?;
        verification_key.try_into()
    }
}

// IMPORTANT: Changing this implementation is state-breaking.
impl std::str::FromStr for IdentityKey {
    type Err = anyhow::Error;
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        pb::IdentityKey {
            ik: bech32str::decode(s, BECH32_PREFIX, bech32str::Bech32m)?,
        }
        .try_into()
    }
}

// IMPORTANT: Changing this implementation is state-breaking.
impl std::fmt::Display for IdentityKey {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str(&bech32str::encode(
            self.0.as_ref(),
            BECH32_PREFIX,
            bech32str::Bech32m,
        ))
    }
}

impl std::fmt::Debug for IdentityKey {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        <IdentityKey as std::fmt::Display>::fmt(self, f)
    }
}

impl DomainType for IdentityKey {
    type Proto = pb::IdentityKey;
}

impl From<IdentityKey> for pb::IdentityKey {
    fn from(ik: IdentityKey) -> Self {
        pb::IdentityKey {
            ik: ik.0.as_ref().to_vec(),
        }
    }
}

impl TryFrom<pb::IdentityKey> for IdentityKey {
    type Error = anyhow::Error;
    fn try_from(ik: pb::IdentityKey) -> Result<Self, Self::Error> {
        let key: VerificationKeyBytes<SpendAuth> = ik.ik.as_slice().try_into()?;
        key.try_into()
    }
}

#[cfg(test)]
mod tests {
    use decaf377::Fr;
    use decaf377_rdsa::{SigningKey, SpendAuth, VerificationKey};

    use super::*;

    #[test]
    fn validator_identity_key_rejects_identity() {
        let signing_key = SigningKey::<SpendAuth>::from(Fr::from(0u64));
        let verification_key = VerificationKey::from(&signing_key);
        let signature = signing_key.sign_deterministic(b"validator definition");

        let error = IdentityKey::try_from(verification_key)
            .expect_err("validator identity keys must be nonidentity");
        assert!(
            error
                .to_string()
                .contains("validator identity key must not be identity"),
            "unexpected rejection reason: {error:#}"
        );

        let proto = pb::IdentityKey {
            ik: verification_key.to_bytes().to_vec(),
        };
        assert!(
            IdentityKey::try_from(proto).is_err(),
            "typed validator identity-key decode must reject identity"
        );

        let unchecked = IdentityKey(verification_key.into());
        let verification_error = unchecked
            .verify(b"validator definition", &signature)
            .expect_err("validator-definition verification must reject identity defensively");
        assert!(
            verification_error
                .to_string()
                .contains("validator identity key must not be identity"),
            "unexpected verification rejection: {verification_error:#}"
        );
    }
}
