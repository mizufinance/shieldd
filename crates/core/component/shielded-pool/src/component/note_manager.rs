use anyhow::Result;
use async_trait::async_trait;
use cnidarium::StateWrite;
use shieldd_sdk_asset::Value;
use shieldd_sdk_compliance::{ComplianceRegistryRead, UserAssetStatus};
use shieldd_sdk_keys::Address;
use shieldd_sdk_sct::component::tree::SctManager;
use shieldd_sdk_sct::CommitmentSource;
use shieldd_sdk_tct as tct;
use tracing::instrument;

use super::StateReadExt;
#[cfg(test)]
use super::StateWriteExt;
use crate::state_key;
use crate::{Note, NotePayload, Rseed, VolumeAccumulatorPayload};

/// Manages the addition of new notes to the chain state.
#[async_trait]
pub trait NoteManager: StateWrite + StateReadExt + ComplianceRegistryRead {
    /// Mint a new (public) note into the shielded pool.
    ///
    /// Most notes in the shielded pool are created by client transactions.
    /// This method allows the chain to inject new value into the shielded pool
    /// on its own.
    #[instrument(skip(self, value, address, source))]
    async fn mint_note(
        &mut self,
        value: Value,
        address: &Address,
        source: CommitmentSource,
    ) -> Result<()> {
        tracing::debug!(?value, ?address, "minting tokens");
        let payload_key = if self.is_asset_regulated(value.asset_id).await? {
            let leaf = self
                .get_user_leaf(address, value.asset_id)
                .await?
                .ok_or_else(|| anyhow::anyhow!("regulated mint recipient is not registered"))?;
            anyhow::ensure!(
                leaf.status == UserAssetStatus::Active,
                "regulated mint recipient is not active"
            );
            self.get_asset_policy(value.asset_id)
                .await?
                .ok_or_else(|| anyhow::anyhow!("regulated mint asset policy is missing"))?
                .ring
                .audit_keys
                .payload
        } else {
            *shieldd_sdk_compliance::UNREGULATED_RING
        };
        // These notes are public, so we don't need a blinding factor for
        // privacy, but since the note commitments are determined by the note
        // contents, we need to have unique (deterministic) blinding factors for
        // each note, so they cannot collide.
        //
        // Hashing the current SCT root would be sufficient, since it will
        // change every time we insert a new note.  But computing the SCT root
        // is very slow, so instead we hash the current position.

        let source_for_append = source.clone();
        let (position, note_payload) = self
            .add_sct_commitment_from_position(source_for_append, |position| {
                let note_payload =
                    build_position_derived_mint_payload(value, address, position, payload_key)?;

                Ok((note_payload.note_commitment, note_payload))
            })
            .await?;

        let mut payloads = self.pending_note_payloads();
        payloads.push_back((position, note_payload, source));
        self.object_put(state_key::pending_notes(), payloads);

        Ok(())
    }

    #[instrument(skip(self, note_payload, source), fields(commitment = ?note_payload.note_commitment))]
    async fn add_note_payload(
        &mut self,
        note_payload: NotePayload,
        source: CommitmentSource,
    ) -> Result<()> {
        tracing::debug!(source = ?source);

        // Action handlers emit semantic note-created/nullifier-spent events.
        // NoteManager only stages SCT and compact-block state.

        let position = self
            .add_sct_commitment(note_payload.note_commitment, source.clone())
            .await?;

        // Queue the payload for compact-block emission after SCT insertion.

        let mut payloads = self.pending_note_payloads();
        payloads.push_back((position, note_payload, source));
        self.object_put(state_key::pending_notes(), payloads);
        Ok(())
    }

    async fn add_volume_accumulator_payload(
        &mut self,
        payload: VolumeAccumulatorPayload,
        source: CommitmentSource,
    ) -> Result<()> {
        let position = self
            .add_sct_commitment(payload.commitment, source.clone())
            .await?;
        let mut payloads = self.pending_volume_accumulator_payloads();
        payloads.push_back((position, payload, source));
        self.object_put(state_key::pending_volume_accumulator_payloads(), payloads);
        Ok(())
    }

    fn pending_note_payloads(
        &self,
    ) -> imbl::Vector<(tct::Position, NotePayload, CommitmentSource)> {
        self.object_get(state_key::pending_notes())
            .unwrap_or_default()
    }

    fn pending_volume_accumulator_payloads(
        &self,
    ) -> imbl::Vector<(tct::Position, VolumeAccumulatorPayload, CommitmentSource)> {
        self.object_get(state_key::pending_volume_accumulator_payloads())
            .unwrap_or_default()
    }
}

impl<T: StateWrite + StateReadExt + ComplianceRegistryRead + ?Sized> NoteManager for T {}

pub fn build_position_derived_mint_payload(
    value: Value,
    address: &Address,
    position: tct::Position,
    payload_key: shieldd_sdk_crypto::SubgroupPoint,
) -> Result<NotePayload> {
    let (note, capsule) =
        Note::from_parts_with_recovery(address.clone(), value, mint_rseed(position)?, payload_key)?;
    Ok(note.payload(capsule))
}

fn mint_rseed(position: tct::Position) -> Result<Rseed> {
    let position_u64: u64 = position.into();
    let rseed_bytes: [u8; 32] = blake2b_simd::Params::default()
        .personal(b"ShielddMint")
        .to_state()
        .update(&position_u64.to_le_bytes())
        .finalize()
        .as_bytes()[0..32]
        .try_into()?;
    Ok(Rseed(rseed_bytes))
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::discovery;
    use cnidarium::{StateDelta, TempStorage};
    use shieldd_sdk_asset::{Value, BASE_ASSET_ID};
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_num::Amount;
    use std::ops::Deref as _;

    #[tokio::test]
    async fn exhausted_sct_returns_without_panicking_or_staging_payloads() -> Result<()> {
        use futures::FutureExt;
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        let tree = tct::Tree::load(
            tct::storage::StoredPosition::Full,
            tct::Forgotten::default(),
        )
        .load_hashes()
        .finish();
        state.write_sct_cache(tree);
        let result = std::panic::AssertUnwindSafe(async {
            assert!(state
                .add_note_payload(NotePayload::dummy(), CommitmentSource::Genesis)
                .await
                .is_err());
        })
        .catch_unwind()
        .await;
        assert!(
            result.is_ok(),
            "capacity rejection must return to the caller"
        );
        assert!(state.pending_note_payloads().is_empty());
        Ok(())
    }

    #[tokio::test]
    async fn regulated_mint_uses_asset_payload_and_requires_active_registration() -> Result<()> {
        use shieldd_sdk_compliance::{
            AssetPolicy, ComplianceLeaf, ComplianceRegistryWrite, UserAssetStatusAction,
        };
        use shieldd_sdk_crypto::{generators::SPEND_AUTH, Fq, Fr};
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        use cnidarium_component::Component;
        shieldd_sdk_compliance::Compliance::init_chain(
            &mut state,
            Some(&shieldd_sdk_compliance::GenesisContent::default()),
        )
        .await;
        state.put_current_discovery_parameters(discovery::Parameters::default());
        let address = test_keys::ADDRESS_0.clone();
        let value = Value {
            amount: 42u64.into(),
            asset_id: shieldd_sdk_asset::asset::Id(Fq::from(77u64)),
        };
        let policy = AssetPolicy::for_test(
            *SPEND_AUTH * Fr::from(3u64),
            100,
            *SPEND_AUTH * Fr::from(5u64),
        );
        state
            .test_only_register_asset(value.asset_id, policy.clone(), true)
            .await?;
        assert!(state
            .mint_note(value, &address, CommitmentSource::Genesis)
            .await
            .is_err());
        assert!(state.pending_note_payloads().is_empty());
        state
            .test_only_add_compliance_leaf(ComplianceLeaf::registered_for_test(
                address.clone(),
                value.asset_id,
            ))
            .await?;
        state
            .mint_note(value, &address, CommitmentSource::Genesis)
            .await?;
        let payloads = state.pending_note_payloads();
        let (position, actual, _) = &payloads[0];
        let expected = build_position_derived_mint_payload(
            value,
            &address,
            *position,
            policy.ring.audit_keys.payload,
        )?;
        assert_eq!(actual.note_commitment, expected.note_commitment);
        assert_eq!(actual.recovery_capsule, expected.recovery_capsule);
        let wrong =
            build_position_derived_mint_payload(value, &address, *position, policy.ring.ring_pk)?;
        assert_ne!(actual.note_commitment, wrong.note_commitment);
        state
            .apply_user_status_action(&address, value.asset_id, UserAssetStatusAction::Freeze, 1)
            .await?;
        assert!(state
            .mint_note(value, &address, CommitmentSource::Genesis)
            .await
            .is_err());
        assert_eq!(state.pending_note_payloads().len(), 1);
        Ok(())
    }

    #[tokio::test]
    async fn mint_note_stages_position_derived_payloads() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        state.put_current_discovery_parameters(discovery::Parameters::default());
        let address = test_keys::ADDRESS_0.deref().clone();
        let value = Value {
            amount: Amount::from(1u64),
            asset_id: *BASE_ASSET_ID,
        };
        let payload_key = *shieldd_sdk_compliance::UNREGULATED_RING;

        state
            .mint_note(value, &address, CommitmentSource::Genesis)
            .await?;
        state
            .mint_note(value, &address, CommitmentSource::Genesis)
            .await?;

        let payloads = state.pending_note_payloads();
        assert_eq!(payloads.len(), 2);
        let first_position = payloads[0].0;
        let second_position = payloads[1].0;
        assert_eq!(u64::from(second_position), u64::from(first_position) + 1);
        assert_ne!(payloads[0].1.note_commitment, payloads[1].1.note_commitment);

        for (position, payload, source) in payloads {
            let (expected_note, capsule) = Note::from_parts_with_recovery(
                address.clone(),
                value,
                mint_rseed(position)?,
                payload_key,
            )?;
            let expected_payload = expected_note.payload(capsule);
            assert_eq!(payload.note_commitment, expected_payload.note_commitment);
            assert_eq!(
                payload.ephemeral_key.to_bytes(),
                expected_payload.ephemeral_key.to_bytes()
            );
            assert_eq!(payload.encrypted_note.0, expected_payload.encrypted_note.0);
            assert_eq!(source, CommitmentSource::Genesis);
        }

        Ok(())
    }

    #[tokio::test]
    async fn position_derived_mint_matches_immediate_mint_payload() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        state.put_current_discovery_parameters(discovery::Parameters::default());
        let address = test_keys::ADDRESS_0.deref().clone();
        let value = Value {
            amount: Amount::from(1u64),
            asset_id: *BASE_ASSET_ID,
        };
        let payload_key = *shieldd_sdk_compliance::UNREGULATED_RING;

        state
            .mint_note(value, &address, CommitmentSource::Genesis)
            .await?;
        let payloads = state.pending_note_payloads();
        let (position, immediate_payload, _) = &payloads[0];

        let rebuilt_payload =
            build_position_derived_mint_payload(value, &address, *position, payload_key)?;

        assert_eq!(
            immediate_payload.note_commitment,
            rebuilt_payload.note_commitment
        );
        assert_eq!(
            immediate_payload.ephemeral_key.to_bytes(),
            rebuilt_payload.ephemeral_key.to_bytes()
        );
        assert_eq!(
            immediate_payload.encrypted_note.0,
            rebuilt_payload.encrypted_note.0
        );

        Ok(())
    }
}
