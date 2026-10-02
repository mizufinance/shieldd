use shieldd_sdk_proof_params::pari::Registry;
use std::{fmt, path::Path, sync::Arc};

use anyhow::{Context as _, Result};
use shieldd_sdk_app::{
    app::{App, HostBlock, HostExecution, HostTxResponse, HostWithdrawal},
    genesis::AppState,
};
use shieldd_sdk_proto::{
    core::app::v1 as proto_app,
    cosmos::base::v1beta1::Coin,
    execution_client::v1::{
        host_withdrawal::Destination as ProtoDestination, ApplyComplianceActionRequest,
        ApplyComplianceActionResponse, BeginBlockRequest, BeginBlockResponse, CheckTxResponse,
        DeliverTxRequest, DeliverTxResponse, DepositRequest, DepositResponse, DiscardRequest,
        DiscardResponse, EndBlockRequest, EndBlockResponse, Event as ProtoEvent,
        EventAttribute as ProtoEventAttribute, ExportGenesisRequest, ExportGenesisResponse,
        FreezeRequest, FreezeResponse, GetCommittedStateRequest, GetCommittedStateResponse,
        HostWithdrawal as ProtoHostWithdrawal, InitGenesisRequest, InitGenesisResponse,
        MaterializeRequest, MaterializeResponse, RecoverDecidedRequest, RecoverDecidedResponse,
        SeizeNoteRequest, SeizeNoteResponse,
    },
};
use shieldd_sdk_storage::Storage;

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
            .is::<shieldd_sdk_storage::LocalProcessingFailure>()
        {
            return ErrorKind::Unavailable;
        }
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

    pub(crate) fn state_query(error: shieldd_sdk_storage::QueryError) -> Self {
        let source = anyhow::anyhow!(error.to_string());
        match error.kind {
            shieldd_sdk_storage::QueryErrorKind::InvalidArgument => Self::invalid_argument(source),
            shieldd_sdk_storage::QueryErrorKind::Internal => Self::internal(source),
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
    materializer: Option<tokio::task::JoinHandle<Result<()>>>,
    materializer_failure: Option<String>,
    registry: Arc<Registry>,
}

impl Drop for ExecutionService {
    fn drop(&mut self) {
        self.queries.close();
    }
}

impl ExecutionService {
    fn execution_mut(&mut self) -> std::result::Result<&mut HostExecution, ServiceError> {
        self.execution.as_mut().ok_or_else(|| {
            ServiceError::failed_precondition(anyhow::anyhow!("execution service is closed"))
        })
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
        let storage = Storage::open(
            &db,
            shieldd_sdk_storage::ForestConfig::from_env()
                .map_err(ServiceError::invalid_argument)?,
        )
        .with_context(|| format!("failed to open Shieldd RocksDB at {}", db.display()))
        .map_err(ServiceError::internal)?;

        if let Err(error) = shieldd_sdk_app::app_version::check_app_version(&storage).await {
            drop(storage);
            return Err(ServiceError::failed_precondition(error));
        }

        if let Err(error) =
            shieldd_sdk_app::registry_binding::check(&storage.latest_snapshot(), registry.id())
                .await
        {
            drop(storage);
            return Err(ServiceError::failed_precondition(error));
        }
        if storage.latest_version() == u64::MAX {
            tracing::info!("Shieldd app state is not initialized; waiting for InitGenesis");
        } else if App::is_ready(storage.latest_snapshot()).await {
            tracing::info!("Shieldd app state is ready");
        } else {
            drop(storage);
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
        let execution = HostExecution::with_cache(storage.clone(), cache.clone(), registry.clone())
            .await
            .map_err(ServiceError::failed_precondition)?;
        let queries = Arc::new(crate::query::QueryService::new(
            storage.clone(),
            execution.nullifier_reader(),
            registry.clone(),
            cache,
            crate::ServiceLimits::from_env().map_err(ServiceError::invalid_argument)?,
        ));
        Ok(Self {
            execution: Some(execution),
            queries,
            storage: Some(storage),
            materializer: None,
            materializer_failure: None,
            registry,
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
        self.await_materializer().await?;
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

    pub async fn reserve_queued_deposit(
        &mut self,
        request: shieldd_sdk_proto::execution_client::v1::ReserveQueuedDepositRequest,
    ) -> std::result::Result<
        shieldd_sdk_proto::execution_client::v1::ReserveQueuedDepositResponse,
        ServiceError,
    > {
        let request = request
            .deposit
            .context("queued deposit input is missing")
            .map_err(ServiceError::invalid_argument)?;
        self.execution_mut()?
            .reserve_queued_deposit(request)
            .await
            .map_err(ServiceError::invalid_argument)?;
        Ok(Default::default())
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
        let height = execution
            .preceding_height()
            .map_err(ServiceError::failed_precondition)?
            .checked_add(1)
            .context("native execution height overflow")
            .map_err(ServiceError::internal)?;
        let verified = self
            .queries
            .verification
            .take(height, request.position.as_ref(), &request.tx)
            .await?;
        let response = match &verified {
            Some(artifact) => {
                execution
                    .deliver_owned(&request.tx, artifact.result.clone())
                    .await
            }
            None => execution.deliver_tx(&request.tx).await,
        }
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

    pub async fn recover_decided(
        &mut self,
        request: RecoverDecidedRequest,
    ) -> std::result::Result<RecoverDecidedResponse, ServiceError> {
        self.queries
            .verification
            .stop()
            .await
            .map_err(ServiceError::unavailable)?;
        let decided = request
            .decided
            .context("SDK decision is missing")
            .map_err(ServiceError::invalid_argument)?;
        if decided.root_hash.len() != 32
            || decided.block_id.len() != 32
            || (decided.height > 0 && request.receipt_digest.len() != 32)
        {
            return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                "invalid SDK decision header"
            )));
        }
        let storage = self
            .storage
            .as_ref()
            .ok_or_else(ServiceError::closed)?
            .clone();
        let actual = storage
            .manifest()
            .context("native state is missing; restore a matched checkpoint")
            .map_err(ServiceError::unavailable)?;
        if actual.height > decided.height {
            return Err(ServiceError::unavailable(anyhow::anyhow!(
                "raw native state is ahead of SDK; unilateral rollback is unsupported"
            )));
        }
        if actual.height == decided.height {
            if actual.digest().map_err(ServiceError::internal)?.as_slice() != decided.root_hash
                || actual.block_id.as_slice() != decided.block_id
            {
                return Err(ServiceError::unavailable(anyhow::anyhow!(
                    "same-height native boundary differs from SDK"
                )));
            }
            storage
                .check_materialized()
                .map_err(ServiceError::unavailable)?;
            let view = storage.latest_snapshot();
            if !App::is_ready(view.clone()).await {
                return Err(ServiceError::unavailable(anyhow::anyhow!(
                    "matched native commitments are inconsistent"
                )));
            }
            storage
                .forest()
                .read()
                .authenticate_result(&actual, view.observations())
                .map_err(ServiceError::unavailable)?;
        } else {
            if actual.height.checked_add(1) != Some(decided.height) || request.receipt.is_empty() {
                return Err(ServiceError::unavailable(anyhow::anyhow!(
                    "missing native replay inputs; restore a matched checkpoint"
                )));
            }
            let digest = shieldd_sdk_storage::Receipt::encoded_digest(&request.receipt);
            if digest.as_slice() != request.receipt_digest {
                return Err(ServiceError::unavailable(anyhow::anyhow!(
                    "SDK replay receipt digest mismatch"
                )));
            }
            let receipt = shieldd_sdk_storage::Receipt::decode(&request.receipt)
                .map_err(ServiceError::unavailable)?;
            if receipt.previous != actual
                || receipt.next.height != decided.height
                || receipt
                    .next
                    .digest()
                    .map_err(ServiceError::internal)?
                    .as_slice()
                    != decided.root_hash
                || receipt.next.block_id.as_slice() != decided.block_id
            {
                return Err(ServiceError::unavailable(anyhow::anyhow!(
                    "receipt boundaries differ from the SDK decision"
                )));
            }
            self.execution_mut()?
                .start_replay(&receipt)
                .await
                .map_err(ServiceError::unavailable)?;
            crate::ffi::replay(self, &receipt)
                .await
                .map_err(|error| ServiceError::unavailable(anyhow::anyhow!(error.to_string())))?;
            let replayed = self
                .execution_mut()?
                .freeze()
                .map_err(ServiceError::unavailable)?;
            if replayed.1 != digest || replayed.0 != request.receipt {
                return Err(ServiceError::unavailable(anyhow::anyhow!(
                    "native replay outputs, deltas, or roots differ from the decided receipt"
                )));
            }
            self.materialize(MaterializeRequest {
                height: decided.height,
                receipt_digest: digest.to_vec(),
            })
            .await?;
            self.await_materializer().await?;
        }
        self.queries.publish_committed(decided.clone()).await?;
        Ok(RecoverDecidedResponse {
            materialized: Some(decided),
        })
    }

    pub fn reserve_call(
        &mut self,
        method: u32,
        input: &[u8],
    ) -> std::result::Result<bool, ServiceError> {
        self.execution_mut()?
            .reserve_call(method, input)
            .map_err(ServiceError::failed_precondition)
    }
    pub fn begin_native_call(&mut self) -> std::result::Result<(), ServiceError> {
        self.execution_mut()?
            .begin_native_call()
            .map_err(ServiceError::failed_precondition)
    }
    pub fn finish_native_call(&mut self, success: bool) -> std::result::Result<(), ServiceError> {
        self.execution_mut()?
            .finish_native_call(success)
            .map_err(ServiceError::failed_precondition)
    }
    pub fn finish_call(
        &mut self,
        outcome: u32,
        output: &[u8],
    ) -> std::result::Result<(), ServiceError> {
        self.execution_mut()?
            .finish_call(outcome, output)
            .map_err(ServiceError::internal)
    }
    pub async fn freeze(
        &mut self,
        _request: FreezeRequest,
    ) -> std::result::Result<FreezeResponse, ServiceError> {
        // An abandoned producer can still hold decoded artifacts or report a
        // local processing failure. Join it before publishing the SDK decision.
        self.queries
            .verification
            .stop()
            .await
            .map_err(ServiceError::unavailable)?;
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        let previous = commit_boundary(
            execution
                .previous_commit()
                .map_err(ServiceError::failed_precondition)?,
        )
        .map_err(ServiceError::internal)?;
        let next = commit_boundary(
            execution
                .prepared_commit()
                .map_err(ServiceError::failed_precondition)?
                .clone(),
        )
        .map_err(ServiceError::internal)?;
        let (receipt, digest) = execution
            .freeze()
            .map_err(ServiceError::failed_precondition)?;
        Ok(FreezeResponse {
            receipt,
            receipt_digest: digest.to_vec(),
            previous: Some(previous),
            next: Some(next),
        })
    }
    pub async fn await_materializer(&mut self) -> std::result::Result<(), ServiceError> {
        if let Some(failure) = &self.materializer_failure {
            return Err(ServiceError::unavailable(anyhow::anyhow!(failure.clone())));
        }
        if let Some(job) = self.materializer.as_mut() {
            let result = job
                .await
                .context("native materializer panicked")
                .and_then(|result| result);
            self.materializer.take();
            if let Err(error) = result {
                let failure = format!(
                    "decided native materialization failed; restart through recovery: {error:#}"
                );
                self.materializer_failure = Some(failure.clone());
                return Err(ServiceError::unavailable(anyhow::anyhow!(failure)));
            }
            self.scope_execution()?
                .finish_materialization()
                .map_err(ServiceError::unavailable)?;
        }
        Ok(())
    }
    pub async fn materialize(
        &mut self,
        request: MaterializeRequest,
    ) -> std::result::Result<MaterializeResponse, ServiceError> {
        self.await_materializer().await?;
        let queries = self.queries.clone();
        if request.height == 0 && request.receipt_digest.is_empty() {
            let _boundary = queries.mutation_boundary().await;
            self.execution_mut()?
                .materialize_genesis()
                .await
                .map_err(ServiceError::failed_precondition)?;
            let state = self
                .get_committed_state(GetCommittedStateRequest {})
                .await?;
            queries.publish_committed(state.clone()).await?;
            return Ok(MaterializeResponse {
                decided: Some(state),
            });
        }
        let digest = request.receipt_digest.try_into().map_err(|_| {
            ServiceError::invalid_argument(anyhow::anyhow!("receipt digest must be 32 bytes"))
        })?;
        let prepared = self
            .execution_mut()?
            .take_decided(request.height, digest)
            .map_err(ServiceError::failed_precondition)?;
        let decided = commit_boundary(prepared.next().clone()).map_err(ServiceError::internal)?;
        let expected = decided.clone();
        let manifest = prepared.next().clone();
        let storage = self
            .storage
            .as_ref()
            .ok_or_else(ServiceError::closed)?
            .clone();
        queries.decide_boundary();
        self.materializer = Some(tokio::spawn(async move {
            // Drain old proof sessions in the background, after acknowledging
            // the durable SDK decision. H+1 still joins this complete job.
            let _boundary = queries.mutation_boundary().await;
            let result = async {
                let copy = storage.clone();
                tokio::task::spawn_blocking(move || storage.materialize(prepared))
                    .await
                    .context("native persistence worker panicked")??;
                queries.checkpoints.capture(copy, &manifest).await;
                queries
                    .publish_committed(expected)
                    .await
                    .map_err(anyhow::Error::from)?;
                Ok(())
            }
            .await;
            if let Err(error) = &result {
                queries.checkpoints.fail(&format!("{error:#}"));
                queries.fail_materialization(format!("{error:#}"));
                let _ = queries.verification.stop().await;
            }
            result
        }));
        Ok(MaterializeResponse {
            decided: Some(decided),
        })
    }
    pub async fn get_committed_state(
        &mut self,
        _request: GetCommittedStateRequest,
    ) -> std::result::Result<GetCommittedStateResponse, ServiceError> {
        self.await_materializer().await?;
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

    pub async fn discard(
        &mut self,
        _request: DiscardRequest,
    ) -> std::result::Result<DiscardResponse, ServiceError> {
        let execution = self.execution.as_mut().ok_or_else(ServiceError::closed)?;
        execution
            .discard()
            .await
            .map_err(ServiceError::failed_precondition)?;
        Ok(DiscardResponse {})
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

    pub async fn schedule_checkpoint(
        &mut self,
        request: shieldd_sdk_proto::execution_client::v1::ScheduleCheckpointRequest,
    ) -> std::result::Result<
        shieldd_sdk_proto::execution_client::v1::ScheduleCheckpointResponse,
        ServiceError,
    > {
        let boundary = request
            .boundary
            .context("checkpoint boundary is missing")
            .map_err(ServiceError::invalid_argument)?;
        let storage = self
            .storage
            .as_ref()
            .ok_or_else(ServiceError::closed)?
            .clone();
        let manifest = if storage
            .manifest()
            .as_ref()
            .is_some_and(|m| m.height == boundary.height)
        {
            storage.manifest().ok_or_else(ServiceError::closed)?
        } else {
            self.execution_mut()?
                .prepared_commit()
                .map_err(ServiceError::failed_precondition)?
                .clone()
        };
        if boundary.root_hash != manifest.digest().map_err(ServiceError::internal)?
            || boundary.block_id != manifest.block_id
            || boundary.height != manifest.height
        {
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "checkpoint differs from the SDK-selected native boundary"
            )));
        }
        self.queries
            .checkpoints
            .schedule(manifest.clone(), request.path.into())
            .map_err(ServiceError::failed_precondition)?;
        if storage.manifest().as_ref() == Some(&manifest) {
            let _boundary = self.queries.mutation_boundary().await;
            self.queries.checkpoints.capture(storage, &manifest).await;
        }
        Ok(Default::default())
    }
    pub async fn restore_checkpoint(
        &mut self,
        request: shieldd_sdk_proto::execution_client::v1::RestoreCheckpointRequest,
    ) -> std::result::Result<
        shieldd_sdk_proto::execution_client::v1::RestoreCheckpointResponse,
        ServiceError,
    > {
        self.await_materializer().await?;
        self.queries
            .verification
            .stop()
            .await
            .map_err(ServiceError::unavailable)?;
        self.queries
            .checkpoints
            .join()
            .await
            .map_err(ServiceError::unavailable)?;
        let boundary = request
            .boundary
            .context("restore SDK boundary is missing")
            .map_err(ServiceError::invalid_argument)?;
        let source = std::path::PathBuf::from(request.path);
        let manifest = shieldd_sdk_storage::Manifest::decode(
            &std::fs::read(source.join("manifest.pb"))
                .map_err(|e| ServiceError::invalid_argument(e.into()))?,
        )
        .map_err(ServiceError::invalid_argument)?;
        if boundary.height != manifest.height
            || boundary.root_hash != manifest.digest().map_err(ServiceError::internal)?
            || boundary.block_id != manifest.block_id
        {
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "restore checkpoint differs from SDK snapshot"
            )));
        }
        crate::checkpoint::validate(&source, &manifest)
            .await
            .map_err(ServiceError::unavailable)?;
        let queries = self.queries.clone();
        let _boundary = queries.mutation_boundary().await;
        let path = self
            .storage
            .as_ref()
            .ok_or_else(ServiceError::closed)?
            .path()
            .to_path_buf();
        let parent = path
            .parent()
            .context("native storage parent is missing")
            .map_err(ServiceError::internal)?;
        let staging = parent.join(format!(".shieldd-import-{}", std::process::id()));
        if staging.exists() {
            return Err(ServiceError::unavailable(anyhow::anyhow!(
                "unfinished checkpoint replacement requires repair"
            )));
        }
        let config = shieldd_sdk_storage::ForestConfig::from_env()
            .map_err(ServiceError::invalid_argument)?;
        let restored = Storage::restore(
            &source,
            &staging,
            config.clone(),
            manifest.digest().map_err(ServiceError::internal)?,
        )
        .map_err(ServiceError::unavailable)?;
        let validation = async {
            shieldd_sdk_app::app_version::check_app_version(&restored)
                .await
                .map_err(ServiceError::unavailable)?;
            let view = restored.latest_snapshot();
            if !shieldd_sdk_app::app::App::is_ready(view.clone()).await {
                return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                    "restored native commitments are inconsistent"
                )));
            }
            shieldd_sdk_app::registry_binding::check(&view, self.registry.id())
                .await
                .map_err(ServiceError::unavailable)?;
            restored
                .forest()
                .read()
                .authenticate_reads(&manifest, view.observations())
                .map_err(ServiceError::unavailable)?;
            Ok(())
        }
        .await;
        drop(restored);
        if let Err(error) = validation {
            if let Err(cleanup) = std::fs::remove_dir_all(&staging) {
                tracing::warn!(%cleanup, "rejected checkpoint files require local cleanup");
            }
            return Err(error);
        }
        // Prepare and validate before dropping the live handles. Exchange is
        // atomic, and old files remain under staging until local cleanup.
        queries.detach_storage();
        drop(self.execution.take());
        drop(self.storage.take());
        Storage::activate_checkpoint(&staging, &path).map_err(ServiceError::unavailable)?;
        let storage = Storage::open(&path, config).map_err(ServiceError::unavailable)?;
        let execution =
            HostExecution::with_cache(storage.clone(), queries.cache(), self.registry.clone())
                .await
                .map_err(ServiceError::unavailable)?;
        queries.attach_storage(storage.clone(), execution.nullifier_reader());
        queries.publish_committed(boundary).await?;
        self.storage = Some(storage);
        self.execution = Some(execution);
        self.materializer_failure = None;
        if let Err(error) = std::fs::remove_dir_all(staging) {
            tracing::warn!(?error, "old checkpoint files require local cleanup");
        }
        Ok(Default::default())
    }

    pub async fn close(&mut self) -> std::result::Result<(), ServiceError> {
        let verification = self
            .queries
            .verification
            .stop()
            .await
            .map_err(ServiceError::unavailable);
        let completion = self.await_materializer().await;
        self.queries
            .checkpoints
            .join()
            .await
            .map_err(ServiceError::unavailable)?;
        self.queries.close();
        drop(self.execution.take());
        if let Some(storage) = self.storage.take() {
            drop(storage);
        }
        completion.and(verification)
    }
}

fn commit_boundary(value: shieldd_sdk_storage::Manifest) -> Result<GetCommittedStateResponse> {
    Ok(GetCommittedStateResponse {
        height: value.height,
        root_hash: value.digest()?.to_vec(),
        block_id: value.block_id.to_vec(),
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
    use shieldd_sdk_app::genesis::{AppState, Content};
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_shielded_pool::{EvmCall, HostExecution};
    use shieldd_sdk_storage::StateDelta;
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
            .discard(DiscardRequest {})
            .await
            .expect("rollback completed");
        service.close().await.expect("close execution service");

        let error = service
            .discard(DiscardRequest {})
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
        use shieldd_sdk_proto::{StateReadProto, StateWriteProto};
        use shieldd_sdk_storage::StateWrite;
        for (version, verifiable_change) in [
            (None, false),
            (None, true),
            (Some(shieldd_sdk_app::APP_VERSION - 1), true),
        ] {
            let directory = tempfile::tempdir()?;
            let mut service =
                ExecutionService::open(directory.path(), crate::test_registry()).await?;
            service.init_genesis(init_genesis_request()).await?;
            service
                .materialize(MaterializeRequest {
                    height: 0,
                    receipt_digest: vec![],
                })
                .await?;
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
            let previous = storage.manifest().unwrap();
            let update = storage.prepare(
                state,
                shieldd_sdk_storage::BlockBoundary {
                    chain_id: previous.chain_id,
                    protocol: previous.protocol,
                    height: previous.height + 1,
                    block_id: [1; 32],
                    time: 1,
                },
                Default::default(),
            )?;
            storage.materialize(update)?;
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
            let storage = Storage::open(
                directory.path(),
                shieldd_sdk_storage::ForestConfig::from_env()?,
            )?;
            assert_eq!(storage.latest_version(), stored_version);
            assert_eq!(
                storage
                    .latest_snapshot()
                    .nonverifiable_get_proto::<u64>(key)
                    .await?,
                version
            );
            drop(storage);
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
            .materialize(MaterializeRequest {
                height: 0,
                receipt_digest: vec![],
            })
            .await
            .expect("commit genesis");
        let committed = service
            .get_committed_state(GetCommittedStateRequest {})
            .await
            .expect("get committed genesis");
        assert_eq!(committed.height, 0);
        assert_eq!(committed.root_hash, commit.decided.unwrap().root_hash);

        let capture_parent = tempfile::tempdir().expect("checkpoint parent");
        let path = capture_parent.path().join("capture");
        service
            .schedule_checkpoint(
                shieldd_sdk_proto::execution_client::v1::ScheduleCheckpointRequest {
                    boundary: Some(committed.clone()),
                    path: path.to_str().unwrap().to_owned(),
                },
            )
            .await
            .expect("capture matched native checkpoint");
        service
            .queries
            .checkpoints
            .wait(0)
            .await
            .expect("validate captured checkpoint");
        service
            .restore_checkpoint(
                shieldd_sdk_proto::execution_client::v1::RestoreCheckpointRequest {
                    boundary: Some(committed.clone()),
                    path: path.to_str().unwrap().to_owned(),
                },
            )
            .await
            .expect("validate private native copy and activate checkpoint");
        assert_eq!(
            service
                .get_committed_state(GetCommittedStateRequest {})
                .await
                .unwrap(),
            committed
        );
        service
            .queries
            .checkpoints
            .release(0)
            .expect("release consumed source capture");
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
