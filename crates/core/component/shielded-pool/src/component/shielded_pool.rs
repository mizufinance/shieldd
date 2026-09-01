use std::sync::Arc;

use crate::params::ShieldedPoolParameters;
use crate::{discovery, genesis, state_key};
use anyhow::anyhow;
use anyhow::Result;
use async_trait::async_trait;
use cnidarium::{StateRead, StateWrite};
use cnidarium_component::Component;
use shieldd_sdk_proto::StateReadProto as _;
use shieldd_sdk_proto::StateWriteProto as _;
use shieldd_sdk_sct::component::tree::{SctManager as _, SctRead as _};
use shieldd_sdk_sct::CommitmentSource;
use tendermint::v0_37::abci;
use tracing::instrument;

use super::{AssetRegistry, NoteManager};

pub struct ShieldedPool {}

const GENESIS_SCT_BLOCK_CAPACITY: usize = u16::MAX as usize + 1;

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

    #[instrument(name = "shielded_pool", skip(_state, _begin_block))]
    async fn begin_block<S: StateWrite + 'static>(
        _state: &mut Arc<S>,
        _begin_block: &abci::request::BeginBlock,
    ) {
    }

    #[instrument(name = "shielded_pool", skip_all)]
    async fn end_block<S: StateWrite + 'static>(
        state: &mut Arc<S>,
        end_block: &abci::request::EndBlock,
    ) {
        let height: u64 = end_block
            .height
            .try_into()
            .expect("height should not be negative");
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
}

impl<T: StateWrite + ?Sized> StateWriteExt for T {}
