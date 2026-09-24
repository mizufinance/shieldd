use shieldd_sdk_proof_params::pari::Registry;
use std::{fmt, path::Path, sync::Arc};

use anyhow::{Context as _, Result};
use cnidarium::Storage;
use shieldd_sdk_app::{
    app::{App, HostBlock, HostExecution, HostTxResponse, HostWithdrawal},
    genesis::AppState,
    SUBSTORE_PREFIXES,
};
use shieldd_sdk_proto::{
    core::app::v1 as proto_app,
    cosmos::base::v1beta1::Coin,
    execution_client::v1::{
        host_withdrawal::Destination as ProtoDestination, ApplyComplianceActionRequest,
        ApplyComplianceActionResponse, BeginBlockRequest, BeginBlockResponse, CheckTxResponse,
        CommitRequest, CommitResponse, DeliverTxRequest, DeliverTxResponse, DepositRequest,
        DepositResponse, EndBlockRequest, EndBlockResponse, Event as ProtoEvent,
        EventAttribute as ProtoEventAttribute, ExportGenesisRequest, ExportGenesisResponse,
        GetCommittedStateRequest, GetCommittedStateResponse, HostWithdrawal as ProtoHostWithdrawal,
        InitGenesisRequest, InitGenesisResponse, RollbackRequest, RollbackResponse,
        SeizeNoteRequest, SeizeNoteResponse,
    },
};
use shieldd_sdk_sct::generation_pack::GenerationPackRepository;
use shieldd_sdk_shielded_pool::HostWithdrawalDestination;
use tendermint::{abci, Time};

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum ErrorKind {
    InvalidArgument,
    FailedPrecondition,
    NotFound,
    Overloaded,
    SnapshotExpired,
    Unavailable,
    Internal,
}

#[derive(Debug)]
pub struct ServiceError {
    kind: ErrorKind,
    source: anyhow::Error,
}

impl ServiceError {
    pub(crate) fn unavailable(source: anyhow::Error) -> Self {
        Self {
            kind: ErrorKind::Unavailable,
            source,
        }
    }

    pub(crate) fn overloaded() -> Self {
        Self {
            kind: ErrorKind::Overloaded,
            source: anyhow::anyhow!("query capacity exhausted; retry later"),
        }
    }

    pub fn kind(&self) -> ErrorKind {
        self.kind
    }

    pub(crate) fn invalid_argument(source: anyhow::Error) -> Self {
        Self {
            kind: ErrorKind::InvalidArgument,
            source,
        }
    }

    pub(crate) fn failed_precondition(source: anyhow::Error) -> Self {
        Self {
            kind: ErrorKind::FailedPrecondition,
            source,
        }
    }

    pub(crate) fn internal(source: anyhow::Error) -> Self {
        Self {
            kind: ErrorKind::Internal,
            source,
        }
    }

    pub(crate) fn snapshot_expired() -> Self {
        Self {
            kind: ErrorKind::SnapshotExpired,
            source: anyhow::anyhow!(
                "query snapshot expired; discard incomplete results and restart"
            ),
        }
    }
    pub(crate) fn closed() -> Self {
        Self::failed_precondition(anyhow::anyhow!("Shieldd execution service is closed"))
    }

    pub(crate) fn state_query(error: cnidarium_component::QueryError) -> Self {
        let source = anyhow::anyhow!(error.to_string());
        match error.kind {
            cnidarium_component::QueryErrorKind::InvalidArgument => Self::invalid_argument(source),
            cnidarium_component::QueryErrorKind::Internal => Self::internal(source),
        }
    }
}

impl fmt::Display for ServiceError {
    fn fmt(&self, formatter: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(formatter, "{:#}", self.source)
    }
}

impl std::error::Error for ServiceError {
    fn source(&self) -> Option<&(dyn std::error::Error + 'static)> {
        Some(self.source.as_ref())
    }
}

pub struct ExecutionService {
    execution: Option<HostExecution>,
    queries: Arc<crate::query::QueryService>,
    storage: Option<Storage>,
    generation_pack_worker: Option<shieldd_sdk_app::nullifier_generation_packs::MaintenanceWorker>,
}

impl Drop for ExecutionService {
    fn drop(&mut self) {
        self.queries.close();
        if let Some(worker) = &self.generation_pack_worker {
            worker.abort();
        }
    }
}

impl ExecutionService {
    pub fn queries(&self) -> &Arc<crate::query::QueryService> {
        &self.queries
    }

    pub async fn open(
        db: impl AsRef<Path>,
        registry: Arc<Registry>,
    ) -> std::result::Result<Self, ServiceError> {
        Self::open_inner(db.as_ref(), None, registry).await
    }

    pub async fn open_with_generation_packs(
        db: impl AsRef<Path>,
        generation_pack_directory: impl AsRef<Path>,
        registry: Arc<Registry>,
    ) -> std::result::Result<Self, ServiceError> {
        let repository = GenerationPackRepository::new(
            generation_pack_directory.as_ref().to_path_buf(),
            64 * 1024 * 1024,
        )
        .map_err(ServiceError::internal)?;
        Self::open_inner(db.as_ref(), Some(repository), registry).await
    }

    async fn open_inner(
        db: &Path,
        generation_packs: Option<GenerationPackRepository>,
        registry: Arc<Registry>,
    ) -> std::result::Result<Self, ServiceError> {
        let db = db.to_path_buf();
        let storage = Storage::load(db.clone(), SUBSTORE_PREFIXES.to_vec())
            .await
            .with_context(|| format!("failed to open Shieldd RocksDB at {}", db.display()))
            .map_err(ServiceError::internal)?;

        if let Err(error) = shieldd_sdk_app::app_version::check_app_version(&storage).await {
            storage.release().await;
            return Err(ServiceError::failed_precondition(error));
        }

        if let Err(error) =
            shieldd_sdk_app::registry_binding::check(&storage.latest_snapshot(), registry.id())
                .await
        {
            storage.release().await;
            return Err(ServiceError::failed_precondition(error));
        }
        if storage.latest_version() == u64::MAX {
            tracing::info!("Shieldd app state is not initialized; waiting for InitGenesis");
        } else if App::is_ready(storage.latest_snapshot()).await {
            tracing::info!("Shieldd app state is ready");
        } else {
            storage.release().await;
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "Shieldd app state is not ready"
            )));
        }

        Self::new_with_generation_packs(storage, generation_packs, registry).await
    }

    pub async fn new(
        storage: Storage,
        registry: Arc<Registry>,
    ) -> std::result::Result<Self, ServiceError> {
        Self::new_with_generation_packs(storage, None, registry).await
    }

    async fn new_with_generation_packs(
        storage: Storage,
        generation_packs: Option<GenerationPackRepository>,
        registry: Arc<Registry>,
    ) -> std::result::Result<Self, ServiceError> {
        shieldd_sdk_app::app_version::check_app_version(&storage)
            .await
            .map_err(ServiceError::failed_precondition)?;
        let cache = Arc::new(shieldd_sdk_app::stateless_cache::StatelessCache::new());
        let queries = Arc::new(crate::query::QueryService::new(
            storage.clone(),
            generation_packs.clone(),
            registry.clone(),
            cache.clone(),
            crate::ServiceLimits::from_env().map_err(ServiceError::invalid_argument)?,
        ));
        let mut execution = HostExecution::with_cache(storage.clone(), cache, registry)
            .await
            .map_err(ServiceError::failed_precondition)?;
        if let Some(repository) = generation_packs.as_ref() {
            execution.set_generation_packs(repository.clone());
        }
        let generation_pack_worker = if let Some(repository) = generation_packs.as_ref() {
            let prepared_generation_count =
                shieldd_sdk_app::nullifier_generation_packs::prepare(&storage, repository)
                    .await
                    .context("prepare retired nullifier generation packs")
                    .map_err(ServiceError::internal)?;
            Some(shieldd_sdk_app::nullifier_generation_packs::spawn_worker(
                storage.clone(),
                repository.clone(),
                prepared_generation_count,
            ))
        } else {
            None
        };
        Ok(Self {
            execution: Some(execution),
            queries,
            storage: Some(storage),
            generation_pack_worker,
        })
    }

    pub async fn init_genesis(
        &mut self,
        request: InitGenesisRequest,
    ) -> std::result::Result<InitGenesisResponse, ServiceError> {
        let genesis = request
            .genesis
            .context("missing genesis")
            .and_then(AppState::try_from)
            .map_err(ServiceError::invalid_argument)?;

        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        execution
            .init_genesis(genesis)
            .await
            .map_err(ServiceError::failed_precondition)?;
        Ok(InitGenesisResponse {})
    }

    pub async fn begin_block(
        &mut self,
        request: BeginBlockRequest,
    ) -> std::result::Result<BeginBlockResponse, ServiceError> {
        let block = decode_host_block(request).map_err(ServiceError::invalid_argument)?;

        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .begin_block(block)
            .await
            .map_err(ServiceError::failed_precondition)?;

        Ok(BeginBlockResponse {
            events: encode_events(response.events).map_err(ServiceError::internal)?,
        })
    }

    pub async fn deposit(
        &mut self,
        request: DepositRequest,
    ) -> std::result::Result<DepositResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .deposit(request)
            .await
            .map_err(ServiceError::invalid_argument)?;
        Ok(response.response)
    }

    pub async fn apply_compliance_action(
        &mut self,
        request: ApplyComplianceActionRequest,
    ) -> std::result::Result<ApplyComplianceActionResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .apply_compliance_action(request)
            .await
            .map_err(ServiceError::invalid_argument)?;
        Ok(response.response)
    }

    pub async fn seize_note(
        &mut self,
        request: SeizeNoteRequest,
    ) -> std::result::Result<SeizeNoteResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let result = execution
            .seize_note(request)
            .await
            .map_err(ServiceError::invalid_argument)?;
        Ok(SeizeNoteResponse {
            source: Some(result.source),
            replayed: result.replayed,
            withdrawal: Some(encode_withdrawal(result.withdrawal)),
            current_status:
                shieldd_sdk_proto::core::component::compliance::v1::UserAssetStatus::from(
                    result.current_status,
                ) as i32,
            freeze_generation: result.freeze_generation,
        })
    }

    pub async fn deliver_tx(
        &mut self,
        request: DeliverTxRequest,
    ) -> std::result::Result<DeliverTxResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .deliver_tx(&request.tx)
            .await
            .map_err(ServiceError::failed_precondition)?;

        deliver_tx_response(response).map_err(ServiceError::internal)
    }

    pub async fn end_block(
        &mut self,
        request: EndBlockRequest,
    ) -> std::result::Result<EndBlockResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .end_block(request.height)
            .await
            .map_err(ServiceError::failed_precondition)?;

        Ok(EndBlockResponse {
            events: encode_events(response.events).map_err(ServiceError::internal)?,
        })
    }

    pub async fn commit(
        &mut self,
        _request: CommitRequest,
    ) -> std::result::Result<CommitResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .commit()
            .await
            .map_err(ServiceError::failed_precondition)?;
        Ok(CommitResponse {
            root_hash: response.root_hash,
        })
    }

    pub async fn get_committed_state(
        &self,
        _request: GetCommittedStateRequest,
    ) -> std::result::Result<GetCommittedStateResponse, ServiceError> {
        let execution = self.execution.as_ref().ok_or_else(ServiceError::closed)?;
        let committed = execution
            .committed_state()
            .await
            .map_err(ServiceError::failed_precondition)?;
        Ok(GetCommittedStateResponse {
            height: committed.height,
            root_hash: committed.root_hash,
        })
    }

    pub async fn rollback(
        &mut self,
        _request: RollbackRequest,
    ) -> std::result::Result<RollbackResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        execution
            .rollback()
            .await
            .map_err(ServiceError::failed_precondition)?;
        Ok(RollbackResponse {})
    }

    pub async fn export_genesis(
        &self,
        _request: ExportGenesisRequest,
    ) -> std::result::Result<ExportGenesisResponse, ServiceError> {
        let execution = self.execution.as_ref().ok_or_else(ServiceError::closed)?;
        let genesis: proto_app::GenesisAppState = execution
            .export_genesis()
            .await
            .map_err(ServiceError::failed_precondition)?
            .into();
        Ok(ExportGenesisResponse {
            genesis: Some(genesis),
        })
    }

    pub async fn close(&mut self) -> std::result::Result<(), ServiceError> {
        if let Some(worker) = self.generation_pack_worker.as_mut() {
            worker.shutdown().await;
        }
        self.generation_pack_worker = None;
        self.queries.close();
        drop(self.execution.take());
        if let Some(storage) = self.storage.take() {
            storage.release().await;
        }
        Ok(())
    }
}

fn decode_host_block(request: BeginBlockRequest) -> Result<HostBlock> {
    let time = request.time.context("missing begin_block time")?;
    let nanos = u32::try_from(time.nanos).context("begin_block time nanos must be non-negative")?;
    let time =
        Time::from_unix_timestamp(time.seconds, nanos).context("invalid begin_block time")?;

    Ok(HostBlock {
        height: request.height,
        time,
    })
}

pub(crate) fn check_tx_response(response: HostTxResponse) -> Result<CheckTxResponse> {
    Ok(CheckTxResponse {
        code: response.code,
        data: response.data,
        log: response.log,
        info: response.info,
        gas_wanted: response.gas_wanted,
        gas_used: response.gas_used,
        events: encode_events(response.events)?,
        codespace: response.codespace,
    })
}

fn deliver_tx_response(response: HostTxResponse) -> Result<DeliverTxResponse> {
    Ok(DeliverTxResponse {
        code: response.code,
        data: response.data,
        log: response.log,
        info: response.info,
        gas_wanted: response.gas_wanted,
        gas_used: response.gas_used,
        events: encode_events(response.events)?,
        codespace: response.codespace,
        withdrawals: encode_withdrawals(response.withdrawals),
    })
}

fn encode_withdrawals(withdrawals: Vec<HostWithdrawal>) -> Vec<ProtoHostWithdrawal> {
    withdrawals.into_iter().map(encode_withdrawal).collect()
}

fn encode_withdrawal(withdrawal: HostWithdrawal) -> ProtoHostWithdrawal {
    ProtoHostWithdrawal {
        coin: Some(Coin {
            denom: withdrawal.denom,
            amount: withdrawal.amount.to_string(),
        }),
        destination: Some(match withdrawal.destination {
            HostWithdrawalDestination::Transfer(transfer) => {
                ProtoDestination::Transfer(transfer.into())
            }
            HostWithdrawalDestination::Execution(execution) => {
                ProtoDestination::Execution(execution.into())
            }
        }),
    }
}

fn encode_events(events: Vec<abci::Event>) -> Result<Vec<ProtoEvent>> {
    events
        .into_iter()
        .map(|event| {
            let attributes = event
                .attributes
                .iter()
                .map(|attribute| {
                    Ok(ProtoEventAttribute {
                        key: attribute.key_str()?.to_owned(),
                        value: attribute.value_str()?.to_owned(),
                        index: attribute.index(),
                    })
                })
                .collect::<Result<Vec<_>>>()?;

            Ok(ProtoEvent {
                r#type: event.kind,
                attributes,
            })
        })
        .collect()
}

#[cfg(test)]
mod tests {
    use super::*;
    use cnidarium::StateDelta;
    use cnidarium::StateWrite as _;
    use shieldd_sdk_app::genesis::{AppState, Content};
    use shieldd_sdk_compact_block::CompactBlock;
    use shieldd_sdk_crypto::Fq;
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_proto::core::component::sct::v1::ArchivedNullifierProofRequest;
    use shieldd_sdk_sct::{nullifier_tree, Nullifier};
    use shieldd_sdk_shielded_pool::{EvmCall, HostExecution};
    use std::ops::Deref;

    fn init_genesis_request() -> InitGenesisRequest {
        InitGenesisRequest {
            genesis: Some(
                AppState::Content(Content::default().with_chain_id("bankd-local".to_owned()))
                    .into(),
            ),
        }
    }

    fn nullifier(value: u64) -> Nullifier {
        Nullifier(Fq::from(value))
    }

    #[tokio::test]
    async fn embedded_service_serves_a_pack_after_expanded_state_is_pruned() -> Result<()> {
        let storage_directory = tempfile::tempdir()?;
        let storage = Storage::load(
            storage_directory.path().join("rocksdb"),
            SUBSTORE_PREFIXES.to_vec(),
        )
        .await?;
        let mut initializer =
            ExecutionService::new(storage.clone(), crate::test_registry()).await?;
        initializer.init_genesis(init_genesis_request()).await?;
        initializer.commit(CommitRequest {}).await?;
        drop(initializer);
        let mut state = StateDelta::new(storage.latest_snapshot());
        nullifier_tree::insert_batch(&mut state, [nullifier(7), nullifier(1)]).await?;
        let initial_window = nullifier_tree::generation_state(&state).await?.window();
        shieldd_sdk_compact_block::component::CompactBlockManager::put_compact_block(
            &mut state,
            CompactBlock {
                height: 0,
                nullifiers: vec![nullifier(7), nullifier(1)],
                nullifier_window: Some(initial_window),
                ..Default::default()
            },
        )?;
        nullifier_tree::rollover(&mut state, 30, 1 << 32).await?;
        nullifier_tree::rollover(&mut state, 60, 2 << 32).await?;
        let retired_window = nullifier_tree::generation_state(&state).await?.window();
        shieldd_sdk_compact_block::component::CompactBlockManager::put_compact_block(
            &mut state,
            CompactBlock {
                height: 1,
                nullifier_window: Some(retired_window),
                ..Default::default()
            },
        )?;
        let archived = nullifier_tree::archived_generation(&state, 0).await?;
        let directory = tempfile::tempdir()?;
        let repository = GenerationPackRepository::new(directory.path().to_path_buf(), 1)?;
        let receipt = nullifier_tree::build_generation_archive(
            &state,
            &repository,
            0,
            shieldd_sdk_sct::generation_pack::ArchiveMaintenanceLease::acquire().await,
        )
        .await?;
        let pack_path = repository.path(0);
        nullifier_tree::record_generation_pack_completion(&mut state, &receipt).await?;
        state.nonverifiable_put_raw(
            shieldd_sdk_sct::state_key::nullifier_generations::insertion(0, 0),
            serde_json::to_vec(&nullifier_tree::InsertionInterval {
                height: 0,
                generation: 0,
                first_position: 1,
                count: 2,
            })?,
        );
        state.nonverifiable_put_raw(
            shieldd_sdk_sct::state_key::nullifier_generations::block_range(0),
            serde_json::to_vec(&nullifier_tree::GenerationBlockRange {
                start_height: 0,
                end_height: 0,
            })?,
        );
        storage.commit(state).await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        let maintenance = shieldd_sdk_app::nullifier_generation_packs::maintain_one_generation(
            &mut state,
            &repository,
        )
        .await?;
        let batch = storage.prepare_commit(state).await?;
        storage.commit_batch(maintenance.attach(&storage, batch)?)?;

        let mut service = ExecutionService::new_with_generation_packs(
            storage,
            Some(repository),
            crate::test_registry(),
        )
        .await?;
        service
            .queries()
            .publish_committed(
                service
                    .get_committed_state(GetCommittedStateRequest {})
                    .await?,
            )
            .await?;
        let response = service
            .queries()
            .archived_nullifier_proof(ArchivedNullifierProofRequest {
                generation_index: 0,
                nullifier: Some(nullifier(8).into()),
            })
            .await?;
        let proof: shieldd_sdk_sct::nullifier_generation::ArchivedNullifierProof =
            response.try_into()?;
        proof.verify_for(nullifier(8))?;
        assert_eq!(proof.generation_root, archived.generation_root);
        let spent = service
            .queries()
            .archived_nullifier_proof(ArchivedNullifierProofRequest {
                generation_index: 0,
                nullifier: Some(nullifier(7).into()),
            })
            .await
            .expect_err("spent archived nullifier must not trigger pack repair");
        assert_eq!(spent.kind(), ErrorKind::FailedPrecondition);
        assert!(pack_path.is_file());
        std::fs::remove_file(&pack_path)?;
        let unavailable = service
            .queries()
            .archived_nullifier_proof(ArchivedNullifierProofRequest {
                generation_index: 0,
                nullifier: Some(nullifier(8).into()),
            })
            .await
            .expect_err("missing archives fail closed while repair is queued");
        assert_eq!(unavailable.kind(), ErrorKind::Unavailable);
        tokio::time::timeout(std::time::Duration::from_secs(10), async {
            loop {
                if let Ok(response) = service
                    .queries()
                    .archived_nullifier_proof(ArchivedNullifierProofRequest {
                        generation_index: 0,
                        nullifier: Some(nullifier(8).into()),
                    })
                    .await
                {
                    let proof: shieldd_sdk_sct::nullifier_generation::ArchivedNullifierProof =
                        response.try_into()?;
                    proof.verify_for(nullifier(8))?;
                    break Ok::<_, anyhow::Error>(());
                }
                tokio::task::yield_now().await;
            }
        })
        .await??;
        assert!(pack_path.is_file());
        service.close().await?;
        Ok(())
    }

    #[test]
    fn decode_host_block_converts_valid_time() {
        let mut request = BeginBlockRequest {
            height: 7,
            time: Some(Default::default()),
        };
        request
            .time
            .as_mut()
            .expect("test request has time")
            .seconds = 1_700_000_000;

        request.time.as_mut().expect("time").nanos = 123_456_789;
        let block = decode_host_block(request).expect("valid host block");

        assert_eq!(block.height, 7);
        assert_eq!(block.time.unix_timestamp(), 1_700_000_000);
        assert_eq!(block.time.unix_timestamp_nanos(), 1_700_000_000_123_456_789);
    }

    #[test]
    fn decode_host_block_requires_time() {
        let err = decode_host_block(BeginBlockRequest {
            height: 7,
            time: None,
        })
        .expect_err("missing time must be rejected");

        assert!(err.to_string().contains("missing begin_block time"));
    }

    #[test]
    fn deliver_tx_response_has_no_withdrawals_without_a_host_action() {
        let response = deliver_tx_response(HostTxResponse::default()).expect("valid response");

        assert!(response.withdrawals.is_empty());
    }

    #[test]
    fn encode_withdrawals_maps_transfer_and_coin() {
        let encoded = encode_withdrawals(vec![HostWithdrawal {
            denom: "ushieldd".to_owned(),
            amount: 42u64.into(),
            destination: HostWithdrawalDestination::Transfer(
                shieldd_sdk_shielded_pool::HostTransfer {
                    recipient: "bank1recipient".to_owned(),
                },
            ),
        }]);

        assert_eq!(encoded.len(), 1);
        let coin = encoded[0].coin.as_ref().expect("withdrawal coin");
        assert_eq!(coin.denom, "ushieldd");
        assert_eq!(coin.amount, "42");
        assert!(matches!(
            encoded[0].destination.as_ref(),
            Some(ProtoDestination::Transfer(transfer))
                if transfer.recipient == "bank1recipient"
        ));
    }

    #[test]
    fn encode_withdrawals_preserves_execution_call_order_and_refund_address() {
        let encoded = encode_withdrawals(vec![HostWithdrawal {
            denom: "ushieldd".to_owned(),
            amount: 42u64.into(),
            destination: HostWithdrawalDestination::Execution(HostExecution {
                refund_address: test_keys::ADDRESS_0.deref().clone(),
                gas_limit: 200_000,
                calls: vec![
                    EvmCall {
                        contract: [1u8; 20],
                        calldata: vec![0xaa],
                    },
                    EvmCall {
                        contract: [2u8; 20],
                        calldata: vec![0xbb],
                    },
                ],
            }),
        }]);

        let Some(ProtoDestination::Execution(execution)) = encoded[0].destination.as_ref() else {
            panic!("expected host execution");
        };
        assert_eq!(execution.refund_address, test_keys::ADDRESS_0.to_string());
        assert_eq!(execution.gas_limit, 200_000);
        assert_eq!(execution.calls[0].contract, [1u8; 20]);
        assert_eq!(execution.calls[0].calldata, vec![0xaa]);
        assert_eq!(execution.calls[1].contract, [2u8; 20]);
        assert_eq!(execution.calls[1].calldata, vec![0xbb]);
    }

    #[tokio::test]
    async fn close_releases_storage_and_rejects_later_operations() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let mut service = ExecutionService::open(directory.path(), crate::test_registry())
            .await
            .expect("open execution service");

        service
            .rollback(RollbackRequest {})
            .await
            .expect("rollback completed");
        service.close().await.expect("close execution service");

        let error = service
            .rollback(RollbackRequest {})
            .await
            .expect_err("closed service rejects calls");
        assert_eq!(error.kind(), ErrorKind::FailedPrecondition);

        let mut reopened = ExecutionService::open(directory.path(), crate::test_registry())
            .await
            .expect("storage was released");
        reopened.close().await.expect("close reopened service");
    }

    #[tokio::test(flavor = "current_thread")]
    async fn cancelled_close_can_be_retried_before_worker_abort_is_polled() -> Result<()> {
        let directory = tempfile::tempdir()?;
        let db = directory.path().join("rocksdb");
        let packs = directory.path().join("packs");
        let mut service =
            ExecutionService::open_with_generation_packs(&db, &packs, crate::test_registry())
                .await?;
        tokio::task::yield_now().await;

        let mut closing = Box::pin(service.close());
        assert!(futures::poll!(closing.as_mut()).is_pending());
        drop(closing);
        // Retry before the aborted worker can run and release its storage clone.
        service.close().await?;

        let mut reopened =
            ExecutionService::open_with_generation_packs(&db, &packs, crate::test_registry())
                .await?;
        reopened.close().await?;
        Ok(())
    }

    #[tokio::test(flavor = "current_thread")]
    async fn dropping_service_stops_generation_pack_worker() -> Result<()> {
        let directory = tempfile::tempdir()?;
        let service = ExecutionService::open_with_generation_packs(
            directory.path().join("rocksdb"),
            directory.path().join("packs"),
            crate::test_registry(),
        )
        .await?;
        let worker = service
            .generation_pack_worker
            .as_ref()
            .unwrap()
            .abort_handle();
        tokio::task::yield_now().await;
        drop(service);
        let stopped = tokio::time::timeout(std::time::Duration::from_secs(1), async {
            while !worker.is_finished() {
                tokio::time::sleep(std::time::Duration::from_millis(10)).await;
            }
        })
        .await;
        worker.abort();
        anyhow::ensure!(
            stopped.is_ok(),
            "dropped service left its pack worker running"
        );
        Ok(())
    }

    #[tokio::test]
    async fn reopening_rejects_incompatible_application_state() -> Result<()> {
        use cnidarium::StateWrite;
        use shieldd_sdk_proto::{StateReadProto, StateWriteProto};
        for (version, verifiable_change) in [
            (None, false),
            (None, true),
            (Some(shieldd_sdk_app::APP_VERSION - 1), true),
        ] {
            let directory = tempfile::tempdir()?;
            let mut service =
                ExecutionService::open(directory.path(), crate::test_registry()).await?;
            service.init_genesis(init_genesis_request()).await?;
            service.commit(CommitRequest {}).await?;
            let storage = service.storage.as_ref().expect("open storage");
            let mut state = StateDelta::new(storage.latest_snapshot());
            if verifiable_change {
                state.put_raw("test/version-check".into(), vec![1]);
            }
            let key = shieldd_sdk_app::app::state_key::app_version::safeguard().as_bytes();
            match version {
                Some(version) => state.nonverifiable_put_proto(key.to_vec(), version),
                None => state.nonverifiable_delete(key.to_vec()),
            }
            storage.commit(state).await?;
            let stored_version = storage.latest_version();
            assert_eq!(
                storage
                    .latest_snapshot()
                    .nonverifiable_get_proto::<u64>(key)
                    .await?,
                version
            );
            service.close().await?;
            match ExecutionService::open(directory.path(), crate::test_registry()).await {
                Err(error) => assert_eq!(error.kind(), ErrorKind::FailedPrecondition),
                Ok(mut reopened) => {
                    reopened.close().await?;
                    panic!("incompatible application state must not reopen");
                }
            }
            let storage =
                Storage::load(directory.path().to_path_buf(), SUBSTORE_PREFIXES.to_vec()).await?;
            assert_eq!(
                storage.latest_version(),
                if verifiable_change {
                    stored_version
                } else {
                    u64::MAX
                }
            );
            assert_eq!(
                storage
                    .latest_snapshot()
                    .nonverifiable_get_proto::<u64>(key)
                    .await?,
                version
            );
            storage.release().await;
        }
        Ok(())
    }

    #[tokio::test]
    async fn committed_state_survives_reopening_the_service() {
        let directory = tempfile::tempdir().expect("temporary database directory");
        let mut service = ExecutionService::open(directory.path(), crate::test_registry())
            .await
            .expect("open execution service");

        let error = service
            .get_committed_state(GetCommittedStateRequest {})
            .await
            .expect_err("uninitialized storage has no committed state");
        assert_eq!(error.kind(), ErrorKind::FailedPrecondition);

        service
            .init_genesis(init_genesis_request())
            .await
            .expect("initialize genesis");
        let commit = service
            .commit(CommitRequest {})
            .await
            .expect("commit genesis");
        let committed = service
            .get_committed_state(GetCommittedStateRequest {})
            .await
            .expect("get committed genesis");
        assert_eq!(committed.height, 0);
        assert_eq!(committed.root_hash, commit.root_hash);

        service.close().await.expect("close execution service");

        let mut reopened = ExecutionService::open(directory.path(), crate::test_registry())
            .await
            .expect("reopen execution service");
        let reopened_committed = reopened
            .get_committed_state(GetCommittedStateRequest {})
            .await
            .expect("get committed state after reopening");
        assert_eq!(reopened_committed, committed);
        reopened.close().await.expect("close reopened service");
    }
}
