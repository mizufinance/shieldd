use anyhow::{Context, Result};
use async_trait::async_trait;
use cnidarium::StateWrite;
use shieldd_sdk_compliance::{ComplianceRegistryRead, ComplianceRegistryWrite};
use shieldd_sdk_fee::component::StateReadExt as _;
use shieldd_sdk_proto::{DomainType, Message};
use shieldd_sdk_sct::component::clock::EpochRead;
use shieldd_sdk_sct::component::tree::{SctManager as _, SctRead};
use shieldd_sdk_shielded_pool::component::NoteManager as _;
use tracing::instrument;

use crate::{state_key, CompactBlock, PendingRoutingAction, RoutingAction, RoutingRecord};

pub trait RoutingManager: StateWrite {
    /// Stage proof-bound routing data until the current compact block is finalized.
    fn stage_routing_actions(&mut self, actions: impl IntoIterator<Item = PendingRoutingAction>) {
        let mut pending = self.pending_routing_actions();
        pending.extend(actions);
        self.object_put(state_key::pending_routing_actions(), pending);
    }

    fn pending_routing_actions(&self) -> imbl::Vector<PendingRoutingAction> {
        self.object_get(state_key::pending_routing_actions())
            .unwrap_or_default()
    }
}

impl<T: StateWrite + ?Sized> RoutingManager for T {}

#[async_trait]
pub trait CompactBlockManager: StateWrite {
    /// Persist one finalized block without duplicating payload ciphertexts.
    fn put_compact_block(&mut self, compact_block: CompactBlock) -> Result<()> {
        let height = compact_block.height;
        let state_payload_start_position = compact_block.state_payload_start_position;
        compact_block.validate_payload_references()?;
        for record in &compact_block.routing_records {
            self.nonverifiable_put_raw(state_key::routing(record), record.encode_to_vec());
        }
        let tagged = compact_block
            .routing_records
            .iter()
            .map(|r| (r.transaction_id, r.action_index))
            .collect::<std::collections::BTreeSet<_>>();
        let mut owners = std::collections::BTreeMap::new();
        for action in &compact_block.routing_actions {
            self.nonverifiable_put_raw(
                state_key::action(height, &action.transaction_id.0, action.action_index),
                action.encode_to_vec(),
            );
            for position in &action.payload_positions {
                owners.insert(
                    *position,
                    (
                        action.transaction_id,
                        tagged.contains(&(action.transaction_id, action.action_index)),
                    ),
                );
            }
        }
        for ordinal in 0..compact_block.state_payloads.len() {
            let position = state_payload_start_position + ordinal as u64;
            let owner = owners.get(&position);
            if owner.is_none_or(|(_, tagged)| !tagged) {
                let record =
                    shieldd_sdk_proto::core::component::compact_block::v1::UnroutedPayload {
                        position,
                        transaction_id: owner.map(|(id, _)| (*id).into()),
                    };
                self.nonverifiable_put_raw(
                    state_key::unrouted(height, position),
                    record.encode_to_vec(),
                );
            }
        }
        let mut metadata: shieldd_sdk_proto::core::component::compact_block::v1::CompactBlock =
            compact_block.into();
        let mut sections = Vec::new();
        macro_rules! persist {
            ($kind:expr, $field:ident, $start:expr) => {{
                let records = std::mem::take(&mut metadata.$field);
                sections.push(
                    shieldd_sdk_proto::core::component::compact_block::v1::StoredSection {
                        kind: $kind,
                        count: u32::try_from(records.len())?,
                    },
                );
                for (index, record) in records.into_iter().enumerate() {
                    super::records::put(
                        self,
                        state_key::record(height, $kind, $start + index as u64),
                        record.encode_to_vec(),
                    )?;
                }
            }};
        }
        persist!(1, state_payloads, state_payload_start_position);
        persist!(2, nullifiers, 0);
        persist!(3, routing_records, 0);
        persist!(4, routing_actions, 0);
        persist!(5, compliance_user_registrations, 0);
        persist!(6, compliance_user_status_changes, 0);
        persist!(7, compliance_asset_registrations, 0);
        let stored = shieldd_sdk_proto::core::component::compact_block::v1::StoredCompactBlock {
            metadata: Some(metadata),
            sections,
        };
        self.nonverifiable_put_raw(
            state_key::compact_block(height).into_bytes(),
            stored.encode_to_vec(),
        );

        Ok(())
    }

    /// Finish an SCT block and use the resulting roots to finalize the current `CompactBlock`.
    async fn finish_block(&mut self) -> Result<()> {
        self.finalize_compact_block(false).await
    }

    /// Finish an SCT block and epoch and use the resulting roots to finalize the current `CompactBlock`.
    async fn finish_epoch(&mut self) -> Result<()> {
        self.finalize_compact_block(true).await
    }
}

impl<T: StateWrite + ?Sized> CompactBlockManager for T {}

#[async_trait]
trait Inner: StateWrite {
    #[instrument(skip_all)]
    async fn finalize_compact_block(&mut self, end_epoch: bool) -> Result<()> {
        use shieldd_sdk_shielded_pool::component::StateReadExt as _;
        // Find out what our block height is (this is set even during the genesis block)
        let height = self
            .get_block_height()
            .await
            .expect("height of block is always set");
        tracing::debug!(?height, ?end_epoch, "finishing compact block");

        let app_parameters_updated = height == 0;

        // Fee parameter writes mark prices changed for wallet synchronization.
        let gas_prices = if self.gas_prices_changed() || height == 0 {
            Some(
                self.get_gas_prices()
                    .await
                    .context("could not get gas prices")?,
            )
        } else {
            None
        };

        let current_discovery_parameters = self
            .get_current_discovery_parameters()
            .await
            .context("could not get discovery parameters")?;
        let discovery_parameters = (height == 0
            || current_discovery_parameters.as_of_height == height)
            .then_some(current_discovery_parameters);

        // End the block in the SCT and record the block root, epoch root if applicable, and the SCT
        // itself, storing the resultant block and epoch root if applicable in the compact block.
        let (block_root, epoch_root) = self
            .end_sct_block(end_epoch)
            .await
            .context("could not end SCT block")?;

        // Pull out all the pending state payloads.
        let note_payloads = self
            .pending_note_payloads()
            .into_iter()
            // Strip the sources of transaction IDs
            .map(|(pos, note, source)| (pos, (note, source.stripped()).into()));
        let volume_accumulator_payloads = self
            .pending_volume_accumulator_payloads()
            .into_iter()
            .map(|(pos, payload, source)| {
                (
                    pos,
                    crate::StatePayload::VolumeAccumulator {
                        source: source.stripped(),
                        payload: Box::new(payload),
                    },
                )
            });

        // Sort the payloads by position and put them in the compact block
        let mut state_payloads = note_payloads
            .chain(volume_accumulator_payloads)
            .collect::<Vec<_>>();
        state_payloads.sort_by_key(|(pos, _)| *pos);
        let state_payload_start_position = state_payloads
            .first()
            .map_or(0, |(position, _)| u64::from(*position));
        let state_payloads = state_payloads
            .into_iter()
            .map(|(_, payload)| payload)
            .collect();

        // Add all the pending nullifiers to the compact block
        let nullifiers = self.pending_nullifiers().into_iter().collect();

        //Get the index of the current epoch
        let epoch_index = self
            .get_current_epoch()
            .await
            .expect("epoch is always set")
            .index;

        // Fetch compliance anchors (current tree roots)
        let compliance_user_anchor = self.get_user_tree_root().await.ok();
        let compliance_asset_anchor = self.get_asset_imt_root().await.ok();

        // Drain pending compliance registrations buffered during TX execution
        let compliance_user_registrations = self.pending_user_registrations();
        let compliance_user_status_changes = self.pending_user_status_changes();
        let compliance_asset_registrations = self.pending_asset_registrations();

        let nullifier_window = if height == 0 || end_epoch {
            Some(
                shieldd_sdk_sct::nullifier_tree::generation_state(self)
                    .await
                    .context("could not read nullifier generation state")?
                    .window(),
            )
        } else {
            None
        };

        let pending_routing_actions = self.pending_routing_actions();
        let mut routing_records = Vec::new();
        let mut routing_actions = Vec::with_capacity(pending_routing_actions.len());
        for action in pending_routing_actions {
            for (tag_slot, tag) in action.tags.into_iter().enumerate() {
                routing_records.push(RoutingRecord {
                    tag,
                    height,
                    transaction_id: action.transaction_id,
                    action_index: action.action_index,
                    tag_slot: tag_slot
                        .try_into()
                        .context("routing action has more than 256 tag slots")?,
                });
            }
            routing_actions.push(RoutingAction {
                transaction_id: action.transaction_id,
                action_index: action.action_index,
                payload_positions: action.payload_positions,
            });
        }
        self.object_delete(state_key::pending_routing_actions());

        let compact_block = CompactBlock {
            height,
            state_payloads,
            state_payload_start_position,
            nullifiers,
            block_root,
            epoch_root,
            discovery_parameters,
            routing_records,
            routing_actions,
            app_parameters_updated,
            gas_prices,
            epoch_index,
            compliance_user_anchor,
            compliance_asset_anchor,
            compliance_snapshot: shieldd_sdk_compliance::admission::state::current(&*self).await?,
            compliance_user_registrations,
            compliance_user_status_changes,
            compliance_asset_registrations,
            nullifier_window,
        };

        self.put_compact_block(compact_block)?;

        Ok(())
    }
}

impl<T: StateWrite + ?Sized> Inner for T {}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::component::StateReadExt as _;
    use cnidarium::{StateDelta, StateRead as _, TempStorage};
    use shieldd_sdk_sct::CommitmentSource;
    use shieldd_sdk_shielded_pool::{discovery::RoutingTag, NotePayload};
    use shieldd_sdk_txhash::TransactionId;

    #[tokio::test]
    async fn positioned_payloads_survive_commit_and_missing_data_is_rejected() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        // Equal commitments still occupy two different canonical positions.
        let note = NotePayload::dummy();
        let block = CompactBlock {
            height: 7,
            state_payload_start_position: 100,
            state_payloads: vec![
                (note.clone(), CommitmentSource::Genesis).into(),
                (note, CommitmentSource::Genesis).into(),
            ],
            routing_actions: vec![RoutingAction {
                transaction_id: TransactionId([1; 32]),
                action_index: 0,
                payload_positions: vec![100, 101],
            }],
            ..Default::default()
        };
        let expected = block.encode_to_vec();
        state.put_compact_block(block.clone())?;
        storage.commit(state).await?;
        let snapshot = storage.latest_snapshot();
        assert_eq!(
            snapshot.compact_block(7).await?.unwrap().encode_to_vec(),
            expected
        );
        let bytes = snapshot
            .nonverifiable_get_raw(state_key::compact_block(7).as_bytes())
            .await?
            .unwrap();
        let stored =
            shieldd_sdk_proto::core::component::compact_block::v1::StoredCompactBlock::decode(
                bytes.as_slice(),
            )?;
        assert_eq!(stored.sections[0].count, 2);
        assert!(stored.metadata.unwrap().state_payloads.is_empty());
        for pos in [100, 101] {
            assert!(snapshot
                .nonverifiable_get_raw(&state_key::payload(7, pos))
                .await?
                .is_some());
        }
        let mut state = StateDelta::new(snapshot);
        state.nonverifiable_delete(state_key::payload(7, 100));
        assert!(state
            .compact_block(7)
            .await
            .unwrap_err()
            .to_string()
            .contains("missing compact record"));
        let mut invalid = block;
        invalid.routing_actions[0].payload_positions.push(102);
        assert!(state.put_compact_block(invalid).is_err());
        Ok(())
    }

    #[tokio::test]
    async fn staged_routing_preserves_order_and_discarded_delta_isolated() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        let action = |index| PendingRoutingAction {
            transaction_id: TransactionId([1; 32]),
            action_index: index,
            tags: vec![RoutingTag { value: index }],
            payload_positions: vec![index as u64],
        };
        state.stage_routing_actions([action(0), action(1)]);
        {
            let mut discarded = StateDelta::new(&state);
            discarded.stage_routing_actions([action(2)]);
            assert_eq!(
                discarded
                    .pending_routing_actions()
                    .iter()
                    .map(|a| a.action_index)
                    .collect::<Vec<_>>(),
                vec![0, 1, 2]
            );
        }
        state.stage_routing_actions([action(3)]);
        assert_eq!(
            state
                .pending_routing_actions()
                .iter()
                .map(|a| a.action_index)
                .collect::<Vec<_>>(),
            vec![0, 1, 3]
        );
        Ok(())
    }
}
