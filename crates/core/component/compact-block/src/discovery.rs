use anyhow::Result;
use serde::{Deserialize, Serialize};
use shieldd_sdk_proto::{shieldd::core::component::compact_block::v1 as pb, DomainType};
use shieldd_sdk_shielded_pool::{discovery, NotePayload};
use shieldd_sdk_tct::builder::{block, epoch};
use shieldd_sdk_txhash::TransactionId;

use crate::{CompactBlock, StatePayload};

/// Public note selectors and roots for one block.
#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(try_from = "pb::DiscoveryBlock", into = "pb::DiscoveryBlock")]
pub struct DiscoveryBlock {
    pub height: u64,
    pub block_root: block::Root,
    pub epoch_root: Option<epoch::Root>,
    pub tags: Vec<discovery::Tag>,
    pub parameters: Option<discovery::Parameters>,
    pub transaction_discoveries: Vec<TransactionDiscovery>,
}

impl From<CompactBlock> for DiscoveryBlock {
    fn from(block: CompactBlock) -> Self {
        let tags = block
            .state_payloads
            .iter()
            .filter_map(|payload| match payload {
                StatePayload::Note { note, .. } if !note.is_dummy() => Some(note.discovery_tag),
                _ => None,
            })
            .collect();

        Self {
            height: block.height,
            block_root: block.block_root,
            epoch_root: block.epoch_root,
            tags,
            parameters: block.discovery_parameters,
            transaction_discoveries: block.transaction_discoveries,
        }
    }
}

impl DomainType for DiscoveryBlock {
    type Proto = pb::DiscoveryBlock;
}

impl From<DiscoveryBlock> for pb::DiscoveryBlock {
    fn from(block: DiscoveryBlock) -> Self {
        Self {
            height: block.height,
            block_root: if block.block_root.is_empty_finalized() {
                None
            } else {
                Some(block.block_root.into())
            },
            epoch_root: block.epoch_root.map(Into::into),
            tags: block.tags.into_iter().map(Into::into).collect(),
            discovery_parameters: block.parameters.map(Into::into),
            transaction_discoveries: block
                .transaction_discoveries
                .into_iter()
                .map(Into::into)
                .collect(),
        }
    }
}

impl TryFrom<pb::DiscoveryBlock> for DiscoveryBlock {
    type Error = anyhow::Error;

    fn try_from(block: pb::DiscoveryBlock) -> Result<Self> {
        Ok(Self {
            height: block.height,
            block_root: block
                .block_root
                .map(TryInto::try_into)
                .transpose()?
                .unwrap_or_else(|| block::Finalized::default().root()),
            epoch_root: block.epoch_root.map(TryInto::try_into).transpose()?,
            tags: block
                .tags
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_>>()?,
            parameters: block
                .discovery_parameters
                .map(TryInto::try_into)
                .transpose()?,
            transaction_discoveries: block
                .transaction_discoveries
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_>>()?,
        })
    }
}

/// Proof-bound public routing tags associated with an original chain transaction ID.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct TransactionDiscovery {
    pub transaction_id: TransactionId,
    pub sender: discovery::Tag,
    pub receiver: discovery::Tag,
}

impl From<discovery::Transaction> for TransactionDiscovery {
    fn from(value: discovery::Transaction) -> Self {
        Self {
            transaction_id: value.transaction_id,
            sender: value.sender,
            receiver: value.receiver,
        }
    }
}

impl From<TransactionDiscovery> for pb::TransactionDiscovery {
    fn from(value: TransactionDiscovery) -> Self {
        Self {
            transaction_id: Some(value.transaction_id.into()),
            sender: Some(value.sender.into()),
            receiver: Some(value.receiver.into()),
        }
    }
}

impl TryFrom<pb::TransactionDiscovery> for TransactionDiscovery {
    type Error = anyhow::Error;

    fn try_from(value: pb::TransactionDiscovery) -> Result<Self> {
        let sender: discovery::Tag = value
            .sender
            .ok_or_else(|| anyhow::anyhow!("transaction discovery missing sender tag"))?
            .try_into()?;
        let receiver: discovery::Tag = value
            .receiver
            .ok_or_else(|| anyhow::anyhow!("transaction discovery missing receiver tag"))?
            .try_into()?;
        anyhow::ensure!(
            sender.precision == receiver.precision,
            "transaction discovery participant precisions differ"
        );
        Ok(Self {
            transaction_id: value
                .transaction_id
                .ok_or_else(|| anyhow::anyhow!("transaction discovery missing transaction ID"))?
                .try_into()?,
            sender,
            receiver,
        })
    }
}

/// A transaction selected by one or more requested discovery tags.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TransactionCandidate {
    pub height: u64,
    pub transaction_id: TransactionId,
    pub sender_match: bool,
    pub receiver_match: bool,
}

impl From<TransactionCandidate> for pb::TransactionCandidatesResponse {
    fn from(candidate: TransactionCandidate) -> Self {
        Self {
            height: candidate.height,
            transaction_id: Some(candidate.transaction_id.into()),
            sender_match: candidate.sender_match,
            receiver_match: candidate.receiver_match,
        }
    }
}

/// A tagged encrypted note and its compact-block position.
#[derive(Clone, Debug)]
pub struct NoteCandidate {
    pub height: u64,
    pub state_payload_index: u32,
    pub note_payload: NotePayload,
}

impl From<NoteCandidate> for pb::NoteCandidatesResponse {
    fn from(candidate: NoteCandidate) -> Self {
        Self {
            height: candidate.height,
            state_payload_index: candidate.state_payload_index,
            note_payload: Some(candidate.note_payload.into()),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn discovery_block_omits_dummy_notes() {
        let block = CompactBlock {
            state_payloads: vec![StatePayload::Note {
                source: shieldd_sdk_sct::CommitmentSource::transaction(),
                note: Box::new(NotePayload::dummy()),
            }],
            ..Default::default()
        };

        assert!(DiscoveryBlock::from(block).tags.is_empty());
    }

    #[test]
    fn transaction_discovery_round_trips() {
        let value = TransactionDiscovery {
            transaction_id: TransactionId([7u8; 32]),
            sender: discovery::Tag {
                precision: discovery::Precision::new(10).expect("valid precision"),
                value: 17,
            },
            receiver: discovery::Tag {
                precision: discovery::Precision::new(10).expect("valid precision"),
                value: 23,
            },
        };
        let proto: pb::TransactionDiscovery = value.into();
        assert_eq!(
            TransactionDiscovery::try_from(proto).expect("valid proto"),
            value
        );
    }
}
