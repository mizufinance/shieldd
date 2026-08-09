mod host;
mod preconsensus;

pub use self::host::{
    HostBlock, HostCommit, HostDepositResult, HostExecution, HostExecutionPhase,
    HostExecutionResponse, HostTxResponse,
};
pub use self::preconsensus::{CheckTxProfile, PrepareProposalProfile, ProcessProposalProfile};

use std::collections::{BTreeMap, BTreeSet, HashMap, HashSet};
use std::process;
use std::sync::Arc;
use std::time::{Duration, Instant};

use anyhow::{Context, Result};
use async_trait::async_trait;
use cnidarium::{ArcStateDeltaExt, Snapshot, StateDelta, StateRead, StateWrite, Storage};
use cnidarium_component::Component;
use ibc_types::core::connection::ChainId;
use jmt::RootHash;
use prost::bytes::Bytes;
use prost::Message as _;
use serde::{Deserialize, Serialize};
use shieldd_sdk_compact_block::{component::CompactBlockManager, StatePayload};
use shieldd_sdk_compliance::params::{StateReadExt as _, StateWriteExt as _};
use shieldd_sdk_compliance::registry::ComplianceRegistryRead as _;
use shieldd_sdk_compliance::Compliance;
use shieldd_sdk_fee::component::{
    clear_block_fee_price_cache, FeeComponent, StateReadExt as _, StateWriteExt as _,
};
use shieldd_sdk_governance::component::{Governance, StateReadExt as _, StateWriteExt as _};
use shieldd_sdk_ibc::component::{Ibc, StateWriteExt as _};
use shieldd_sdk_ibc::StateReadExt as _;
use shieldd_sdk_proof_params::{
    batch::{self, BatchItem, VerifiedBatchItem},
    DeployedProofKey,
};
use shieldd_sdk_proto::core::app::v1::TransactionsByHeightResponse;
use shieldd_sdk_proto::{DomainType, StateWriteProto as _};
use shieldd_sdk_sct::component::clock::EpochRead;
use shieldd_sdk_sct::component::sct::Sct;
use shieldd_sdk_sct::component::tree::SctRead as _;
use shieldd_sdk_sct::component::{StateReadExt as _, StateWriteExt as _};
use shieldd_sdk_sct::epoch::Epoch;
use shieldd_sdk_sct::CommitmentSource;
use shieldd_sdk_shielded_pool::component::{ShieldedPool, StateReadExt as _, StateWriteExt as _};
use shieldd_sdk_transaction::{Action, Transaction};
use shieldd_sdk_validator::component::{
    stake::ConsensusUpdateRead, Staking, StateReadExt as _, StateWriteExt as _,
};
use tendermint::abci::{self, Event};
use tendermint::v0_37::abci::{request, response};
use tendermint::validator::Update;
use tendermint::{account, block, chain, AppHash, Hash, Time};
use tokio::time::sleep;
use tracing::instrument;

use crate::action_handler::transaction::{
    check_and_execute_profiled, ensure_transaction_resource_bounds, transaction_nullifier_count,
};
use crate::action_handler::AppActionHandler;
use crate::block_tx_indexing::BlockTxIndexingMode;
use crate::event::EventAppParametersChange;
use crate::genesis::AppState;
use crate::params::change::ParameterChangeExt as _;

use crate::params::AppParameters;
use crate::stateless_cache::{CacheEntry, ExtractedTxArtifact, StatelessCache, VerifiedTxArtifact};
use crate::{metrics, ShielddHost};
use sha2::Digest as _;
#[cfg(feature = "benchmark-helpers")]
use shieldd_sdk_ibc::benchmarking::{record_inbound_stage, InboundStage};

pub mod state_key;

/// The inter-block state being written to by the application.
type InterBlockState = Arc<StateDelta<Snapshot>>;

/// The maximum size of a CometBFT block payload (1MB)
pub const MAX_BLOCK_TXS_PAYLOAD_BYTES: usize = 1024 * 1024;

/// The maximum number of transactions in one block or proposal candidate set.
pub const MAX_BLOCK_TX_COUNT: usize = 4_096;

/// The maximum size of a single individual transaction (96KB).
pub const MAX_TRANSACTION_SIZE_BYTES: usize = 96 * 1024;

/// The maximum total body and fee-funding actions in one transaction.
pub const MAX_TRANSACTION_ACTION_COUNT: usize = 512;

/// The maximum proof-bound spend nullifiers in one transaction.
pub const MAX_TRANSACTION_NULLIFIER_COUNT: usize = 256;

/// The maximum proof-bound spend nullifiers in one block.
pub const MAX_BLOCK_NULLIFIER_COUNT: usize = 32_768;

/// The maximum size of the evidence portion of a block (30KB).
pub const MAX_EVIDENCE_SIZE_BYTES: usize = 30 * 1024;

fn proof_key_label(key: DeployedProofKey) -> &'static str {
    match key {
        DeployedProofKey::Transfer => shieldd_sdk_shielded_pool::TRANSFER_PROOF_LABEL,
        DeployedProofKey::NoteReshapeOneByEight => "note_reshape1x8",
        DeployedProofKey::NoteReshapeEightByOne => "note_reshape8x1",
        DeployedProofKey::ShieldedIcs20WithdrawalCanonical => "shielded_ics20_withdrawal",
    }
}

fn proof_key_verify_stage(key: DeployedProofKey) -> &'static str {
    match key {
        DeployedProofKey::Transfer => "transfer_verify",
        DeployedProofKey::NoteReshapeOneByEight | DeployedProofKey::NoteReshapeEightByOne => {
            "note_reshape_verify"
        }
        DeployedProofKey::ShieldedIcs20WithdrawalCanonical => "shielded_ics20_withdrawal_verify",
    }
}

const PROOF_VERIFY_CHUNK_MIN_ITEMS: usize = 512;
const PROOF_VERIFY_MAX_CHUNKS_PER_KEY: usize = 8;

#[derive(Clone, Copy, Debug, Default)]
struct VerifiedStatefulTxBreakdown {
    check_historical_ms: f64,
    get_block_height_ms: f64,
    clone_tx_ms: f64,
    proto_convert_ms: f64,
    put_block_transaction_ms: f64,
    tx_log_read_ms: f64,
    tx_log_encode_ms: f64,
    tx_log_put_raw_ms: f64,
    begin_state_tx_ms: f64,
    index_tx_ms: f64,
    check_and_execute_ms: f64,
    set_source_ms: f64,
    pay_fee_ms: f64,
    action_execute_ms: f64,
    other_action_execute_ms: f64,
    record_clues_ms: f64,
    apply_ms: f64,
}

#[derive(Clone, Copy, Debug, Default)]
struct BlockTxIndexWriteProfile {
    tx_log_read_ms: f64,
    tx_log_encode_ms: f64,
    tx_log_put_raw_ms: f64,
}

#[derive(Clone, Debug)]
#[cfg(any(test, feature = "benchmark-helpers"))]
struct BenchBlockContext {
    height: block::Height,
    time: Time,
    chain_id: chain::Id,
    proposer_address: account::Id,
    next_validators_hash: Hash,
    app_hash: AppHash,
}

#[derive(Clone)]
enum CandidateData {
    Decoded(Arc<Transaction>),
    ExtractedArtifact(Arc<ExtractedTxArtifact>),
    VerifiedArtifact(Arc<VerifiedTxArtifact>),
}

#[derive(Clone)]
struct Candidate {
    hash: [u8; 32],
    bytes: Bytes,
    data: CandidateData,
}

impl Candidate {
    fn tx(&self) -> &Arc<Transaction> {
        match &self.data {
            CandidateData::Decoded(tx) => tx,
            CandidateData::ExtractedArtifact(artifact) => artifact.tx(),
            CandidateData::VerifiedArtifact(artifact) => artifact.tx(),
        }
    }

    fn verified_artifact(&self) -> Option<Arc<VerifiedTxArtifact>> {
        match &self.data {
            CandidateData::VerifiedArtifact(artifact) => Some(artifact.clone()),
            CandidateData::Decoded(_) | CandidateData::ExtractedArtifact(_) => None,
        }
    }
}
#[derive(Clone, Debug, Default, Serialize, Deserialize)]
pub struct ExecutionBlockProfile {
    pub block_tx_count: usize,
    pub begin_block_ms: f64,
    pub deliver_txs_wall_ms: f64,
    pub end_block_ms: f64,
    pub commit_ms: f64,
    pub execute_tx_ms: f64,
    pub check_historical_ms: f64,
    pub begin_state_tx_ms: f64,
    pub index_tx_ms: f64,
    pub get_block_height_ms: f64,
    pub clone_tx_ms: f64,
    pub proto_convert_ms: f64,
    pub put_block_transaction_ms: f64,
    pub tx_log_read_ms: f64,
    pub tx_log_encode_ms: f64,
    pub tx_log_put_raw_ms: f64,
    pub check_and_execute_ms: f64,
    pub set_source_ms: f64,
    pub pay_fee_ms: f64,
    pub action_execute_ms: f64,
    pub other_action_execute_ms: f64,
    pub record_clues_ms: f64,
    pub apply_ms: f64,
}
#[derive(Clone, Copy, Debug, Default, Serialize, Deserialize)]
pub struct ArtifactBuildBreakdown {
    pub precheck_ms: f64,
    pub action_extract_ms: f64,
    pub action_auth_sig_ms: f64,
    pub action_extract_public_ms: f64,
    pub action_to_batch_item_ms: f64,
    pub proof_verify_ms: f64,
}

impl ArtifactBuildBreakdown {
    pub fn merge(&mut self, other: &ArtifactBuildBreakdown) {
        self.precheck_ms += other.precheck_ms;
        self.action_extract_ms += other.action_extract_ms;
        self.action_auth_sig_ms += other.action_auth_sig_ms;
        self.action_extract_public_ms += other.action_extract_public_ms;
        self.action_to_batch_item_ms += other.action_to_batch_item_ms;
        self.proof_verify_ms += other.proof_verify_ms;
    }
}

#[derive(Clone, Debug, Default)]
struct BlockSctAppendLog {
    base_position: Option<shieldd_sdk_tct::Position>,
    next_offset: u64,
    entries: Vec<(shieldd_sdk_tct::Position, StatePayload)>,
}

impl BlockSctAppendLog {
    #[cfg(test)]
    async fn reserve_positions<S: shieldd_sdk_sct::component::tree::SctRead>(
        &mut self,
        state: &S,
        payloads: Vec<StatePayload>,
    ) -> Result<Vec<(shieldd_sdk_tct::Position, StatePayload)>> {
        #[cfg(feature = "benchmark-helpers")]
        let reserve_start = Instant::now();
        if payloads.is_empty() {
            return Ok(Vec::new());
        }

        let base_position = match self.base_position {
            Some(position) => position,
            None => {
                let position = state
                    .get_sct_position()
                    .await?
                    .expect("state commitment tree is not full");
                self.base_position = Some(position);
                position
            }
        };

        let base_position_u64: u64 = base_position.into();
        let start = base_position_u64 + self.next_offset;
        let mut positioned = Vec::with_capacity(payloads.len());
        for (offset, payload) in payloads.into_iter().enumerate() {
            let position = shieldd_sdk_tct::Position::from(start + offset as u64);
            positioned.push((position, payload));
        }
        self.next_offset += positioned.len() as u64;

        #[cfg(feature = "benchmark-helpers")]
        record_inbound_stage(InboundStage::DeferredSctReserve, reserve_start.elapsed());

        Ok(positioned)
    }

    #[cfg(test)]
    fn append_positioned(&mut self, entries: Vec<(shieldd_sdk_tct::Position, StatePayload)>) {
        self.entries.extend(entries);
    }

    fn clear(&mut self) {
        self.base_position = None;
        self.next_offset = 0;
        self.entries.clear();
    }
}

/// The Shieldd application, written as a bundle of [`Component`]s.
///
/// The [`App`] is not a [`Component`], but
/// it constructs the components and exposes a [`commit`](App::commit) that
/// commits the changes to the persistent storage and resets its subcomponents.
pub struct App {
    state: InterBlockState,
    committed_snapshot: Snapshot,
    block_tx_indexing_mode: BlockTxIndexingMode,
    deferred_block_transactions: Vec<shieldd_sdk_proto::core::transaction::v1::Transaction>,
    pending_sct_append_log: BlockSctAppendLog,
}

impl App {
    #[cfg(any(test, feature = "benchmark-helpers"))]
    async fn benchmark_block_context(&self) -> Result<BenchBlockContext> {
        let next_height = self.state.get_block_height().await?.saturating_add(1);
        let height = block::Height::try_from(next_height)
            .context("converting execution benchmark height")?;
        let current_time = self.state.get_current_block_timestamp().await?;
        let time = current_time
            .checked_add(Duration::from_secs(1))
            .unwrap_or(current_time);
        let chain_id = chain::Id::try_from(self.state.get_chain_id().await?)
            .context("parsing execution benchmark chain id")?;
        let base_snapshot = self.committed_snapshot.clone();
        let app_hash = AppHash::try_from(base_snapshot.root_hash().await?.0.to_vec())
            .context("converting execution benchmark app hash")?;

        Ok(BenchBlockContext {
            height,
            time,
            chain_id,
            proposer_address: account::Id::new([0u8; 20]),
            next_validators_hash: Hash::None,
            app_hash,
        })
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    fn begin_block_request_from_context(context: &BenchBlockContext) -> request::BeginBlock {
        request::BeginBlock {
            hash: Hash::None,
            header: block::Header {
                version: block::header::Version { block: 11, app: 1 },
                chain_id: context.chain_id.clone(),
                height: context.height,
                time: context.time,
                last_block_id: None,
                last_commit_hash: None,
                data_hash: None,
                validators_hash: context.next_validators_hash,
                next_validators_hash: context.next_validators_hash,
                consensus_hash: Hash::None,
                app_hash: context.app_hash.clone(),
                last_results_hash: None,
                evidence_hash: None,
                proposer_address: context.proposer_address,
            },
            last_commit_info: abci::types::CommitInfo {
                round: 0u8.into(),
                votes: Vec::new(),
            },
            byzantine_validators: Vec::new(),
        }
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    fn empty_proof_items() -> BTreeMap<DeployedProofKey, Vec<BatchItem>> {
        DeployedProofKey::ALL
            .into_iter()
            .map(|key| (key, Vec::new()))
            .collect()
    }

    fn empty_shared_proof_items() -> BTreeMap<DeployedProofKey, Vec<Arc<BatchItem>>> {
        DeployedProofKey::ALL
            .into_iter()
            .map(|key| (key, Vec::new()))
            .collect()
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    fn merge_artifact_proof_items(
        artifacts: &[Arc<ExtractedTxArtifact>],
    ) -> BTreeMap<DeployedProofKey, Vec<BatchItem>> {
        let mut proof_items = Self::empty_proof_items();

        for artifact in artifacts {
            for (key, items) in artifact.proof_items() {
                proof_items
                    .get_mut(key)
                    .expect("deployed proof key exists")
                    .extend(items.iter().map(|item| item.as_ref().clone()));
            }
        }

        proof_items
    }

    fn merge_artifact_shared_proof_items(
        artifacts: &[Arc<ExtractedTxArtifact>],
    ) -> BTreeMap<DeployedProofKey, Vec<Arc<BatchItem>>> {
        let mut proof_items = Self::empty_shared_proof_items();

        for artifact in artifacts {
            for (key, items) in artifact.proof_items() {
                proof_items
                    .get_mut(key)
                    .expect("deployed proof key exists")
                    .extend(items.iter().cloned());
            }
        }

        proof_items
    }

    fn accumulate_prepare_candidate_profile(
        profile: &mut PrepareProposalProfile,
        execution_profile: &VerifiedStatefulTxBreakdown,
    ) {
        profile.stateful_filter_check_historical_ms += execution_profile.check_historical_ms;
        profile.stateful_filter_get_block_height_ms += execution_profile.get_block_height_ms;
        profile.stateful_filter_clone_tx_ms += execution_profile.clone_tx_ms;
        profile.stateful_filter_proto_convert_ms += execution_profile.proto_convert_ms;
        profile.stateful_filter_put_block_transaction_ms +=
            execution_profile.put_block_transaction_ms;
        profile.stateful_filter_begin_state_tx_ms += execution_profile.begin_state_tx_ms;
        profile.stateful_filter_index_tx_ms += execution_profile.index_tx_ms;
        profile.stateful_filter_check_and_execute_ms += execution_profile.check_and_execute_ms;
        profile.stateful_filter_set_source_ms += execution_profile.set_source_ms;
        profile.stateful_filter_pay_fee_ms += execution_profile.pay_fee_ms;
        profile.stateful_filter_action_execute_ms += execution_profile.action_execute_ms;
        profile.stateful_filter_other_action_execute_ms +=
            execution_profile.other_action_execute_ms;
        profile.stateful_filter_record_clues_ms += execution_profile.record_clues_ms;
        profile.stateful_filter_apply_ms += execution_profile.apply_ms;
    }

    fn emit_stateful_filter_breakdown(
        candidate_tx_count: usize,
        included_candidate_count: usize,
        profile: &PrepareProposalProfile,
    ) {
        tracing::info!(
            candidate_tx_count,
            included_candidate_count,
            stateful_filter_execute_ms = profile.stateful_filter_execute_ms,
            stateful_filter_check_historical_ms = profile.stateful_filter_check_historical_ms,
            stateful_filter_check_and_execute_ms = profile.stateful_filter_check_and_execute_ms,
            stateful_filter_pay_fee_ms = profile.stateful_filter_pay_fee_ms,
            stateful_filter_action_execute_ms = profile.stateful_filter_action_execute_ms,
            stateful_filter_record_clues_ms = profile.stateful_filter_record_clues_ms,
            stateful_filter_apply_ms = profile.stateful_filter_apply_ms,
            "stateful_filter_breakdown"
        );
    }

    pub(crate) fn emit_checktx_breakdown(profile: &CheckTxProfile) {
        tracing::info!(
            checktx_total_wall_ms = profile.checktx_total_wall_ms,
            checktx_cache_lookup_ms = profile.checktx_cache_lookup_ms,
            checktx_stateless_phase_wall_ms = profile.checktx_stateless_phase_wall_ms,
            checktx_execute_wall_ms = profile.checktx_execute_wall_ms,
            decode_tx_ms = profile.decode_tx_ms,
            stateless_artifact_ms = profile.stateless_artifact_ms,
            stateless_initial_cache_insert_ms = profile.stateless_initial_cache_insert_ms,
            stateless_verified_cache_insert_ms = profile.stateless_verified_cache_insert_ms,
            stateless_artifact_precheck_ms = profile.stateless_artifact_precheck_ms,
            stateless_artifact_action_extract_ms = profile.stateless_artifact_action_extract_ms,
            stateless_artifact_action_auth_sig_ms = profile.stateless_artifact_action_auth_sig_ms,
            stateless_artifact_action_extract_public_ms =
                profile.stateless_artifact_action_extract_public_ms,
            stateless_artifact_action_to_batch_item_ms =
                profile.stateless_artifact_action_to_batch_item_ms,
            stateless_artifact_proof_verify_ms = profile.stateless_artifact_proof_verify_ms,
            check_historical_ms = profile.check_historical_ms,
            execute_ms = profile.execute_ms,
            execute_check_and_execute_ms = profile.execute_check_and_execute_ms,
            execute_pay_fee_ms = profile.execute_pay_fee_ms,
            execute_apply_ms = profile.execute_apply_ms,
            cache_hit_count = profile.cache_hit_count,
            "checktx_breakdown"
        );
    }

    fn record_artifact_reuse(stage: &'static str) {
        metrics::counter!(metrics::TX_ARTIFACT_REUSE_TOTAL, "stage" => stage).increment(1);
    }

    fn record_artifact_build(
        stage: &'static str,
        tx_count: usize,
        elapsed: Duration,
        success: bool,
    ) {
        let result = if success { "ok" } else { "err" };
        metrics::counter!(
            metrics::TX_ARTIFACT_BUILD_TOTAL,
            "stage" => stage,
            "result" => result
        )
        .increment(tx_count as u64);
        metrics::histogram!(
            metrics::TX_ARTIFACT_BUILD_DURATION,
            "stage" => stage,
            "result" => result
        )
        .record(elapsed);
    }

    fn handle_proof_verification_result(context: &'static str, result: Result<()>) -> Result<()> {
        match result {
            Ok(()) => Ok(()),
            Err(error) => {
                tracing::debug!(?error, context, "proof verification failed");
                Err(error)
            }
        }
    }

    async fn collect_consensus_proof_items_with_artifacts(
        txs: &[Arc<Transaction>],
    ) -> Result<(
        BTreeMap<DeployedProofKey, Vec<Arc<BatchItem>>>,
        Vec<Arc<ExtractedTxArtifact>>,
        ArtifactBuildBreakdown,
    )> {
        let mut proof_items = Self::empty_shared_proof_items();
        let mut artifacts = Vec::with_capacity(txs.len());
        let mut profile = ArtifactBuildBreakdown::default();

        for tx in txs {
            let extract_start = Instant::now();
            let artifact = ExtractedTxArtifact::extract_canonical(tx.clone()).await?;
            profile.action_extract_ms += extract_start.elapsed().as_secs_f64() * 1000.0;
            for (key, items) in artifact.proof_items() {
                proof_items
                    .get_mut(key)
                    .with_context(|| format!("unsupported deployed proof key {key:?}"))?
                    .extend(items.iter().cloned());
            }
            artifacts.push(artifact);
        }

        Ok((proof_items, artifacts, profile))
    }

    fn attach_verified_proofs(
        artifacts: Vec<Arc<ExtractedTxArtifact>>,
        capabilities: BTreeMap<DeployedProofKey, Vec<VerifiedBatchItem>>,
    ) -> Result<Vec<Arc<VerifiedTxArtifact>>> {
        let mut key_offsets = BTreeMap::<DeployedProofKey, usize>::new();
        let mut verified = Vec::with_capacity(artifacts.len());

        for artifact in artifacts {
            let mut artifact_capabilities = Vec::with_capacity(artifact.proof_slots().len());
            let mut assigned_slots = BTreeSet::new();
            for (&slot, location) in artifact.proof_slots() {
                let key_offset = key_offsets.get(&location.key).copied().unwrap_or_default();
                let capability = capabilities
                    .get(&location.key)
                    .and_then(|items| items.get(key_offset + location.key_index))
                    .cloned()
                    .with_context(|| {
                        format!(
                            "verified capability missing for {slot:?} in {:?}",
                            location.key
                        )
                    })?;
                let expected_item = artifact
                    .proof_items()
                    .get(&location.key)
                    .and_then(|items| items.get(location.key_index))
                    .with_context(|| {
                        format!(
                            "extracted proof item missing for {slot:?} in {:?}",
                            location.key
                        )
                    })?;
                capability
                    .ensure_binds(location.key, expected_item.as_ref())
                    .with_context(|| {
                        format!(
                            "verified capability does not bind {slot:?} in {:?}",
                            location.key
                        )
                    })?;
                anyhow::ensure!(
                    assigned_slots.insert(slot),
                    "duplicate verified proof slot {slot:?}"
                );
                artifact_capabilities.push((slot, capability));
            }
            for (key, items) in artifact.proof_items() {
                *key_offsets.entry(*key).or_default() += items.len();
            }
            verified.push(Arc::new(VerifiedTxArtifact::new(
                artifact,
                artifact_capabilities,
            )?));
        }

        for (key, items) in capabilities {
            let consumed = key_offsets.get(&key).copied().unwrap_or_default();
            anyhow::ensure!(
                consumed == items.len(),
                "unused verified capabilities for {key:?}: consumed {consumed}, got {}",
                items.len()
            );
        }
        Ok(verified)
    }

    async fn build_tx_artifacts_profiled(
        txs: &[Arc<Transaction>],
    ) -> Result<(Vec<Arc<VerifiedTxArtifact>>, ArtifactBuildBreakdown)> {
        if txs.is_empty() {
            return Ok((Vec::new(), ArtifactBuildBreakdown::default()));
        }

        let (proof_items, artifacts, mut profile) =
            Self::collect_consensus_proof_items_with_artifacts(txs).await?;
        let proof_verify_start = Instant::now();
        let capabilities = Self::independently_verify_proof_keys(proof_items).await?;
        let artifacts = Self::attach_verified_proofs(artifacts, capabilities)?;
        profile.proof_verify_ms = proof_verify_start.elapsed().as_secs_f64() * 1000.0;
        Ok((artifacts, profile))
    }

    async fn build_tx_artifacts_extracted_profiled(
        txs: &[Arc<Transaction>],
    ) -> Result<(Vec<Arc<ExtractedTxArtifact>>, ArtifactBuildBreakdown)> {
        if txs.is_empty() {
            return Ok((Vec::new(), ArtifactBuildBreakdown::default()));
        }

        let (_proof_items, artifacts, profile) =
            Self::collect_consensus_proof_items_with_artifacts(txs).await?;
        Ok((artifacts, profile))
    }

    async fn build_tx_artifact_extracted_profiled(
        tx: Arc<Transaction>,
    ) -> Result<(Arc<ExtractedTxArtifact>, ArtifactBuildBreakdown)> {
        let (mut artifacts, profile) =
            Self::build_tx_artifacts_extracted_profiled(std::slice::from_ref(&tx)).await?;
        artifacts
            .pop()
            .context("single transaction artifact missing")
            .map(|artifact| (artifact, profile))
    }

    async fn build_tx_artifacts_for_stage(
        stage: &'static str,
        txs: &[Arc<Transaction>],
    ) -> Result<(Vec<Arc<VerifiedTxArtifact>>, ArtifactBuildBreakdown)> {
        let start = Instant::now();
        let result = Self::build_tx_artifacts_profiled(txs).await;
        Self::record_artifact_build(stage, txs.len(), start.elapsed(), result.is_ok());
        result
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn build_tx_artifacts_extracted_for_stage_public(
        stage: &'static str,
        txs: &[Arc<Transaction>],
    ) -> Result<Vec<Arc<ExtractedTxArtifact>>> {
        let start = Instant::now();
        let result = Self::build_tx_artifacts_extracted_profiled(txs).await;
        Self::record_artifact_build(stage, txs.len(), start.elapsed(), result.is_ok());
        let (artifacts, _) = result?;
        Ok(artifacts)
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn build_tx_artifacts_extracted_profiled_public(
        stage: &'static str,
        txs: &[Arc<Transaction>],
    ) -> Result<(Vec<Arc<ExtractedTxArtifact>>, ArtifactBuildBreakdown)> {
        let start = Instant::now();
        let result = Self::build_tx_artifacts_extracted_profiled(txs).await;
        Self::record_artifact_build(stage, txs.len(), start.elapsed(), result.is_ok());
        result
    }

    async fn build_tx_artifact_extracted_for_stage(
        stage: &'static str,
        tx: Arc<Transaction>,
    ) -> Result<(Arc<ExtractedTxArtifact>, ArtifactBuildBreakdown)> {
        let start = Instant::now();
        let result = Self::build_tx_artifact_extracted_profiled(tx).await;
        Self::record_artifact_build(stage, 1, start.elapsed(), result.is_ok());
        result
    }

    async fn verify_tx_artifacts_for_stage(
        stage: &'static str,
        artifacts: &[Arc<ExtractedTxArtifact>],
    ) -> Result<(Vec<Arc<VerifiedTxArtifact>>, ArtifactBuildBreakdown)> {
        let start = Instant::now();
        let proof_items = Self::merge_artifact_shared_proof_items(artifacts);
        let result = Self::independently_verify_proof_keys(proof_items).await;
        Self::record_artifact_build(stage, artifacts.len(), start.elapsed(), result.is_ok());
        let capabilities = result?;
        let verified = Self::attach_verified_proofs(artifacts.to_vec(), capabilities)?;
        Ok((
            verified,
            ArtifactBuildBreakdown {
                proof_verify_ms: start.elapsed().as_secs_f64() * 1000.0,
                ..Default::default()
            },
        ))
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    async fn batch_verify_tx_artifacts_for_bench_stage(
        stage: &'static str,
        artifacts: &[Arc<ExtractedTxArtifact>],
    ) -> Result<ArtifactBuildBreakdown> {
        let start = Instant::now();
        let proof_items = Self::merge_artifact_proof_items(artifacts);
        let result = Self::batch_verify_proof_keys(proof_items).await;
        Self::record_artifact_build(stage, artifacts.len(), start.elapsed(), result.is_ok());
        result?;
        Ok(ArtifactBuildBreakdown {
            proof_verify_ms: start.elapsed().as_secs_f64() * 1000.0,
            ..Default::default()
        })
    }

    /// Runs Groth16 batch verification on a single pre-extracted artifact.
    /// Used by `mempool_v1_lab` strict mode to measure per-tx proof verify cost.
    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn batch_verify_tx_artifact_for_bench(
        artifact: &Arc<ExtractedTxArtifact>,
    ) -> Result<f64> {
        let breakdown = Self::batch_verify_tx_artifacts_for_bench_stage(
            "checktx_batch_bench",
            std::slice::from_ref(artifact),
        )
        .await?;
        Ok(breakdown.proof_verify_ms)
    }

    /// Runs Groth16 batch verification across multiple pre-extracted artifacts in one call.
    /// Amortizes the MSM cost across all proofs in the slice.
    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn batch_verify_artifacts_for_bench(
        artifacts: &[Arc<ExtractedTxArtifact>],
    ) -> Result<f64> {
        let breakdown =
            Self::batch_verify_tx_artifacts_for_bench_stage("checktx_batch_bench", artifacts)
                .await?;
        Ok(breakdown.proof_verify_ms)
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    async fn batch_verify_proof_keys(
        proof_items: BTreeMap<DeployedProofKey, Vec<BatchItem>>,
    ) -> Result<()> {
        let mut proof_items = proof_items;
        let mut tasks = tokio::task::JoinSet::new();

        for key in DeployedProofKey::ALL {
            let Some(items) = proof_items.remove(&key) else {
                continue;
            };
            if items.is_empty() {
                continue;
            }

            tasks.spawn(async move {
                let key_label = proof_key_label(key);
                let verify_stage = proof_key_verify_stage(key);
                let result = Self::verify_batch_family_chunks(key_label, items, move |chunk| {
                    batch::batch_verify(key.bundled_pvk(), chunk)
                        .map_err(|e| anyhow::anyhow!("{key_label} batch verification failed: {e}"))
                })
                .await;
                (verify_stage, result)
            });
        }

        let mut first_error = None;
        while let Some(join_result) = tasks.join_next().await {
            let result = match join_result.context("legacy batch verification task panicked") {
                Ok((batch_stage, result)) => {
                    Self::handle_proof_verification_result(batch_stage, result)
                }
                Err(error) => Err(error),
            };
            if first_error.is_none() {
                first_error = result.err();
            }
        }
        if let Some(error) = first_error {
            return Err(error);
        }

        Ok(())
    }

    async fn independently_verify_proof_keys(
        proof_items: BTreeMap<DeployedProofKey, Vec<Arc<BatchItem>>>,
    ) -> Result<BTreeMap<DeployedProofKey, Vec<VerifiedBatchItem>>> {
        let mut proof_items = proof_items;
        let mut tasks = tokio::task::JoinSet::new();
        let mut verified = DeployedProofKey::ALL
            .into_iter()
            .map(|key| (key, Vec::new()))
            .collect::<BTreeMap<_, _>>();

        for key in DeployedProofKey::ALL {
            let Some(items) = proof_items.remove(&key) else {
                continue;
            };
            if items.is_empty() {
                continue;
            }

            tasks.spawn(async move {
                let key_label = proof_key_label(key);
                let result = Self::verify_key_chunks_with_capabilities(key_label, key, items).await;
                (key, proof_key_verify_stage(key), result)
            });
        }

        let mut first_error = (!proof_items.is_empty()).then(|| {
            anyhow::anyhow!("proof verification encountered an unregistered proof family")
        });
        while let Some(join_result) = tasks.join_next().await {
            match join_result.context("independent proof verification task panicked") {
                Ok((key, _, Ok(capabilities))) => {
                    verified.insert(key, capabilities);
                }
                Ok((_, stage, Err(error))) => {
                    let result = Self::handle_proof_verification_result(stage, Err(error));
                    if first_error.is_none() {
                        first_error = result.err();
                    }
                }
                Err(error) if first_error.is_none() => {
                    first_error = Some(error);
                }
                Err(_) => {}
            }
        }
        if let Some(error) = first_error {
            return Err(error);
        }

        Ok(verified)
    }

    fn proof_verify_chunk_size_for_parallelism(
        item_count: usize,
        available_parallelism: usize,
    ) -> usize {
        if item_count <= PROOF_VERIFY_CHUNK_MIN_ITEMS {
            return item_count.max(1);
        }

        let max_chunks = (available_parallelism / 2)
            .max(1)
            .min(PROOF_VERIFY_MAX_CHUNKS_PER_KEY);
        let chunk_count = (item_count / PROOF_VERIFY_CHUNK_MIN_ITEMS)
            .max(1)
            .min(max_chunks);

        item_count.div_ceil(chunk_count)
    }

    fn proof_verify_chunk_size(item_count: usize) -> usize {
        let available_parallelism = std::thread::available_parallelism()
            .map(|parallelism| parallelism.get())
            .unwrap_or(1);
        Self::proof_verify_chunk_size_for_parallelism(item_count, available_parallelism)
    }
    async fn drain_joinset_results<T: Send + 'static>(
        tasks: &mut tokio::task::JoinSet<Result<T>>,
        panic_context: &str,
    ) -> Result<Vec<T>> {
        let mut values = Vec::new();
        let mut first_error = None;
        while let Some(result) = tasks.join_next().await {
            match result
                .with_context(|| panic_context.to_owned())
                .and_then(|result| result)
            {
                Ok(value) => values.push(value),
                Err(error) if first_error.is_none() => first_error = Some(error),
                Err(_) => {}
            }
        }
        if let Some(error) = first_error {
            return Err(error);
        }
        Ok(values)
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    async fn verify_batch_family_chunks<F>(
        family_label: &'static str,
        items: Vec<BatchItem>,
        verify: F,
    ) -> Result<()>
    where
        F: Fn(&Vec<BatchItem>) -> Result<()> + Send + Sync + Copy + 'static,
    {
        if items.is_empty() {
            return Ok(());
        }

        let chunk_size = Self::proof_verify_chunk_size(items.len());
        if chunk_size >= items.len() {
            return tokio::task::spawn_blocking(move || verify(&items))
                .await
                .with_context(|| format!("{family_label} batch verify task panicked"))?;
        }

        let mut tasks = tokio::task::JoinSet::new();
        for chunk in items.chunks(chunk_size) {
            let chunk = chunk.to_vec();
            tasks.spawn_blocking(move || verify(&chunk));
        }

        Self::drain_joinset_results(
            &mut tasks,
            &format!("{family_label} batch verify task panicked"),
        )
        .await?;

        Ok(())
    }

    async fn verify_key_chunks_with_capabilities(
        key_label: &'static str,
        key: DeployedProofKey,
        items: Vec<Arc<BatchItem>>,
    ) -> Result<Vec<VerifiedBatchItem>> {
        if items.is_empty() {
            return Ok(Vec::new());
        }

        let chunk_size = Self::proof_verify_chunk_size(items.len());
        if chunk_size >= items.len() {
            return tokio::task::spawn_blocking(move || {
                batch::verify_each_with_capabilities(key, items).map_err(|error| {
                    anyhow::anyhow!("{key_label} independent verification failed: {error}")
                })
            })
            .await
            .with_context(|| format!("{key_label} proof verify task panicked"))?;
        }

        let mut tasks = tokio::task::JoinSet::new();
        for (chunk_index, chunk) in items.chunks(chunk_size).enumerate() {
            let chunk = chunk.to_vec();
            tasks.spawn_blocking(move || {
                let capabilities =
                    batch::verify_each_with_capabilities(key, chunk).map_err(|error| {
                        anyhow::anyhow!("{key_label} independent verification failed: {error}")
                    })?;
                Ok((chunk_index, capabilities))
            });
        }

        let mut chunks = Self::drain_joinset_results(
            &mut tasks,
            &format!("{key_label} proof verify task panicked"),
        )
        .await?;
        chunks.sort_by_key(|(chunk_index, _)| *chunk_index);
        anyhow::ensure!(
            chunks
                .iter()
                .enumerate()
                .all(|(expected, (actual, _))| expected == *actual),
            "{key_label} verified capability chunk coverage is not contiguous"
        );
        Ok(chunks
            .into_iter()
            .flat_map(|(_, capabilities)| capabilities)
            .collect())
    }
    fn ensure_unique_spend_nullifiers_from_artifacts(
        artifacts: &[Arc<ExtractedTxArtifact>],
    ) -> Result<()> {
        let mut seen = HashSet::new();
        for artifact in artifacts {
            for &nullifier in artifact.spend_nullifiers() {
                if !seen.insert(nullifier) {
                    anyhow::bail!("duplicate spend nullifier in proposal");
                }
            }
        }
        Ok(())
    }

    async fn precheck_compliance_anchors_dedup_from_artifacts(
        &self,
        artifacts: &[Arc<ExtractedTxArtifact>],
    ) -> Result<()> {
        let mut unique_pairs = HashSet::new();

        for artifact in artifacts {
            unique_pairs.extend(artifact.anchor_pairs().iter().copied());
        }

        for (compliance_anchor, asset_anchor) in unique_pairs {
            self.state
                .validate_compliance_anchors(&compliance_anchor, &asset_anchor)
                .await?;
        }

        Ok(())
    }

    async fn precheck_compliance_anchors_dedup(&self, txs: &[Arc<Transaction>]) -> Result<()> {
        let mut unique_pairs = HashSet::new();

        for tx in txs {
            for action in tx.actions() {
                match action {
                    Action::Transfer(transfer) => {
                        unique_pairs
                            .insert((transfer.body.compliance_anchor, transfer.body.asset_anchor));
                    }
                    Action::ShieldedIcs20Withdrawal(withdrawal) => {
                        unique_pairs.insert((
                            withdrawal.body.compliance_anchor,
                            withdrawal.body.asset_anchor,
                        ));
                    }
                    Action::NoteReshape(_)
                    | Action::ValidatorDefinition(_)
                    | Action::IbcRelay(_)
                    | Action::ProposalSubmit(_)
                    | Action::ValidatorVote(_)
                    | Action::ComplianceRegisterAsset(_)
                    | Action::ComplianceRegisterUser(_) => {}
                }
            }
        }

        for (compliance_anchor, asset_anchor) in unique_pairs {
            self.state
                .validate_compliance_anchors(&compliance_anchor, &asset_anchor)
                .await?;
        }

        Ok(())
    }

    async fn prepare_proposal_batched_profiled(
        &mut self,
        txs: Vec<Bytes>,
        max_proposal_size_bytes: u64,
        stateless_cache: Option<&StatelessCache>,
        allow_oversized_proposal: bool,
    ) -> Result<(Vec<Bytes>, PrepareProposalProfile)> {
        let mut candidates = Vec::new();
        let mut proposal_size_bytes = 0u64;
        let mut block_nullifier_count = 0usize;
        let mut profile = PrepareProposalProfile::default();

        let candidate_scan_start = Instant::now();
        for tx_bytes in txs {
            if !Self::transaction_size_allowed(tx_bytes.len()) {
                continue;
            }
            let transaction_size = tx_bytes.len() as u64;
            let total_with_tx = proposal_size_bytes.saturating_add(transaction_size);
            if !allow_oversized_proposal && total_with_tx > max_proposal_size_bytes {
                continue;
            }

            let hash: [u8; 32] = sha2::Sha256::digest(tx_bytes.as_ref()).into();
            let cached_data = if let Some(cache) = stateless_cache {
                match cache.get(&hash, tx_bytes.as_ref()) {
                    Some(CacheEntry::Invalid) => continue,
                    Some(CacheEntry::Groth16Verified(artifact)) => {
                        Self::record_artifact_reuse("prepare_proposal");
                        Some(CandidateData::VerifiedArtifact(artifact))
                    }
                    Some(CacheEntry::Extracted(artifact)) => {
                        Self::record_artifact_reuse("prepare_proposal");
                        Some(CandidateData::ExtractedArtifact(artifact))
                    }
                    None => None,
                }
            } else {
                None
            };

            let data = match cached_data {
                Some(data) => data,
                None => {
                    let tx = match Transaction::decode_canonical(tx_bytes.as_ref()) {
                        Ok(tx) => Arc::new(tx),
                        Err(_) => continue,
                    };
                    CandidateData::Decoded(tx)
                }
            };

            let candidate = Candidate {
                bytes: tx_bytes,
                hash,
                data,
            };
            if ensure_transaction_resource_bounds(candidate.tx()).is_err() {
                continue;
            }
            let next_nullifier_count =
                block_nullifier_count.saturating_add(transaction_nullifier_count(candidate.tx()));
            if !Self::block_nullifier_count_allowed(next_nullifier_count) {
                continue;
            }
            proposal_size_bytes = total_with_tx;
            block_nullifier_count = next_nullifier_count;
            candidates.push(candidate);
        }
        profile.candidate_scan_ms = candidate_scan_start.elapsed().as_secs_f64() * 1000.0;

        if candidates.is_empty() {
            return Ok((Vec::new(), profile));
        }

        // Fast precheck: reject duplicate spends before heavier verification.
        let nullifier_dedup_start = Instant::now();
        let mut seen_nullifiers = HashSet::new();
        let mut deduped = Vec::with_capacity(candidates.len());
        for candidate in candidates {
            let mut tx_nullifiers = HashSet::new();
            let mut duplicate = false;

            for nullifier in candidate.tx().spent_nullifiers() {
                if !tx_nullifiers.insert(nullifier) || seen_nullifiers.contains(&nullifier) {
                    duplicate = true;
                    break;
                }
            }

            if duplicate {
                continue;
            }

            seen_nullifiers.extend(tx_nullifiers);
            deduped.push(candidate);
        }
        profile.nullifier_dedup_ms = nullifier_dedup_start.elapsed().as_secs_f64() * 1000.0;

        let deduped_txs: Vec<Arc<Transaction>> = deduped.iter().map(|c| c.tx().clone()).collect();
        let anchor_precheck_start = Instant::now();
        self.precheck_compliance_anchors_dedup(&deduped_txs).await?;
        profile.anchor_precheck_ms = anchor_precheck_start.elapsed().as_secs_f64() * 1000.0;

        let cache_miss_txs = deduped
            .iter()
            .filter_map(|candidate| match &candidate.data {
                CandidateData::Decoded(tx) => Some(tx.clone()),
                CandidateData::ExtractedArtifact(_) | CandidateData::VerifiedArtifact(_) => None,
            })
            .collect::<Vec<_>>();

        let extracted_cache_hits = deduped
            .iter()
            .filter_map(|candidate| match &candidate.data {
                CandidateData::ExtractedArtifact(artifact) => {
                    Some((candidate.hash, candidate.bytes.clone(), artifact.clone()))
                }
                CandidateData::VerifiedArtifact(_) | CandidateData::Decoded(_) => None,
            })
            .collect::<Vec<_>>();

        if !cache_miss_txs.is_empty() {
            let artifact_fill_start = Instant::now();
            let (miss_artifacts, artifact_profile) =
                Self::build_tx_artifacts_for_stage("prepare_proposal", &cache_miss_txs).await?;
            let mut miss_artifacts = miss_artifacts.into_iter();
            profile.artifact_fill_precheck_ms = artifact_profile.precheck_ms;
            profile.artifact_fill_action_extract_ms = artifact_profile.action_extract_ms;
            profile.artifact_fill_proof_verify_ms = artifact_profile.proof_verify_ms;

            for candidate in &mut deduped {
                if matches!(candidate.data, CandidateData::Decoded(_)) {
                    let artifact = miss_artifacts
                        .next()
                        .expect("artifact count should match decoded candidates");
                    if let Some(cache) = stateless_cache {
                        cache
                            .insert_groth16_verified(candidate.bytes.as_ref(), artifact.clone())?;
                    }
                    candidate.data = CandidateData::VerifiedArtifact(artifact);
                }
            }
            profile.artifact_fill_ms = artifact_fill_start.elapsed().as_secs_f64() * 1000.0;
        }

        if !extracted_cache_hits.is_empty() {
            let verify_start = Instant::now();
            let extracted_artifacts = extracted_cache_hits
                .iter()
                .map(|(_, _, artifact)| artifact.clone())
                .collect::<Vec<_>>();
            let (verified_artifacts, verify_profile) = Self::verify_tx_artifacts_for_stage(
                "prepare_proposal_upgrade",
                &extracted_artifacts,
            )
            .await?;
            profile.artifact_fill_ms += verify_start.elapsed().as_secs_f64() * 1000.0;
            profile.artifact_fill_proof_verify_ms += verify_profile.proof_verify_ms;

            anyhow::ensure!(
                verified_artifacts.len() == extracted_cache_hits.len(),
                "verified cache-upgrade artifact count mismatch"
            );
            let mut upgraded = HashMap::new();
            for ((hash, bytes, _), artifact) in
                extracted_cache_hits.into_iter().zip(verified_artifacts)
            {
                anyhow::ensure!(
                    upgraded.insert(hash, (bytes, artifact)).is_none(),
                    "duplicate extracted cache-upgrade transaction hash"
                );
            }
            if let Some(cache) = stateless_cache {
                for (_hash, (bytes, artifact)) in &upgraded {
                    cache.insert_groth16_verified(bytes.as_ref(), artifact.clone())?;
                }
            }

            for candidate in &mut deduped {
                if matches!(candidate.data, CandidateData::ExtractedArtifact(_)) {
                    let (_, artifact) = upgraded
                        .remove(&candidate.hash)
                        .context("missing verified cache-upgrade artifact")?;
                    candidate.data = CandidateData::VerifiedArtifact(artifact);
                }
            }
            anyhow::ensure!(
                upgraded.is_empty(),
                "unused verified cache-upgrade artifacts"
            );
        }

        let deduped_candidate_count = deduped.len();
        let stateful_filter_start = Instant::now();
        let included_candidates = self
            .execute_prepare_candidates_serial_profiled(deduped, &mut profile)
            .await;
        profile.stateful_filter_execute_ms = stateful_filter_start.elapsed().as_secs_f64() * 1000.0;
        Self::emit_stateful_filter_breakdown(
            deduped_candidate_count,
            included_candidates.len(),
            &profile,
        );

        if self.block_tx_indexing_mode == BlockTxIndexingMode::DeferredBatch {
            let deferred_index_flush_start = Instant::now();
            self.flush_deferred_block_transactions().await?;
            profile.deferred_index_flush_ms =
                deferred_index_flush_start.elapsed().as_secs_f64() * 1000.0;
        }

        if included_candidates.is_empty() {
            return Ok((Vec::new(), profile));
        }

        let included_txs = included_candidates
            .into_iter()
            .map(|candidate| candidate.bytes)
            .collect();
        Ok((included_txs, profile))
    }

    /// Constructs a new application, using the provided [`Snapshot`].
    /// Callers should ensure that [`App::is_ready`]) returns `true`, but this is not enforced.
    #[instrument(skip_all)]
    pub fn new(snapshot: Snapshot) -> Self {
        tracing::debug!("initializing App instance");
        // We perform the `Arc` wrapping of `State` here to ensure
        // there should be no unexpected copies elsewhere.
        let state = Arc::new(StateDelta::new(snapshot.clone()));

        Self {
            state,
            committed_snapshot: snapshot,
            block_tx_indexing_mode: BlockTxIndexingMode::PerTx,
            deferred_block_transactions: Vec::new(),
            pending_sct_append_log: BlockSctAppendLog::default(),
        }
    }

    pub fn set_block_tx_indexing_mode(&mut self, mode: BlockTxIndexingMode) {
        self.block_tx_indexing_mode = mode;
    }

    fn truncate_prepare_candidates(txs: &mut Vec<Bytes>) {
        txs.truncate(MAX_BLOCK_TX_COUNT);
    }

    fn process_proposal_tx_count_allowed(tx_count: usize) -> bool {
        tx_count <= MAX_BLOCK_TX_COUNT
    }

    fn prepare_proposal_payload_limit(max_tx_bytes: i64) -> u64 {
        u64::try_from(max_tx_bytes)
            .unwrap_or(0)
            .min(MAX_BLOCK_TXS_PAYLOAD_BYTES as u64)
    }

    fn process_proposal_payload_size_allowed(payload_size: usize) -> bool {
        payload_size <= MAX_BLOCK_TXS_PAYLOAD_BYTES
    }

    fn transaction_size_allowed(tx_size: usize) -> bool {
        tx_size <= MAX_TRANSACTION_SIZE_BYTES
    }

    fn block_nullifier_count_allowed(nullifier_count: usize) -> bool {
        nullifier_count <= MAX_BLOCK_NULLIFIER_COUNT
    }

    /// Returns whether the application is ready to start.
    #[instrument(skip_all, ret)]
    pub async fn is_ready(state: Snapshot) -> bool {
        // If the chain is halted, we are not ready to start the application.
        // This is a safety mechanism to prevent the chain from starting if it
        // is in a halted state.
        if state.is_chain_halted().await {
            return false;
        }
        if let Err(error) = shieldd_sdk_sct::nullifier_tree::verify_committed_root(&state).await {
            tracing::error!(?error, "nullifier tree root check failed");
            return false;
        }
        if let Err(error) = state.verify_committed_sct_root().await {
            tracing::error!(?error, "SCT root check failed");
            return false;
        }
        if let Err(error) = state.verify_committed_tree_roots().await {
            tracing::error!(?error, "compliance tree root check failed");
            return false;
        }
        true
    }

    // StateDelta::apply only works when the StateDelta wraps an underlying
    // StateWrite.  But if we want to share the StateDelta with spawned tasks,
    // we usually can't wrap a StateWrite instance, which requires exclusive
    // access. This method "externally" applies the state delta to the
    // inter-block state.
    //
    // Invariant: `state_tx` and `self.state` are the only two references to the
    // inter-block state.
    fn apply(&mut self, state_tx: StateDelta<InterBlockState>) -> Vec<Event> {
        let (state2, mut cache) = state_tx.flatten();
        std::mem::drop(state2);
        // Now there is only one reference to the inter-block state: self.state

        let events = cache.take_events();
        cache.apply_to(
            Arc::get_mut(&mut self.state).expect("no other references to inter-block state"),
        );

        events
    }

    pub async fn init_chain(&mut self, app_state: &AppState) {
        let mut state_tx = self
            .state
            .try_begin_transaction()
            .expect("state Arc should not be referenced elsewhere");
        match app_state {
            AppState::Content(genesis) => {
                state_tx.put_chain_id(genesis.chain_id.clone());
                Sct::init_chain(&mut state_tx, Some(&genesis.sct_content)).await;
                ShieldedPool::init_chain(&mut state_tx, Some(&genesis.shielded_pool_content)).await;
                Staking::init_chain(
                    &mut state_tx,
                    Some(&(
                        genesis.validator_content.clone(),
                        genesis.shielded_pool_content.clone(),
                    )),
                )
                .await;
                Ibc::init_chain(&mut state_tx, Some(&genesis.ibc_content)).await;
                Governance::init_chain(&mut state_tx, Some(&genesis.governance_content)).await;
                FeeComponent::init_chain(&mut state_tx, Some(&genesis.fee_content)).await;
                // Initialize compliance component with empty trees for anchor tracking.
                // Unregulated assets don't need registration (proven via non-membership).
                Compliance::init_chain(&mut state_tx, Some(&genesis.compliance_content)).await;

                state_tx
                    .finish_block()
                    .await
                    .expect("must be able to finish compact block");
            }
            AppState::Checkpoint(_) => {
                ShieldedPool::init_chain(&mut state_tx, None).await;
                Staking::init_chain(&mut state_tx, None).await;
                Ibc::init_chain(&mut state_tx, None).await;
                Governance::init_chain(&mut state_tx, None).await;
                FeeComponent::init_chain(&mut state_tx, None).await;
                Compliance::init_chain(&mut state_tx, None).await;
            }
        };

        // Note that `init_chain` can not emit any events, and we do not want to
        // work around this as it violates the design principle that events are changes
        // to initial data.
        //
        // This means that indexers are responsible for parsing genesis data and bootstrapping
        // their initial state before processing chronological events.
        //
        // See: https://github.com/mizufinance/shieldd/pull/4449#discussion_r1636868800

        state_tx.apply();
    }

    async fn prepare_proposal_impl_profiled(
        &mut self,
        mut proposal: request::PrepareProposal,
        stateless_cache: Option<&StatelessCache>,
        allow_oversized_proposal: bool,
    ) -> (response::PrepareProposal, PrepareProposalProfile) {
        if self.state.is_chain_halted().await {
            // If we find ourselves preparing a proposal for a halted chain
            // we stop abruptly to prevent any progress.
            // The persistent halt mechanism will prevent restarts until we are ready.
            process::exit(0);
        }

        let num_candidate_txs = proposal.txs.len();
        tracing::debug!(
            "processing PrepareProposal, found {} candidate transactions",
            num_candidate_txs
        );
        Self::truncate_prepare_candidates(&mut proposal.txs);

        // Comet may provide a tighter per-proposal budget than the protocol
        // block-payload ceiling. Negative values admit no transaction bytes.
        // Comet can send a larger candidate set, presuming a subset will be shed.
        // More context in https://github.com/cometbft/cometbft/blob/v0.37.5/spec/abci/abci%2B%2B_app_requirements.md
        let max_proposal_size_bytes = Self::prepare_proposal_payload_limit(proposal.max_tx_bytes);
        let (included_txs, profile) = match self
            .prepare_proposal_batched_profiled(
                proposal.txs,
                max_proposal_size_bytes,
                stateless_cache,
                allow_oversized_proposal,
            )
            .await
        {
            Ok(result) => result,
            Err(e) => {
                tracing::warn!(?e, "prepare_proposal failed, returning an empty proposal");
                (Vec::new(), PrepareProposalProfile::default())
            }
        };

        // The evidence payload is validated by Comet, we can lean on three guarantees:
        // 1. The total payload is bound by `MAX_EVIDENCE_SIZE_BYTES`
        // 2. Expired evidence is filtered
        // 3. Evidence is valid.
        tracing::debug!(
            "finished processing PrepareProposal, including {}/{} candidate transactions",
            included_txs.len(),
            num_candidate_txs
        );
        tracing::info!(
            candidate_scan_ms = profile.candidate_scan_ms,
            nullifier_dedup_ms = profile.nullifier_dedup_ms,
            anchor_precheck_ms = profile.anchor_precheck_ms,
            artifact_fill_ms = profile.artifact_fill_ms,
            artifact_fill_proof_verify_ms = profile.artifact_fill_proof_verify_ms,
            stateful_filter_execute_ms = profile.stateful_filter_execute_ms,
            deferred_index_flush_ms = profile.deferred_index_flush_ms,
            "prepare_proposal_runtime_profile"
        );

        (response::PrepareProposal { txs: included_txs }, profile)
    }

    async fn prepare_proposal_impl(
        &mut self,
        proposal: request::PrepareProposal,
        stateless_cache: Option<&StatelessCache>,
    ) -> response::PrepareProposal {
        self.prepare_proposal_impl_profiled(proposal, stateless_cache, false)
            .await
            .0
    }

    /// Synthetic benchmark baseline: no shared artifact cache between mempool,
    /// proposer, and validator stages.
    pub async fn prepare_proposal_v1(
        &mut self,
        proposal: request::PrepareProposal,
    ) -> response::PrepareProposal {
        self.prepare_proposal_impl(proposal, None).await
    }

    pub async fn prepare_proposal_v1_profiled(
        &mut self,
        proposal: request::PrepareProposal,
    ) -> (response::PrepareProposal, PrepareProposalProfile) {
        self.prepare_proposal_impl_profiled(proposal, None, false)
            .await
    }

    /// Production and synthetic v2 path: use the shared artifact cache.
    pub async fn prepare_proposal_v2(
        &mut self,
        proposal: request::PrepareProposal,
        stateless_cache: Option<&StatelessCache>,
    ) -> response::PrepareProposal {
        self.prepare_proposal_impl(proposal, stateless_cache).await
    }

    pub async fn prepare_proposal_v2_profiled(
        &mut self,
        proposal: request::PrepareProposal,
        stateless_cache: Option<&StatelessCache>,
    ) -> (response::PrepareProposal, PrepareProposalProfile) {
        self.prepare_proposal_impl_profiled(proposal, stateless_cache, false)
            .await
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn prepare_proposal_v2_profiled_allow_oversized_for_bench(
        &mut self,
        proposal: request::PrepareProposal,
        stateless_cache: Option<&StatelessCache>,
    ) -> (response::PrepareProposal, PrepareProposalProfile) {
        self.prepare_proposal_impl_profiled(proposal, stateless_cache, true)
            .await
    }

    #[instrument(skip_all, ret, level = "debug")]
    async fn process_proposal_impl_profiled(
        &mut self,
        proposal: request::ProcessProposal,
        stateless_cache: Option<&StatelessCache>,
        allow_oversized_proposal: bool,
    ) -> (response::ProcessProposal, ProcessProposalProfile) {
        tracing::debug!(
            height = proposal.height.value(),
            proposer = ?proposal.proposer_address,
            proposal_hash = ?proposal.hash,
            "processing proposal"
        );

        let mut profile = ProcessProposalProfile::default();
        let proposal_height = proposal.height.value();
        let proposal_hash = proposal.hash.to_string();
        macro_rules! reject_process_proposal {
            ($reason:literal) => {{
                tracing::warn!(
                    height = proposal_height,
                    proposal_hash = %proposal_hash,
                    reason = $reason,
                    "process_proposal_reject_reason"
                );
                return (response::ProcessProposal::Reject, profile);
            }};
            ($reason:literal, $($field:tt)*) => {{
                tracing::warn!(
                    height = proposal_height,
                    proposal_hash = %proposal_hash,
                    reason = $reason,
                    $($field)*,
                    "process_proposal_reject_reason"
                );
                return (response::ProcessProposal::Reject, profile);
            }};
        }

        let mut evidence_buffer: Vec<u8> = Vec::with_capacity(MAX_EVIDENCE_SIZE_BYTES);
        let mut bytes_tracker = 0usize;

        for evidence in proposal.misbehavior {
            evidence_buffer.clear();
            let proto_evidence: tendermint_proto::v0_37::abci::Misbehavior = evidence.into();
            let evidence_size = match proto_evidence.encode(&mut evidence_buffer) {
                Ok(_) => evidence_buffer.len(),
                Err(_) => reject_process_proposal!("misbehavior_encode_failed"),
            };
            bytes_tracker = bytes_tracker.saturating_add(evidence_size);
            if bytes_tracker > MAX_EVIDENCE_SIZE_BYTES {
                reject_process_proposal!("misbehavior_bytes_exceeded", bytes_tracker);
            }
        }

        enum UserTxData {
            ExtractedArtifact(Arc<ExtractedTxArtifact>),
            VerifiedArtifact(Arc<VerifiedTxArtifact>),
            Decoded(Arc<Transaction>),
        }

        struct UserTx {
            bytes: Bytes,
            data: UserTxData,
            cache_miss: bool,
            extracted_cache_hit: bool,
        }

        impl UserTx {
            fn tx(&self) -> &Arc<Transaction> {
                match &self.data {
                    UserTxData::ExtractedArtifact(artifact) => artifact.tx(),
                    UserTxData::VerifiedArtifact(artifact) => artifact.tx(),
                    UserTxData::Decoded(tx) => tx,
                }
            }

            fn extracted_artifact(&self) -> Option<Arc<ExtractedTxArtifact>> {
                match &self.data {
                    UserTxData::ExtractedArtifact(artifact) => Some(artifact.clone()),
                    UserTxData::VerifiedArtifact(artifact) => {
                        Some(artifact.extracted_for_consensus_reverification())
                    }
                    UserTxData::Decoded(_) => None,
                }
            }

            fn verified_artifact(&self) -> Option<Arc<VerifiedTxArtifact>> {
                match &self.data {
                    UserTxData::VerifiedArtifact(artifact) => Some(artifact.clone()),
                    UserTxData::ExtractedArtifact(_) | UserTxData::Decoded(_) => None,
                }
            }
        }

        let proposal_tx_count = proposal.txs.len();
        if !Self::process_proposal_tx_count_allowed(proposal_tx_count) {
            reject_process_proposal!("tx_count_exceeded", proposal_tx_count);
        }
        let mut total_txs_payload_size = 0usize;
        let mut user_txs = Vec::with_capacity(proposal_tx_count);
        let lookup_start = Instant::now();
        let mut decode_classify_ms = 0.0f64;

        for (index, tx_bytes) in proposal.txs.into_iter().enumerate() {
            let tx_size = tx_bytes.len();
            if !allow_oversized_proposal && !Self::transaction_size_allowed(tx_size) {
                reject_process_proposal!("tx_size_exceeded", index, tx_size);
            }

            total_txs_payload_size = total_txs_payload_size.saturating_add(tx_size);
            if !allow_oversized_proposal
                && !Self::process_proposal_payload_size_allowed(total_txs_payload_size)
            {
                reject_process_proposal!(
                    "total_txs_payload_exceeded",
                    index,
                    total_txs_payload_size
                );
            }

            let tx_hash: [u8; 32] = sha2::Sha256::digest(tx_bytes.as_ref()).into();
            if let Some(cache) = stateless_cache {
                match cache.get(&tx_hash, tx_bytes.as_ref()) {
                    Some(CacheEntry::Invalid) => {
                        reject_process_proposal!("stateless_cache_invalid", tx_hash = %hex::encode(tx_hash));
                    }
                    Some(CacheEntry::Groth16Verified(artifact)) => {
                        Self::record_artifact_reuse("process_proposal");
                        profile.artifact_hit_count += 1;
                        profile.warm_reuse_count += 1;
                        user_txs.push(UserTx {
                            bytes: tx_bytes,
                            data: UserTxData::VerifiedArtifact(artifact),
                            cache_miss: false,
                            extracted_cache_hit: false,
                        });
                        continue;
                    }
                    Some(CacheEntry::Extracted(artifact)) => {
                        Self::record_artifact_reuse("process_proposal");
                        profile.artifact_hit_count += 1;
                        profile.warm_reuse_count += 1;
                        user_txs.push(UserTx {
                            bytes: tx_bytes,
                            data: UserTxData::ExtractedArtifact(artifact),
                            cache_miss: false,
                            extracted_cache_hit: true,
                        });
                        continue;
                    }
                    None => {}
                }
            }

            let decode_start = Instant::now();
            let tx = match Transaction::decode_canonical(tx_bytes.as_ref()) {
                Ok(tx) => Arc::new(tx),
                Err(_) => reject_process_proposal!("tx_decode_failed", index),
            };
            decode_classify_ms += decode_start.elapsed().as_secs_f64() * 1000.0;

            profile.artifact_miss_count += 1;
            user_txs.push(UserTx {
                bytes: tx_bytes,
                data: UserTxData::Decoded(tx),
                cache_miss: true,
                extracted_cache_hit: false,
            });
        }
        profile.artifact_lookup_ms = lookup_start.elapsed().as_secs_f64() * 1000.0;
        profile.tx_decode_classify_ms = decode_classify_ms;

        let mut block_nullifier_count = 0usize;
        for (index, user_tx) in user_txs.iter().enumerate() {
            if ensure_transaction_resource_bounds(user_tx.tx()).is_err() {
                reject_process_proposal!("transaction_resource_bounds_exceeded", index);
            }
            block_nullifier_count =
                block_nullifier_count.saturating_add(transaction_nullifier_count(user_tx.tx()));
            if !Self::block_nullifier_count_allowed(block_nullifier_count) {
                reject_process_proposal!(
                    "block_nullifier_count_exceeded",
                    index,
                    block_nullifier_count
                );
            }
        }

        if !user_txs.is_empty() {
            let mut raw_miss_txs = Vec::new();

            for user_tx in &user_txs {
                match &user_tx.data {
                    UserTxData::ExtractedArtifact(_) | UserTxData::VerifiedArtifact(_) => {}
                    UserTxData::Decoded(tx) => raw_miss_txs.push(tx.clone()),
                }
            }

            if !raw_miss_txs.is_empty() {
                let reconstruction_start = Instant::now();
                let (miss_artifacts, artifact_profile) =
                    match Self::build_tx_artifacts_extracted_profiled(&raw_miss_txs).await {
                        Ok(result) => result,
                        Err(_) => reject_process_proposal!("artifact_reconstruction_failed"),
                    };
                let mut miss_artifacts = miss_artifacts.into_iter();
                profile.cold_reconstruction_ms =
                    reconstruction_start.elapsed().as_secs_f64() * 1000.0;
                profile.cold_reconstruction_precheck_ms = artifact_profile.precheck_ms;
                profile.cold_reconstruction_action_extract_ms = artifact_profile.action_extract_ms;
                for user_tx in &mut user_txs {
                    if matches!(user_tx.data, UserTxData::Decoded(_)) {
                        let artifact = miss_artifacts
                            .next()
                            .expect("artifact count should match decoded proposal transactions");
                        user_tx.data = UserTxData::ExtractedArtifact(artifact);
                    }
                }
            }
        }

        let artifacts = user_txs
            .iter()
            .map(|user_tx| {
                user_tx
                    .extracted_artifact()
                    .expect("proposal user tx should have artifact after miss fill")
            })
            .collect::<Vec<_>>();
        let nullifier_dedup_start = Instant::now();
        if Self::ensure_unique_spend_nullifiers_from_artifacts(&artifacts).is_err() {
            reject_process_proposal!("duplicate_spend_nullifiers");
        }
        profile.nullifier_dedup_ms = nullifier_dedup_start.elapsed().as_secs_f64() * 1000.0;

        let anchor_recheck_start = Instant::now();
        if self
            .precheck_compliance_anchors_dedup_from_artifacts(&artifacts)
            .await
            .is_err()
        {
            reject_process_proposal!("anchor_recheck_failed");
        }
        profile.anchor_recheck_ms = anchor_recheck_start.elapsed().as_secs_f64() * 1000.0;

        let independent_verify_start = Instant::now();
        let (verified_artifacts, _) =
            match Self::verify_tx_artifacts_for_stage("process_proposal_independent", &artifacts)
                .await
            {
                Ok(result) => result,
                Err(_) => reject_process_proposal!("independent_proof_verification_failed"),
            };
        if verified_artifacts.len() != user_txs.len() {
            reject_process_proposal!("verified_artifact_count_mismatch");
        }
        for (user_tx, artifact) in user_txs.iter_mut().zip(verified_artifacts) {
            user_tx.data = UserTxData::VerifiedArtifact(artifact);
        }
        profile.independent_proof_verify_ms =
            independent_verify_start.elapsed().as_secs_f64() * 1000.0;

        let stateful_replay_start = Instant::now();
        for user_tx in &user_txs {
            let artifact = match user_tx.verified_artifact() {
                Some(artifact) => artifact,
                None => reject_process_proposal!("missing_verified_artifact_before_replay"),
            };
            let execution_profile = match self.execute_verified_tx_profiled(artifact).await {
                Ok((_, execution_profile)) => execution_profile,
                Err(_) => reject_process_proposal!("stateful_replay_failed"),
            };
            profile.stateful_replay_check_historical_ms += execution_profile.check_historical_ms;
            profile.stateful_replay_get_block_height_ms += execution_profile.get_block_height_ms;
            profile.stateful_replay_clone_tx_ms += execution_profile.clone_tx_ms;
            profile.stateful_replay_proto_convert_ms += execution_profile.proto_convert_ms;
            profile.stateful_replay_put_block_transaction_ms +=
                execution_profile.put_block_transaction_ms;
            profile.stateful_replay_begin_state_tx_ms += execution_profile.begin_state_tx_ms;
            profile.stateful_replay_index_tx_ms += execution_profile.index_tx_ms;
            profile.stateful_replay_check_and_execute_ms += execution_profile.check_and_execute_ms;
            profile.stateful_replay_set_source_ms += execution_profile.set_source_ms;
            profile.stateful_replay_pay_fee_ms += execution_profile.pay_fee_ms;
            profile.stateful_replay_action_execute_ms += execution_profile.action_execute_ms;
            profile.stateful_replay_other_action_execute_ms +=
                execution_profile.other_action_execute_ms;
            profile.stateful_replay_record_clues_ms += execution_profile.record_clues_ms;
            profile.stateful_replay_apply_ms += execution_profile.apply_ms;
        }
        profile.stateful_replay_execute_ms = stateful_replay_start.elapsed().as_secs_f64() * 1000.0;

        if let Some(cache) = stateless_cache {
            for user_tx in &user_txs {
                if user_tx.cache_miss || user_tx.extracted_cache_hit {
                    let artifact = user_tx
                        .verified_artifact()
                        .expect("cache miss proposal tx should be proof verified");
                    if cache
                        .insert_groth16_verified(user_tx.bytes.as_ref(), artifact)
                        .is_err()
                    {
                        reject_process_proposal!("stateless_cache_association_failed");
                    }
                }
            }
        }

        if self.block_tx_indexing_mode == BlockTxIndexingMode::DeferredBatch {
            let deferred_index_flush_start = Instant::now();
            if self.flush_deferred_block_transactions().await.is_err() {
                reject_process_proposal!("deferred_index_flush_failed");
            }
            profile.deferred_index_flush_ms =
                deferred_index_flush_start.elapsed().as_secs_f64() * 1000.0;
        }

        (response::ProcessProposal::Accept, profile)
    }

    #[instrument(skip_all, ret, level = "debug")]
    async fn process_proposal_impl(
        &mut self,
        proposal: request::ProcessProposal,
        stateless_cache: Option<&StatelessCache>,
    ) -> response::ProcessProposal {
        self.process_proposal_impl_profiled(proposal, stateless_cache, false)
            .await
            .0
    }

    /// Synthetic benchmark baseline: no shared artifact cache between mempool,
    /// proposer, and validator stages.
    pub async fn process_proposal_v1(
        &mut self,
        proposal: request::ProcessProposal,
    ) -> response::ProcessProposal {
        self.process_proposal_impl(proposal, None).await
    }

    pub async fn process_proposal_v1_profiled(
        &mut self,
        proposal: request::ProcessProposal,
    ) -> (response::ProcessProposal, ProcessProposalProfile) {
        self.process_proposal_impl_profiled(proposal, None, false)
            .await
    }

    /// Production and synthetic v2 path: use the shared artifact cache.
    pub async fn process_proposal_v2(
        &mut self,
        proposal: request::ProcessProposal,
        stateless_cache: Option<&StatelessCache>,
    ) -> response::ProcessProposal {
        self.process_proposal_impl(proposal, stateless_cache).await
    }

    pub async fn process_proposal_v2_profiled(
        &mut self,
        proposal: request::ProcessProposal,
        stateless_cache: Option<&StatelessCache>,
    ) -> (response::ProcessProposal, ProcessProposalProfile) {
        self.process_proposal_impl_profiled(proposal, stateless_cache, false)
            .await
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn process_proposal_v2_profiled_allow_oversized_for_bench(
        &mut self,
        proposal: request::ProcessProposal,
        stateless_cache: Option<&StatelessCache>,
    ) -> (response::ProcessProposal, ProcessProposalProfile) {
        self.process_proposal_impl_profiled(proposal, stateless_cache, true)
            .await
    }

    pub async fn process_proposal(
        &mut self,
        proposal: request::ProcessProposal,
        stateless_cache: Option<&StatelessCache>,
    ) -> response::ProcessProposal {
        self.process_proposal_v2(proposal, stateless_cache).await
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn execute_block_profiled(
        &mut self,
        txs: &[Vec<u8>],
        storage: Storage,
    ) -> Result<ExecutionBlockProfile> {
        let context = self.benchmark_block_context().await?;
        let begin_block = Self::begin_block_request_from_context(&context);
        let mut profile = ExecutionBlockProfile {
            block_tx_count: txs.len(),
            ..Default::default()
        };

        let begin_block_start = Instant::now();
        let _events = self.begin_block(&begin_block).await;
        profile.begin_block_ms = begin_block_start.elapsed().as_secs_f64() * 1000.0;

        let decoded_txs = txs
            .iter()
            .enumerate()
            .map(|(index, tx_bytes)| {
                Transaction::decode_canonical(tx_bytes.as_slice())
                    .map(Arc::new)
                    .with_context(|| format!("decoding execution benchmark tx ordinal {index}"))
            })
            .collect::<Result<Vec<_>>>()?;
        let (verified_artifacts, _) =
            Self::build_tx_artifacts_for_stage("execute_block_benchmark", &decoded_txs).await?;

        let deliver_txs_start = Instant::now();
        for artifact in verified_artifacts {
            let execute_tx_start = Instant::now();
            let (_events, execute_profile) = self.execute_verified_tx_profiled(artifact).await?;
            profile.execute_tx_ms += execute_tx_start.elapsed().as_secs_f64() * 1000.0;
            profile.check_historical_ms += execute_profile.check_historical_ms;
            profile.begin_state_tx_ms += execute_profile.begin_state_tx_ms;
            profile.index_tx_ms += execute_profile.index_tx_ms;
            profile.get_block_height_ms += execute_profile.get_block_height_ms;
            profile.clone_tx_ms += execute_profile.clone_tx_ms;
            profile.proto_convert_ms += execute_profile.proto_convert_ms;
            profile.put_block_transaction_ms += execute_profile.put_block_transaction_ms;
            profile.tx_log_read_ms += execute_profile.tx_log_read_ms;
            profile.tx_log_encode_ms += execute_profile.tx_log_encode_ms;
            profile.tx_log_put_raw_ms += execute_profile.tx_log_put_raw_ms;
            profile.check_and_execute_ms += execute_profile.check_and_execute_ms;
            profile.set_source_ms += execute_profile.set_source_ms;
            profile.pay_fee_ms += execute_profile.pay_fee_ms;
            profile.action_execute_ms += execute_profile.action_execute_ms;
            profile.other_action_execute_ms += execute_profile.other_action_execute_ms;
            profile.record_clues_ms += execute_profile.record_clues_ms;
            profile.apply_ms += execute_profile.apply_ms;
        }
        profile.deliver_txs_wall_ms = deliver_txs_start.elapsed().as_secs_f64() * 1000.0;

        let end_block = request::EndBlock {
            height: i64::try_from(context.height.value())
                .context("converting execution benchmark end_block height")?,
        };
        let end_block_start = Instant::now();
        let _events = self.end_block(&end_block).await;
        profile.end_block_ms = end_block_start.elapsed().as_secs_f64() * 1000.0;

        let commit_start = Instant::now();
        let _root_hash = self.commit(storage).await;
        profile.commit_ms = commit_start.elapsed().as_secs_f64() * 1000.0;

        Ok(profile)
    }

    pub async fn begin_block(&mut self, begin_block: &request::BeginBlock) -> Vec<abci::Event> {
        self.pending_sct_append_log.clear();
        let mut state_tx = StateDelta::new(self.state.clone());

        // If a app parameter change is scheduled for this block, apply it here,
        // before any other component has executed. This ensures that app
        // parameter changes are consistently applied precisely at the boundary
        // between blocks.
        //
        // Note that because _nothing_ has executed yet, we need to get the
        // current height from the begin_block request, rather than from the
        // state (it will be set by the SCT component, which executes first).
        if let Some(change) = state_tx
            .param_changes_for_height(begin_block.header.height.into())
            .await
            .expect("param changes should always be readable, even if unset")
        {
            let old_params = state_tx
                .get_app_params()
                .await
                .expect("must be able to read app params");
            match change.apply_changes(old_params) {
                Ok(new_params) => {
                    tracing::info!(?change, "applied app parameter change");
                    state_tx.put_app_params(new_params.clone());
                    state_tx.record_proto(
                        EventAppParametersChange {
                            new_parameters: new_params,
                        }
                        .to_proto(),
                    )
                }
                Err(e) => {
                    // N.B. this is an "info" rather than "warn" because it does not report
                    // a problem with _this instance of the application_, but rather is an expected
                    // behavior.
                    tracing::info!(?change, ?e, "failed to apply approved app parameter change");
                }
            }
        }

        clear_block_fee_price_cache(&mut state_tx);

        // Run each of the begin block handlers for each component, in sequence:
        let mut arc_state_tx = Arc::new(state_tx);
        Sct::begin_block(&mut arc_state_tx, begin_block).await;
        ShieldedPool::begin_block(&mut arc_state_tx, begin_block).await;
        Ibc::begin_block::<ShielddHost, StateDelta<Arc<StateDelta<cnidarium::Snapshot>>>>(
            &mut arc_state_tx,
            begin_block,
        )
        .await;
        Governance::begin_block(&mut arc_state_tx, begin_block).await;
        Staking::begin_block(&mut arc_state_tx, begin_block).await;
        FeeComponent::begin_block(&mut arc_state_tx, begin_block).await;

        let state_tx = Arc::try_unwrap(arc_state_tx)
            .expect("components did not retain copies of shared state");

        self.apply(state_tx)
    }

    /// Wrapper function for [`Self::deliver_tx`] that decodes from bytes.
    ///
    /// When a `StatelessCache` is provided, anchor-independent tx artifacts are
    /// cached by SHA-256 of the raw tx bytes. Cache hits skip decode + stateless
    /// proof work entirely; misses build the artifact once while running
    /// historical checks in parallel.
    async fn deliver_tx_bytes_impl(
        &mut self,
        tx_bytes: &[u8],
        stateless_cache: Option<&StatelessCache>,
    ) -> Result<Vec<abci::Event>> {
        let (events, _) = self
            .deliver_tx_bytes_impl_profiled(tx_bytes, stateless_cache)
            .await?;
        Ok(events)
    }

    async fn deliver_tx_bytes_impl_profiled(
        &mut self,
        tx_bytes: &[u8],
        stateless_cache: Option<&StatelessCache>,
    ) -> Result<(Vec<abci::Event>, CheckTxProfile)> {
        anyhow::ensure!(
            Self::transaction_size_allowed(tx_bytes.len()),
            "transaction size {} exceeds maximum {}",
            tx_bytes.len(),
            MAX_TRANSACTION_SIZE_BYTES
        );

        let total_start = Instant::now();
        let mut profile = CheckTxProfile::default();
        if let Some(cache) = stateless_cache {
            let cache_lookup_start = Instant::now();
            let hash: [u8; 32] = sha2::Sha256::digest(tx_bytes).into();
            let cache_entry = cache.get(&hash, tx_bytes);
            profile.checktx_cache_lookup_ms = cache_lookup_start.elapsed().as_secs_f64() * 1000.0;
            let artifact = match cache_entry {
                Some(CacheEntry::Groth16Verified(artifact)) => artifact,
                Some(CacheEntry::Extracted(artifact)) => {
                    let (mut verified_artifacts, verify_profile) =
                        Self::verify_tx_artifacts_for_stage(
                            "deliver_tx_cache_upgrade",
                            std::slice::from_ref(&artifact),
                        )
                        .await
                        .inspect_err(|_| {
                            cache
                                .insert_invalid(tx_bytes)
                                .expect("derived cache key must match transaction bytes")
                        })?;
                    let verified = verified_artifacts
                        .pop()
                        .context("single verified cache-upgrade artifact missing")?;
                    anyhow::ensure!(
                        verified_artifacts.is_empty(),
                        "unexpected extra verified cache-upgrade artifacts"
                    );
                    profile.stateless_artifact_proof_verify_ms = verify_profile.proof_verify_ms;
                    cache.insert_groth16_verified(tx_bytes, verified.clone())?;
                    verified
                }
                Some(CacheEntry::Invalid) => {
                    anyhow::bail!("transaction previously failed stateless checks");
                }
                None => {
                    let miss_start = Instant::now();
                    let (events, miss_profile) = self
                        .deliver_tx_with_stateless_extraction_caching_profiled(tx_bytes, cache)
                        .await?;
                    let mut miss_profile = miss_profile;
                    miss_profile.checktx_stateless_phase_wall_ms =
                        miss_start.elapsed().as_secs_f64() * 1000.0;
                    miss_profile.checktx_cache_lookup_ms = profile.checktx_cache_lookup_ms;
                    miss_profile.checktx_total_wall_ms =
                        total_start.elapsed().as_secs_f64() * 1000.0;
                    return Ok((events, miss_profile));
                }
            };

            tracing::debug!("stateless cache hit (Groth16 verified)");
            Self::record_artifact_reuse("checktx");
            profile.cache_hit_count = 1;
            let execute_start = Instant::now();
            let (events, execute_profile) =
                self.execute_verified_tx_profiled(artifact.clone()).await?;
            profile.checktx_execute_wall_ms = execute_start.elapsed().as_secs_f64() * 1000.0;
            profile.check_historical_ms = execute_profile.check_historical_ms;
            Self::fill_checktx_execute_profile(&mut profile, &execute_profile);
            profile.checktx_total_wall_ms = total_start.elapsed().as_secs_f64() * 1000.0;
            return Ok((events, profile));
        }

        let decode_start = Instant::now();
        let tx = Arc::new(Transaction::decode_canonical(tx_bytes)?);
        profile.decode_tx_ms = decode_start.elapsed().as_secs_f64() * 1000.0;
        let (mut artifacts, artifact_profile) =
            Self::build_tx_artifacts_for_stage("deliver_tx_no_cache", std::slice::from_ref(&tx))
                .await?;
        let artifact = artifacts
            .pop()
            .context("single transaction artifact missing")?;
        profile.stateless_artifact_precheck_ms = artifact_profile.precheck_ms;
        profile.stateless_artifact_action_extract_ms = artifact_profile.action_extract_ms;
        profile.stateless_artifact_action_auth_sig_ms = artifact_profile.action_auth_sig_ms;
        profile.stateless_artifact_action_extract_public_ms =
            artifact_profile.action_extract_public_ms;
        profile.stateless_artifact_action_to_batch_item_ms =
            artifact_profile.action_to_batch_item_ms;
        profile.stateless_artifact_proof_verify_ms = artifact_profile.proof_verify_ms;
        let execute_start = Instant::now();
        let (events, execute_profile) = self.execute_verified_tx_profiled(artifact).await?;
        profile.checktx_execute_wall_ms = execute_start.elapsed().as_secs_f64() * 1000.0;
        profile.check_historical_ms = execute_profile.check_historical_ms;
        Self::fill_checktx_execute_profile(&mut profile, &execute_profile);
        profile.checktx_total_wall_ms = total_start.elapsed().as_secs_f64() * 1000.0;
        Ok((events, profile))
    }

    /// Synthetic benchmark baseline: no shared artifact cache between mempool,
    /// proposer, and validator stages.
    pub async fn deliver_tx_bytes_v1(&mut self, tx_bytes: &[u8]) -> Result<Vec<abci::Event>> {
        self.deliver_tx_bytes_impl(tx_bytes, None).await
    }

    pub async fn deliver_tx_bytes_v1_profiled(
        &mut self,
        tx_bytes: &[u8],
    ) -> Result<(Vec<abci::Event>, CheckTxProfile)> {
        self.deliver_tx_bytes_impl_profiled(tx_bytes, None).await
    }

    /// Production and synthetic v2 path: use the shared artifact cache.
    pub async fn deliver_tx_bytes_v2(
        &mut self,
        tx_bytes: &[u8],
        stateless_cache: Option<&StatelessCache>,
    ) -> Result<Vec<abci::Event>> {
        self.deliver_tx_bytes_impl(tx_bytes, stateless_cache).await
    }

    pub async fn deliver_tx_bytes_v2_profiled(
        &mut self,
        tx_bytes: &[u8],
        stateless_cache: Option<&StatelessCache>,
    ) -> Result<(Vec<abci::Event>, CheckTxProfile)> {
        self.deliver_tx_bytes_impl_profiled(tx_bytes, stateless_cache)
            .await
    }

    pub async fn deliver_tx_bytes(
        &mut self,
        tx_bytes: &[u8],
        stateless_cache: Option<&StatelessCache>,
    ) -> Result<Vec<abci::Event>> {
        self.deliver_tx_bytes_v2(tx_bytes, stateless_cache).await
    }

    fn fill_checktx_execute_profile(
        profile: &mut CheckTxProfile,
        execute_profile: &VerifiedStatefulTxBreakdown,
    ) {
        profile.execute_get_block_height_ms = execute_profile.get_block_height_ms;
        profile.execute_index_tx_ms = execute_profile.index_tx_ms;
        profile.execute_check_and_execute_ms = execute_profile.check_and_execute_ms;
        profile.execute_set_source_ms = execute_profile.set_source_ms;
        profile.execute_pay_fee_ms = execute_profile.pay_fee_ms;
        profile.execute_action_execute_ms = execute_profile.action_execute_ms;
        profile.execute_other_action_execute_ms = execute_profile.other_action_execute_ms;
        profile.execute_record_clues_ms = execute_profile.record_clues_ms;
        profile.execute_apply_ms = execute_profile.apply_ms;
        profile.execute_ms = execute_profile.begin_state_tx_ms
            + execute_profile.index_tx_ms
            + execute_profile.check_and_execute_ms
            + execute_profile.apply_ms;
    }

    async fn deliver_tx_with_stateless_extraction_caching_profiled(
        &mut self,
        tx_bytes: &[u8],
        cache: &StatelessCache,
    ) -> Result<(Vec<abci::Event>, CheckTxProfile)> {
        let mut profile = CheckTxProfile::default();
        let decode_start = Instant::now();
        let tx = Arc::new(Transaction::decode_canonical(tx_bytes)?);
        profile.decode_tx_ms = decode_start.elapsed().as_secs_f64() * 1000.0;

        let extract_start = Instant::now();
        let extracted =
            Self::build_tx_artifact_extracted_for_stage("checktx_extract_only", tx).await;
        profile.stateless_artifact_ms = extract_start.elapsed().as_secs_f64() * 1000.0;
        let initial_cache_insert_start = Instant::now();
        match &extracted {
            Ok((artifact, _)) => cache.insert_extracted(tx_bytes, artifact.clone()),
            Err(_) => cache.insert_invalid(tx_bytes),
        }?;
        profile.stateless_initial_cache_insert_ms =
            initial_cache_insert_start.elapsed().as_secs_f64() * 1000.0;

        let (artifact, artifact_profile) =
            extracted.context("extract stateless transaction facts")?;
        profile.stateless_artifact_precheck_ms = artifact_profile.precheck_ms;
        profile.stateless_artifact_action_extract_ms = artifact_profile.action_extract_ms;
        profile.stateless_artifact_action_auth_sig_ms = artifact_profile.action_auth_sig_ms;
        profile.stateless_artifact_action_extract_public_ms =
            artifact_profile.action_extract_public_ms;
        profile.stateless_artifact_action_to_batch_item_ms =
            artifact_profile.action_to_batch_item_ms;

        let (mut verified_artifacts, verify_profile) = match Self::verify_tx_artifacts_for_stage(
            "deliver_tx_cold",
            std::slice::from_ref(&artifact),
        )
        .await
        {
            Ok(result) => result,
            Err(error) => {
                cache.insert_invalid(tx_bytes)?;
                return Err(error).context("independent Groth16 verification failed");
            }
        };
        profile.stateless_artifact_proof_verify_ms = verify_profile.proof_verify_ms;
        let artifact = verified_artifacts
            .pop()
            .context("single verified cold-delivery artifact missing")?;
        anyhow::ensure!(
            verified_artifacts.is_empty(),
            "unexpected extra verified cold-delivery artifacts"
        );

        let verified_cache_insert_start = Instant::now();
        cache.insert_groth16_verified(tx_bytes, artifact.clone())?;
        profile.stateless_verified_cache_insert_ms =
            verified_cache_insert_start.elapsed().as_secs_f64() * 1000.0;

        let execute_start = Instant::now();
        let (events, execute_profile) = self.execute_verified_tx_profiled(artifact).await?;
        profile.checktx_execute_wall_ms = execute_start.elapsed().as_secs_f64() * 1000.0;
        profile.check_historical_ms = execute_profile.check_historical_ms;
        Self::fill_checktx_execute_profile(&mut profile, &execute_profile);
        Ok((events, profile))
    }

    async fn execute_verified_tx_profiled(
        &mut self,
        artifact: Arc<VerifiedTxArtifact>,
    ) -> Result<(Vec<abci::Event>, VerifiedStatefulTxBreakdown)> {
        let tx = artifact.tx().clone();
        let mut profile = VerifiedStatefulTxBreakdown::default();
        let historical_start = Instant::now();
        tx.check_historical(self.state.clone())
            .await
            .context("check_stateful failed")?;
        profile.check_historical_ms = historical_start.elapsed().as_secs_f64() * 1000.0;

        // At this point, the stateful checks should have completed,
        // leaving us with exclusive access to the Arc<State>.
        let begin_state_tx_start = Instant::now();
        let tx_id = tx.id();
        let state_arc_strong_count = Arc::strong_count(&self.state);
        let mut state_tx = self
            .state
            .try_begin_transaction()
            .ok_or_else(|| {
                anyhow::anyhow!(
                    "canonical transaction executor could not begin state transaction after historical checks: tx_id={}, action_count={}, state_arc_strong_count={}",
                    tx_id,
                    tx.actions().count(),
                    state_arc_strong_count,
                )
            })?;
        profile.begin_state_tx_ms = begin_state_tx_start.elapsed().as_secs_f64() * 1000.0;

        // Index the transaction:
        let index_start = Instant::now();
        let mut deferred_proto_transaction = None;
        match self.block_tx_indexing_mode {
            BlockTxIndexingMode::NoIndex => {}
            BlockTxIndexingMode::PerTx => {
                let get_block_height_start = Instant::now();
                let height = state_tx.get_block_height().await?;
                profile.get_block_height_ms =
                    get_block_height_start.elapsed().as_secs_f64() * 1000.0;
                let clone_tx_start = Instant::now();
                let transaction = Arc::as_ref(&tx).clone();
                profile.clone_tx_ms = clone_tx_start.elapsed().as_secs_f64() * 1000.0;
                let proto_convert_start = Instant::now();
                let proto_transaction = transaction.into();
                profile.proto_convert_ms = proto_convert_start.elapsed().as_secs_f64() * 1000.0;
                let put_block_transaction_start = Instant::now();
                let index_write_profile = Self::append_block_transaction_to_state(
                    &mut state_tx,
                    height,
                    proto_transaction,
                )
                .await
                .context("storing transactions")?;
                profile.put_block_transaction_ms =
                    put_block_transaction_start.elapsed().as_secs_f64() * 1000.0;
                profile.tx_log_read_ms = index_write_profile.tx_log_read_ms;
                profile.tx_log_encode_ms = index_write_profile.tx_log_encode_ms;
                profile.tx_log_put_raw_ms = index_write_profile.tx_log_put_raw_ms;
            }
            BlockTxIndexingMode::DeferredBatch => {
                let get_block_height_start = Instant::now();
                let _height = state_tx.get_block_height().await?;
                profile.get_block_height_ms =
                    get_block_height_start.elapsed().as_secs_f64() * 1000.0;
                let clone_tx_start = Instant::now();
                let transaction = Arc::as_ref(&tx).clone();
                profile.clone_tx_ms = clone_tx_start.elapsed().as_secs_f64() * 1000.0;
                let proto_convert_start = Instant::now();
                let proto_transaction = transaction.into();
                profile.proto_convert_ms = proto_convert_start.elapsed().as_secs_f64() * 1000.0;
                let put_block_transaction_start = Instant::now();
                deferred_proto_transaction = Some(proto_transaction);
                profile.put_block_transaction_ms =
                    put_block_transaction_start.elapsed().as_secs_f64() * 1000.0;
            }
        }
        profile.index_tx_ms = index_start.elapsed().as_secs_f64() * 1000.0;

        let check_and_execute_start = Instant::now();
        let execution_profile = check_and_execute_profiled(&artifact, &mut state_tx)
            .await
            .context("executing transaction")?;
        profile.check_and_execute_ms = check_and_execute_start.elapsed().as_secs_f64() * 1000.0;
        profile.set_source_ms = execution_profile.set_source_ms;
        profile.pay_fee_ms = execution_profile.pay_fee_ms;
        profile.action_execute_ms = execution_profile.action_execute_ms;
        profile.other_action_execute_ms = execution_profile.other_action_execute_ms;
        profile.record_clues_ms = execution_profile.record_clues_ms;

        // At this point, we've completed execution successfully with no errors,
        // so we can apply the transaction to the State. Otherwise, we'd have
        // bubbled up an error and dropped the StateTransaction.
        let apply_start = Instant::now();
        let events = state_tx.apply().1;
        profile.apply_ms = apply_start.elapsed().as_secs_f64() * 1000.0;
        if let Some(proto_transaction) = deferred_proto_transaction {
            self.deferred_block_transactions.push(proto_transaction);
        }

        Ok((events, profile))
    }

    async fn execute_prepare_candidates_serial_profiled(
        &mut self,
        candidates: Vec<Candidate>,
        profile: &mut PrepareProposalProfile,
    ) -> Vec<Candidate> {
        let mut included_candidates = Vec::new();
        for candidate in candidates {
            let Some(artifact) = candidate.verified_artifact() else {
                tracing::warn!("prepare candidate reached execution without proof capabilities");
                continue;
            };
            if let Ok((_, execution_profile)) = self.execute_verified_tx_profiled(artifact).await {
                Self::accumulate_prepare_candidate_profile(profile, &execution_profile);
                included_candidates.push(candidate);
            }
        }
        included_candidates
    }

    async fn append_block_transaction_to_state<S>(
        state_tx: &mut S,
        height: u64,
        transaction: shieldd_sdk_proto::core::transaction::v1::Transaction,
    ) -> Result<BlockTxIndexWriteProfile>
    where
        S: StateWrite + StateReadExt,
    {
        let mut profile = BlockTxIndexWriteProfile::default();
        let tx_log_read_start = Instant::now();
        let mut transactions_response = state_tx.transactions_by_height(height).await?;
        profile.tx_log_read_ms = tx_log_read_start.elapsed().as_secs_f64() * 1000.0;
        transactions_response.transactions.push(transaction);
        let tx_log_encode_start = Instant::now();
        let encoded = transactions_response.encode_to_vec();
        profile.tx_log_encode_ms = tx_log_encode_start.elapsed().as_secs_f64() * 1000.0;
        let tx_log_put_raw_start = Instant::now();
        state_tx.nonverifiable_put_raw(
            state_key::cometbft_data::transactions_by_height(height).into(),
            encoded,
        );
        profile.tx_log_put_raw_ms = tx_log_put_raw_start.elapsed().as_secs_f64() * 1000.0;
        Ok(profile)
    }

    async fn materialize_pending_sct_append_log<S>(&mut self, state_tx: &mut S) -> Result<()>
    where
        S: StateWrite
            + shieldd_sdk_sct::component::tree::SctManager
            + shieldd_sdk_shielded_pool::component::NoteManager,
    {
        #[cfg(feature = "benchmark-helpers")]
        let materialize_start = Instant::now();
        let entries = self.pending_sct_append_log.entries.clone();
        if entries.is_empty() {
            return Ok(());
        }

        let mut note_payloads = state_tx.pending_note_payloads();
        let mut rolled_up_payloads = state_tx.pending_rolled_up_payloads();
        let mut last_position = None;
        let mut sct_entries = Vec::with_capacity(entries.len());

        for (position, payload) in entries {
            debug_assert!(
                last_position
                    .map(|previous| previous <= position)
                    .unwrap_or(true),
                "deferred SCT append log should already be position-sorted"
            );
            last_position = Some(position);

            let commitment = *payload.commitment();
            sct_entries.push((position, commitment));

            match payload {
                StatePayload::Note { source, note } => {
                    note_payloads.push_back((position, *note, source));
                }
                StatePayload::RolledUp { commitment, .. } => {
                    rolled_up_payloads.push_back((position, commitment));
                }
            }
        }

        state_tx
            .add_sct_commitments_at_positions(sct_entries)
            .await?;

        #[cfg(feature = "benchmark-helpers")]
        let pending_payload_start = Instant::now();
        state_tx.object_put(
            shieldd_sdk_shielded_pool::state_key::pending_notes(),
            note_payloads,
        );
        state_tx.object_put(
            shieldd_sdk_shielded_pool::state_key::pending_rolled_up_payloads(),
            rolled_up_payloads,
        );
        self.pending_sct_append_log.clear();
        #[cfg(feature = "benchmark-helpers")]
        record_inbound_stage(
            InboundStage::DeferredSctPendingPayload,
            pending_payload_start.elapsed(),
        );
        #[cfg(feature = "benchmark-helpers")]
        record_inbound_stage(
            InboundStage::DeferredSctMaterialize,
            materialize_start.elapsed(),
        );

        Ok(())
    }

    async fn flush_deferred_block_transactions(&mut self) -> Result<()> {
        if self.block_tx_indexing_mode != BlockTxIndexingMode::DeferredBatch
            || self.deferred_block_transactions.is_empty()
        {
            return Ok(());
        }

        let mut state_tx = self
            .state
            .try_begin_transaction()
            .expect("state Arc should be present and unique");
        let height = state_tx.get_block_height().await?;
        let mut transactions_response = state_tx.transactions_by_height(height).await?;
        transactions_response
            .transactions
            .append(&mut self.deferred_block_transactions);
        state_tx.nonverifiable_put_raw(
            state_key::cometbft_data::transactions_by_height(height).into(),
            transactions_response.encode_to_vec(),
        );
        state_tx.apply();
        Ok(())
    }

    #[tracing::instrument(skip_all, fields(height = %end_block.height))]
    pub async fn end_block(&mut self, end_block: &request::EndBlock) -> Vec<abci::Event> {
        self.flush_deferred_block_transactions()
            .await
            .expect("must be able to flush deferred block transactions in end_block");
        let mut state_tx = StateDelta::new(self.state.clone());
        self.materialize_pending_sct_append_log(&mut state_tx)
            .await
            .expect("must be able to materialize deferred SCT payloads in end_block");

        tracing::debug!("running app components' `end_block` hooks");
        let mut arc_state_tx = Arc::new(state_tx);
        Sct::end_block(&mut arc_state_tx, end_block).await;
        ShieldedPool::end_block(&mut arc_state_tx, end_block).await;
        Ibc::end_block(&mut arc_state_tx, end_block).await;
        Governance::end_block(&mut arc_state_tx, end_block).await;
        Staking::end_block(&mut arc_state_tx, end_block).await;
        FeeComponent::end_block(&mut arc_state_tx, end_block).await;
        Compliance::end_block(&mut arc_state_tx, end_block).await;
        let mut state_tx = Arc::try_unwrap(arc_state_tx)
            .expect("components did not retain copies of shared state");
        tracing::debug!("finished app components' `end_block` hooks");

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

        // If a chain upgrade is scheduled for the next block, we trigger an early epoch change
        // so that the upgraded chain starts at a clean epoch boundary.
        let is_chain_upgrade = state_tx
            .is_pre_upgrade_height()
            .await
            .expect("able to detect upgrade heights");

        if is_end_epoch || is_chain_upgrade {
            tracing::info!(%is_end_epoch, %is_chain_upgrade, ?current_height, "ending epoch");

            let mut arc_state_tx = Arc::new(state_tx);

            Sct::end_epoch(&mut arc_state_tx)
                .await
                .expect("able to call end_epoch on Sct component");
            Ibc::end_epoch(&mut arc_state_tx)
                .await
                .expect("able to call end_epoch on IBC component");
            Governance::end_epoch(&mut arc_state_tx)
                .await
                .expect("able to call end_epoch on Governance component");
            ShieldedPool::end_epoch(&mut arc_state_tx)
                .await
                .expect("able to call end_epoch on shielded pool component");
            Staking::end_epoch(&mut arc_state_tx)
                .await
                .expect("able to call end_epoch on Staking component");
            FeeComponent::end_epoch(&mut arc_state_tx)
                .await
                .expect("able to call end_epoch on Fee component");

            let mut state_tx = Arc::try_unwrap(arc_state_tx)
                .expect("components did not retain copies of shared state");

            state_tx
                .finish_epoch()
                .await
                .expect("must be able to finish compact block");

            // set the epoch for the next block
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
            // set the epoch for the next block
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

    /// Commits the application state to persistent storage,
    /// returning the new root hash and storage version.
    ///
    /// This method also resets `self` as if it were constructed
    /// as an empty state over top of the newly written storage.
    pub async fn commit(&mut self, storage: Storage) -> RootHash {
        let commit_start = Instant::now();
        let flush_start = Instant::now();
        self.flush_deferred_block_transactions()
            .await
            .expect("must be able to flush deferred block transactions before commit");
        let flush_ms = flush_start.elapsed().as_secs_f64() * 1000.0;
        // We need to extract the State we've built up to commit it.  Fill in a dummy state.
        let dummy_state = StateDelta::new(storage.latest_snapshot());
        let mut state = Arc::try_unwrap(std::mem::replace(&mut self.state, Arc::new(dummy_state)))
            .expect("we have exclusive ownership of the State at commit()");

        // Check if an emergency halt has been signaled.
        let halt_check_start = Instant::now();
        let should_halt = state.is_chain_halted().await;

        let is_pre_upgrade_height = state
            .is_pre_upgrade_height()
            .await
            .expect("must be able to read upgrade height");
        let halt_check_ms = halt_check_start.elapsed().as_secs_f64() * 1000.0;

        // If the next height is an upgrade height, we signal a halt and turn
        // a `halt_bit` on which will prevent the chain from restarting without
        // running a migration.
        if is_pre_upgrade_height {
            tracing::info!("pre-upgrade height reached, signaling halt");
            state.signal_halt();
        }

        // Commit the pending writes, clearing the state.
        let storage_commit_start = Instant::now();
        let jmt_root = storage
            .commit(state)
            .await
            .expect("must be able to successfully commit to storage");
        let storage_commit_ms = storage_commit_start.elapsed().as_secs_f64() * 1000.0;

        // We want to halt the node, but not before we submit an ABCI `Commit`
        // response to `CometBFT`. To do this, we schedule a process exit in `2s`,
        // assuming a `5s` timeout.
        // See #4443 for more context.
        if should_halt || is_pre_upgrade_height {
            tokio::spawn(async move {
                sleep(Duration::from_secs(2)).await;
                tracing::info!("halt signal recorded, exiting process");
                std::process::exit(0);
            });
        }

        tracing::debug!(?jmt_root, "finished committing state");

        // Get the latest version of the state, now that we've committed it.
        let snapshot_reset_start = Instant::now();
        let latest_snapshot = storage.latest_snapshot();
        self.committed_snapshot = latest_snapshot.clone();
        self.state = Arc::new(StateDelta::new(latest_snapshot));
        self.pending_sct_append_log.clear();
        let snapshot_reset_ms = snapshot_reset_start.elapsed().as_secs_f64() * 1000.0;
        let total_ms = commit_start.elapsed().as_secs_f64() * 1000.0;
        // Stall investigation: surface per-phase timing so we can identify
        // which step in Commit is responsible when block production stalls
        // (e.g. the 23s gap between EndBlock and Commit in CI).
        tracing::info!(
            commit_total_ms = total_ms,
            commit_flush_deferred_ms = flush_ms,
            commit_halt_check_ms = halt_check_ms,
            commit_storage_commit_ms = storage_commit_ms,
            commit_snapshot_reset_ms = snapshot_reset_ms,
            "commit_phase_profile"
        );
        jmt_root
    }

    pub fn cometbft_validator_updates(&self) -> Vec<Update> {
        self.state
            .cometbft_validator_updates()
            // If the cometbft validator updates are not set, we return an empty
            // update set, signaling no change to Tendermint.
            .unwrap_or_default()
    }
}

#[async_trait]
pub trait StateReadExt: StateRead {
    async fn get_chain_id(&self) -> Result<String> {
        let raw_chain_id = self
            .get_raw(state_key::data::chain_id())
            .await?
            .expect("chain id is always set");

        Ok(String::from_utf8_lossy(&raw_chain_id).to_string())
    }

    /// Checks a provided chain_id against the chain state.
    ///
    /// Passes through if the provided chain_id is empty or matches, and
    /// otherwise errors.
    async fn check_chain_id(&self, provided: &str) -> Result<()> {
        let chain_id = self
            .get_chain_id()
            .await
            .context(format!("error getting chain id: '{provided}'"))?;
        if provided.is_empty() || provided == chain_id {
            Ok(())
        } else {
            Err(anyhow::anyhow!(
                "provided chain_id {} does not match chain_id {}",
                provided,
                chain_id
            ))
        }
    }

    /// Gets the chain revision number, from the chain ID
    async fn get_revision_number(&self) -> Result<u64> {
        let cid_str = self.get_chain_id().await?;

        Ok(ChainId::from_string(&cid_str).version())
    }

    /// Returns the set of app parameters
    async fn get_app_params(&self) -> Result<AppParameters> {
        let chain_id = self.get_chain_id().await?;
        let compliance_params = self.get_compliance_params().await?;
        let ibc_params = self.get_ibc_params().await?;
        let fee_params = self.get_fee_params().await?;
        let governance_params = self.get_governance_params().await?;
        let sct_params = self.get_sct_params().await?;
        let shielded_pool_params = self.get_shielded_pool_params().await?;
        let validator_params = self.get_stake_params().await?;

        Ok(AppParameters {
            chain_id,
            compliance_params,
            fee_params,
            governance_params,
            ibc_params,
            sct_params,
            shielded_pool_params,
            validator_params,
        })
    }

    async fn transactions_by_height(
        &self,
        block_height: u64,
    ) -> Result<TransactionsByHeightResponse> {
        let transactions = match self
            .nonverifiable_get_raw(
                state_key::cometbft_data::transactions_by_height(block_height).as_bytes(),
            )
            .await?
        {
            Some(transactions) => transactions,
            None => TransactionsByHeightResponse {
                transactions: vec![],
                block_height,
            }
            .encode_to_vec(),
        };

        Ok(TransactionsByHeightResponse::decode(&transactions[..])?)
    }
}

impl<
        T: StateRead
            + shieldd_sdk_validator::StateReadExt
            + shieldd_sdk_governance::component::StateReadExt
            + shieldd_sdk_fee::component::StateReadExt
            + shieldd_sdk_sct::component::clock::EpochRead
            + shieldd_sdk_ibc::component::StateReadExt
            + ?Sized,
    > StateReadExt for T
{
}

#[async_trait]
pub trait StateWriteExt: StateWrite {
    /// Sets the chain ID.
    fn put_chain_id(&mut self, chain_id: String) {
        self.put_raw(state_key::data::chain_id().into(), chain_id.into_bytes());
    }

    /// Stores the transactions that occurred during a CometBFT block.
    /// This is used to create a durable transaction log for clients to retrieve;
    /// the CometBFT `get_block_by_height` RPC call will only return data for blocks
    /// since the last checkpoint, so we need to store the transactions separately.
    async fn put_block_transaction(
        &mut self,
        height: u64,
        transaction: shieldd_sdk_proto::core::transaction::v1::Transaction,
    ) -> Result<()> {
        // Extend the existing transactions with the new one.
        let mut transactions_response = self.transactions_by_height(height).await?;
        transactions_response.transactions = transactions_response
            .transactions
            .into_iter()
            .chain(std::iter::once(transaction))
            .collect();

        self.nonverifiable_put_raw(
            state_key::cometbft_data::transactions_by_height(height).into(),
            transactions_response.encode_to_vec(),
        );
        Ok(())
    }

    /// Writes the app parameters to the state.
    ///
    /// Each component stores its own parameters separately, so this method
    /// splits up the provided parameters structure and writes it out to each component.
    fn put_app_params(&mut self, params: AppParameters) {
        // To make sure we don't forget to write any parts, destructure the entire params
        let AppParameters {
            chain_id,
            compliance_params,
            fee_params,
            governance_params,
            ibc_params,
            sct_params,
            shielded_pool_params,
            validator_params,
        } = params;

        // Ignore writes to the chain_id
        // TODO(erwan): we are momentarily not supporting chain_id changes
        // until the IBC host chain changes land.
        // See: https://github.com/mizufinance/shieldd/issues/3617#issuecomment-1917708221
        std::mem::drop(chain_id);

        self.put_fee_params(fee_params);
        self.put_compliance_params(compliance_params);
        self.put_governance_params(governance_params);
        self.put_ibc_params(ibc_params);
        self.put_sct_params(sct_params);
        self.put_shielded_pool_params(shielded_pool_params);
        self.put_stake_params(validator_params);
    }
}

impl<T: StateWrite + ?Sized> StateWriteExt for T {}

#[cfg(test)]
mod tests {
    mod proof_acceptance_tests;

    use std::ops::Deref;
    use std::sync::atomic::{AtomicBool, Ordering};
    use std::sync::Arc;
    use std::time::Duration;

    use anyhow::{anyhow, Context, Result};
    use cnidarium::{ArcStateDeltaExt, StateDelta, StateRead, StateWrite, TempStorage};
    use decaf377::{Fq, Fr};
    use decaf377_rdsa as rdsa;
    use futures::StreamExt as _;
    use ibc_types::core::channel::{ChannelId, PortId};
    use prost::bytes::Bytes;
    use rand_core::OsRng;
    use sha2::Digest as _;
    use shieldd_sdk_asset::{asset, Value, BASE_ASSET_DENOM, BASE_ASSET_ID};
    use shieldd_sdk_compact_block::StatePayload;
    use shieldd_sdk_compliance::registry::ComplianceRegistryWrite as _;
    use shieldd_sdk_compliance::{AssetPolicy, ComplianceLeaf};
    use shieldd_sdk_keys::{test_keys, Address};
    use shieldd_sdk_mock_client::MockClient;
    use shieldd_sdk_mock_consensus::TestNode;
    use shieldd_sdk_num::Amount;
    use shieldd_sdk_proof_params::DeployedProofKey;
    use shieldd_sdk_proto::DomainType;
    use shieldd_sdk_sct::component::clock::{EpochManager as _, EpochRead as _};
    use shieldd_sdk_sct::component::source::SourceContext as _;
    use shieldd_sdk_sct::component::tree::{SctManager as _, SctRead as _};
    use shieldd_sdk_sct::component::StateWriteExt as _;
    use shieldd_sdk_sct::epoch::Epoch;
    use shieldd_sdk_sct::params::SctParameters;
    use shieldd_sdk_sct::{CommitmentSource, NullificationInfo, Nullifier};
    use shieldd_sdk_shielded_pool::component::NoteManager as _;
    use shieldd_sdk_shielded_pool::{
        genesis::Allocation, NotePayload, ShieldedInputPlan, ShieldedOutputPlan, TransferPlan,
    };
    use shieldd_sdk_tct as tct;
    use shieldd_sdk_transaction::{
        memo::{MemoCiphertext, MemoPlaintext, MEMO_CIPHERTEXT_LEN_BYTES},
        plan::{CluePlan, MemoPlan},
        Action, DetectionData, Transaction, TransactionParameters, TransactionPlan,
    };
    use shieldd_sdk_txhash::AuthorizingData;
    use tendermint::v0_37::abci::request;
    use tendermint::{account, block, Hash, Time};

    use crate::genesis::{AppState, Content};
    use crate::server::consensus::{Consensus, ConsensusService};
    use crate::stateless_cache::{CacheEntry, StatelessCache};
    use crate::SUBSTORE_PREFIXES;

    use super::{App, BlockSctAppendLog, BlockTxIndexingMode, StateReadExt};
    fn rolled_up_payload(value: u64) -> StatePayload {
        StatePayload::RolledUp {
            source: CommitmentSource::transaction(),
            commitment: tct::StateCommitment(Fq::from(value)),
        }
    }

    #[tokio::test]
    async fn failed_transaction_drops_all_staged_effects() -> Result<()> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let mut base_state = StateDelta::new(storage.latest_snapshot());
        shieldd_sdk_sct::nullifier_tree::initialize(&mut base_state).await?;
        let mut state = Arc::new(base_state);
        let nullifier = Nullifier(Fq::from(71u64));
        let source = CommitmentSource::Transaction {
            id: Some([7u8; 32]),
        };
        let payload = NotePayload {
            note_commitment: tct::StateCommitment(Fq::from(72u64)),
            ..NotePayload::dummy()
        };
        let unrelated_effect_key = "fv/transaction/staged-effect".to_string();

        let execution_result: Result<()> = async {
            let mut state_tx = state
                .try_begin_transaction()
                .expect("test state must have unique ownership");
            state_tx.put_block_height(42);
            state_tx
                .nullify_all(std::slice::from_ref(&nullifier), source.clone())
                .await?;
            state_tx.add_note_payload(payload, source).await;
            state_tx.put_raw(unrelated_effect_key.clone(), vec![1u8]);

            assert_eq!(
                state_tx
                    .pending_nullifiers()
                    .iter()
                    .copied()
                    .collect::<Vec<_>>(),
                vec![nullifier]
            );
            assert_eq!(state_tx.pending_note_payloads().len(), 1);
            assert_eq!(
                state_tx.get_raw(unrelated_effect_key.as_str()).await?,
                Some(vec![1u8])
            );

            Err(anyhow!("later action failed"))
        }
        .await;

        assert!(execution_result.is_err());
        assert!(state.pending_nullifiers().is_empty());
        assert!(state.pending_note_payloads().is_empty());
        assert_eq!(state.spend_info(nullifier).await?, None);
        assert_eq!(state.get_raw(unrelated_effect_key.as_str()).await?, None);

        Ok(())
    }

    #[tokio::test]
    async fn nested_state_transaction_drops_staged_withdrawal_effects() -> Result<()> {
        use ibc_types::core::{channel::Packet, client::Height};
        use ibc_types::timestamp::Timestamp;
        use shieldd_sdk_ibc::component::{ChannelStateReadExt as _, ChannelStateWriteExt as _};
        use shieldd_sdk_proto::{StateReadProto as _, StateWriteProto as _};

        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let mut base_state = StateDelta::new(storage.latest_snapshot());
        shieldd_sdk_sct::nullifier_tree::initialize(&mut base_state).await?;
        let mut state = Arc::new(base_state);
        let nullifier = Nullifier(Fq::from(81u64));
        let source = CommitmentSource::Transaction {
            id: Some([8u8; 32]),
        };
        let payload = NotePayload {
            note_commitment: tct::StateCommitment(Fq::from(82u64)),
            ..NotePayload::dummy()
        };
        let channel = ChannelId::new(9);
        let port = PortId::transfer();
        let staged_amount = Amount::from(12u64);
        let balance_key = shieldd_sdk_ibc::component::state_key::ics20_value_balance::by_asset_id(
            &channel,
            &BASE_ASSET_ID,
        );
        let packet = Packet {
            sequence: 12u64.into(),
            port_on_a: port.clone(),
            chan_on_a: channel.clone(),
            port_on_b: port.clone(),
            chan_on_b: ChannelId::new(10),
            data: b"staged-withdrawal".to_vec(),
            timeout_height_on_b: Height::new(1, 100)?.into(),
            timeout_timestamp_on_b: Timestamp::from_nanoseconds(60_000_000_000)?,
        };
        let outbound_event = shieldd_sdk_shielded_pool::event::EventOutboundFungibleTokenTransfer {
            value: Value {
                amount: staged_amount,
                asset_id: *BASE_ASSET_ID,
            },
            sender: test_keys::ADDRESS_0.deref().clone(),
            receiver: "cosmos1destination".to_string(),
            meta: shieldd_sdk_shielded_pool::event::FungibleTokenTransferPacketMetadata {
                channel: channel.to_string(),
                sequence: 12,
            },
        }
        .to_proto();

        let execution_result: Result<()> = async {
            let mut state_tx = state
                .try_begin_transaction()
                .expect("test state must have unique ownership");
            state_tx.put_block_height(42);
            state_tx
                .nullify_all(std::slice::from_ref(&nullifier), source.clone())
                .await?;
            state_tx.add_note_payload(payload, source).await;
            state_tx.put_send_sequence(&channel, &port, 12);
            state_tx.put_packet_commitment(&packet);
            state_tx.put(balance_key.clone(), staged_amount);
            state_tx.record_proto(outbound_event);

            assert_eq!(
                state_tx
                    .pending_nullifiers()
                    .iter()
                    .copied()
                    .collect::<Vec<_>>(),
                vec![nullifier]
            );
            assert_eq!(state_tx.pending_note_payloads().len(), 1);
            assert_eq!(state_tx.get_send_sequence(&channel, &port).await?, 12);
            assert!(state_tx
                .get_packet_commitment_by_id(&channel, &port, 12)
                .await?
                .is_some());
            assert_eq!(
                state_tx.get::<Amount>(&balance_key).await?,
                Some(staged_amount)
            );

            Err(anyhow!("withdrawal packet execution failed"))
        }
        .await;

        assert!(execution_result.is_err());
        assert!(state.pending_nullifiers().is_empty());
        assert!(state.pending_note_payloads().is_empty());
        assert_eq!(state.spend_info(nullifier).await?, None);
        assert_eq!(state.get_send_sequence(&channel, &port).await?, 0);
        assert!(state
            .get_packet_commitment_by_id(&channel, &port, 12)
            .await?
            .is_none());
        assert_eq!(state.get::<Amount>(&balance_key).await?, None);

        let state = Arc::try_unwrap(state)
            .map_err(|_| anyhow!("rollback test retained a state reference"))?;
        let (_, mut changes) = state.flatten();
        assert!(
            changes.take_events().is_empty(),
            "nested transaction rollback must discard staged withdrawal events"
        );

        Ok(())
    }

    async fn delete_nv_prefix<S>(state: &mut S, prefix: &[u8]) -> Result<()>
    where
        S: StateRead + StateWrite + ?Sized,
    {
        let mut keys = Vec::new();
        {
            let stream = state.nonverifiable_prefix_raw(prefix);
            futures::pin_mut!(stream);
            while let Some(item) = stream.next().await {
                let (key, _) = item?;
                keys.push(key);
            }
        }
        for key in keys {
            state.nonverifiable_delete(key);
        }
        Ok(())
    }

    async fn setup_test_txs(
        tx_count: usize,
    ) -> Result<(TempStorage, TestNode<ConsensusService>, Vec<Vec<u8>>)> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;

        let allocations: Vec<Allocation> = std::iter::repeat(Allocation {
            raw_amount: 1_000_000u128.into(),
            raw_denom: BASE_ASSET_DENOM.deref().base_denom().denom,
            address: test_keys::ADDRESS_0.to_owned(),
        })
        .take(tx_count)
        .collect();

        let app_state_bytes = serde_json::to_vec(&AppState::Content(Content {
            chain_id: TestNode::<()>::CHAIN_ID.to_string(),
            shielded_pool_content: shieldd_sdk_shielded_pool::genesis::Content {
                allocations,
                ..Default::default()
            },
            ..Default::default()
        }))?;

        let consensus = Consensus::new(storage.as_ref().clone());
        let initial_time = tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:00Z")?;
        let mut test_node = TestNode::builder()
            .single_validator()
            .app_state(app_state_bytes)
            .with_initial_timestamp(initial_time)
            .init_chain(consensus)
            .await?;

        test_node.block().execute().await?;

        let client = Arc::new(
            MockClient::new(test_keys::SPEND_KEY.clone())
                .with_sync_to_storage(&storage)
                .await?,
        );

        let notes: Vec<_> = client
            .notes
            .values()
            .filter(|note| {
                note.asset_id() == *BASE_ASSET_ID
                    && note.address() == test_keys::ADDRESS_0.deref().clone()
            })
            .cloned()
            .take(tx_count)
            .collect();
        let mut txs = Vec::with_capacity(tx_count);
        for note in notes {
            let spend = ShieldedInputPlan::new(
                &mut OsRng,
                note.clone(),
                client
                    .position(note.commit())
                    .ok_or_else(|| anyhow!("note position was unknown to mock client"))?,
            );
            let send_amount = Amount::from(1u64);
            let change_amount = note.amount() - send_amount;
            let mut output = ShieldedOutputPlan::new(
                &mut OsRng,
                Value {
                    amount: send_amount,
                    asset_id: note.asset_id(),
                },
                test_keys::ADDRESS_1.deref().clone(),
            );
            let mut change = ShieldedOutputPlan::new(
                &mut OsRng,
                Value {
                    amount: change_amount,
                    asset_id: note.asset_id(),
                },
                note.address(),
            );
            for output in [&mut output, &mut change] {
                output.asset_anchor = spend.asset_anchor;
                output.compliance_anchor = spend.compliance_anchor;
                output.target_timestamp = spend.target_timestamp;
                output.is_regulated = spend.is_regulated;
                output.tx_blinding_nonce = spend.tx_blinding_nonce;
                output.asset_indexed_leaf = spend.asset_indexed_leaf.clone();
                output.asset_path = spend.asset_path.clone();
                output.asset_position = spend.asset_position;
                output.asset_policy = spend.asset_policy.clone();
            }
            let mut plan = TransactionPlan {
                actions: vec![TransferPlan::new(
                    vec![spend.into()],
                    vec![output.into(), change.into()],
                    Fr::from(1u64),
                )
                .expect("valid transfer plan")
                .into()],
                memo: Some(MemoPlan::new(
                    &mut OsRng,
                    MemoPlaintext::blank_memo(test_keys::ADDRESS_0.deref().clone()),
                )),
                detection_data: None,
                fee_funding: None,
                transaction_parameters: TransactionParameters {
                    chain_id: TestNode::<()>::CHAIN_ID.to_string(),
                    ..Default::default()
                },
            }
            .with_populated_detection_data(OsRng, Default::default());

            let tx = client
                .witness_auth_build_with_compliance(&mut plan, storage.latest_snapshot())
                .await?;
            txs.push(tx.encode_to_vec());
        }

        Ok((storage, test_node, txs))
    }

    fn resign_fixture_transaction(tx: &mut Transaction) {
        let binding_signing_key = rdsa::SigningKey::<rdsa::Binding>::from(Fr::from(1u64));
        tx.binding_sig = binding_signing_key.sign_deterministic(tx.auth_hash().as_bytes());
    }

    #[tokio::test]
    async fn artifact_extraction_cannot_bypass_action_stateless_checks() -> Result<()> {
        let action_anchor = tct::Tree::default().root();
        let balance_commitment = shieldd_sdk_asset::Balance::default().commit(Fr::from(1u64));
        let inputs = (0..8)
            .map(|index| shieldd_sdk_shielded_pool::NoteReshapeInputBody {
                nullifier: Nullifier(Fq::from(10u64 + index)),
                rk: rdsa::VerificationKey::from(rdsa::SigningKey::<rdsa::SpendAuth>::from(
                    Fr::from(20u64 + index),
                )),
                encrypted_backref: shieldd_sdk_shielded_pool::EncryptedBackref::try_from(
                    [u8::try_from(index + 1).expect("small index"); 48],
                )
                .expect("fixed-size encrypted backref"),
            })
            .collect();
        let note_reshape = shieldd_sdk_shielded_pool::NoteReshape {
            body: shieldd_sdk_shielded_pool::NoteReshapeBody {
                family_id: shieldd_sdk_shielded_pool::NoteReshapeFamilyId::EightByOne,
                anchor: action_anchor,
                balance_commitment,
                inputs,
                outputs: vec![shieldd_sdk_shielded_pool::NoteReshapeOutputBody {
                    note_payload: shieldd_sdk_shielded_pool::NotePayload {
                        note_commitment: tct::StateCommitment(Fq::from(30u64)),
                        ..shieldd_sdk_shielded_pool::NotePayload::dummy()
                    },
                    wrapped_memo_key: shieldd_sdk_keys::symmetric::WrappedMemoKey([31u8; 48]),
                    ovk_wrapped_key: shieldd_sdk_keys::symmetric::OvkWrappedKey([32u8; 48]),
                }],
            },
            auth_sigs: vec![[0u8; 64].into(); 8],
            proof: shieldd_sdk_shielded_pool::NoteReshapeProof::default(),
        };
        let mut invalid_auth = Transaction {
            transaction_body: shieldd_sdk_transaction::TransactionBody {
                actions: vec![Action::NoteReshape(note_reshape)],
                detection_data: Some(DetectionData {
                    fmd_clues: vec![CluePlan::new(
                        &mut OsRng,
                        test_keys::ADDRESS_0.deref().clone(),
                        1.try_into().expect("valid clue precision"),
                    )
                    .clue()],
                }),
                memo: Some(MemoCiphertext([0u8; MEMO_CIPHERTEXT_LEN_BYTES])),
                ..Default::default()
            },
            anchor: action_anchor,
            ..Default::default()
        };
        resign_fixture_transaction(&mut invalid_auth);

        let mut mismatched_anchor = invalid_auth.clone();
        mismatched_anchor.anchor = tct::Root(tct::structure::Hash::new(Fq::from(987_654u64)));
        let error = match App::build_tx_artifacts_extracted_for_stage_public(
            "artifact_stateless_regression_anchor",
            &[Arc::new(mismatched_anchor)],
        )
        .await
        {
            Ok(_) => panic!("artifact extraction must enforce action/context anchor equality"),
            Err(error) => error,
        };
        assert!(
            format!("{error:#}").contains("body anchor does not match transaction anchor"),
            "unexpected anchor rejection: {error:#}"
        );

        let error = match App::build_tx_artifacts_extracted_for_stage_public(
            "artifact_stateless_regression_auth",
            &[Arc::new(invalid_auth)],
        )
        .await
        {
            Ok(_) => panic!("artifact extraction must verify spend authorization signatures"),
            Err(error) => error,
        };
        assert!(
            format!("{error:#}").contains("auth signature 0 failed to verify"),
            "unexpected authorization rejection: {error:#}"
        );

        let transfer = shieldd_sdk_shielded_pool::Transfer {
            body: shieldd_sdk_shielded_pool::TransferBody {
                anchor: action_anchor,
                balance_commitment,
                inputs: (0..2)
                    .map(|index| shieldd_sdk_shielded_pool::TransferInputBody {
                        nullifier: Nullifier(Fq::from(40u64 + index)),
                        rk: rdsa::VerificationKey::from(rdsa::SigningKey::<rdsa::SpendAuth>::from(
                            Fr::from(5u64 + index),
                        )),
                        encrypted_backref: shieldd_sdk_shielded_pool::EncryptedBackref::dummy(),
                        compliance_ciphertext: if index == 0 { vec![1u8] } else { vec![] },
                    })
                    .collect(),
                outputs: (0..2)
                    .map(|index| shieldd_sdk_shielded_pool::TransferOutputBody {
                        note_payload: shieldd_sdk_shielded_pool::NotePayload {
                            note_commitment: tct::StateCommitment(Fq::from(50u64 + index)),
                            ..shieldd_sdk_shielded_pool::NotePayload::dummy()
                        },
                        wrapped_memo_key: shieldd_sdk_keys::symmetric::WrappedMemoKey(
                            [51u8 + u8::try_from(index).expect("small index"); 48],
                        ),
                        ovk_wrapped_key: shieldd_sdk_keys::symmetric::OvkWrappedKey(
                            [61u8 + u8::try_from(index).expect("small index"); 48],
                        ),
                        compliance_ciphertext: vec![],
                        compliance_metadata: vec![],
                    })
                    .collect(),
                target_timestamp: 0,
                compliance_anchor: tct::StateCommitment(Fq::from(6u64)),
                asset_anchor: tct::StateCommitment(Fq::from(7u64)),
            },
            auth_sigs: vec![[0u8; 64].into(); 2],
            proof: shieldd_sdk_shielded_pool::TransferProof::default(),
        };
        let mut invalid_transport = Transaction {
            transaction_body: shieldd_sdk_transaction::TransactionBody {
                actions: vec![Action::Transfer(transfer)],
                detection_data: Some(DetectionData {
                    fmd_clues: (0..2)
                        .map(|_| {
                            CluePlan::new(
                                &mut OsRng,
                                test_keys::ADDRESS_0.deref().clone(),
                                1.try_into().expect("valid clue precision"),
                            )
                            .clue()
                        })
                        .collect(),
                }),
                memo: Some(MemoCiphertext([0u8; MEMO_CIPHERTEXT_LEN_BYTES])),
                ..Default::default()
            },
            anchor: action_anchor,
            ..Default::default()
        };
        let effect_hash = invalid_transport.context().effect_hash;
        let Action::Transfer(transfer) = &mut invalid_transport.transaction_body.actions[0] else {
            panic!("fixture action must be a transfer");
        };
        for (index, auth_sig) in transfer.auth_sigs.iter_mut().enumerate() {
            *auth_sig = rdsa::SigningKey::<rdsa::SpendAuth>::from(Fr::from(
                5u64 + u64::try_from(index).expect("small index"),
            ))
            .sign_deterministic(effect_hash.as_ref());
        }
        resign_fixture_transaction(&mut invalid_transport);
        let error = match App::build_tx_artifacts_extracted_for_stage_public(
            "artifact_stateless_regression_transport",
            &[Arc::new(invalid_transport)],
        )
        .await
        {
            Ok(_) => panic!("artifact extraction must enforce transfer transport invariants"),
            Err(error) => error,
        };
        assert!(
            format!("{error:#}").contains("compliance ciphertext must be empty"),
            "unexpected transport rejection: {error:#}"
        );

        Ok(())
    }

    #[tokio::test]
    async fn latest_snapshot_supports_parallel_reads() -> Result<()> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let snapshot = storage.latest_snapshot();
        let mut tasks = tokio::task::JoinSet::new();

        for _ in 0..4 {
            let snapshot = snapshot.clone();
            tasks.spawn(async move {
                let _ = snapshot.get_raw("parallel.snapshot.read").await?;
                Ok::<(), anyhow::Error>(())
            });
        }

        while let Some(result) = tasks.join_next().await {
            result??;
        }

        Ok(())
    }

    #[test]
    fn proposal_tx_count_policy_is_fixed_at_boundary() {
        let mut candidates = vec![Bytes::new(); super::MAX_BLOCK_TX_COUNT + 1];
        App::truncate_prepare_candidates(&mut candidates);
        assert_eq!(candidates.len(), super::MAX_BLOCK_TX_COUNT);
        assert!(App::process_proposal_tx_count_allowed(
            super::MAX_BLOCK_TX_COUNT
        ));
        assert!(!App::process_proposal_tx_count_allowed(
            super::MAX_BLOCK_TX_COUNT + 1
        ));
    }

    #[test]
    fn proposal_payload_size_policy_is_fixed_at_boundary() {
        assert_eq!(App::prepare_proposal_payload_limit(-1), 0);
        assert_eq!(App::prepare_proposal_payload_limit(0), 0);
        assert_eq!(
            App::prepare_proposal_payload_limit(super::MAX_BLOCK_TXS_PAYLOAD_BYTES as i64),
            super::MAX_BLOCK_TXS_PAYLOAD_BYTES as u64
        );
        assert_eq!(
            App::prepare_proposal_payload_limit(super::MAX_BLOCK_TXS_PAYLOAD_BYTES as i64 + 1),
            super::MAX_BLOCK_TXS_PAYLOAD_BYTES as u64
        );
        assert!(App::process_proposal_payload_size_allowed(
            super::MAX_BLOCK_TXS_PAYLOAD_BYTES
        ));
        assert!(!App::process_proposal_payload_size_allowed(
            super::MAX_BLOCK_TXS_PAYLOAD_BYTES + 1
        ));
    }

    #[test]
    fn proposal_nullifier_count_policy_is_fixed_at_boundary() {
        assert!(App::block_nullifier_count_allowed(
            super::MAX_BLOCK_NULLIFIER_COUNT
        ));
        assert!(!App::block_nullifier_count_allowed(
            super::MAX_BLOCK_NULLIFIER_COUNT + 1
        ));
        assert!(!App::block_nullifier_count_allowed(usize::MAX));
    }

    #[test]
    fn proof_worker_concurrency_is_bounded_for_all_hardware_sizes() {
        assert_eq!(DeployedProofKey::ALL.len(), 4);
        assert_eq!(App::proof_verify_chunk_size_for_parallelism(1, 0), 1);
        assert_eq!(
            App::proof_verify_chunk_size_for_parallelism(
                super::PROOF_VERIFY_CHUNK_MIN_ITEMS,
                usize::MAX,
            ),
            super::PROOF_VERIFY_CHUNK_MIN_ITEMS
        );
        let item_count =
            super::PROOF_VERIFY_CHUNK_MIN_ITEMS * super::PROOF_VERIFY_MAX_CHUNKS_PER_KEY;
        let chunk_size = App::proof_verify_chunk_size_for_parallelism(item_count, usize::MAX);
        assert_eq!(
            item_count.div_ceil(chunk_size),
            super::PROOF_VERIFY_MAX_CHUNKS_PER_KEY
        );
        let huge_chunk_size = App::proof_verify_chunk_size_for_parallelism(usize::MAX, usize::MAX);
        assert!(usize::MAX.div_ceil(huge_chunk_size) <= super::PROOF_VERIFY_MAX_CHUNKS_PER_KEY);
    }

    #[test]
    fn proposal_transaction_size_policy_is_fixed_at_boundary() {
        assert!(App::transaction_size_allowed(
            super::MAX_TRANSACTION_SIZE_BYTES
        ));
        assert!(!App::transaction_size_allowed(
            super::MAX_TRANSACTION_SIZE_BYTES + 1
        ));
    }

    #[test]
    fn consensus_acceptance_source_has_no_diagnostic_io() {
        let sources = [include_str!("mod.rs"), include_str!("../server/mempool.rs")];
        let forbidden = [
            ["std", "::env"].concat(),
            ["tokio", "::env"].concat(),
            ["std", "::fs"].concat(),
            ["tokio", "::fs"].concat(),
            ["SHIELDD_AGGREGATE", "_DEBUG"].concat(),
            ["Open", "Options"].concat(),
            ["File", "::create"].concat(),
            ["create_dir", "_all"].concat(),
            ["write", "_all"].concat(),
        ];

        for source in sources {
            for token in &forbidden {
                assert!(
                    !source.contains(token),
                    "consensus acceptance source contains forbidden diagnostic I/O token {token}"
                );
            }
        }
    }

    #[tokio::test]
    async fn structured_join_drain_waits_for_siblings_after_error() {
        let sibling_finished = Arc::new(AtomicBool::new(false));
        let sibling_finished_for_task = sibling_finished.clone();
        let mut tasks = tokio::task::JoinSet::new();
        tasks.spawn(async { Err::<(), anyhow::Error>(anyhow!("injected early failure")) });
        tasks.spawn_blocking(move || {
            std::thread::sleep(Duration::from_millis(50));
            sibling_finished_for_task.store(true, Ordering::SeqCst);
            Ok::<(), anyhow::Error>(())
        });

        let result = App::drain_joinset_results(&mut tasks, "injected task panic").await;
        assert!(result.is_err());
        assert!(
            sibling_finished.load(Ordering::SeqCst),
            "drain must await sibling work before returning the first error"
        );
    }

    #[tokio::test]
    async fn oversized_checktx_bytes_reject_before_decode_or_cache() -> Result<()> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let mut app = App::new(storage.latest_snapshot());
        let cache = StatelessCache::new();
        let maximum_transaction_size = super::MAX_TRANSACTION_SIZE_BYTES;
        let oversized = vec![
            0xff;
            maximum_transaction_size
                .checked_add(1)
                .context("maximum transaction size must fit in usize")?
        ];

        let error = app
            .deliver_tx_bytes(&oversized, Some(&cache))
            .await
            .expect_err("oversized CheckTx bytes must reject before decoding or cache admission");
        assert_eq!(
            error.to_string(),
            format!(
                "transaction size {} exceeds maximum {maximum_transaction_size}",
                oversized.len()
            ),
            "oversized CheckTx rejection must come from the pre-decode size guard"
        );

        Ok(())
    }

    #[tokio::test(flavor = "multi_thread")]
    async fn checktx_cache_hit_and_miss_match_for_supported_tx() -> Result<()> {
        let (storage, _node, txs) = setup_test_txs(1).await?;
        let tx_bytes = txs.first().expect("fixture transaction").clone();
        let cache = StatelessCache::new();

        let mut miss_app = App::new(storage.latest_snapshot());
        let (miss_events, miss_profile) = miss_app
            .deliver_tx_bytes_impl_profiled(&tx_bytes, Some(&cache))
            .await?;
        assert_eq!(miss_profile.cache_hit_count, 0);
        assert!(
            miss_app.state.get_current_source().is_none(),
            "successful canonical execution must clear the ambient transaction source"
        );
        assert!(
            miss_events
                .iter()
                .any(|event| event.kind.contains("EventBroadcastClue")),
            "canonical execution must record detection clues"
        );

        let mut hit_app = App::new(storage.latest_snapshot());
        let (hit_events, hit_profile) = hit_app
            .deliver_tx_bytes_impl_profiled(&tx_bytes, Some(&cache))
            .await?;
        assert_eq!(hit_profile.cache_hit_count, 1);
        assert_eq!(miss_events, hit_events);
        assert!(
            hit_app.state.get_current_source().is_none(),
            "cached canonical execution must clear the ambient transaction source"
        );

        Ok(())
    }

    #[tokio::test(flavor = "multi_thread")]
    async fn clue_record_failure_rolls_back_all_transaction_effects_and_source() -> Result<()> {
        let (storage, _node, txs) = setup_test_txs(1).await?;
        let tx_bytes = txs.first().expect("fixture transaction").clone();
        let mut app = App::new(storage.latest_snapshot());
        Arc::get_mut(&mut app.state)
            .expect("new app state must be uniquely owned")
            .put_raw(
                "shielded_pool/fmd_clue_count/current".to_owned(),
                vec![0xff],
            );

        let _error = app
            .deliver_tx_bytes_impl_profiled(&tx_bytes, Some(&StatelessCache::new()))
            .await
            .expect_err("malformed clue count must fail clue recording");
        assert!(app.state.get_current_source().is_none());
        assert!(app.state.pending_nullifiers().is_empty());
        assert!(app.state.pending_note_payloads().is_empty());

        Ok(())
    }

    #[tokio::test]
    async fn batched_nullify_matches_repeated_nullify_and_preserves_pending_order() -> Result<()> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let snapshot = storage.latest_snapshot();

        let nullifiers = vec![
            Nullifier(Fq::from(11u64)),
            Nullifier(Fq::from(12u64)),
            Nullifier(Fq::from(13u64)),
        ];
        let source = CommitmentSource::Transaction {
            id: Some([7u8; 32]),
        };

        let mut repeated = StateDelta::new(snapshot.clone());
        repeated.put_block_height(42);
        for nullifier in &nullifiers {
            repeated.nullify(*nullifier, source.clone()).await?;
        }

        let mut batched = StateDelta::new(snapshot);
        batched.put_block_height(42);
        batched.nullify_all(&nullifiers, source).await?;

        assert_eq!(repeated.pending_nullifiers(), batched.pending_nullifiers());

        for nullifier in &nullifiers {
            assert_eq!(
                repeated.spend_info(*nullifier).await?,
                batched.spend_info(*nullifier).await?,
            );
        }

        Ok(())
    }

    #[tokio::test]
    async fn proposal_batch_nullify_matches_sequential_and_preserves_sources() -> Result<()> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let snapshot = storage.latest_snapshot();

        let entries = vec![
            (
                Nullifier(Fq::from(21u64)),
                CommitmentSource::Transaction {
                    id: Some([1u8; 32]),
                },
            ),
            (
                Nullifier(Fq::from(22u64)),
                CommitmentSource::Transaction {
                    id: Some([2u8; 32]),
                },
            ),
            (
                Nullifier(Fq::from(23u64)),
                CommitmentSource::Transaction {
                    id: Some([1u8; 32]),
                },
            ),
        ];

        let mut sequential = StateDelta::new(snapshot.clone());
        sequential.put_block_height(42);
        for (nullifier, source) in &entries {
            sequential.nullify(*nullifier, source.clone()).await?;
        }

        let mut proposal_batch = StateDelta::new(snapshot);
        proposal_batch.put_block_height(42);
        let _profile = proposal_batch.nullify_proposal_batch(&entries).await?;

        assert_eq!(
            sequential.pending_nullifiers(),
            proposal_batch.pending_nullifiers()
        );

        for (nullifier, _) in &entries {
            assert_eq!(
                sequential.spend_info(*nullifier).await?,
                proposal_batch.spend_info(*nullifier).await?,
            );
        }

        Ok(())
    }

    #[tokio::test]
    async fn app_readiness_fails_on_corrupted_nullifier_tree_nv() -> Result<()> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        shieldd_sdk_sct::nullifier_tree::insert_batch(
            &mut state,
            [(
                Nullifier(Fq::from(91u64)),
                NullificationInfo {
                    id: [9u8; 32],
                    spend_height: 7,
                },
            )],
        )
        .await?;
        storage.commit(state).await?;
        assert!(App::is_ready(storage.latest_snapshot()).await);

        let mut corrupt = StateDelta::new(storage.latest_snapshot());
        let mut stream =
            corrupt.nonverifiable_prefix_raw(
                shieldd_sdk_sct::state_key::nullifier_set::tree_node_prefix(),
            );
        let mut keys = Vec::new();
        while let Some(item) = stream.next().await {
            let (key, _) = item?;
            keys.push(key);
        }
        drop(stream);
        for key in keys {
            corrupt.nonverifiable_delete(key);
        }
        storage.commit(corrupt).await?;

        assert!(!App::is_ready(storage.latest_snapshot()).await);

        Ok(())
    }

    #[tokio::test]
    async fn app_readiness_fails_on_corrupted_sct_nv() -> Result<()> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        state.put_sct_params(SctParameters {
            epoch_duration: 10,
            sct_anchor_retention_blocks: 100,
        });
        state.put_block_height(1);
        state.put_block_timestamp(1, Time::parse_from_rfc3339("2026-01-01T00:00:00Z")?);
        state.put_epoch_by_height(
            1,
            Epoch {
                index: 0,
                start_height: 0,
            },
        );

        let mut tree = tct::Tree::new();
        tree.insert(
            tct::Witness::Forget,
            tct::StateCommitment::try_from([11u8; 32])?,
        )?;
        let block_root = tree.end_block()?;
        state.write_sct(1, tree, block_root, None).await;
        storage.commit(state).await?;
        assert!(App::is_ready(storage.latest_snapshot()).await);

        let mut corrupt = StateDelta::new(storage.latest_snapshot());
        delete_nv_prefix(
            &mut corrupt,
            shieldd_sdk_sct::state_key::tree::incremental_prefix().as_bytes(),
        )
        .await?;
        storage.commit(corrupt).await?;

        assert!(!App::is_ready(storage.latest_snapshot()).await);

        Ok(())
    }

    #[tokio::test]
    async fn app_readiness_fails_on_corrupted_compliance_nv() -> Result<()> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let mut state = StateDelta::new(storage.latest_snapshot());
        state
            .test_only_add_compliance_leaf(ComplianceLeaf::new(
                Address::dummy(&mut rand::thread_rng()),
                asset::Id(Fq::from(123u64)),
                Fq::from(7u64),
            ))
            .await?;
        state
            .test_only_register_asset(
                asset::Id(Fq::from(456u64)),
                AssetPolicy::simple(
                    decaf377::Element::GENERATOR,
                    u128::MAX,
                    decaf377::Element::GENERATOR,
                ),
                true,
            )
            .await?;
        storage.commit(state).await?;
        assert!(App::is_ready(storage.latest_snapshot()).await);

        let mut corrupt = StateDelta::new(storage.latest_snapshot());
        delete_nv_prefix(
            &mut corrupt,
            shieldd_sdk_compliance::state_key::tree_storage::user_node_prefix().as_bytes(),
        )
        .await?;
        storage.commit(corrupt).await?;

        assert!(!App::is_ready(storage.latest_snapshot()).await);

        Ok(())
    }

    #[tokio::test]
    async fn deferred_sct_log_reserves_contiguous_positions() -> Result<()> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let snapshot = storage.latest_snapshot();
        let mut log = BlockSctAppendLog::default();

        let first = log
            .reserve_positions(&snapshot, vec![rolled_up_payload(1), rolled_up_payload(2)])
            .await?;
        let second = log
            .reserve_positions(&snapshot, vec![rolled_up_payload(3)])
            .await?;

        assert_eq!(first[0].0, tct::Position::from(0u64));
        assert_eq!(first[1].0, tct::Position::from(1u64));
        assert_eq!(second[0].0, tct::Position::from(2u64));

        Ok(())
    }

    #[tokio::test]
    async fn deferred_sct_log_materializes_into_tree_and_pending_payloads() -> Result<()> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let mut app = App::new(storage.latest_snapshot());
        let mut state_tx = StateDelta::new(app.state.clone());

        app.pending_sct_append_log.append_positioned(vec![
            (tct::Position::from(0u64), rolled_up_payload(10)),
            (tct::Position::from(1u64), rolled_up_payload(11)),
        ]);

        app.materialize_pending_sct_append_log(&mut state_tx)
            .await?;

        let pending = state_tx.pending_rolled_up_payloads();
        assert_eq!(pending.len(), 2);
        assert_eq!(pending[0].0, tct::Position::from(0u64));
        assert_eq!(pending[1].0, tct::Position::from(1u64));
        assert_eq!(
            state_tx.get_sct().await.position(),
            Some(tct::Position::from(2u64))
        );

        Ok(())
    }

    #[tokio::test]
    async fn deferred_sct_log_returns_error_on_position_drift() -> Result<()> {
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let mut app = App::new(storage.latest_snapshot());
        let mut state_tx = StateDelta::new(app.state.clone());

        state_tx
            .add_sct_commitment(
                tct::StateCommitment(Fq::from(99u64)),
                CommitmentSource::transaction(),
            )
            .await?;
        app.pending_sct_append_log
            .append_positioned(vec![(tct::Position::from(0u64), rolled_up_payload(100))]);

        let err = app
            .materialize_pending_sct_append_log(&mut state_tx)
            .await
            .expect_err("position drift should return an explicit error");
        assert!(err.to_string().contains("position drifted"));
        assert_eq!(
            app.pending_sct_append_log.entries.len(),
            1,
            "failed materialization must retain the deferred SCT entry for retry"
        );

        Ok(())
    }

    #[tokio::test]
    async fn checktx_no_index_does_not_record_tx_log_entries_on_app_fork() -> Result<()> {
        let (storage, _node, txs) = setup_test_txs(1).await?;
        let tx_bytes = txs
            .into_iter()
            .next()
            .expect("fixture should return one tx");

        let mut app = App::new(storage.latest_snapshot());
        app.set_block_tx_indexing_mode(BlockTxIndexingMode::NoIndex);
        let cache = StatelessCache::new();
        app.deliver_tx_bytes_v2(tx_bytes.as_slice(), Some(&cache))
            .await?;

        let height = app.state.get_block_height().await?;
        let tx_log = app.state.transactions_by_height(height).await?;
        assert!(
            tx_log.transactions.is_empty(),
            "checktx app fork should not stage tx-log entries in NoIndex mode"
        );
        assert!(
            app.deferred_block_transactions.is_empty(),
            "NoIndex mode should not accumulate deferred tx-log entries"
        );

        Ok(())
    }

    #[tokio::test]
    async fn deferred_batch_persists_full_tx_log_by_block_end() -> Result<()> {
        let (storage, mut node, txs) = setup_test_txs(2).await?;
        let expected_hashes = txs
            .iter()
            .map(|tx| hex::encode(sha2::Sha256::digest(tx.as_slice())))
            .collect::<Vec<_>>();

        node.block().with_data(txs).execute().await?;

        let snapshot = storage.latest_snapshot();
        let height = snapshot.get_block_height().await?;
        let tx_log = snapshot.transactions_by_height(height).await?;
        assert_eq!(tx_log.transactions.len(), 2);

        let actual_hashes = tx_log
            .transactions
            .into_iter()
            .map(Transaction::try_from)
            .collect::<Result<Vec<_>, _>>()?
            .into_iter()
            .map(|tx| hex::encode(sha2::Sha256::digest(tx.encode_to_vec().as_slice())))
            .collect::<Vec<_>>();

        assert_eq!(actual_hashes, expected_hashes);

        Ok(())
    }

    #[tokio::test]
    async fn prepare_proposal_verifies_and_upgrades_extracted_cache_entry() -> Result<()> {
        let (storage, _node, txs) = setup_test_txs(1).await?;
        let tx_bytes = txs
            .into_iter()
            .next()
            .expect("fixture should return one tx");
        let tx_hash: [u8; 32] = sha2::Sha256::digest(tx_bytes.as_slice()).into();
        let cache = StatelessCache::new();

        let tx = Arc::new(Transaction::decode(tx_bytes.as_slice())?);
        let (extracted, _) =
            App::build_tx_artifact_extracted_for_stage("test_extracted_seed", tx.clone()).await?;
        cache.insert_extracted(tx_bytes.as_slice(), extracted.clone())?;

        assert!(!extracted.proof_items().is_empty());

        let mut proposer = App::new(storage.latest_snapshot());
        proposer.set_block_tx_indexing_mode(BlockTxIndexingMode::DeferredBatch);
        let proposal = request::PrepareProposal {
            txs: vec![tx_bytes.clone().into()],
            max_tx_bytes: 1024 * 1024,
            local_last_commit: None,
            misbehavior: Vec::new(),
            height: block::Height::from(1u32),
            time: Time::unix_epoch(),
            next_validators_hash: Hash::None,
            proposer_address: account::Id::new([0u8; 20]),
        };

        let (prepared, _profile) = proposer
            .prepare_proposal_v2_profiled(proposal, Some(&cache))
            .await;
        assert_eq!(prepared.txs.len(), 1);

        match cache.get(&tx_hash, tx_bytes.as_slice()) {
            Some(CacheEntry::Groth16Verified(_)) => {}
            _ => anyhow::bail!("expected Groth16-verified cache entry after PrepareProposal"),
        }

        Ok(())
    }
}
