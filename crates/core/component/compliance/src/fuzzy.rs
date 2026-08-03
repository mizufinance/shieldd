//! Poseidon-DH fuzzy transaction clues.

use anyhow::{anyhow, ensure, Result};
use decaf377::{Element, Encoding, Fq, Fr};
use once_cell::sync::Lazy;
use rand_core::{CryptoRng, RngCore};
use serde::{Deserialize, Serialize};

use crate::AuthorizationId;

pub const FUZZY_TAG_BITS: u8 = 8;

static FUZZY_TAG_DOMAIN: Lazy<Fq> = Lazy::new(|| {
    Fq::from_le_bytes_mod_order(
        blake2b_simd::blake2b(b"shieldd.compliance.fuzzy_tag.v1").as_bytes(),
    )
});

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[repr(u64)]
#[serde(rename_all = "snake_case")]
pub enum FuzzyRole {
    Sender = 1,
    Receiver = 2,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FuzzyDetectionKey(Fr);

impl FuzzyDetectionKey {
    pub fn generate(mut rng: impl RngCore + CryptoRng) -> Self {
        loop {
            let candidate = Fr::rand(&mut rng);
            if candidate != Fr::from(0u64) {
                return Self(candidate);
            }
        }
    }

    pub fn from_bytes(bytes: [u8; 32]) -> Result<Self> {
        let key = Fr::from_bytes_checked(&bytes)
            .map_err(|_| anyhow!("invalid fuzzy detection key scalar"))?;
        ensure!(key != Fr::from(0u64), "fuzzy detection key cannot be zero");
        Ok(Self(key))
    }

    pub fn to_bytes(self) -> [u8; 32] {
        self.0.to_bytes()
    }

    pub fn clue_key(self) -> FuzzyClueKey {
        FuzzyClueKey(Element::GENERATOR * self.0)
    }

    pub fn examine(
        self,
        epk: &Element,
        asset_id: Fq,
        authorization_id: AuthorizationId,
        authorization_timestamp: u64,
        role: FuzzyRole,
    ) -> FuzzyTag {
        tag_from_shared(
            *epk * self.0,
            asset_id,
            authorization_id,
            authorization_timestamp,
            role,
        )
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FuzzyClueKey(Element);

impl FuzzyClueKey {
    pub fn from_element(key: Element) -> Result<Self> {
        ensure!(
            key != Element::default(),
            "fuzzy clue key cannot be identity"
        );
        Ok(Self(key))
    }

    pub fn from_bytes(bytes: [u8; 32]) -> Result<Self> {
        let key = Encoding(bytes)
            .vartime_decompress()
            .map_err(|_| anyhow!("invalid fuzzy clue key encoding"))?;
        Self::from_element(key)
    }

    pub fn inner(self) -> Element {
        self.0
    }

    pub fn to_bytes(self) -> [u8; 32] {
        self.0.vartime_compress().0
    }

    pub fn create_tag(
        self,
        r: Fr,
        asset_id: Fq,
        authorization_id: AuthorizationId,
        authorization_timestamp: u64,
        role: FuzzyRole,
    ) -> FuzzyTag {
        tag_from_shared(
            self.0 * r,
            asset_id,
            authorization_id,
            authorization_timestamp,
            role,
        )
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(transparent)]
pub struct FuzzyTag(u8);

impl FuzzyTag {
    pub fn from_byte(value: u8) -> Self {
        Self(value)
    }

    pub fn to_byte(self) -> u8 {
        self.0
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct TransferFuzzyTags {
    pub sender: FuzzyTag,
    pub receiver: FuzzyTag,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FuzzyMatch {
    pub sender: bool,
    pub receiver: bool,
}

impl FuzzyMatch {
    pub fn any(self) -> bool {
        self.sender || self.receiver
    }
}

impl TransferFuzzyTags {
    pub fn packed(self) -> u16 {
        u16::from(self.sender.0) | (u16::from(self.receiver.0) << FUZZY_TAG_BITS)
    }

    pub fn from_packed(value: u16) -> Self {
        Self {
            sender: FuzzyTag(value as u8),
            receiver: FuzzyTag((value >> FUZZY_TAG_BITS) as u8),
        }
    }

    pub fn to_bytes(self) -> [u8; 2] {
        [self.sender.0, self.receiver.0]
    }

    pub fn from_bytes(bytes: [u8; 2]) -> Self {
        Self {
            sender: FuzzyTag(bytes[0]),
            receiver: FuzzyTag(bytes[1]),
        }
    }

    pub fn examine(
        self,
        detection_key: FuzzyDetectionKey,
        sender_epk: &Element,
        receiver_epk: &Element,
        asset_id: Fq,
        authorization_id: AuthorizationId,
        authorization_timestamp: u64,
    ) -> FuzzyMatch {
        FuzzyMatch {
            sender: self.sender
                == detection_key.examine(
                    sender_epk,
                    asset_id,
                    authorization_id,
                    authorization_timestamp,
                    FuzzyRole::Sender,
                ),
            receiver: self.receiver
                == detection_key.examine(
                    receiver_epk,
                    asset_id,
                    authorization_id,
                    authorization_timestamp,
                    FuzzyRole::Receiver,
                ),
        }
    }
}

fn tag_from_shared(
    shared: Element,
    asset_id: Fq,
    authorization_id: AuthorizationId,
    authorization_timestamp: u64,
    role: FuzzyRole,
) -> FuzzyTag {
    let hash = poseidon377::hash_5(
        &FUZZY_TAG_DOMAIN,
        (
            shared.vartime_compress_to_field(),
            asset_id,
            authorization_id.to_fq(),
            Fq::from(authorization_timestamp),
            Fq::from(role as u64),
        ),
    );
    FuzzyTag(hash.to_bytes()[0])
}

#[cfg(test)]
mod tests {
    use super::*;
    use rand_core::OsRng;

    fn auth_id() -> AuthorizationId {
        AuthorizationId::from_fq(Fq::from(91u64))
    }

    #[test]
    fn true_clue_always_matches() {
        let detection_key = FuzzyDetectionKey::generate(OsRng);
        let clue_key = detection_key.clue_key();
        let r = Fr::from(42u64);
        let epk = Element::GENERATOR * r;
        let created = clue_key.create_tag(
            r,
            Fq::from(7u64),
            auth_id(),
            1_700_000_000,
            FuzzyRole::Sender,
        );
        let examined = detection_key.examine(
            &epk,
            Fq::from(7u64),
            auth_id(),
            1_700_000_000,
            FuzzyRole::Sender,
        );
        assert_eq!(created, examined);
    }

    #[test]
    fn context_and_role_are_bound() {
        let detection_key = FuzzyDetectionKey::from_bytes(Fr::from(5u64).to_bytes()).unwrap();
        let clue_key = detection_key.clue_key();
        let r = Fr::from(11u64);
        let sender = clue_key.create_tag(
            r,
            Fq::from(7u64),
            auth_id(),
            1_700_000_000,
            FuzzyRole::Sender,
        );
        let receiver = clue_key.create_tag(
            r,
            Fq::from(7u64),
            auth_id(),
            1_700_000_000,
            FuzzyRole::Receiver,
        );
        assert_ne!(sender, receiver);
    }

    #[test]
    fn packed_tags_round_trip() {
        let tags = TransferFuzzyTags {
            sender: FuzzyTag::from_byte(0x12),
            receiver: FuzzyTag::from_byte(0xAB),
        };
        assert_eq!(TransferFuzzyTags::from_packed(tags.packed()), tags);
        assert_eq!(TransferFuzzyTags::from_bytes(tags.to_bytes()), tags);
    }
}
