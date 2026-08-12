use anyhow::{Context, Result};
use serde::{Deserialize, Serialize};
use shieldd_sdk_proto::{shieldd::core::component::compact_block::v1 as pb, DomainType};
use shieldd_sdk_shielded_pool::{discovery, NotePayload};
use shieldd_sdk_tct::builder::{block, epoch};
use shieldd_sdk_txhash::TransactionId;

use crate::CompactBlock;

/// One public tag attached to an action. Slot roles are deliberately absent.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "pb::RoutingRecord", into = "pb::RoutingRecord")]
pub struct RoutingRecord {
    pub tag: discovery::RoutingTag,
    pub height: u64,
    pub transaction_id: TransactionId,
    pub action_index: u32,
    pub tag_slot: u8,
}

impl DomainType for RoutingRecord {
    type Proto = pb::RoutingRecord;
}

impl From<RoutingRecord> for pb::RoutingRecord {
    fn from(record: RoutingRecord) -> Self {
        Self {
            tag: Some(record.tag.into()),
            height: record.height,
            transaction_id: Some(record.transaction_id.into()),
            action_index: record.action_index,
            tag_slot: record.tag_slot.into(),
        }
    }
}

impl TryFrom<pb::RoutingRecord> for RoutingRecord {
    type Error = anyhow::Error;

    fn try_from(record: pb::RoutingRecord) -> Result<Self> {
        Ok(Self {
            tag: record
                .tag
                .context("routing record is missing its tag")?
                .try_into()?,
            height: record.height,
            transaction_id: record
                .transaction_id
                .context("routing record is missing its transaction ID")?
                .try_into()?,
            action_index: record.action_index,
            tag_slot: record
                .tag_slot
                .try_into()
                .context("routing record tag slot exceeds u8")?,
        })
    }
}

/// Encrypted note payloads grouped by their producing action.
#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(
    try_from = "pb::RoutingActionPayloads",
    into = "pb::RoutingActionPayloads"
)]
pub struct RoutingActionPayloads {
    pub transaction_id: TransactionId,
    pub action_index: u32,
    pub note_payloads: Vec<NotePayload>,
}

impl DomainType for RoutingActionPayloads {
    type Proto = pb::RoutingActionPayloads;
}

impl From<RoutingActionPayloads> for pb::RoutingActionPayloads {
    fn from(action: RoutingActionPayloads) -> Self {
        Self {
            transaction_id: Some(action.transaction_id.into()),
            action_index: action.action_index,
            note_payloads: action.note_payloads.into_iter().map(Into::into).collect(),
        }
    }
}

impl TryFrom<pb::RoutingActionPayloads> for RoutingActionPayloads {
    type Error = anyhow::Error;

    fn try_from(action: pb::RoutingActionPayloads) -> Result<Self> {
        Ok(Self {
            transaction_id: action
                .transaction_id
                .context("routing action is missing its transaction ID")?
                .try_into()?,
            action_index: action.action_index,
            note_payloads: action
                .note_payloads
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_>>()?,
        })
    }
}

/// Transaction execution output staged until compact-block finalization.
#[derive(Clone, Debug)]
pub struct PendingRoutingAction {
    pub transaction_id: TransactionId,
    pub action_index: u32,
    pub tags: Vec<discovery::RoutingTag>,
    pub note_payloads: Vec<NotePayload>,
}

/// Public routing records and roots for one block.
#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(try_from = "pb::RoutingBlock", into = "pb::RoutingBlock")]
pub struct RoutingBlock {
    pub height: u64,
    pub block_root: block::Root,
    pub epoch_root: Option<epoch::Root>,
    pub records: Vec<RoutingRecord>,
    pub parameters: Option<discovery::Parameters>,
}

impl From<CompactBlock> for RoutingBlock {
    fn from(block: CompactBlock) -> Self {
        Self {
            height: block.height,
            block_root: block.block_root,
            epoch_root: block.epoch_root,
            records: block.routing_records,
            parameters: block.discovery_parameters,
        }
    }
}

impl DomainType for RoutingBlock {
    type Proto = pb::RoutingBlock;
}

impl From<RoutingBlock> for pb::RoutingBlock {
    fn from(block: RoutingBlock) -> Self {
        Self {
            height: block.height,
            block_root: (!block.block_root.is_empty_finalized()).then(|| block.block_root.into()),
            epoch_root: block.epoch_root.map(Into::into),
            records: block.records.into_iter().map(Into::into).collect(),
            discovery_parameters: block.parameters.map(Into::into),
        }
    }
}

impl TryFrom<pb::RoutingBlock> for RoutingBlock {
    type Error = anyhow::Error;

    fn try_from(block: pb::RoutingBlock) -> Result<Self> {
        Ok(Self {
            height: block.height,
            block_root: block
                .block_root
                .map(TryInto::try_into)
                .transpose()?
                .unwrap_or_else(|| block::Finalized::default().root()),
            epoch_root: block.epoch_root.map(TryInto::try_into).transpose()?,
            records: block
                .records
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_>>()?,
            parameters: block
                .discovery_parameters
                .map(TryInto::try_into)
                .transpose()?,
        })
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn tag_slot_is_narrowed_at_the_domain_boundary() {
        let record = pb::RoutingRecord {
            tag: Some(discovery::RoutingTag { value: 7 }.into()),
            height: 9,
            transaction_id: Some(TransactionId([1; 32]).into()),
            action_index: 3,
            tag_slot: 256,
        };
        assert!(RoutingRecord::try_from(record).is_err());
    }
}
