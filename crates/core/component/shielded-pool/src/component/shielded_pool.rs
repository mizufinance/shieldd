use std::sync::Arc;

use crate::params::ShieldedPoolParameters;
use crate::{discovery, genesis, state_key};
use anyhow::anyhow;
use anyhow::Result;
use async_trait::async_trait;
use shieldd_sdk_storage::Component;
use shieldd_sdk_storage::{StateRead, StateWrite};

use shieldd_sdk_proto::StateReadProto as _;
use shieldd_sdk_proto::StateWriteProto as _;
use shieldd_sdk_sct::component::tree::{SctManager as _, SctRead as _, MAX_NULLIFIERS_PER_BLOCK};
use shieldd_sdk_sct::CommitmentSource;
use shieldd_sdk_sct::Nullifier;
use tracing::instrument;

use super::{AssetRegistry, NoteManager};

pub struct ShieldedPool {}

const GENESIS_SCT_BLOCK_CAPACITY: usize = u16::MAX as usize + 1;
pub const PENDING_VOLUME: &str = "shielded_pool/volume_nullifiers/pending";
pub type PendingVolume = imbl::OrdMap<shieldd_sdk_storage::Day, imbl::OrdSet<[u8; 32]>>;

#[async_trait]
impl Component for ShieldedPool {
    type AppState = genesis::Content;

    #[instrument(name = "shielded_pool", skip(state, app_state))]
    async fn init_chain<S: StateWrite>(mut state: S, app_state: Option<&Self::AppState>) {
        match app_state {
            None => { /* Checkpoint -- no-op */ }
            Some(genesis) => {
                // TODO(erwan): the handling of those parameters is a bit weird.
                // rationalize it before merging
                state.put_shielded_pool_params(genesis.shielded_pool_params.clone());
                state.put_current_discovery_parameters(
                    genesis.shielded_pool_params.discovery_params.clone(),
                );
                state.put_previous_discovery_parameters(
                    genesis.shielded_pool_params.discovery_params.clone(),
                );
                let mut allocations_in_current_sct_block = 0usize;

                // Register a denom for each asset in the genesis state
                for allocation in &genesis.allocations {
                    tracing::debug!(?allocation, "processing allocation");
                    assert_ne!(
                        allocation.raw_amount,
                        0u128.into(),
                        "Genesis allocations contain empty note",
                    );
                    // `InitChain` can mint more notes than fit in a single SCT block. Because no
                    // ABCI `end_block` runs during genesis, we have to roll the frontier forward
                    // here to keep large synthetic allocation sets buildable.
                    if allocations_in_current_sct_block == GENESIS_SCT_BLOCK_CAPACITY {
                        let mut tree = state.get_sct().await;
                        tree.end_block()
                            .expect("ending a genesis SCT block should never fail");
                        state.write_sct_cache(tree);
                        allocations_in_current_sct_block = 0;
                    }

                    state.register_denom(&allocation.denom()).await;
                    state
                        .mint_note(
                            allocation.value(),
                            &allocation.address,
                            CommitmentSource::Genesis,
                        )
                        .await
                        .expect("able to mint note for genesis allocation");
                    allocations_in_current_sct_block += 1;
                }
            }
        }
    }

    #[instrument(name = "shielded_pool", skip(state, _begin_block))]
    async fn begin_block<S: StateWrite + 'static>(
        state: &mut Arc<S>,
        _begin_block: &shieldd_sdk_storage::BlockContext,
    ) {
        // Retire generations through the next native manifest. There are no
        // per-entry authenticated deletions or day-marker scans on this path.
        Arc::get_mut(state)
            .expect("the state should not be shared")
            .object_put(PENDING_VOLUME, PendingVolume::new());
        Arc::get_mut(state)
            .expect("the state should not be shared")
            .object_put(shieldd_sdk_storage::PENDING_VOLUME_COUNT, 0usize);
    }

    #[instrument(name = "shielded_pool", skip_all)]
    async fn end_block<S: StateWrite + 'static>(state: &mut Arc<S>, height: u64) {
        let state = Arc::get_mut(state).expect("the state should not be shared");
        let configured = state
            .get_shielded_pool_params()
            .await
            .expect("should be able to read state");
        let current = state
            .get_current_discovery_parameters()
            .await
            .expect("should be able to read state");
        if configured.discovery_params.regulated_precision != current.regulated_precision
            || configured.discovery_params.unregulated_precision != current.unregulated_precision
        {
            let new = discovery::Parameters::new(
                configured.discovery_params.regulated_precision,
                configured.discovery_params.unregulated_precision,
                height,
            )
            .expect("validated discovery parameters remain ordered");
            state.put_previous_discovery_parameters(current);
            state.put_current_discovery_parameters(new);
        }
    }

    async fn end_epoch<S: StateWrite + 'static>(mut _state: &mut Arc<S>) -> Result<()> {
        Ok(())
    }
}
/// Extension trait providing read access to shielded pool data.
#[async_trait]
pub trait StateReadExt: StateRead {
    async fn get_current_discovery_parameters(&self) -> Result<discovery::Parameters> {
        self.get(discovery::state_key::parameters::current())
            .await?
            .ok_or_else(|| anyhow!("missing current discovery parameters"))
    }

    /// Gets the previously active discovery parameters.
    async fn get_previous_discovery_parameters(&self) -> Result<discovery::Parameters> {
        self.get(discovery::state_key::parameters::previous())
            .await?
            .ok_or_else(|| anyhow!("missing previous discovery parameters"))
    }

    async fn get_shielded_pool_params(&self) -> Result<ShieldedPoolParameters> {
        self.get(state_key::shielded_pool_params())
            .await?
            .ok_or_else(|| anyhow!("Missing ShieldedPoolParameters"))
    }

    async fn host_withdrawals_enabled(&self) -> Result<bool> {
        Ok(self
            .get_raw(state_key::host_withdrawals_enabled())
            .await?
            .is_some())
    }

    async fn volume_nullifier_exists(&self, day_start: u64, nullifier: Nullifier) -> Result<bool> {
        let day = shieldd_sdk_storage::Day(day_start);
        anyhow::ensure!(day_start % 86_400 == 0, "noncanonical volume day");
        if self
            .object_get::<PendingVolume>(PENDING_VOLUME)
            .is_some_and(|pending| {
                pending
                    .get(&day)
                    .is_some_and(|set| set.contains(&nullifier.to_bytes()))
            })
        {
            return Ok(true);
        }
        let reader = self
            .object_get::<shieldd_sdk_sct::permanent_nullifiers::Reader>(
                shieldd_sdk_sct::state_key::nullifiers::reader(),
            )
            .ok_or_else(|| anyhow!("native nullifier reader is missing"))?;
        reader.volume_exists(self, day, nullifier)
    }

    async fn check_volume_nullifier_unspent(
        &self,
        day_start: u64,
        nullifier: Nullifier,
    ) -> Result<()> {
        anyhow::ensure!(
            !self.volume_nullifier_exists(day_start, nullifier).await?,
            "daily volume nullifier {nullifier} is already spent for UTC day {day_start}"
        );
        Ok(())
    }
}

impl<T: StateRead + ?Sized> StateReadExt for T {}

/// Extension trait providing write access to shielded pool data.
#[async_trait]
pub trait StateWriteExt: StateWrite + StateReadExt {
    fn put_shielded_pool_params(&mut self, params: ShieldedPoolParameters) {
        self.put(crate::state_key::shielded_pool_params().into(), params)
    }

    fn put_host_withdrawals_enabled(&mut self, enabled: bool) {
        if enabled {
            self.put_raw(crate::state_key::host_withdrawals_enabled().into(), vec![1])
        } else {
            self.delete(crate::state_key::host_withdrawals_enabled().into())
        }
    }

    fn put_current_discovery_parameters(&mut self, params: discovery::Parameters) {
        self.put(discovery::state_key::parameters::current().into(), params)
    }

    fn put_previous_discovery_parameters(&mut self, params: discovery::Parameters) {
        self.put(discovery::state_key::parameters::previous().into(), params)
    }

    async fn record_volume_nullifier(
        &mut self,
        day_start: u64,
        nullifier: Nullifier,
    ) -> Result<()> {
        self.check_volume_nullifier_unspent(day_start, nullifier)
            .await?;
        let day = shieldd_sdk_storage::Day(day_start);
        let mut pending = self
            .object_get::<PendingVolume>(PENDING_VOLUME)
            .unwrap_or_default();
        let mut values = pending.get(&day).cloned().unwrap_or_default();
        values.insert(nullifier.to_bytes());
        pending.insert(day, values);
        let total = pending.values().map(|values| values.len()).sum::<usize>()
            + self.pending_nullifiers().len();
        if total > MAX_NULLIFIERS_PER_BLOCK {
            return Err(shieldd_sdk_storage::ProtocolLimitExceeded(
                "combined block nullifier limit exceeded",
            )
            .into());
        }
        self.object_put(
            shieldd_sdk_storage::PENDING_VOLUME_COUNT,
            total - self.pending_nullifiers().len(),
        );
        self.object_put(PENDING_VOLUME, pending);
        Ok(())
    }
}

impl<T: StateWrite + ?Sized> StateWriteExt for T {}

#[cfg(test)]
mod tests {
    use super::*;
    use shieldd_sdk_crypto::Fq;
    use shieldd_sdk_storage::{StateDelta, TempStorage};

    #[tokio::test]
    async fn volume_nullifiers_are_exclusive_in_the_pending_generation() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        state.object_put(
            shieldd_sdk_sct::state_key::nullifiers::reader(),
            shieldd_sdk_sct::permanent_nullifiers::Reader(storage.storage().clone()),
        );
        let day_start = 86_400u64;
        let nullifier = Nullifier(Fq::from(9u64));
        state.record_volume_nullifier(day_start, nullifier).await?;
        assert!(state.volume_nullifier_exists(day_start, nullifier).await?);
        assert!(state
            .record_volume_nullifier(day_start, nullifier)
            .await
            .is_err());
        assert!(
            !state
                .volume_nullifier_exists(day_start + 86_400, nullifier)
                .await?
        );
        Ok(())
    }
}
