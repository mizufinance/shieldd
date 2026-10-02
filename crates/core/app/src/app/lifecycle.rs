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
        begin_block: &shieldd_sdk_storage::BlockContext,
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
        if let Some(tree) = self.state.object_get::<shieldd_sdk_tct::Tree>(
            shieldd_sdk_sct::state_key::cache::cached_state_commitment_tree(),
        ) {
            replacement.object_put(
                shieldd_sdk_sct::state_key::cache::cached_state_commitment_tree(),
                tree,
            );
        }
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
        if let Some(tree) = self.state.object_get::<shieldd_sdk_tct::Tree>(
            shieldd_sdk_sct::state_key::cache::cached_state_commitment_tree(),
        ) {
            state.object_put(
                shieldd_sdk_sct::state_key::cache::cached_state_commitment_tree(),
                tree,
            );
        }
        state.object_put(shieldd_sdk_sct::state_key::nullifiers::reader(), reader);
        self.state = Arc::new(state);
    }

    pub(super) async fn prepare_native(
        storage: &Storage,
        state: StateDelta<Snapshot>,
        height: u64,
        block_id: [u8; 32],
    ) -> Result<shieldd_sdk_storage::Prepared> {
        let (boundary, changes) = Self::native_inputs(&state, height, block_id).await?;
        storage.prepare(state, boundary, changes)
    }
    pub(super) async fn native_inputs(
        state: &StateDelta<Snapshot>,
        height: u64,
        block_id: [u8; 32],
    ) -> Result<(
        shieldd_sdk_storage::BlockBoundary,
        std::collections::BTreeMap<
            shieldd_sdk_storage::ParticipantId,
            Vec<shieldd_sdk_storage::ParticipantChange>,
        >,
    )> {
        use shieldd_sdk_storage::{BlockBoundary, ParticipantChange, ParticipantId, SPENT};
        use std::collections::BTreeMap;
        anyhow::ensure!(
            state.get_block_height().await? == height,
            "native state height differs from host decision"
        );
        let chain_id = state.get_chain_id().await?;
        let registry = state
            .get_raw(crate::registry_binding::KEY)
            .await?
            .context("native protocol binding is missing")?;
        let mut protocol = sha2::Sha256::new();
        protocol.update(b"shieldd.protocol.nomt-forest.v1.abi5\0");
        protocol.update(&registry);
        let protocol = protocol.finalize().into();
        // InitChain has no block-time input and cannot consume nullifiers.
        // The height-zero manifest uses the protocol epoch; all later days
        // derive exclusively from canonical BeginBlock time.
        let time = if height == 0 {
            0
        } else {
            state.get_current_block_timestamp().await?.unix_timestamp()
        };
        let mut changes: BTreeMap<ParticipantId, Vec<ParticipantChange>> = BTreeMap::new();
        let permanent = state.pending_nullifiers();
        for nullifier in &permanent {
            let key = shieldd_sdk_storage::nullifier_key(&nullifier.to_bytes());
            let id = ParticipantId::permanent(shieldd_sdk_storage::nullifier_shard(&key))?;
            changes.entry(id).or_default().push(ParticipantChange {
                key,
                value: Some(SPENT.to_vec()),
            });
        }
        use shieldd_sdk_shielded_pool::component::{PendingVolume, PENDING_VOLUME};
        let volumes = state
            .object_get::<PendingVolume>(PENDING_VOLUME)
            .unwrap_or_default();
        let count = permanent.len() + volumes.values().map(|set| set.len()).sum::<usize>();
        anyhow::ensure!(
            count <= shieldd_sdk_storage::MAX_NULLIFIERS_PER_BLOCK,
            "combined native nullifier limit exceeded"
        );
        for (day, values) in &volumes {
            let id = ParticipantId::volume(*day)?;
            for nullifier in values {
                changes.entry(id).or_default().push(ParticipantChange {
                    key: shieldd_sdk_storage::volume_key(*day, nullifier)?,
                    value: Some(SPENT.to_vec()),
                });
            }
        }
        for delta in changes.values_mut() {
            delta.sort_by_key(|change| change.key);
        }
        Ok((
            BlockBoundary {
                chain_id,
                protocol,
                height,
                block_id,
                time,
            },
            changes,
        ))
    }

    /// Direct owning-suite persistence has no SDK side effects to replay.
    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn commit_for_testing(&mut self, storage: Storage) -> Result<Commitment> {
        let state = self.take_commit_state(&storage).await?;
        let height = state.get_block_height().await?;
        let update = Self::prepare_native(
            &storage,
            state,
            height,
            if height == 0 {
                [0; 32]
            } else {
                [height as u8; 32]
            },
        )
        .await?;
        let committed = storage.materialize(update)?;
        self.reset_committed(
            &storage,
            shieldd_sdk_sct::permanent_nullifiers::Reader(storage.clone()),
        );
        Ok(Commitment(committed.digest()?))
    }
}
