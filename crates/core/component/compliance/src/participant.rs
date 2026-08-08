//! Public discovery tags for transfer participants.

use anyhow::{ensure, Result};
use serde::{Deserialize, Serialize};
use shieldd_sdk_keys::Address;

pub const MAX_DISCOVERY_PRECISION_BITS: u8 = 32;
pub const TRANSFER_DISCOVERY_TAGS_BYTES: usize = 9;

fn mask(precision_bits: u8) -> u32 {
    match precision_bits {
        0 => 0,
        32 => u32::MAX,
        bits => (1u32 << bits) - 1,
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(transparent)]
pub struct ParticipantTag(u32);

impl ParticipantTag {
    pub fn for_address(address: &Address, precision_bits: u8) -> Result<Self> {
        ensure!(
            precision_bits <= MAX_DISCOVERY_PRECISION_BITS,
            "discovery precision must be at most {MAX_DISCOVERY_PRECISION_BITS} bits"
        );
        let bytes = address.transmission_key().0;
        let value = u32::from_le_bytes(bytes[..4].try_into().expect("four-byte slice"));
        Ok(Self(value & mask(precision_bits)))
    }

    pub fn new(value: u32, precision_bits: u8) -> Result<Self> {
        ensure!(
            precision_bits <= MAX_DISCOVERY_PRECISION_BITS,
            "discovery precision must be at most {MAX_DISCOVERY_PRECISION_BITS} bits"
        );
        ensure!(
            value & !mask(precision_bits) == 0,
            "participant tag has non-zero unused bits"
        );
        Ok(Self(value))
    }

    pub fn value(self) -> u32 {
        self.0
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct TransferDiscoveryTags {
    pub precision_bits: u8,
    pub sender: ParticipantTag,
    pub receiver: ParticipantTag,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct DiscoveryMatch {
    pub sender: bool,
    pub receiver: bool,
}

impl DiscoveryMatch {
    pub fn any(self) -> bool {
        self.sender || self.receiver
    }
}

impl TransferDiscoveryTags {
    pub fn derive(sender: &Address, receiver: &Address, precision_bits: u8) -> Result<Self> {
        Ok(Self {
            precision_bits,
            sender: ParticipantTag::for_address(sender, precision_bits)?,
            receiver: ParticipantTag::for_address(receiver, precision_bits)?,
        })
    }

    pub fn packed(self) -> u64 {
        u64::from(self.sender.0) | (u64::from(self.receiver.0) << 32)
    }

    pub fn from_packed(value: u64, precision_bits: u8) -> Result<Self> {
        Ok(Self {
            precision_bits,
            sender: ParticipantTag::new(value as u32, precision_bits)?,
            receiver: ParticipantTag::new((value >> 32) as u32, precision_bits)?,
        })
    }

    pub fn examine(self, address: &Address) -> DiscoveryMatch {
        let expected = ParticipantTag::for_address(address, self.precision_bits)
            .expect("serialized precision was validated");
        DiscoveryMatch {
            sender: self.sender == expected,
            receiver: self.receiver == expected,
        }
    }

    pub fn to_bytes(self) -> [u8; TRANSFER_DISCOVERY_TAGS_BYTES] {
        let sender = self.sender.0.to_le_bytes();
        let receiver = self.receiver.0.to_le_bytes();
        [
            self.precision_bits,
            sender[0],
            sender[1],
            sender[2],
            sender[3],
            receiver[0],
            receiver[1],
            receiver[2],
            receiver[3],
        ]
    }

    pub fn from_bytes(bytes: [u8; TRANSFER_DISCOVERY_TAGS_BYTES]) -> Result<Self> {
        ensure!(
            bytes[0] <= MAX_DISCOVERY_PRECISION_BITS,
            "discovery precision must be at most {MAX_DISCOVERY_PRECISION_BITS} bits"
        );
        Ok(Self {
            precision_bits: bytes[0],
            sender: ParticipantTag::new(
                u32::from_le_bytes(bytes[1..5].try_into().expect("fixed-size slice")),
                bytes[0],
            )?,
            receiver: ParticipantTag::new(
                u32::from_le_bytes(bytes[5..9].try_into().expect("fixed-size slice")),
                bytes[0],
            )?,
        })
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn participant_tags_round_trip_and_match() {
        let sender = crate::test_helpers::make_address(7);
        let receiver = crate::test_helpers::make_address(9);
        for precision_bits in 0..=32 {
            let tags = TransferDiscoveryTags::derive(&sender, &receiver, precision_bits).unwrap();
            assert_eq!(
                TransferDiscoveryTags::from_bytes(tags.to_bytes()).unwrap(),
                tags
            );
            assert_eq!(
                TransferDiscoveryTags::from_packed(tags.packed(), precision_bits).unwrap(),
                tags
            );
            assert!(tags.examine(&sender).sender);
            assert!(tags.examine(&receiver).receiver);
        }
    }

    #[test]
    fn noncanonical_tags_are_rejected() {
        assert!(ParticipantTag::new(0x100, 8).is_err());
        assert!(TransferDiscoveryTags::from_bytes([33, 0, 0, 0, 0, 0, 0, 0, 0]).is_err());
    }
}
