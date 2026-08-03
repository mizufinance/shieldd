//! Poseidon-DH fuzzy transaction clues.

use anyhow::{anyhow, ensure, Result};
use decaf377::{Element, Encoding, Fq, Fr};
use once_cell::sync::Lazy;
use rand_core::{CryptoRng, RngCore};
use serde::{Deserialize, Serialize};

use crate::AuthorizationId;

pub const MIN_FUZZY_PRECISION_BITS: u8 = 7;
pub const MAX_FUZZY_PRECISION_BITS: u8 = 12;
pub const DEFAULT_FUZZY_PRECISION_BITS: u8 = 8;
pub const FUZZY_TAG_BYTES: usize = 2;
pub const TRANSFER_FUZZY_TAGS_BYTES: usize = 1 + 2 * FUZZY_TAG_BYTES;

static FUZZY_TAG_DOMAIN: Lazy<Fq> = Lazy::new(|| {
    Fq::from_le_bytes_mod_order(
        blake2b_simd::blake2b(b"shieldd.compliance.fuzzy_tag.v2").as_bytes(),
    )
});

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[repr(u64)]
#[serde(rename_all = "snake_case")]
pub enum FuzzyRole {
    Sender = 1,
    Receiver = 2,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(transparent)]
pub struct FuzzyPrecision(u8);

impl FuzzyPrecision {
    pub fn new(bits: u8) -> Result<Self> {
        ensure!(
            (MIN_FUZZY_PRECISION_BITS..=MAX_FUZZY_PRECISION_BITS).contains(&bits),
            "fuzzy precision must be between {MIN_FUZZY_PRECISION_BITS} and {MAX_FUZZY_PRECISION_BITS} bits, got {bits}"
        );
        Ok(Self(bits))
    }

    pub fn bits(self) -> u8 {
        self.0
    }

    fn mask(self) -> u16 {
        (1u16 << self.0) - 1
    }
}

impl Default for FuzzyPrecision {
    fn default() -> Self {
        Self(DEFAULT_FUZZY_PRECISION_BITS)
    }
}

impl TryFrom<u8> for FuzzyPrecision {
    type Error = anyhow::Error;

    fn try_from(value: u8) -> Result<Self> {
        Self::new(value)
    }
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
        precision: FuzzyPrecision,
    ) -> FuzzyTag {
        tag_from_shared(
            *epk * self.0,
            asset_id,
            authorization_id,
            authorization_timestamp,
            role,
            precision,
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
        precision: FuzzyPrecision,
    ) -> FuzzyTag {
        tag_from_shared(
            self.0 * r,
            asset_id,
            authorization_id,
            authorization_timestamp,
            role,
            precision,
        )
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(transparent)]
pub struct FuzzyTag(u16);

impl FuzzyTag {
    pub fn new(value: u16, precision: FuzzyPrecision) -> Result<Self> {
        ensure!(
            value & !precision.mask() == 0,
            "fuzzy tag has bits set above its {}-bit precision",
            precision.bits()
        );
        Ok(Self(value))
    }

    pub fn value(self) -> u16 {
        self.0
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct TransferFuzzyTags {
    pub precision: FuzzyPrecision,
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
    pub fn packed(self) -> u32 {
        u32::from(self.sender.0) | (u32::from(self.receiver.0) << MAX_FUZZY_PRECISION_BITS)
    }

    pub fn from_packed(value: u32, precision: FuzzyPrecision) -> Result<Self> {
        let max_mask = (1u32 << MAX_FUZZY_PRECISION_BITS) - 1;
        ensure!(
            value >> (2 * MAX_FUZZY_PRECISION_BITS) == 0,
            "packed fuzzy tags exceed the fixed maximum width"
        );
        Ok(Self {
            precision,
            sender: FuzzyTag::new((value & max_mask) as u16, precision)?,
            receiver: FuzzyTag::new(
                ((value >> MAX_FUZZY_PRECISION_BITS) & max_mask) as u16,
                precision,
            )?,
        })
    }

    pub fn to_bytes(self) -> [u8; TRANSFER_FUZZY_TAGS_BYTES] {
        let sender = self.sender.0.to_le_bytes();
        let receiver = self.receiver.0.to_le_bytes();
        [
            self.precision.bits(),
            sender[0],
            sender[1],
            receiver[0],
            receiver[1],
        ]
    }

    pub fn from_bytes(bytes: [u8; TRANSFER_FUZZY_TAGS_BYTES]) -> Result<Self> {
        let precision = FuzzyPrecision::new(bytes[0])?;
        Ok(Self {
            precision,
            sender: FuzzyTag::new(u16::from_le_bytes([bytes[1], bytes[2]]), precision)?,
            receiver: FuzzyTag::new(u16::from_le_bytes([bytes[3], bytes[4]]), precision)?,
        })
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
                    self.precision,
                ),
            receiver: self.receiver
                == detection_key.examine(
                    receiver_epk,
                    asset_id,
                    authorization_id,
                    authorization_timestamp,
                    FuzzyRole::Receiver,
                    self.precision,
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
    precision: FuzzyPrecision,
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
    let hash_bytes = hash.to_bytes();
    FuzzyTag(u16::from_le_bytes([hash_bytes[0], hash_bytes[1]]) & precision.mask())
}

#[cfg(test)]
mod tests {
    use super::*;
    use rand_core::OsRng;

    fn auth_id() -> AuthorizationId {
        AuthorizationId::from_fq(Fq::from(91u64))
    }

    #[test]
    fn true_clue_always_matches_at_every_precision() {
        let detection_key = FuzzyDetectionKey::generate(OsRng);
        let clue_key = detection_key.clue_key();
        let r = Fr::from(42u64);
        let epk = Element::GENERATOR * r;
        for bits in MIN_FUZZY_PRECISION_BITS..=MAX_FUZZY_PRECISION_BITS {
            let precision = FuzzyPrecision::new(bits).unwrap();
            let created = clue_key.create_tag(
                r,
                Fq::from(7u64),
                auth_id(),
                1_700_000_000,
                FuzzyRole::Sender,
                precision,
            );
            let examined = detection_key.examine(
                &epk,
                Fq::from(7u64),
                auth_id(),
                1_700_000_000,
                FuzzyRole::Sender,
                precision,
            );
            assert_eq!(created, examined);
        }
    }

    #[test]
    fn lower_precision_is_a_prefix_of_the_same_clue() {
        let detection_key = FuzzyDetectionKey::from_bytes(Fr::from(5u64).to_bytes()).unwrap();
        let clue_key = detection_key.clue_key();
        let low = FuzzyPrecision::new(7).unwrap();
        let high = FuzzyPrecision::new(12).unwrap();
        let low_tag = clue_key.create_tag(
            Fr::from(11u64),
            Fq::from(7u64),
            auth_id(),
            1_700_000_000,
            FuzzyRole::Sender,
            low,
        );
        let high_tag = clue_key.create_tag(
            Fr::from(11u64),
            Fq::from(7u64),
            auth_id(),
            1_700_000_000,
            FuzzyRole::Sender,
            high,
        );
        assert_eq!(low_tag.value(), high_tag.value() & low.mask());
    }

    #[test]
    fn context_and_role_are_bound() {
        let detection_key = FuzzyDetectionKey::from_bytes(Fr::from(5u64).to_bytes()).unwrap();
        let clue_key = detection_key.clue_key();
        let precision = FuzzyPrecision::new(8).unwrap();
        let r = Fr::from(11u64);
        let sender = clue_key.create_tag(
            r,
            Fq::from(7u64),
            auth_id(),
            1_700_000_000,
            FuzzyRole::Sender,
            precision,
        );
        let receiver = clue_key.create_tag(
            r,
            Fq::from(7u64),
            auth_id(),
            1_700_000_000,
            FuzzyRole::Receiver,
            precision,
        );
        assert_ne!(sender, receiver);
    }

    #[test]
    fn packed_tags_round_trip() {
        let precision = FuzzyPrecision::new(11).unwrap();
        let tags = TransferFuzzyTags {
            precision,
            sender: FuzzyTag::new(0x512, precision).unwrap(),
            receiver: FuzzyTag::new(0x3AB, precision).unwrap(),
        };
        assert_eq!(
            TransferFuzzyTags::from_packed(tags.packed(), precision).unwrap(),
            tags
        );
        assert_eq!(
            TransferFuzzyTags::from_bytes(tags.to_bytes()).unwrap(),
            tags
        );
    }

    #[test]
    fn invalid_precision_and_noncanonical_tags_are_rejected() {
        assert!(FuzzyPrecision::new(MIN_FUZZY_PRECISION_BITS - 1).is_err());
        assert!(FuzzyPrecision::new(MAX_FUZZY_PRECISION_BITS + 1).is_err());
        let precision = FuzzyPrecision::new(8).unwrap();
        assert!(FuzzyTag::new(0x100, precision).is_err());
        assert!(TransferFuzzyTags::from_bytes([8, 0, 1, 0, 0]).is_err());
    }
}
