//! Transaction validation and execution against the current App state.

use super::*;

#[cfg(test)]
#[derive(Default)]
pub(super) struct HistoricalCheckGate {
    entered: tokio::sync::Notify,
    release: tokio::sync::Notify,
}

pub(super) struct DecodedTransaction<'a> {
    bytes: &'a [u8],
    tx: Arc<Transaction>,
}

impl<'a> DecodedTransaction<'a> {
    pub(super) fn decode(bytes: &'a [u8]) -> Result<Self> {
        anyhow::ensure!(
            transaction_size_allowed(bytes.len()),
            "transaction size {} exceeds maximum {}",
            bytes.len(),
            MAX_TRANSACTION_SIZE_BYTES
        );
        Ok(Self {
            bytes,
            tx: Arc::new(
                Transaction::decode_canonical(bytes).context("decoding host transaction")?,
            ),
        })
    }

    pub(super) fn tx(&self) -> &Transaction {
        &self.tx
    }
}

impl App {
    /// Verify and execute one transaction, reusing byte-bound cached proof results.
    pub async fn deliver_tx_bytes(
        &mut self,
        tx_bytes: &[u8],
        cache: Option<&StatelessCache>,
    ) -> Result<Vec<abci::Event>> {
        self.deliver_tx_input(tx_bytes, None, cache).await
    }

    pub(super) async fn deliver_decoded_tx(
        &mut self,
        decoded: DecodedTransaction<'_>,
        cache: Option<&StatelessCache>,
    ) -> Result<Vec<abci::Event>> {
        self.deliver_tx_input(decoded.bytes, Some(decoded.tx), cache)
            .await
    }

    async fn deliver_tx_input(
        &mut self,
        tx_bytes: &[u8],
        decoded: Option<Arc<Transaction>>,
        cache: Option<&StatelessCache>,
    ) -> Result<Vec<abci::Event>> {
        anyhow::ensure!(
            transaction_size_allowed(tx_bytes.len()),
            "transaction size {} exceeds maximum {}",
            tx_bytes.len(),
            MAX_TRANSACTION_SIZE_BYTES
        );
        if let Some(cache) = cache {
            let hash: [u8; 32] = sha2::Sha256::digest(tx_bytes).into();
            let artifact = match cache.get(self.registry.id(), &hash, tx_bytes) {
                Some(CacheEntry::FullyVerified(artifact)) => {
                    Self::record_artifact_reuse("checktx");
                    Some(artifact)
                }
                Some(CacheEntry::Invalid) => {
                    anyhow::bail!("transaction previously failed stateless checks")
                }
                None => None,
            };
            if let Some(artifact) = artifact {
                return self
                    .deliver_tx_with_verified_stateless(artifact, None)
                    .await;
            }
        }

        let tx = match decoded {
            Some(tx) => tx,
            None => {
                Arc::new(Transaction::decode_canonical(tx_bytes).context("decoding transaction")?)
            }
        };
        let stage = if cache.is_some() {
            "checktx"
        } else {
            "checktx_uncached"
        };
        let artifact = {
            let stateless =
                Self::build_tx_artifact_for_stage(self.registry.clone(), stage, tx.clone());
            let state = self.state.clone();
            #[cfg(test)]
            let gate = self.historical_check_gate.clone();
            let historical = async move {
                #[cfg(test)]
                if let Some(gate) = gate {
                    gate.entered.notify_one();
                    gate.release.notified().await;
                }
                tx.check_historical(state).await
            }
            .instrument(tracing::Span::current());
            tokio::pin!(stateless, historical);
            let mut historical_result = None;
            let artifact_result = tokio::select! {
                result = &mut stateless => result,
                result = &mut historical => {
                    historical_result = Some(result);
                    stateless.await
                }
            };
            // Stateless rejection wins; dropping the scoped historical future releases state.
            if let Some(cache) = cache {
                match &artifact_result {
                    Ok(artifact) => cache.insert_fully_verified(tx_bytes, artifact.clone())?,
                    Err(_) => cache.insert_invalid(self.registry.id(), tx_bytes)?,
                }
            }
            let artifact = artifact_result.context("extract stateless failed")?;
            match historical_result {
                Some(result) => result?,
                None => historical.await?,
            }
            artifact
        };
        self.execute_tx_checked_historical(artifact).await
    }

    pub(super) async fn deliver_tx_with_verified_stateless(
        &mut self,
        artifact: Arc<VerifiedTxArtifact>,
        historical_context: Option<&HistoricalCheckContext>,
    ) -> Result<Vec<abci::Event>> {
        artifact.ensure_registry(&self.registry)?;
        let tx = artifact.tx().clone();

        match historical_context {
            Some(context) => {
                check_historical_with_context(Arc::as_ref(&tx), self.state.clone(), context)
                    .await
                    .context("check_stateful failed")?
            }
            None => tx
                .check_historical(self.state.clone())
                .await
                .context("check_stateful failed")?,
        }

        let events = self.execute_tx_checked_historical(artifact).await?;

        Ok(events)
    }

    pub(super) async fn execute_tx_checked_historical(
        &mut self,
        artifact: Arc<VerifiedTxArtifact>,
    ) -> Result<Vec<abci::Event>> {
        artifact.ensure_registry(&self.registry)?;
        let tx = artifact.tx().clone();

        // At this point, the stateful checks should have completed,
        // leaving us with exclusive access to the Arc<State>.

        let tx_id = tx.id();
        let state_arc_strong_count = Arc::strong_count(&self.state);
        let mut state_tx = self
            .state
            .try_begin_transaction()
            .ok_or_else(|| {
                anyhow::anyhow!(
                    "CheckTx could not begin state transaction after historical checks: tx_id={}, action_count={}, state_arc_strong_count={}",
                    tx_id,
                    tx.actions().count(),
                    state_arc_strong_count,
                )
            })?;

        // Index the transaction:

        let mut deferred_transaction = None;
        match self.block_tx_indexing_mode {
            BlockTxIndexingMode::NoIndex => {}
            BlockTxIndexingMode::PerTx => {
                let height = state_tx.get_block_height().await?;

                let transaction = Arc::as_ref(&tx).clone();

                let proto_transaction = transaction.into();

                Self::append_block_transaction_to_state(&mut state_tx, height, proto_transaction)
                    .await
                    .context("storing transactions")?;
            }
            BlockTxIndexingMode::DeferredBatch => {
                let _height = state_tx.get_block_height().await?;

                let transaction = Arc::as_ref(&tx).clone();

                let proto_transaction = transaction.into();

                deferred_transaction = Some(proto_transaction);
            }
        }

        check_and_execute(Arc::as_ref(&artifact), &mut state_tx)
            .await
            .context("executing transaction")?;

        // At this point, we've completed execution successfully with no errors,
        // so we can apply the transaction to the State. Otherwise, we'd have
        // bubbled up an error and dropped the StateTransaction.

        let events = state_tx.apply().1;

        if let Some(transaction) = deferred_transaction {
            self.deferred_block_transactions.push(transaction);
        }

        Ok(events)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use shieldd_sdk_compliance::{structs::AssetRegistrationGrant, MsgRegisterAsset};
    use shieldd_sdk_proto::DomainType;

    fn registration_bytes() -> Vec<u8> {
        let mut action = MsgRegisterAsset {
            audit_certificate: None,
            audit_keys: None,
            asset_id: *shieldd_sdk_asset::BASE_ASSET_ID,
            is_regulated: false,
            dk_pub: None,
            daily_volume_limit: None,
            allowed_ibc_routes: vec![],
            ibc_origin: None,
            ring_pk: None,
            ring_id: String::new(),
            policy_id: String::new(),
            permission: String::new(),
            resource: String::new(),
            registration_authority_vk: None,
            seizure_authority_vk: None,
            asset_registration_grant: None,
        };
        let body = action.registration_grant_body(u64::MAX);
        let key = shieldd_sdk_keys::test_keys::SPEND_KEY.spend_auth_key();
        action.asset_registration_grant = Some(AssetRegistrationGrant {
            signature: key.sign(rand_core::OsRng, &body.signing_bytes()),
            registrar_vk: key.into(),
            body,
        });
        let mut tx = Transaction::default();
        tx.transaction_body
            .actions
            .push(Action::ComplianceRegisterAsset(action));
        tx.encode_to_vec()
    }

    async fn initialized_app(snapshot: Snapshot, registry: Arc<Registry>) -> Result<App> {
        let mut app = App::new(snapshot, registry).await?;
        app.init_chain(&AppState::Content(Default::default())).await;
        app.begin_block(&cnidarium_component::BlockContext {
            height: 1,
            time: Time::from_unix_timestamp(1_700_000_000, 0)?,
        })
        .await;
        Ok(app)
    }

    #[test]
    fn cold_delivery_completes_with_one_blocking_worker() -> Result<()> {
        const CHILD: &str = "SHIELDD_TEST_SINGLE_BLOCKING_WORKER";
        if std::env::var_os(CHILD).is_some() {
            let registry = crate::app::tests::registry();
            let runtime = tokio::runtime::Builder::new_current_thread()
                .enable_all()
                .max_blocking_threads(1)
                .build()?;
            runtime.block_on(async {
                let storage = cnidarium::TempStorage::new().await?;
                let mut app = initialized_app(storage.latest_snapshot(), registry).await?;
                // Parsing, signatures and verification must finish even though this
                // registrar is not authorized in the initialized pool.
                assert!(app
                    .deliver_tx_bytes(&registration_bytes(), None)
                    .await
                    .is_err());
                Ok::<_, anyhow::Error>(())
            })?;
            return Ok(());
        }
        let mut child = std::process::Command::new(std::env::current_exe()?)
            .args([
                "--exact",
                "app::delivery::tests::cold_delivery_completes_with_one_blocking_worker",
                "--nocapture",
            ])
            .env(CHILD, "1")
            .spawn()?;
        let deadline = std::time::Instant::now() + std::time::Duration::from_secs(90);
        loop {
            if let Some(status) = child.try_wait()? {
                anyhow::ensure!(status.success(), "single-worker delivery subprocess failed");
                return Ok(());
            }
            if std::time::Instant::now() >= deadline {
                child.kill()?;
                child.wait()?;
                anyhow::bail!("single-worker delivery deadlocked (subprocess terminated)");
            }
            std::thread::sleep(std::time::Duration::from_millis(20));
        }
    }

    #[tokio::test]
    async fn cancelling_delivery_releases_stateful_check_immediately() -> Result<()> {
        let storage = cnidarium::TempStorage::new().await?;
        let mut app =
            initialized_app(storage.latest_snapshot(), crate::app::tests::registry()).await?;
        let gate = Arc::new(HistoricalCheckGate::default());
        app.historical_check_gate = Some(gate.clone());
        let bytes = registration_bytes();
        let mut delivery = Box::pin(app.deliver_tx_bytes(&bytes, None));
        tokio::select! {
            _ = gate.entered.notified() => {},
            result = &mut delivery => panic!("delivery finished before historical check gate: {result:?}"),
        }
        drop(delivery);
        let retained = Arc::strong_count(&app.state);
        // Also clean up the detached task on the failing implementation.
        gate.release.notify_one();
        tokio::time::timeout(std::time::Duration::from_secs(5), async {
            while Arc::strong_count(&app.state) > 1 {
                tokio::task::yield_now().await;
            }
        })
        .await?;
        assert_eq!(retained, 1, "cancelled delivery retained application state");
        assert!(app.state.try_begin_transaction().is_some());
        Ok(())
    }
}
