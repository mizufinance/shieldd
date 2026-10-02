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
        SealCommitRequest, SealCommitResponse, SeizeNoteRequest, SeizeNoteResponse,
    },
};

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
    ProtocolLimit,
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
        if self
            .source
            .is::<shieldd_sdk_storage::ProtocolLimitExceeded>()
        {
            ErrorKind::ProtocolLimit
        } else {
            self.kind
        }
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
}

impl Drop for ExecutionService {
    fn drop(&mut self) {
        self.queries.close();
    }
}

impl ExecutionService {
    fn scope_execution(&mut self) -> std::result::Result<&mut HostExecution, ServiceError> {
        self.execution.as_mut().ok_or_else(|| {
            ServiceError::failed_precondition(anyhow::anyhow!("execution service is closed"))
        })
    }

    pub fn open_scope(&mut self, parent: u64) -> std::result::Result<u64, ServiceError> {
        self.scope_execution()?
            .open_scope(parent)
            .map_err(ServiceError::failed_precondition)
    }
    pub async fn open_disposable_scope(
        &mut self,
        height: u64,
        root: [u8; 32],
        time: tendermint::Time,
    ) -> std::result::Result<u64, ServiceError> {
        self.scope_execution()?
            .open_disposable_scope(height, root, time)
            .await
            .map_err(ServiceError::failed_precondition)
    }
    pub fn require_scope(&mut self, id: u64) -> std::result::Result<(), ServiceError> {
        self.scope_execution()?
            .require_scope(id)
            .map_err(ServiceError::failed_precondition)
    }
    pub fn prepare_scope(&mut self, id: u64) -> std::result::Result<(), ServiceError> {
        self.scope_execution()?
            .prepare_scope(id)
            .map_err(ServiceError::failed_precondition)
    }
    pub fn close_scope(&mut self, id: u64, adopt: bool) -> std::result::Result<(), ServiceError> {
        self.scope_execution()?
            .close_scope(id, adopt)
            .map_err(ServiceError::failed_precondition)
    }
    pub fn snapshot_scope(&mut self, id: u64) -> std::result::Result<u64, ServiceError> {
        self.scope_execution()?
            .snapshot_scope(id)
            .map_err(ServiceError::failed_precondition)
    }
    pub fn revert_scope(&mut self, id: u64, point: u64) -> std::result::Result<(), ServiceError> {
        self.scope_execution()?
            .revert_scope(id, point)
            .map_err(ServiceError::failed_precondition)
    }

    pub fn queries(&self) -> &Arc<crate::query::QueryService> {
        &self.queries
    }

    pub async fn open(
        db: impl AsRef<Path>,
        registry: Arc<Registry>,
    ) -> std::result::Result<Self, ServiceError> {
        Self::open_inner(db.as_ref(), registry).await
    }

    async fn open_inner(
        db: &Path,
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

        Self::new(storage, registry).await
    }

    pub async fn new(
        storage: Storage,
        registry: Arc<Registry>,
    ) -> std::result::Result<Self, ServiceError> {
        shieldd_sdk_app::app_version::check_app_version(&storage)
            .await
            .map_err(ServiceError::failed_precondition)?;
        let cache = Arc::new(shieldd_sdk_app::stateless_cache::StatelessCache::new());
        let config = if cfg!(test) {
            shieldd_sdk_sct::permanent_nullifiers::Config {
                buckets: 1024,
                cache_mib: 1,
                preallocate: false,
            }
        } else {
            shieldd_sdk_sct::permanent_nullifiers::Config::from_env()
                .map_err(ServiceError::invalid_argument)?
        };
        let execution =
            HostExecution::with_config(storage.clone(), cache.clone(), registry.clone(), &config)
                .await
                .map_err(ServiceError::failed_precondition)?;
        let queries = Arc::new(crate::query::QueryService::new(
            storage.clone(),
            execution.nullifier_reader(),
            registry,
            cache,
            crate::ServiceLimits::from_env().map_err(ServiceError::invalid_argument)?,
        ));
        Ok(Self {
            execution: Some(execution),
            queries,
            storage: Some(storage),
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
        scope: u64,
        request: DepositRequest,
    ) -> std::result::Result<DepositResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .deposit_at(scope, request)
            .await
            .map_err(ServiceError::invalid_argument)?;
        Ok(response.response)
    }

    pub async fn apply_compliance_action(
        &mut self,
        scope: u64,
        request: ApplyComplianceActionRequest,
    ) -> std::result::Result<ApplyComplianceActionResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .apply_compliance_action_at(scope, request)
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
        scope: u64,
        request: DeliverTxRequest,
    ) -> std::result::Result<DeliverTxResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let response = execution
            .deliver_tx_at(scope, &request.tx)
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
            prepared: Some(commit_boundary(response.prepared).map_err(ServiceError::internal)?),
        })
    }

    pub async fn seal_commit(
        &mut self,
        request: SealCommitRequest,
    ) -> std::result::Result<SealCommitResponse, ServiceError> {
        let expected = request
            .expected
            .context("missing frozen commitment")
            .map_err(ServiceError::invalid_argument)?;
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let next = commit_boundary(
            execution
                .prepared_commit()
                .map_err(ServiceError::failed_precondition)?
                .clone(),
        )
        .map_err(ServiceError::internal)?;
        if expected != next {
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "host commitment differs from frozen Shieldd block"
            )));
        }
        let previous = commit_boundary(
            execution
                .previous_commit()
                .map_err(ServiceError::failed_precondition)?
                .clone(),
        )
        .map_err(ServiceError::internal)?;
        execution
            .seal_commit()
            .map_err(ServiceError::failed_precondition)?;
        Ok(SealCommitResponse {
            previous: Some(previous),
            next: Some(next),
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
            block_id: committed.block_id.to_vec(),
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
        self.queries.close();
        drop(self.execution.take());
        if let Some(storage) = self.storage.take() {
            storage.release().await;
        }
        Ok(())
    }
}

fn commit_boundary(
    value: shieldd_sdk_app::app::CommitBoundary,
) -> Result<GetCommittedStateResponse> {
    Ok(GetCommittedStateResponse {
        height: value
            .nullifiers
            .height
            .context("commitment is not initialized")?,
        root_hash: value
            .application_root
            .context("application root is missing")?
            .to_vec(),
        block_id: value.nullifiers.block_id.to_vec(),
    })
}

fn decode_host_block(request: BeginBlockRequest) -> Result<HostBlock> {
    let time = request.time.context("missing begin_block time")?;
    let nanos = u32::try_from(time.nanos).context("begin_block time nanos must be non-negative")?;
    let time =
        Time::from_unix_timestamp(time.seconds, nanos).context("invalid begin_block time")?;

    Ok(HostBlock {
        height: request.height,
        time,
        block_id: request
            .block_id
            .try_into()
            .map_err(|_| anyhow::anyhow!("canonical block ID must be 32 bytes"))?,
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
    use shieldd_sdk_app::genesis::{AppState, Content};
    use shieldd_sdk_keys::test_keys;
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

    #[test]
    fn decode_host_block_converts_valid_time() {
        let mut request = BeginBlockRequest {
            block_id: vec![7 as u8; 32],
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
            block_id: vec![7 as u8; 32],
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
