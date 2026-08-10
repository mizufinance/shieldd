//! Public, Miden-style routing tags for encrypted note discovery.
//! Tags disclose a protocol-sized prefix derived from the recipient address but no decryption key.
//! Precision changes are governance-controlled and allow the previous precision for a grace period.
//! Tags are best-effort metadata, not circuit-bound; a full compact-block scan remains the recovery path.

use anyhow::Result;
use serde::{Deserialize, Serialize};
use shieldd_sdk_keys::{Address, DiscoveryKey};
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};

pub mod state_key;

pub const DEFAULT_PRECISION_BITS: u8 = 16;
pub const DEFAULT_GRACE_PERIOD_BLOCKS: u64 = 16;

/// Number of public routing bits disclosed by a note.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash, Serialize, Deserialize)]
pub struct Precision(u8);

impl Precision {
    pub const MIN: Self = Self(0);
    pub const MAX: Self = Self(32);

    pub fn new(bits: u8) -> Result<Self> {
        anyhow::ensure!(
            bits <= Self::MAX.0,
            "discovery precision must be at most 32 bits"
        );
        Ok(Self(bits))
    }

    pub fn bits(self) -> u8 {
        self.0
    }

    fn mask(self) -> u32 {
        match self.0 {
            0 => 0,
            bits => u32::MAX << (32 - bits),
        }
    }
}

impl Default for Precision {
    fn default() -> Self {
        Self(DEFAULT_PRECISION_BITS)
    }
}

impl TryFrom<u32> for Precision {
    type Error = anyhow::Error;

    fn try_from(value: u32) -> Result<Self> {
        Self::new(value.try_into()?)
    }
}

impl From<Precision> for u32 {
    fn from(value: Precision) -> Self {
        value.bits().into()
    }
}

/// Public best-effort selector for encrypted note payloads.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash, Serialize, Deserialize)]
#[serde(try_from = "pb::DiscoveryTag", into = "pb::DiscoveryTag")]
pub struct Tag {
    pub precision: Precision,
    pub value: u32,
}

impl Tag {
    pub fn derive(key: &DiscoveryKey, precision: Precision) -> Self {
        let hash = blake2b_simd::Params::new()
            .hash_length(32)
            .personal(b"ShielddDiscTag1")
            .hash(&key.0);
        let value = u32::from_be_bytes(
            hash.as_bytes()[..4]
                .try_into()
                .expect("four-byte slice always fits"),
        ) & precision.mask();
        Self { precision, value }
    }

    pub fn for_address(address: &Address, precision: Precision) -> Self {
        Self::derive(address.discovery_key(), precision)
    }

    pub fn is_canonical(self) -> bool {
        self.value & !self.precision.mask() == 0
    }
}

impl Default for Tag {
    fn default() -> Self {
        Self {
            precision: Precision::MIN,
            value: 0,
        }
    }
}

impl DomainType for Tag {
    type Proto = pb::DiscoveryTag;
}

impl TryFrom<pb::DiscoveryTag> for Tag {
    type Error = anyhow::Error;

    fn try_from(value: pb::DiscoveryTag) -> Result<Self> {
        let tag = Self {
            precision: value.precision_bits.try_into()?,
            value: value.value,
        };
        anyhow::ensure!(tag.is_canonical(), "discovery tag has non-zero unused bits");
        Ok(tag)
    }
}

impl From<Tag> for pb::DiscoveryTag {
    fn from(value: Tag) -> Self {
        Self {
            precision_bits: value.precision.into(),
            value: value.value,
        }
    }
}

/// Active protocol precision and its activation height.
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "pb::DiscoveryParameters", into = "pb::DiscoveryParameters")]
pub struct Parameters {
    pub precision: Precision,
    pub as_of_block_height: u64,
}

impl Parameters {
    /// Returns whether a tag precision is valid at the given height.
    pub fn accepts_precision(
        &self,
        previous: &Self,
        grace_period_blocks: u64,
        block_height: u64,
        tag_precision: Precision,
    ) -> bool {
        tag_precision == self.precision
            || (tag_precision == previous.precision
                && block_height < self.as_of_block_height.saturating_add(grace_period_blocks))
    }
}

impl Default for Parameters {
    fn default() -> Self {
        Self {
            precision: Precision::default(),
            as_of_block_height: 1,
        }
    }
}

impl DomainType for Parameters {
    type Proto = pb::DiscoveryParameters;
}

impl TryFrom<pb::DiscoveryParameters> for Parameters {
    type Error = anyhow::Error;

    fn try_from(value: pb::DiscoveryParameters) -> Result<Self> {
        Ok(Self {
            precision: value.precision_bits.try_into()?,
            as_of_block_height: value.as_of_block_height,
        })
    }
}

impl From<Parameters> for pb::DiscoveryParameters {
    fn from(value: Parameters) -> Self {
        Self {
            precision_bits: value.precision.into(),
            as_of_block_height: value.as_of_block_height,
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn tag_masks_every_precision_canonically() {
        let key = DiscoveryKey([0xabu8; 32]);
        for bits in 0..=32 {
            let precision = Precision::new(bits).unwrap();
            let tag = Tag::derive(&key, precision);
            assert!(tag.is_canonical());
            assert_eq!(tag.value & !precision.mask(), 0);
        }
    }

    #[test]
    fn tag_prefixes_are_stable_across_precision_changes() {
        let key = DiscoveryKey([7u8; 32]);
        let short = Tag::derive(&key, Precision::new(12).unwrap());
        let long = Tag::derive(&key, Precision::new(20).unwrap());
        assert_eq!(short.value, long.value & Precision::new(12).unwrap().mask());
    }

    #[test]
    fn decoding_rejects_non_canonical_unused_bits() {
        assert!(Tag::try_from(pb::DiscoveryTag {
            precision_bits: 8,
            value: 0x0100_0001,
        })
        .is_err());
    }
}
