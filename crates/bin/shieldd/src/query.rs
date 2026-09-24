use crate::service::{check_tx_response, ServiceError};
use anyhow::{Context as _, Result};
use cnidarium::{Snapshot, StateRead as _, Storage};
use prost::Message as _;
use sha2::{Digest as _, Sha256};
use shieldd_sdk_app::{
    app::{HostExecution, StateReadExt as _},
    stateless_cache::StatelessCache,
};
use shieldd_sdk_proof_params::pari::Registry;
use shieldd_sdk_proto::core::component::compact_block::v1::{
    CompactBlockPageRequest, CompactBlockPageResponse, CompactRecordFragment, StoredCompactBlock,
};
use shieldd_sdk_proto::{
    cnidarium::v1::{
        key_value_response::Value as ProtoKeyValue, KeyValueRequest as ProtoKeyValueRequest,
        KeyValueResponse as ProtoKeyValueResponse,
    },
    core::app::v1 as proto_app,
    core::component::{
        compliance::v1::{
            ComplianceAssetStatusRequest, ComplianceAssetStatusResponse,
            ComplianceBatchMerkleProofsRequest, ComplianceBatchMerkleProofsResponse,
            ComplianceUserLeafRequest, ComplianceUserLeafResponse,
        },
        sct::v1::{
            ArchivedNullifierProofRequest, ArchivedNullifierProofResponse, NullifierWindowRequest,
            NullifierWindowResponse,
        },
        shielded_pool::v1::{AssetMetadataByIdRequest, AssetMetadataByIdResponse},
    },
    execution_client::v1::{CheckTxRequest, CheckTxResponse, GetCommittedStateResponse},
};
use shieldd_sdk_sct::{
    component::clock::EpochRead as _, generation_pack::GenerationPackRepository, nullifier_tree,
    Nullifier,
};
use std::sync::{Arc, RwLock};

/// Published snapshots are shared with readers; no query takes the execution lock.
pub struct QueryService {
    pub(crate) limits: crate::ServiceLimits,
    storage: RwLock<Option<Storage>>,
    published: RwLock<Option<Snapshot>>,
    pub(crate) generation_packs: Option<GenerationPackRepository>,
    registry: Arc<Registry>,
    cache: Arc<StatelessCache>,
    check_slots: Arc<tokio::sync::Semaphore>,
    pub(crate) archive_slots: Arc<tokio::sync::Semaphore>,
    pub(crate) historical_sct: crate::historical_sct::HistoricalSct,
}
impl QueryService {
    pub(crate) fn new(
        storage: Storage,
        generation_packs: Option<GenerationPackRepository>,
        registry: Arc<Registry>,
        cache: Arc<StatelessCache>,
        limits: crate::ServiceLimits,
    ) -> Self {
        Self {
            storage: RwLock::new(Some(storage)),
            published: RwLock::new(None),
            generation_packs,
            registry,
            cache,
            check_slots: Arc::new(tokio::sync::Semaphore::new(limits.check_tx_workers)),
            archive_slots: Arc::new(tokio::sync::Semaphore::new(limits.archive_query_workers)),
            historical_sct: crate::historical_sct::HistoricalSct::new(64 * 1024 * 1024),
            limits,
        }
    }
    pub(crate) fn close(&self) {
        self.storage.write().expect("storage lock poisoned").take();
        self.check_slots.close();
        self.archive_slots.close();
        *self.published.write().expect("publication lock poisoned") = None;
    }
    pub(crate) fn snapshot(&self) -> Result<Snapshot, ServiceError> {
        self.published
            .read()
            .expect("publication lock poisoned")
            .clone()
            .ok_or_else(|| {
                ServiceError::failed_precondition(anyhow::anyhow!(
                    "no jointly committed state has been published"
                ))
            })
    }
    /// Bankd calls this only after its own commit and durable recovery record succeed.
    pub async fn publish_committed(
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
        if height != expected.height || root.0.as_slice() != expected.root_hash {
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "publication does not match durable Shieldd state"
            )));
        }
        let mut published = self.published.write().expect("publication lock poisoned");
        if published
            .as_ref()
            .is_some_and(|previous| previous.version() > snapshot.version())
        {
            return Err(ServiceError::failed_precondition(anyhow::anyhow!(
                "publication moved backwards"
            )));
        }
        *published = Some(snapshot);
        Ok(())
    }
    pub async fn check_tx(&self, request: CheckTxRequest) -> Result<CheckTxResponse, ServiceError> {
        let _permit = self
            .check_slots
            .clone()
            .try_acquire_owned()
            .map_err(|_| ServiceError::overloaded())?;
        let response = HostExecution::check_tx_at(
            self.snapshot()?,
            self.registry.clone(),
            self.cache.clone(),
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
        crate::spend_query::page(self, request).await
    }
    pub async fn filtered_block_page(
        &self,
        request: shieldd_sdk_proto::core::component::compact_block::v1::FilteredBlockPageRequest,
    ) -> Result<CompactBlockPageResponse, ServiceError> {
        crate::filtered_query::page(self, request).await
    }
    pub async fn compact_block_page(
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
        let mut response = CompactBlockPageResponse {
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
                kind: cursor.kind,
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
        Ok(response)
    }

    /// Reads a bounded page directly from ordinal records, without loading the block log.
    pub async fn transactions_by_height(
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
        let snapshot = self.snapshot()?;
        shieldd_sdk_shielded_pool::component::query::asset_metadata_by_id(&snapshot, request)
            .await
            .map_err(ServiceError::state_query)
    }

    pub async fn compliance_asset_status(
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
        let snapshot = self.snapshot()?;
        shieldd_sdk_compliance::component::query::compliance_user_leaf(&snapshot, request)
            .await
            .map_err(ServiceError::state_query)
    }

    pub async fn key_value(
        &self,
        request: ProtoKeyValueRequest,
    ) -> std::result::Result<ProtoKeyValueResponse, ServiceError> {
        let snapshot = self.snapshot()?;
        if request.key.is_empty() {
            return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                "key is empty"
            )));
        }
        let state = snapshot;
        let (value, proof) = if request.proof {
            let (value, proof) = state
                .get_with_proof(request.key.into_bytes())
                .await
                .map_err(ServiceError::internal)?;
            let proofs = proof
                .proofs
                .into_iter()
                .map(|proof| {
                    // Cnidarium and the host can select distinct ICS23 package versions.
                    prost::Message::decode(proof.encode_to_vec().as_slice())
                        .map_err(|error| ServiceError::internal(error.into()))
                })
                .collect::<std::result::Result<Vec<_>, _>>()?;
            (
                value,
                Some(ibc_proto::ibc::core::commitment::v1::MerkleProof { proofs }),
            )
        } else {
            (
                state
                    .get_raw(&request.key)
                    .await
                    .map_err(ServiceError::internal)?,
                None,
            )
        };
        Ok(ProtoKeyValueResponse {
            value: value.map(|value| ProtoKeyValue { value }),
            proof,
        })
    }

    pub async fn nullifier_window(
        &self,
        _request: NullifierWindowRequest,
    ) -> std::result::Result<NullifierWindowResponse, ServiceError> {
        let snapshot = self.snapshot()?;
        let generation = shieldd_sdk_sct::nullifier_tree::generation_state(&snapshot)
            .await
            .map_err(|error| {
                ServiceError::internal(anyhow::anyhow!("could not read nullifier window: {error}"))
            })?;
        Ok(NullifierWindowResponse {
            window: Some(generation.window().into()),
        })
    }

    pub async fn archived_nullifier_proof(
        &self,
        request: ArchivedNullifierProofRequest,
    ) -> std::result::Result<ArchivedNullifierProofResponse, ServiceError> {
        let nullifier = request
            .nullifier
            .context("missing nullifier")
            .and_then(Nullifier::try_from)
            .map_err(ServiceError::invalid_argument)?;
        let repository = self.generation_packs.clone().ok_or_else(|| {
            ServiceError::failed_precondition(anyhow::anyhow!(
                "historical witness storage is not configured"
            ))
        })?;
        let state = self.snapshot()?;
        let archived = nullifier_tree::archived_generation(&state, request.generation_index)
            .await
            .map_err(ServiceError::failed_precondition)?;
        drop(state);
        let permit = self
            .archive_slots
            .clone()
            .try_acquire_owned()
            .map_err(|_| ServiceError::overloaded())?;
        let reader = repository.clone();
        let result = tokio::task::spawn_blocking(move || {
            let _permit = permit;
            reader
                .nonmembership_proof(archived, nullifier)
                .map(|proof| *proof)
        })
        .await
        .context("archive query task failed")
        .map_err(ServiceError::internal)?;
        let proof = match result {
            Ok(proof) => proof,
            Err(error)
                if error
                    .downcast_ref::<shieldd_sdk_sct::nullifier_generation::ArchivedNullifierSpent>()
                    .is_some() =>
            {
                return Err(ServiceError::failed_precondition(error))
            }
            Err(error) => {
                repository.request_repair(archived.generation_index);
                return Err(ServiceError::unavailable(error));
            }
        };
        Ok(proof.into())
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
