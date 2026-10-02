use crate::service::{check_tx_response, ServiceError};
use anyhow::{Context as _, Result};
use prost::Message as _;
use sha2::{Digest as _, Sha256};
use shieldd_sdk_app::{
    app::{HostExecution, StateReadExt as _},
    stateless_cache::StatelessCache,
};
use shieldd_sdk_proof_params::pari::Registry;
use shieldd_sdk_proto::core::component::compact_block::v1::{
    CompactBlockPageRequest, CompactBlockPageResponse, CompactPage, CompactRecordFragment,
    CompactRecordKind, StoredCompactBlock,
};
use shieldd_sdk_proto::{
    core::app::v1 as proto_app,
    core::component::{
        compliance::v1::{
            ComplianceAssetStatusRequest, ComplianceAssetStatusResponse,
            ComplianceBatchMerkleProofsRequest, ComplianceBatchMerkleProofsResponse,
            ComplianceUserLeafRequest, ComplianceUserLeafResponse,
        },
        sct::v1::{NullifierRequest, NullifierResponse},
        shielded_pool::v1::{AssetMetadataByIdRequest, AssetMetadataByIdResponse},
    },
    execution_client::v1::{CheckTxRequest, CheckTxResponse, GetCommittedStateResponse},
    storage::v1::{
        key_value_response::Value as ProtoKeyValue, KeyValueRequest as ProtoKeyValueRequest,
        KeyValueResponse as ProtoKeyValueResponse,
    },
};
use shieldd_sdk_sct::{
    component::clock::EpochRead as _,
    permanent_nullifiers::{self, Reader},
    Nullifier,
};
use shieldd_sdk_storage::{Snapshot, StateRead as _, Storage};
use std::sync::{Arc, RwLock};

tokio::task_local! { static QUERY_VIEW: Snapshot; }

struct PublishedState {
    snapshot: Snapshot,
}

/// Published snapshots are shared with readers; no query takes the execution lock.
pub struct QueryService {
    pub(crate) limits: crate::ServiceLimits,
    pub(crate) checkpoints: Arc<crate::checkpoint::Checkpoints>,
    pub(crate) verification: crate::verification::VerificationPipeline,
    storage: RwLock<Option<Storage>>,
    published: RwLock<Option<PublishedState>>,
    materializer_failure: RwLock<Option<String>>,
    boundary_gate: Arc<tokio::sync::RwLock<()>>,
    publication_ready: tokio::sync::watch::Sender<bool>,
    nullifiers: RwLock<Option<Reader>>,
    registry: Arc<Registry>,
    cache: Arc<StatelessCache>,
    check_slots: Arc<tokio::sync::Semaphore>,
    pub(crate) nullifier_slots: Arc<tokio::sync::Semaphore>,
    pub(crate) historical_sct: crate::historical_sct::HistoricalSct,
}
impl QueryService {
    pub(crate) fn new(
        storage: Storage,
        nullifiers: Reader,
        registry: Arc<Registry>,
        cache: Arc<StatelessCache>,
        limits: crate::ServiceLimits,
    ) -> Self {
        Self {
            verification: Default::default(),
            checkpoints: Default::default(),
            storage: RwLock::new(Some(storage)),
            published: RwLock::new(None),
            materializer_failure: RwLock::new(None),
            boundary_gate: Arc::new(tokio::sync::RwLock::new(())),
            publication_ready: tokio::sync::watch::channel(true).0,
            nullifiers: RwLock::new(Some(nullifiers)),
            registry,
            cache,
            check_slots: Arc::new(tokio::sync::Semaphore::new(limits.check_tx_workers)),
            nullifier_slots: Arc::new(tokio::sync::Semaphore::new(limits.nullifier_query_workers)),
            historical_sct: crate::historical_sct::HistoricalSct::new(64 * 1024 * 1024),
            limits,
        }
    }
    pub(crate) async fn start_verification(
        &self,
        request: shieldd_sdk_proto::execution_client::v1::StartVerificationRequest,
    ) -> Result<shieldd_sdk_proto::execution_client::v1::StartVerificationResponse, ServiceError>
    {
        if let Some(failure) = self
            .materializer_failure
            .read()
            .expect("materializer status lock poisoned")
            .clone()
        {
            return Err(ServiceError::unavailable(anyhow::anyhow!(failure)));
        }
        self.verification
            .start(
                request,
                self.registry.clone(),
                self.limits.proof_memory_bytes,
            )
            .await?;
        Ok(Default::default())
    }
    pub(crate) fn nullifiers(&self) -> Result<Reader, ServiceError> {
        self.nullifiers
            .read()
            .expect("nullifier reader lock poisoned")
            .clone()
            .ok_or_else(ServiceError::closed)
    }
    pub(crate) fn cache(&self) -> Arc<StatelessCache> {
        self.cache.clone()
    }
    pub(crate) fn detach_storage(&self) {
        self.nullifiers
            .write()
            .expect("nullifier reader lock poisoned")
            .take();
        self.storage.write().expect("storage lock poisoned").take();
        *self.published.write().expect("publication lock poisoned") = None;
        self.historical_sct.clear();
    }
    pub(crate) fn attach_storage(&self, storage: Storage, nullifiers: Reader) {
        *self.storage.write().expect("storage lock poisoned") = Some(storage);
        *self
            .nullifiers
            .write()
            .expect("nullifier reader lock poisoned") = Some(nullifiers);
        *self
            .materializer_failure
            .write()
            .expect("materializer status lock poisoned") = None;
    }
    pub(crate) fn close(&self) {
        self.nullifiers
            .write()
            .expect("nullifier reader lock poisoned")
            .take();
        self.storage.write().expect("storage lock poisoned").take();
        self.publication_ready.send_replace(true);
        self.check_slots.close();
        self.nullifier_slots.close();
        *self.published.write().expect("publication lock poisoned") = None;
    }
    pub(crate) fn fail_materialization(&self, failure: String) {
        *self
            .materializer_failure
            .write()
            .expect("materializer status lock poisoned") = Some(failure);
        self.publication_ready.send_replace(true);
    }
    pub(crate) fn snapshot(&self) -> Result<Snapshot, ServiceError> {
        if let Some(failure) = &*self
            .materializer_failure
            .read()
            .expect("materializer status lock poisoned")
        {
            return Err(ServiceError::unavailable(anyhow::anyhow!(failure.clone())));
        }
        if let Ok(view) = QUERY_VIEW.try_with(Clone::clone) {
            return Ok(view);
        }
        self.published
            .read()
            .expect("publication lock poisoned")
            .as_ref()
            .map(|state| state.snapshot.new_view())
            .ok_or_else(|| {
                ServiceError::failed_precondition(anyhow::anyhow!(
                    "no jointly committed state has been published"
                ))
            })
    }

    pub(crate) fn decide_boundary(&self) {
        self.publication_ready.send_replace(false);
    }
    pub async fn published_boundary(&self) -> Result<GetCommittedStateResponse, ServiceError> {
        self.authenticated(async {
            let snapshot = self.snapshot()?;
            let manifest = snapshot
                .manifest()
                .context("publication manifest missing")
                .map_err(ServiceError::unavailable)?;
            Ok(GetCommittedStateResponse {
                height: manifest.height,
                root_hash: manifest
                    .digest()
                    .map_err(ServiceError::unavailable)?
                    .to_vec(),
                block_id: manifest.block_id.to_vec(),
            })
        })
        .await
    }

    pub(crate) async fn mutation_boundary(&self) -> tokio::sync::OwnedRwLockWriteGuard<()> {
        self.boundary_gate.clone().write_owned().await
    }
    pub(crate) async fn authenticated<T, E, F>(&self, future: F) -> Result<T, E>
    where
        F: std::future::Future<Output = Result<T, E>>,
        E: From<ServiceError>,
    {
        if QUERY_VIEW.try_with(|_| ()).is_ok() {
            return future.await;
        }
        let mut ready = self.publication_ready.subscribe();
        let _boundary = loop {
            while !*ready.borrow_and_update() {
                ready
                    .changed()
                    .await
                    .map_err(|_| E::from(ServiceError::closed()))?;
            }
            let boundary = self.boundary_gate.clone().read_owned().await;
            if *self.publication_ready.borrow() {
                break boundary;
            }
            drop(boundary);
        };
        let snapshot = self.snapshot().map_err(E::from)?;
        let result = QUERY_VIEW.scope(snapshot.clone(), future).await;
        let owner = self
            .storage
            .read()
            .expect("storage lock poisoned")
            .clone()
            .ok_or_else(ServiceError::closed)
            .map_err(E::from)?;
        let manifest = snapshot
            .manifest()
            .context("query boundary is missing")
            .map_err(ServiceError::unavailable)
            .map_err(E::from)?;
        owner
            .forest()
            .read()
            .authenticate_reads(manifest, snapshot.observations())
            .map_err(ServiceError::unavailable)
            .map_err(E::from)?;
        result
    }

    /// Bankd calls this only after its own commit and durable recovery record succeed.
    pub(crate) async fn publish_committed(
        &self,
        expected: GetCommittedStateResponse,
    ) -> Result<(), ServiceError> {
        let snapshot = self
            .storage
            .read()
            .expect("storage lock poisoned")
            .as_ref()
            .ok_or_else(ServiceError::closed)?
            .latest_snapshot();
        let height = snapshot
            .get_block_height()
            .await
            .map_err(ServiceError::internal)?;
        let root = snapshot.root_hash().await.map_err(ServiceError::internal)?;
        let manifest = snapshot
            .manifest()
            .context("publication manifest is missing")
            .map_err(ServiceError::unavailable)?;
        self.storage
            .read()
            .expect("storage lock poisoned")
            .as_ref()
            .ok_or_else(ServiceError::closed)?
            .check_materialized()
            .map_err(ServiceError::unavailable)?;
        if height != expected.height
            || root.0.as_slice() != expected.root_hash
            || manifest.height != height
            || manifest.block_id.as_slice() != expected.block_id
        {
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "publication does not match durable native state"
            )));
        }
        let mut published = self.published.write().expect("publication lock poisoned");
        if published
            .as_ref()
            .is_some_and(|previous| previous.snapshot.version() > snapshot.version())
        {
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "publication moved backwards"
            )));
        }
        *published = Some(PublishedState { snapshot });
        self.publication_ready.send_replace(true);
        Ok(())
    }
    pub async fn check_tx(&self, request: CheckTxRequest) -> Result<CheckTxResponse, ServiceError> {
        self.authenticated(self.check_tx_in_view(request)).await
    }
    async fn check_tx_in_view(
        &self,
        request: CheckTxRequest,
    ) -> Result<CheckTxResponse, ServiceError> {
        let _permit = self
            .check_slots
            .clone()
            .try_acquire_owned()
            .map_err(|_| ServiceError::overloaded())?;
        let response = HostExecution::check_tx_at(
            self.snapshot()?,
            self.registry.clone(),
            self.cache.clone(),
            self.nullifiers()?,
            &request.tx,
        )
        .await
        .map_err(ServiceError::failed_precondition)?;
        check_tx_response(response).map_err(ServiceError::internal)
    }
    pub async fn spend_status_page(
        &self,
        request: shieldd_sdk_proto::core::component::sct::v1::SpendStatusPageRequest,
    ) -> Result<shieldd_sdk_proto::core::component::sct::v1::SpendStatusPageResponse, ServiceError>
    {
        self.authenticated(self.spend_status_page_in_view(request))
            .await
    }
    async fn spend_status_page_in_view(
        &self,
        request: shieldd_sdk_proto::core::component::sct::v1::SpendStatusPageRequest,
    ) -> Result<shieldd_sdk_proto::core::component::sct::v1::SpendStatusPageResponse, ServiceError>
    {
        crate::spend_query::page(self, request).await
    }
    pub async fn filtered_block_page(
        &self,
        request: shieldd_sdk_proto::core::component::compact_block::v1::FilteredBlockPageRequest,
    ) -> Result<
        shieldd_sdk_proto::core::component::compact_block::v1::FilteredBlockPageResponse,
        ServiceError,
    > {
        self.authenticated(self.filtered_block_page_in_view(request))
            .await
    }
    async fn filtered_block_page_in_view(
        &self,
        request: shieldd_sdk_proto::core::component::compact_block::v1::FilteredBlockPageRequest,
    ) -> Result<
        shieldd_sdk_proto::core::component::compact_block::v1::FilteredBlockPageResponse,
        ServiceError,
    > {
        crate::filtered_query::page(self, request).await
    }
    pub async fn compact_block_page(
        &self,
        request: CompactBlockPageRequest,
    ) -> Result<CompactBlockPageResponse, ServiceError> {
        self.authenticated(self.compact_block_page_in_view(request))
            .await
    }
    async fn compact_block_page_in_view(
        &self,
        request: CompactBlockPageRequest,
    ) -> Result<CompactBlockPageResponse, ServiceError> {
        let snapshot = self.snapshot()?;
        if request.height
            > snapshot
                .get_block_height()
                .await
                .map_err(ServiceError::internal)?
        {
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "requested block is not committed"
            )));
        }
        let chain_id = snapshot
            .get_chain_id()
            .await
            .map_err(ServiceError::internal)?;
        let header = snapshot
            .nonverifiable_get_raw(
                shieldd_sdk_compact_block::state_key::compact_block(request.height).as_bytes(),
            )
            .await
            .map_err(ServiceError::internal)?
            .ok_or_else(|| {
                ServiceError::failed_precondition(anyhow::anyhow!("compact block is unavailable"))
            })?;
        if header.len() > 64 * 1024 {
            return Err(ServiceError::internal(anyhow::anyhow!(
                "compact header exceeds bounded format"
            )));
        }
        let identity: [u8; 32] = Sha256::digest(&header).into();
        let stored = StoredCompactBlock::decode(header.as_slice())
            .map_err(|e| ServiceError::internal(e.into()))?;
        let metadata = stored
            .metadata
            .as_ref()
            .ok_or_else(|| ServiceError::internal(anyhow::anyhow!("missing compact header")))?;
        if stored.sections.len() != 7
            || stored
                .sections
                .iter()
                .enumerate()
                .any(|(i, section)| section.kind != (i + 1) as i32)
        {
            return Err(ServiceError::internal(anyhow::anyhow!(
                "invalid compact section inventory"
            )));
        }
        let mut cursor = BlockCursor {
            chain_id: chain_id.clone(),
            height: request.height,
            identity,
            kind: 0,
            index: 0,
            offset: 0,
        };
        if !request.cursor.is_empty() {
            if request.cursor.len() > 1024 {
                return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                    "compact cursor is too large"
                )));
            }
            cursor = serde_json::from_slice(&request.cursor)
                .map_err(|e| ServiceError::invalid_argument(e.into()))?;
            if cursor.chain_id != chain_id
                || cursor.height != request.height
                || cursor.identity != identity
                || !(0..=7).contains(&cursor.kind)
            {
                return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                    "compact cursor belongs to another query"
                )));
            }
        }
        let mut response = CompactPage {
            height: request.height,
            chain_id,
            block_identity: identity.to_vec(),
            ..Default::default()
        };
        let mut used = 0;
        while cursor.kind <= 7
            && used < self.limits.payload_page_bytes()
            && response.fragments.len() < 4096
        {
            let count = if cursor.kind == 0 {
                1
            } else {
                stored.sections[(cursor.kind - 1) as usize].count
            };
            if cursor.index > count {
                return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                    "compact cursor exceeds section"
                )));
            }
            if cursor.index == count {
                cursor.kind += 1;
                cursor.index = 0;
                cursor.offset = 0;
                continue;
            }
            let (length, data) = if cursor.kind == 0 {
                if cursor.offset != 0 {
                    return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                        "invalid compact header offset"
                    )));
                }
                (header.len() as u32, header.clone())
            } else {
                let position = if cursor.kind == 1 {
                    metadata
                        .state_payload_start_position
                        .checked_add(cursor.index as u64)
                        .ok_or_else(|| {
                            ServiceError::internal(anyhow::anyhow!("compact position overflow"))
                        })?
                } else {
                    cursor.index as u64
                };
                let record = shieldd_sdk_compact_block::component::records::fragment(
                    &snapshot,
                    &shieldd_sdk_compact_block::state_key::record(
                        request.height,
                        cursor.kind,
                        position,
                    ),
                    cursor.offset,
                )
                .await
                .map_err(ServiceError::internal)?;
                (record.length, record.data)
            };
            used += data.len();
            let next_offset = cursor.offset + data.len() as u32;
            response.fragments.push(CompactRecordFragment {
                kind: if cursor.kind == 0 {
                    CompactRecordKind::Header as i32
                } else {
                    cursor.kind
                },
                index: cursor.index,
                offset: cursor.offset,
                total_length: length,
                data,
            });
            if next_offset == length {
                cursor.index += 1;
                cursor.offset = 0;
            } else {
                cursor.offset = next_offset;
            }
        }
        while cursor.kind <= 7
            && cursor.offset == 0
            && cursor.index == stored.sections[(cursor.kind - 1) as usize].count
        {
            cursor.kind += 1;
            cursor.index = 0;
        }
        if cursor.kind <= 7 {
            response.next_cursor =
                serde_json::to_vec(&cursor).map_err(|e| ServiceError::internal(e.into()))?;
        }
        Ok(CompactBlockPageResponse {
            page: Some(response),
        })
    }

    /// Reads a bounded page directly from ordinal records, without loading the block log.
    pub async fn transactions_by_height(
        &self,
        request: proto_app::TransactionsByHeightRequest,
    ) -> Result<proto_app::TransactionsByHeightResponse, ServiceError> {
        self.authenticated(self.transactions_by_height_in_view(request))
            .await
    }
    async fn transactions_by_height_in_view(
        &self,
        request: proto_app::TransactionsByHeightRequest,
    ) -> Result<proto_app::TransactionsByHeightResponse, ServiceError> {
        let snapshot = self.snapshot()?;
        let tip = snapshot
            .get_block_height()
            .await
            .map_err(ServiceError::internal)?;
        if request.block_height > tip {
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "requested block is not committed"
            )));
        }
        let chain_id = snapshot
            .get_chain_id()
            .await
            .map_err(ServiceError::internal)?;
        let header = snapshot
            .nonverifiable_get_raw(
                shieldd_sdk_compact_block::state_key::compact_block(request.block_height)
                    .as_bytes(),
            )
            .await
            .map_err(ServiceError::internal)?
            .ok_or_else(|| {
                ServiceError::failed_precondition(anyhow::anyhow!(
                    "committed block header is unavailable"
                ))
            })?;
        let identity: [u8; 32] = Sha256::digest(&header).into();
        let mut ordinal = 0;
        if !request.cursor.is_empty() {
            if request.cursor.len() > 1024 {
                return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                    "transaction cursor is too large"
                )));
            }
            let cursor: TransactionCursor = serde_json::from_slice(&request.cursor)
                .map_err(|e| ServiceError::invalid_argument(e.into()))?;
            if cursor.chain_id != chain_id
                || cursor.height != request.block_height
                || cursor.identity != identity
            {
                return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                    "transaction cursor belongs to another query"
                )));
            }
            ordinal = cursor.ordinal;
        }
        let count = snapshot
            .block_transaction_count(request.block_height)
            .await
            .map_err(ServiceError::internal)?;
        if ordinal > count {
            return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                "transaction cursor exceeds block"
            )));
        }
        let mut response = proto_app::TransactionsByHeightResponse {
            block_height: request.block_height,
            ..Default::default()
        };
        let mut bytes_used = 0;
        while ordinal < count {
            let key = shieldd_sdk_app::app::state_key::block_data::transaction(
                request.block_height,
                ordinal,
            );
            let bytes = snapshot
                .nonverifiable_get_raw(&key)
                .await
                .map_err(ServiceError::internal)?
                .ok_or_else(|| {
                    ServiceError::internal(anyhow::anyhow!("missing committed transaction"))
                })?;
            if bytes.len() > shieldd_sdk_app::app::MAX_TRANSACTION_SIZE_BYTES {
                return Err(ServiceError::internal(anyhow::anyhow!(
                    "oversized committed transaction"
                )));
            }
            if bytes_used + bytes.len() > self.limits.payload_page_bytes()
                || response.transactions.len() == 256
            {
                break;
            }
            bytes_used += bytes.len();
            response.transactions.push(
                shieldd_sdk_proto::core::transaction::v1::Transaction::decode(bytes.as_slice())
                    .map_err(|e| ServiceError::internal(e.into()))?,
            );
            ordinal += 1;
        }
        if ordinal < count {
            response.next_cursor = serde_json::to_vec(&TransactionCursor {
                chain_id,
                identity,
                height: request.block_height,
                ordinal,
            })
            .map_err(|e| ServiceError::internal(e.into()))?;
        }
        Ok(response)
    }

    /// Returns at most one bounded transaction from a committed block.
    pub async fn committed_transaction(
        &self,
        request: proto_app::CommittedTransactionRequest,
    ) -> std::result::Result<proto_app::CommittedTransactionResponse, ServiceError> {
        self.authenticated(self.committed_transaction_in_view(request))
            .await
    }
    async fn committed_transaction_in_view(
        &self,
        request: proto_app::CommittedTransactionRequest,
    ) -> std::result::Result<proto_app::CommittedTransactionResponse, ServiceError> {
        let snapshot = self.snapshot()?;
        if snapshot.version() == u64::MAX {
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "Shieldd app state is not initialized"
            )));
        }
        let height = snapshot
            .get_block_height()
            .await
            .map_err(ServiceError::internal)?;
        if request.block_height > height {
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "requested block is not committed"
            )));
        }
        let transaction_id = request.transaction_id.try_into().map_err(|_| {
            ServiceError::invalid_argument(anyhow::anyhow!("transaction ID must be 32 bytes"))
        })?;
        snapshot
            .committed_transaction(request.block_height, transaction_id)
            .await
            .map_err(ServiceError::internal)
    }

    pub async fn app_parameters(
        &self,
        _request: proto_app::AppParametersRequest,
    ) -> std::result::Result<proto_app::AppParametersResponse, ServiceError> {
        self.authenticated(self.app_parameters_in_view(_request))
            .await
    }
    async fn app_parameters_in_view(
        &self,
        _request: proto_app::AppParametersRequest,
    ) -> std::result::Result<proto_app::AppParametersResponse, ServiceError> {
        let snapshot = self.snapshot()?;
        if snapshot.version() == u64::MAX {
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "Shieldd app state is not initialized"
            )));
        }
        let app_parameters = snapshot
            .get_app_params()
            .await
            .context("read committed Shieldd app parameters")
            .map_err(ServiceError::internal)?;

        Ok(proto_app::AppParametersResponse {
            app_parameters: Some(app_parameters.into()),
        })
    }

    pub async fn asset_metadata_by_id(
        &self,
        request: AssetMetadataByIdRequest,
    ) -> std::result::Result<AssetMetadataByIdResponse, ServiceError> {
        self.authenticated(self.asset_metadata_by_id_in_view(request))
            .await
    }
    async fn asset_metadata_by_id_in_view(
        &self,
        request: AssetMetadataByIdRequest,
    ) -> std::result::Result<AssetMetadataByIdResponse, ServiceError> {
        let snapshot = self.snapshot()?;
        shieldd_sdk_shielded_pool::component::query::asset_metadata_by_id(&snapshot, request)
            .await
            .map_err(ServiceError::state_query)
    }

    pub async fn compliance_asset_status(
        &self,
        request: ComplianceAssetStatusRequest,
    ) -> std::result::Result<ComplianceAssetStatusResponse, ServiceError> {
        self.authenticated(self.compliance_asset_status_in_view(request))
            .await
    }
    async fn compliance_asset_status_in_view(
        &self,
        request: ComplianceAssetStatusRequest,
    ) -> std::result::Result<ComplianceAssetStatusResponse, ServiceError> {
        let snapshot = self.snapshot()?;
        shieldd_sdk_compliance::component::query::compliance_asset_status(&snapshot, request)
            .await
            .map_err(ServiceError::state_query)
    }

    pub async fn compliance_batch_merkle_proofs(
        &self,
        request: ComplianceBatchMerkleProofsRequest,
    ) -> std::result::Result<ComplianceBatchMerkleProofsResponse, ServiceError> {
        self.authenticated(self.compliance_batch_merkle_proofs_in_view(request))
            .await
    }
    async fn compliance_batch_merkle_proofs_in_view(
        &self,
        request: ComplianceBatchMerkleProofsRequest,
    ) -> std::result::Result<ComplianceBatchMerkleProofsResponse, ServiceError> {
        if request.queries.len() > self.limits.items_per_request {
            return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                "too many compliance queries"
            )));
        }
        let snapshot = self.snapshot()?;
        shieldd_sdk_compliance::component::query::compliance_batch_merkle_proofs(&snapshot, request)
            .await
            .map_err(ServiceError::state_query)
    }

    pub async fn compliance_user_leaf(
        &self,
        request: ComplianceUserLeafRequest,
    ) -> std::result::Result<ComplianceUserLeafResponse, ServiceError> {
        self.authenticated(self.compliance_user_leaf_in_view(request))
            .await
    }
    async fn compliance_user_leaf_in_view(
        &self,
        request: ComplianceUserLeafRequest,
    ) -> std::result::Result<ComplianceUserLeafResponse, ServiceError> {
        let snapshot = self.snapshot()?;
        shieldd_sdk_compliance::component::query::compliance_user_leaf(&snapshot, request)
            .await
            .map_err(ServiceError::state_query)
    }

    pub async fn key_value(
        &self,
        request: ProtoKeyValueRequest,
    ) -> std::result::Result<ProtoKeyValueResponse, ServiceError> {
        self.authenticated(self.key_value_in_view(request)).await
    }
    async fn key_value_in_view(
        &self,
        request: ProtoKeyValueRequest,
    ) -> std::result::Result<ProtoKeyValueResponse, ServiceError> {
        let snapshot = self.snapshot()?;
        if request.key.is_empty() {
            return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                "key is empty"
            )));
        }
        let owner = self
            .storage
            .read()
            .expect("storage lock poisoned")
            .clone()
            .ok_or_else(ServiceError::closed)?;
        let manifest = snapshot
            .manifest()
            .context("key-value boundary is missing")
            .map_err(ServiceError::unavailable)?;
        let key = shieldd_sdk_storage::application_key(
            shieldd_sdk_storage::Space::Application,
            request.key.as_bytes(),
        );
        let value = snapshot
            .get_raw(&request.key)
            .await
            .map_err(ServiceError::internal)?;
        let (commitment, path) = owner
            .forest()
            .read()
            .authenticated_read(&manifest.participants[0], key)
            .map_err(ServiceError::unavailable)?;
        if commitment
            != value.as_deref().map(|value| {
                shieldd_sdk_storage::ValueCommitment::new(value)
                    .encode()
                    .to_vec()
            })
        {
            return Err(ServiceError::unavailable(anyhow::anyhow!(
                "committed value does not match native proof"
            )));
        }
        let proof = if request.proof {
            shieldd_sdk_storage::StateProof {
                manifest: manifest.clone(),
                participant: 0,
                key,
                value: commitment,
                path,
            }
            .encode()
            .map_err(ServiceError::internal)?
        } else {
            vec![]
        };
        Ok(ProtoKeyValueResponse {
            value: value.map(|value| ProtoKeyValue { value }),
            proof,
        })
    }

    pub async fn nullifier_status(
        &self,
        request: NullifierRequest,
    ) -> Result<NullifierResponse, ServiceError> {
        self.authenticated(self.nullifier_status_in_view(request))
            .await
    }
    async fn nullifier_status_in_view(
        &self,
        request: NullifierRequest,
    ) -> Result<NullifierResponse, ServiceError> {
        let nullifier = request
            .nullifier
            .context("missing nullifier")
            .and_then(Nullifier::try_from)
            .map_err(ServiceError::invalid_argument)?;
        let boundary =
            permanent_nullifiers::manifest(&self.snapshot()?).map_err(ServiceError::unavailable)?;
        self.status(nullifier, boundary).await
    }
    pub(crate) async fn status(
        &self,
        nullifier: Nullifier,
        boundary: Arc<shieldd_sdk_storage::Manifest>,
    ) -> Result<NullifierResponse, ServiceError> {
        let permit = self
            .nullifier_slots
            .clone()
            .try_acquire_owned()
            .map_err(|_| ServiceError::overloaded())?;
        let reader = self.nullifiers()?;
        tokio::task::spawn_blocking(move || {
            let _permit = permit;
            reader.status(nullifier, &boundary)?.try_into()
        })
        .await
        .map_err(|e| ServiceError::internal(e.into()))?
        .map_err(ServiceError::unavailable)
    }
}

#[derive(serde::Serialize, serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct TransactionCursor {
    chain_id: String,
    identity: [u8; 32],
    height: u64,
    ordinal: u64,
}

#[derive(serde::Serialize, serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct BlockCursor {
    chain_id: String,
    height: u64,
    identity: [u8; 32],
    kind: i32,
    index: u32,
    offset: u32,
}
