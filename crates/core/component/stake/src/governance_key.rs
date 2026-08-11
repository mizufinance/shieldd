use serde::{Deserialize, Serialize};
use shieldd_sdk_proto::{
    // TODO: why is the governance key part of this crate?
    core::keys::v1 as pb,
    serializers::bech32str::{self, validator_governance_key::BECH32_PREFIX},
    DomainType,
};

use decaf377_rdsa::{Signature, SpendAuth, VerificationKey};
use shieldd_sdk_keys::ensure_nonidentity_spend_auth_key;

/// The root of a validator's governance identity (which may be distinct from its main identity, to
/// allow cold storage of validator keys).
///
/// This key is a [`SpendAuth`] [`VerificationKey`]; currently, the wallet software reuses an
/// account's spend authorization key as the identity key and also as the governance key, but there
/// is no real requirement that it must be generated that way.
///
/// Using a [`SpendAuth`] key means that validators can reuse code and processes designed for
/// custodying funds to protect their identity.
#[derive(Copy, Clone, PartialEq, Eq, PartialOrd, Ord, Serialize, Deserialize)]
#[serde(try_from = "pb::GovernanceKey", into = "pb::GovernanceKey")]
pub struct GovernanceKey(VerificationKey<SpendAuth>);

impl GovernanceKey {
    pub fn verification_key(&self) -> &VerificationKey<SpendAuth> {
        &self.0
    }

    pub fn to_bytes(&self) -> [u8; 32] {
        self.0.to_bytes()
    }

    pub fn verify(&self, message: &[u8], signature: &Signature<SpendAuth>) -> anyhow::Result<()> {
        ensure_nonidentity_spend_auth_key(&self.0, "validator governance key")?;
        Ok(self.0.verify(message, signature)?)
    }
}

impl TryFrom<VerificationKey<SpendAuth>> for GovernanceKey {
    type Error = anyhow::Error;

    fn try_from(key: VerificationKey<SpendAuth>) -> Result<Self, Self::Error> {
        ensure_nonidentity_spend_auth_key(&key, "validator governance key")?;
        Ok(Self(key))
    }
}

impl std::str::FromStr for GovernanceKey {
    type Err = anyhow::Error;
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        pb::GovernanceKey {
            gk: bech32str::decode(s, BECH32_PREFIX, bech32str::Bech32m)?,
        }
        .try_into()
    }
}

impl std::fmt::Display for GovernanceKey {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str(&bech32str::encode(
            &self.0.to_bytes(),
            BECH32_PREFIX,
            bech32str::Bech32m,
        ))
    }
}

impl std::fmt::Debug for GovernanceKey {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        <GovernanceKey as std::fmt::Display>::fmt(self, f)
    }
}

impl DomainType for GovernanceKey {
    type Proto = pb::GovernanceKey;
}

impl From<GovernanceKey> for pb::GovernanceKey {
    fn from(gk: GovernanceKey) -> Self {
        pb::GovernanceKey {
            gk: gk.0.to_bytes().to_vec(),
        }
    }
}

impl TryFrom<pb::GovernanceKey> for GovernanceKey {
    type Error = anyhow::Error;
    fn try_from(gk: pb::GovernanceKey) -> Result<Self, Self::Error> {
        let key: VerificationKey<SpendAuth> = gk.gk.as_slice().try_into()?;
        key.try_into()
    }
}

#[cfg(test)]
mod tests {
    use decaf377::Fr;
    use decaf377_rdsa::{SigningKey, SpendAuth, VerificationKey};

    use super::*;

    #[test]
    fn governance_key_rejects_identity() {
        let signing_key = SigningKey::<SpendAuth>::from(Fr::from(0u64));
        let verification_key = VerificationKey::from(&signing_key);
        let signature = signing_key.sign_deterministic(b"governance action");

        let error = GovernanceKey::try_from(verification_key)
            .expect_err("validator governance keys must be nonidentity");
        assert!(
            error
                .to_string()
                .contains("validator governance key must not be identity"),
            "unexpected rejection reason: {error:#}"
        );

        let proto = pb::GovernanceKey {
            gk: verification_key.to_bytes().to_vec(),
        };
        assert!(
            GovernanceKey::try_from(proto).is_err(),
            "typed governance-key decode must reject identity"
        );

        let unchecked = GovernanceKey(verification_key);
        let verification_error = unchecked
            .verify(b"governance action", &signature)
            .expect_err("proposal and vote verification must reject identity defensively");
        assert!(
            verification_error
                .to_string()
                .contains("validator governance key must not be identity"),
            "unexpected verification rejection: {verification_error:#}"
        );
    }
}
