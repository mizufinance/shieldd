use super::*;

impl App {
    /// Initializes the Shieldd execution state for a host-owned chain.
    pub async fn init_chain(&mut self, app_state: &AppState) {
        let mut state_tx = self
            .state
            .try_begin_transaction()
            .expect("state Arc should not be referenced elsewhere");
        match app_state {
            AppState::Content(genesis) => {
                crate::app_version::initialize_app_version(&mut state_tx);
                crate::registry_binding::initialize(&mut state_tx, self.registry.id());
                state_tx.put_chain_id(genesis.chain_id.clone());
                state_tx.put_host_withdrawals_enabled(true);
                Sct::init_chain(&mut state_tx, Some(&genesis.sct_content)).await;
                Compliance::init_chain(&mut state_tx, Some(&genesis.compliance_content)).await;
                ShieldedPool::init_chain(&mut state_tx, Some(&genesis.shielded_pool_content)).await;
                FeeComponent::init_chain(&mut state_tx, Some(&genesis.fee_content)).await;

                state_tx
                    .finish_block()
                    .await
                    .expect("must be able to finish compact block");
            }
            AppState::Checkpoint(_) => {
                ShieldedPool::init_chain(&mut state_tx, None).await;
                FeeComponent::init_chain(&mut state_tx, None).await;
                Compliance::init_chain(&mut state_tx, None).await;
            }
        };

        state_tx.apply();
    }

    /// Runs per-block hooks for execution components only.
    pub async fn begin_block(
        &mut self,
        begin_block: &cnidarium_component::BlockContext,
    ) -> anyhow::Result<Vec<abci::Event>> {
        shieldd_sdk_compliance::admission::state::validate_time(&*self.state, begin_block.time)
            .await?;
        let mut state_tx = StateDelta::new(self.state.clone());

        clear_block_fee_price_cache(&mut state_tx);

        let mut arc_state_tx = Arc::new(state_tx);
        Sct::begin_block(&mut arc_state_tx, begin_block).await;
        Compliance::begin_block(&mut arc_state_tx, begin_block).await;
        ShieldedPool::begin_block(&mut arc_state_tx, begin_block).await;
        FeeComponent::begin_block(&mut arc_state_tx, begin_block).await;

        let state_tx = Arc::try_unwrap(arc_state_tx)
            .expect("components did not retain copies of shared state");

        Ok(self.apply(state_tx))
    }

    /// Flushes host transactions and closes execution-component block and epoch state.
    pub async fn end_block(&mut self, height: u64) -> Vec<abci::Event> {
        self.flush_deferred_block_transactions()
            .await
            .expect("must be able to flush deferred block transactions in end_block");
        let state_tx = StateDelta::new(self.state.clone());

        tracing::debug!("running host app components' `end_block` hooks");
        let mut arc_state_tx = Arc::new(state_tx);
        Sct::end_block(&mut arc_state_tx, height).await;
        ShieldedPool::end_block(&mut arc_state_tx, height).await;
        FeeComponent::end_block(&mut arc_state_tx, height).await;
        Compliance::end_block(&mut arc_state_tx, height).await;
        let mut state_tx = Arc::try_unwrap(arc_state_tx)
            .expect("components did not retain copies of shared state");
        tracing::debug!("finished host app components' `end_block` hooks");

        let current_height = state_tx
            .get_block_height()
            .await
            .expect("able to get block height in end_block");
        let current_epoch = state_tx
            .get_current_epoch()
            .await
            .expect("able to get current epoch in end_block");

        let is_end_epoch = current_epoch.is_scheduled_epoch_end(
            current_height,
            state_tx
                .get_epoch_duration_parameter()
                .await
                .expect("able to get epoch duration in end_block"),
        ) || state_tx.is_epoch_ending_early().await;

        if is_end_epoch {
            tracing::info!(?current_height, "ending host epoch");

            let mut arc_state_tx = Arc::new(state_tx);

            Sct::end_epoch(&mut arc_state_tx)
                .await
                .expect("able to call end_epoch on Sct component");
            ShieldedPool::end_epoch(&mut arc_state_tx)
                .await
                .expect("able to call end_epoch on shielded pool component");
            FeeComponent::end_epoch(&mut arc_state_tx)
                .await
                .expect("able to call end_epoch on Fee component");

            let mut state_tx = Arc::try_unwrap(arc_state_tx)
                .expect("components did not retain copies of shared state");

            state_tx
                .finish_epoch()
                .await
                .expect("must be able to finish compact block");

            shieldd_sdk_sct::component::clock::EpochManager::put_epoch_by_height(
                &mut state_tx,
                current_height + 1,
                Epoch {
                    index: current_epoch.index + 1,
                    start_height: current_height + 1,
                },
            );

            self.apply(state_tx)
        } else {
            shieldd_sdk_sct::component::clock::EpochManager::put_epoch_by_height(
                &mut state_tx,
                current_height + 1,
                current_epoch,
            );

            state_tx
                .finish_block()
                .await
                .expect("must be able to finish compact block");

            self.apply(state_tx)
        }
    }

    /// Transfer the finalized disposable state to the persistence owner.
    pub(super) async fn take_commit_state(
        &mut self,
        storage: &Storage,
    ) -> Result<StateDelta<Snapshot>> {
        self.state
            .ensure_nullifier_block_sealed()
            .context("cannot commit an open nullifier block")?;
        self.flush_deferred_block_transactions().await?;
        let mut replacement = StateDelta::new(storage.latest_snapshot());
        replacement.object_put(
            shieldd_sdk_sct::state_key::nullifiers::reader(),
            self.nullifier_reader(),
        );
        let previous = std::mem::replace(&mut self.state, Arc::new(replacement));
        match Arc::try_unwrap(previous) {
            Ok(state) => Ok(state),
            Err(previous) => {
                self.state = previous;
                anyhow::bail!("commit requires exclusive ownership of application state")
            }
        }
    }

    pub(super) fn reset_committed(
        &mut self,
        storage: &Storage,
        reader: shieldd_sdk_sct::permanent_nullifiers::Reader,
    ) {
        let snapshot = storage.latest_snapshot();
        self.snapshot_version = snapshot.version();
        self.committed_snapshot = snapshot.clone();
        let mut state = StateDelta::new(snapshot);
        state.object_put(shieldd_sdk_sct::state_key::nullifiers::reader(), reader);
        self.state = Arc::new(state);
    }

    /// Standalone test/benchmark persistence; production commits are host-owned.
    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn commit_for_testing(&mut self, storage: Storage) -> Result<RootHash> {
        let state = self.take_commit_state(&storage).await?;
        let height = state.get_block_height().await?;
        let accepted = state.pending_nullifiers().iter().copied().collect();
        let mut writer =
            PermanentWriter::from_reader(storage.clone(), self.nullifier_reader()).await?;
        writer
            .prepare(state, height, [height as u8; 32], accepted)
            .await?;
        writer.seal()?;
        let committed = writer.commit()?;
        self.reset_committed(&storage, writer.reader());
        Ok(RootHash(
            committed
                .application_root
                .context("committed root is missing")?,
        ))
    }
}
