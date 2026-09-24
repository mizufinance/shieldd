use anyhow::{Context, Result};
use serde::{Deserialize, Serialize};
use shieldd_sdk_proto::{shieldd::core::component::compact_block::v1 as pb, DomainType};
use shieldd_sdk_shielded_pool::discovery;
use shieldd_sdk_txhash::TransactionId;

#[cfg(test)]
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

/// Canonical SCT positions produced by an action, including volume state.
#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(try_from = "pb::RoutingAction", into = "pb::RoutingAction")]
pub struct RoutingAction {
    pub transaction_id: TransactionId,
    pub action_index: u32,
    pub payload_positions: Vec<u64>,
}

impl DomainType for RoutingAction {
    type Proto = pb::RoutingAction;
}

impl From<RoutingAction> for pb::RoutingAction {
    fn from(action: RoutingAction) -> Self {
        Self {
            transaction_id: Some(action.transaction_id.into()),
            action_index: action.action_index,
            payload_positions: action.payload_positions,
        }
    }
}

impl TryFrom<pb::RoutingAction> for RoutingAction {
    type Error = anyhow::Error;

    fn try_from(action: pb::RoutingAction) -> Result<Self> {
        Ok(Self {
            transaction_id: action
                .transaction_id
                .context("routing action is missing its transaction ID")?
                .try_into()?,
            action_index: action.action_index,
            payload_positions: action.payload_positions,
        })
    }
}

/// Transaction execution output staged until compact-block finalization.
#[derive(Clone, Debug)]
pub struct PendingRoutingAction {
    pub transaction_id: TransactionId,
    pub action_index: u32,
    pub tags: Vec<discovery::RoutingTag>,
    pub payload_positions: Vec<u64>,
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn compact_payload_has_one_canonical_encoding() {
        use shieldd_sdk_sct::CommitmentSource;
        let note = shieldd_sdk_shielded_pool::NotePayload::dummy();
        let encoded_note = note.encode_to_vec();
        let block = CompactBlock {
            state_payloads: vec![(note.clone(), CommitmentSource::Genesis).into()],
            routing_actions: vec![RoutingAction {
                transaction_id: TransactionId([1; 32]),
                action_index: 0,
                payload_positions: vec![0],
            }],
            ..Default::default()
        };
        let encoded = block.encode_to_vec();
        assert_eq!(
            encoded
                .windows(encoded_note.len())
                .filter(|part| *part == encoded_note)
                .count(),
            1,
            "routing must reference the canonical payload instead of repeating it"
        );
    }

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
