use anyhow::Result;
use serde::{Deserialize, Serialize};
use shieldd_sdk_proto::{shieldd::core::component::compact_block::v1 as pb, DomainType};
use shieldd_sdk_shielded_pool::{discovery, NotePayload};
use shieldd_sdk_tct::builder::{block, epoch};

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
        })
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
}
