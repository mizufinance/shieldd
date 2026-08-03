use std::{fmt, str::FromStr};

use anyhow::{anyhow, bail, Result};
use decaf377::{Fq, Fr};
use once_cell::sync::Lazy;
use serde::{de::Error as _, Deserialize, Deserializer, Serialize, Serializer};

/// Public identifier used to select one compliance transfer for authorization.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub struct AuthorizationId([u8; 32]);

/// Domain for deriving an authorization identifier independently of compliance salts.
pub static AUTHORIZATION_ID_DOMAIN: Lazy<Fq> = Lazy::new(|| {
    Fq::from_le_bytes_mod_order(
        blake2b_simd::blake2b(b"shieldd.transfer.compliance.authorization_id.v1").as_bytes(),
    )
});

impl AuthorizationId {
    pub fn derive(transfer_nonce_root: Fr) -> Self {
        let root = Fq::from_le_bytes_mod_order(&transfer_nonce_root.to_bytes());
        Self::from_fq(poseidon377::hash_1(&AUTHORIZATION_ID_DOMAIN, root))
    }

    pub fn from_fq(value: Fq) -> Self {
        Self(value.to_bytes())
    }

    pub fn from_bytes(bytes: [u8; 32]) -> Result<Self> {
        Fq::from_bytes_checked(&bytes)
            .map_err(|_| anyhow!("authorization id is not a canonical Fq"))?;
        Ok(Self(bytes))
    }

    pub fn from_hex(value: &str) -> Result<Self> {
        let bytes = hex::decode(value).map_err(|e| anyhow!("invalid authorization id hex: {e}"))?;
        let bytes: [u8; 32] = bytes.try_into().map_err(|bytes: Vec<u8>| {
            anyhow!("authorization id must be 32 bytes, got {}", bytes.len())
        })?;
        Self::from_bytes(bytes)
    }

    pub fn to_fq(self) -> Fq {
        Fq::from_bytes_checked(&self.0).expect("AuthorizationId always contains a canonical Fq")
    }

    pub fn to_bytes(self) -> [u8; 32] {
        self.0
    }

    pub fn to_hex(self) -> String {
        hex::encode(self.0)
    }
}

impl fmt::Display for AuthorizationId {
    fn fmt(&self, formatter: &mut fmt::Formatter<'_>) -> fmt::Result {
        formatter.write_str(&hex::encode(self.0))
    }
}

impl FromStr for AuthorizationId {
    type Err = anyhow::Error;

    fn from_str(value: &str) -> Result<Self> {
        if value.is_empty() {
            bail!("authorization id cannot be empty");
        }
        Self::from_hex(value)
    }
}

impl Serialize for AuthorizationId {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: Serializer,
    {
        serializer.serialize_str(&self.to_hex())
    }
}

impl<'de> Deserialize<'de> for AuthorizationId {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: Deserializer<'de>,
    {
        let value = String::deserialize(deserializer)?;
        Self::from_hex(&value).map_err(D::Error::custom)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn authorization_id_is_deterministic_and_domain_separated_from_transfer_salts() {
        let root = Fr::from(42u64);
        let id = AuthorizationId::derive(root);
        assert_eq!(id, AuthorizationId::derive(root));
        assert_ne!(
            id.to_fq(),
            crate::transfer::derive_transfer_salt(root, b"detection")
        );
    }

    #[test]
    fn authorization_id_json_is_canonical_hex() {
        let id = AuthorizationId::derive(Fr::from(7u64));
        let json = serde_json::to_string(&id).expect("serialize authorization id");
        assert_eq!(json, format!("\"{}\"", id));
        assert_eq!(serde_json::from_str::<AuthorizationId>(&json).unwrap(), id);
    }
}
