use crate::state_key;
use anyhow::{Context, Result};
use async_trait::async_trait;
use cnidarium::StateRead;
use shieldd_sdk_proto::{
    core::component::compact_block::v1::{CompactBlock, StatePayload, StoredCompactBlock},
    Message,
};

#[async_trait]
pub trait StateReadExt: StateRead {
    async fn complete_compact_block(&self, stored: StoredCompactBlock) -> Result<CompactBlock> {
        anyhow::ensure!(
            stored.sections.len() == 7
                && stored
                    .sections
                    .iter()
                    .enumerate()
                    .all(|(i, s)| s.kind == i as i32 + 1),
            "invalid compact section inventory"
        );
        let mut block = stored.metadata.context("missing compact metadata")?;
        anyhow::ensure!(
            block.state_payloads.is_empty()
                && block.nullifiers.is_empty()
                && block.routing_records.is_empty()
                && block.routing_actions.is_empty()
                && block.compliance_user_registrations.is_empty()
                && block.compliance_user_status_changes.is_empty()
                && block.compliance_asset_registrations.is_empty(),
            "payloads repeated in compact metadata"
        );
        for section in stored.sections {
            anyhow::ensure!((1..=7).contains(&section.kind), "unknown compact section");
            if section.kind == 1 {
                anyhow::ensure!(
                    section.count <= 65_536,
                    "stored compact payload count exceeds SCT capacity"
                );
            }
            for index in 0..section.count {
                let position = if section.kind == 1 {
                    block
                        .state_payload_start_position
                        .checked_add(index as u64)
                        .context("compact position overflow")?
                } else {
                    index as u64
                };
                let bytes = super::records::get(
                    self,
                    &state_key::record(block.height, section.kind, position),
                )
                .await?;
                macro_rules! decode {
                    ($field:ident, $ty:ty) => {
                        block.$field.push(<$ty>::decode(bytes.as_slice())?)
                    };
                }
                use shieldd_sdk_proto::core::component::{
                    compact_block::v1 as pb, compliance::v1 as compliance, sct::v1 as sct,
                };
                match section.kind {
                    1 => decode!(state_payloads, StatePayload),
                    2 => decode!(nullifiers, sct::Nullifier),
                    3 => decode!(routing_records, pb::RoutingRecord),
                    4 => decode!(routing_actions, pb::RoutingAction),
                    5 => decode!(
                        compliance_user_registrations,
                        compliance::EventUserRegistered
                    ),
                    6 => decode!(
                        compliance_user_status_changes,
                        compliance::EventUserAssetStatusChanged
                    ),
                    7 => decode!(
                        compliance_asset_registrations,
                        compliance::EventAssetRegistered
                    ),
                    _ => unreachable!(),
                }
            }
        }
        Ok(block)
    }

    async fn compact_block(&self, height: u64) -> Result<Option<CompactBlock>> {
        let Some(bytes) = self
            .nonverifiable_get_raw(state_key::compact_block(height).as_bytes())
            .await?
        else {
            return Ok(None);
        };
        let block = self
            .complete_compact_block(StoredCompactBlock::decode(bytes.as_slice())?)
            .await?;
        anyhow::ensure!(block.height == height, "compact metadata height mismatch");
        Ok(Some(block))
    }
}
impl<T: StateRead + ?Sized> StateReadExt for T {}
