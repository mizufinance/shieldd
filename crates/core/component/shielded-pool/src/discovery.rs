//! Public, Miden-style routing tags for encrypted note discovery.
//! Tags disclose a protocol-sized prefix of the recipient address but no decryption key.
//! Precision changes are governance-controlled and allow the previous precision for a grace period.
//! Transfer tags are proof-bound candidate metadata; they do not grant decryption or prove participation.
//! A full compact-block scan remains the recovery path for ordinary note discovery.

use anyhow::Result;
use serde::{Deserialize, Serialize};
use shieldd_sdk_keys::Address;
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_txhash::TransactionId;

pub mod state_key;

/// Default protocol precision: roughly 0.1% of unrelated two-party transfers match either tag.
pub const DEFAULT_PRECISION_BITS: u8 = 11;
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
            32 => u32::MAX,
            bits => (1u32 << bits) - 1,
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

/// Public routing metadata for one shielded transfer.
///
/// The transaction ID is the canonical chain transaction ID. The tags are only
/// probabilistic selectors: a match identifies a transaction candidate, not an
/// authorization or proof of participation.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct Transaction {
    pub transaction_id: TransactionId,
    pub sender: Tag,
    pub receiver: Tag,
}

impl Transaction {
    pub fn matches_any(&self, tags: &std::collections::BTreeSet<Tag>) -> (bool, bool) {
        (tags.contains(&self.sender), tags.contains(&self.receiver))
    }
}

impl Tag {
    pub fn for_address(address: &Address, precision: Precision) -> Self {
        let bytes = address.transmission_key().0;
        let value = u32::from_le_bytes(bytes[..4].try_into().expect("four-byte slice always fits"))
            & precision.mask();
        Self { precision, value }
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
        let address = shieldd_sdk_keys::test_keys::ADDRESS_0.clone();
        for bits in 0..=32 {
            let precision = Precision::new(bits).unwrap();
            let tag = Tag::for_address(&address, precision);
            assert!(tag.is_canonical());
            assert_eq!(tag.value & !precision.mask(), 0);
        }
    }

    #[test]
    fn tag_prefixes_are_stable_across_precision_changes() {
        let address = shieldd_sdk_keys::test_keys::ADDRESS_0.clone();
        let short = Tag::for_address(&address, Precision::new(12).unwrap());
        let long = Tag::for_address(&address, Precision::new(20).unwrap());
        assert_eq!(short.value, long.value & Precision::new(12).unwrap().mask());
    }

    #[test]
    fn diversified_addresses_have_independent_full_tags() {
        let precision = Precision::MAX;
        let first = Tag::for_address(&shieldd_sdk_keys::test_keys::ADDRESS_0, precision);
        let second = Tag::for_address(&shieldd_sdk_keys::test_keys::ADDRESS_1, precision);
        assert_ne!(first, second);
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
