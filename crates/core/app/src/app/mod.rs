mod batch_input;
#[cfg(any(test, feature = "benchmark-helpers"))]
mod benchmark_config;
mod candidate;
mod delivery;
mod host;
mod lifecycle;
pub use batch_input::{BatchCandidate, BatchPreparation, BatchVerdict, PreparedBatch};

pub use self::host::{
    HostBlock, HostCommit, HostCommittedState, HostDepositResult, HostExecution,
    HostExecutionPhase, HostExecutionResponse, HostNoteSeizureResult, HostTxResponse,
    HostWithdrawal,
};
pub use candidate::{candidate_digest_from_hashes, CandidateEnvelope};

use std::collections::{BTreeMap, HashSet, VecDeque};
use std::sync::Arc;
use std::time::{Duration, Instant};

use anyhow::{Context, Result};
use async_trait::async_trait;
use cnidarium::{ArcStateDeltaExt, Snapshot, StateDelta, StateRead, StateWrite, Storage};
use cnidarium_component::Component;
use commonware_parallel::Sequential;
use jmt::RootHash;
use prost::bytes::Bytes;
use prost::Message as _;
#[cfg(any(test, feature = "benchmark-helpers"))]
use serde::{Deserialize, Serialize};
use shieldd_sdk_circuits::proof::Family;
use shieldd_sdk_compact_block::component::CompactBlockManager;
use shieldd_sdk_compliance::params::StateReadExt as _;
use shieldd_sdk_compliance::registry::ComplianceRegistryRead as _;
use shieldd_sdk_compliance::Compliance;
use shieldd_sdk_fee::component::{clear_block_fee_price_cache, FeeComponent, StateReadExt as _};
use shieldd_sdk_proof_params::pari::{Registry, Verification, Verified};
use shieldd_sdk_proto::core::app::v1::TransactionsByHeightResponse;
use shieldd_sdk_sct::component::clock::EpochRead;
use shieldd_sdk_sct::component::sct::Sct;
use shieldd_sdk_sct::component::tree::SctManager as _;
use shieldd_sdk_sct::component::tree::SctRead as _;
use shieldd_sdk_sct::component::StateReadExt as _;
use shieldd_sdk_sct::epoch::Epoch;
use shieldd_sdk_shielded_pool::component::{
    note_reshape_check_stateless_and_extract, shielded_host_withdrawal_check_stateless_and_extract,
    transfer_check_stateless_and_extract, ShieldedPool, StateReadExt as _, StateWriteExt as _,
};
use shieldd_sdk_transaction::{Action, FeeFunding, Transaction};
use shieldd_sdk_txhash::TransactionContext;
use tendermint::abci::{self, Event};
use tendermint::Time;
use tracing::{instrument, Instrument};

use crate::action_handler::transaction::{
    check_and_execute, check_historical_with_context, verify_historical_nullifier_proof,
    HistoricalCheckContext,
};
use crate::action_handler::AppActionHandler;
use crate::block_tx_indexing::BlockTxIndexingMode;
use crate::genesis::AppState;

use crate::metrics;
use crate::params::AppParameters;
use crate::stateless_cache::{CacheEntry, StatelessCache, TxArtifact, VerifiedTxArtifact};
use sha2::Digest as _;

pub mod state_key;

/// The inter-block state being written to by the application.
type InterBlockState = Arc<StateDelta<Snapshot>>;

/// The default maximum batch payload size (1 MB)
pub const MAX_BLOCK_TXS_PAYLOAD_BYTES: usize = 1024 * 1024;

/// The maximum size of a single individual transaction (96KB).
pub const MAX_TRANSACTION_SIZE_BYTES: usize =
    shieldd_sdk_proto::core::app::v1::MAX_TRANSACTION_BYTES;

/// The maximum number of transactions in one proposal candidate set.
pub const MAX_BLOCK_TX_COUNT: usize = 4_096;

/// Maximum number of body actions plus an optional fee-funding action.
pub const MAX_TRANSACTION_ACTION_COUNT: usize = 512;

/// Maximum number of proof-bound nullifiers in one transaction.
pub const MAX_TRANSACTION_NULLIFIER_COUNT: usize = 256;

/// The maximum number of proof-bound nullifiers in one block.
pub const MAX_BLOCK_NULLIFIER_COUNT: usize =
    shieldd_sdk_sct::component::tree::MAX_NULLIFIERS_PER_BLOCK;

fn extract_fee_funding_proof_item(
    fee_funding: &FeeFunding,
    context: &TransactionContext,
) -> Result<Verification> {
    transfer_check_stateless_and_extract(
        &fee_funding.transfer,
        context,
        shieldd_sdk_shielded_pool::TransferProofContext::FeeFunding,
    )
    .context("fee funding transfer stateless extraction failed")
}

fn max_transaction_size_bytes() -> usize {
    #[cfg(any(test, feature = "benchmark-helpers"))]
    {
        return benchmark_config::max_transaction_size_bytes_override();
    }
    #[cfg(not(any(test, feature = "benchmark-helpers")))]
    {
        MAX_TRANSACTION_SIZE_BYTES
    }
}

fn truncate_prepare_candidates<T>(candidates: &mut Vec<T>) {
    candidates.truncate(MAX_BLOCK_TX_COUNT);
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

fn block_nullifier_count_allowed(nullifier_count: usize) -> bool {
    nullifier_count <= MAX_BLOCK_NULLIFIER_COUNT
}

fn transaction_size_allowed(transaction_size: usize) -> bool {
    transaction_size <= max_transaction_size_bytes()
}

#[derive(Clone, Debug)]
#[cfg(any(test, feature = "benchmark-helpers"))]
struct BenchBlockContext {
    height: u64,
    time: Time,
}

#[derive(Clone)]
enum CandidateData {
    ExtractedArtifact(Arc<TxArtifact>),
    VerifiedArtifact(Arc<VerifiedTxArtifact>),
}

#[derive(Clone)]
struct Candidate {
    bytes: Bytes,
    data: CandidateData,
}

#[derive(Clone, Debug, Default, Serialize, Deserialize)]
#[cfg(any(test, feature = "benchmark-helpers"))]
pub struct ExecutionBlockProfile {
    pub block_tx_count: usize,
    pub begin_block_ms: f64,
    pub deliver_txs_wall_ms: f64,
    pub end_block_ms: f64,
    pub commit_ms: f64,
    pub execute_tx_ms: f64,
}

/// The Shieldd application, written as a bundle of [`Component`]s.
///
/// The [`App`] is not a [`Component`], but
/// it constructs the components and exposes a [`commit`](App::commit) that
/// commits the changes to the persistent storage and resets its subcomponents.
pub struct App {
    #[cfg(test)]
    commit_extracted: Option<Arc<tokio::sync::Notify>>,
    #[cfg(test)]
    historical_check_gate: Option<Arc<delivery::HistoricalCheckGate>>,
    state: InterBlockState,
    committed_snapshot: Snapshot,
    snapshot_version: u64,
    block_tx_indexing_mode: BlockTxIndexingMode,
    deferred_block_transactions: Vec<shieldd_sdk_proto::core::transaction::v1::Transaction>,
    registry: Arc<Registry>,
}

impl App {
    #[cfg(any(test, feature = "benchmark-helpers"))]
    async fn benchmark_block_context(&self) -> Result<BenchBlockContext> {
        let next_height = self.state.get_block_height().await?.saturating_add(1);
        let time = self
            .state
            .get_current_block_timestamp()
            .await?
            .checked_add(Duration::from_secs(1))
            .context("execution benchmark timestamp overflow")?;
        Ok(BenchBlockContext {
            height: next_height,
            time,
        })
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    fn process_proposal_request_from_envelope(
        context: &BenchBlockContext,
        envelope: &CandidateEnvelope,
    ) -> BatchCandidate {
        let txs = envelope
            .txs
            .iter()
            .cloned()
            .map(Bytes::from)
            .collect::<Vec<_>>();
        BatchCandidate {
            height: context.height,
            txs,
        }
    }

    fn total_proof_count(proof_items: &BTreeMap<Family, Vec<Verification>>) -> usize {
        proof_items.values().map(Vec::len).sum()
    }

    fn merge_artifact_proof_items(
        artifacts: &[Arc<TxArtifact>],
    ) -> BTreeMap<Family, Vec<Verification>> {
        let mut proof_items = BTreeMap::<Family, Vec<Verification>>::new();
        for artifact in artifacts {
            for (&family, items) in &artifact.proof_items {
                if items.is_empty() {
                    continue;
                }
                proof_items
                    .entry(family)
                    .or_default()
                    .extend(items.iter().cloned());
            }
        }
        proof_items
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

    async fn build_tx_artifacts_extracted(
        txs: &[Arc<Transaction>],
    ) -> Result<Vec<Arc<TxArtifact>>> {
        let txs = txs.to_vec();
        let handle = tokio::runtime::Handle::current();
        let span = tracing::Span::current();
        tokio::task::spawn_blocking(move || {
            span.in_scope(|| handle.block_on(Self::extract_tx_artifacts(&txs)))
        })
        .await
        .context("stateless extraction task panicked")?
    }

    async fn extract_tx_artifacts(txs: &[Arc<Transaction>]) -> Result<Vec<Arc<TxArtifact>>> {
        use cnidarium_component::ActionHandler as _;

        let mut artifacts = Vec::with_capacity(txs.len());
        for tx in txs {
            crate::action_handler::transaction::validate_transaction_envelope(tx)?;
            let context = tx.context();
            let mut proof_items = BTreeMap::<Family, Vec<Verification>>::new();
            for action in tx.actions() {
                let item = match action {
                    Action::Transfer(transfer) => transfer_check_stateless_and_extract(
                        transfer,
                        &context,
                        shieldd_sdk_shielded_pool::TransferProofContext::Ordinary,
                    )
                    .context("transfer stateless extraction failed")?,
                    Action::ShieldedHostWithdrawal(withdrawal) => {
                        shielded_host_withdrawal_check_stateless_and_extract(withdrawal, &context)
                            .context("shielded host withdrawal stateless extraction failed")?
                    }
                    Action::NoteReshape(reshape) => {
                        note_reshape_check_stateless_and_extract(reshape, &context)
                            .context("note reshape stateless extraction failed")?
                    }
                    Action::ComplianceRegisterAsset(action) => {
                        action.check_stateless(()).await?;
                        continue;
                    }
                    Action::ComplianceRegisterUser(action) => {
                        action.check_stateless(()).await?;
                        continue;
                    }
                };
                proof_items.entry(item.family).or_default().push(item);
            }
            if let Some(fee_funding) = &tx.transaction_body.fee_funding {
                let item = extract_fee_funding_proof_item(fee_funding, &context)?;
                proof_items.entry(item.family).or_default().push(item);
            }
            let total_proof_count = Self::total_proof_count(&proof_items);
            artifacts.push(Arc::new(TxArtifact {
                tx: tx.clone(),
                proof_items,
                spend_nullifiers: tx.spent_nullifiers().collect(),
                total_proof_count,
            }));
        }
        Ok(artifacts)
    }

    async fn build_tx_artifacts(
        registry: Arc<Registry>,
        txs: &[Arc<Transaction>],
    ) -> Result<Vec<Arc<VerifiedTxArtifact>>> {
        let txs = txs.to_vec();
        let handle = tokio::runtime::Handle::current();
        let span = tracing::Span::current();
        tokio::task::spawn_blocking(move || {
            span.in_scope(|| {
                let artifacts = handle.block_on(Self::extract_tx_artifacts(&txs))?;
                Self::independently_verify_artifacts(registry, artifacts)
            })
        })
        .await
        .context("stateless verification task panicked")?
    }

    async fn build_tx_artifacts_for_stage(
        registry: Arc<Registry>,
        stage: &'static str,
        txs: &[Arc<Transaction>],
    ) -> Result<Vec<Arc<VerifiedTxArtifact>>> {
        let start = Instant::now();
        let result = Self::build_tx_artifacts(registry.clone(), txs).await;
        Self::record_artifact_build(stage, txs.len(), start.elapsed(), result.is_ok());
        result
    }

    async fn build_tx_artifact_for_stage(
        registry: Arc<Registry>,
        stage: &'static str,
        tx: Arc<Transaction>,
    ) -> Result<Arc<VerifiedTxArtifact>> {
        let mut artifacts =
            Self::build_tx_artifacts_for_stage(registry, stage, std::slice::from_ref(&tx)).await?;
        artifacts
            .pop()
            .context("single verified transaction artifact missing")
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn build_tx_artifacts_extracted_for_stage_public(
        stage: &'static str,
        txs: &[Arc<Transaction>],
    ) -> Result<Vec<Arc<TxArtifact>>> {
        let start = Instant::now();
        let result = Self::build_tx_artifacts_extracted(txs).await;
        Self::record_artifact_build(stage, txs.len(), start.elapsed(), result.is_ok());
        let artifacts = result?;
        Ok(artifacts)
    }

    async fn verify_tx_artifacts_for_stage(
        registry: Arc<Registry>,
        stage: &'static str,
        artifacts: &[Arc<TxArtifact>],
    ) -> Result<Vec<Arc<VerifiedTxArtifact>>> {
        let start = Instant::now();
        let tx_count = artifacts.len();
        let artifacts = artifacts.to_vec();
        let result = tokio::task::spawn_blocking(move || {
            let capabilities = Self::merge_artifact_proof_items(&artifacts)
                .into_iter()
                .map(|(family, items)| {
                    Ok((
                        family,
                        VecDeque::from(registry.verify_items(&items, &Sequential)?),
                    ))
                })
                .collect::<Result<BTreeMap<_, _>>>()?;
            Self::attach_verified_capabilities(registry, artifacts, capabilities)
        })
        .await
        .context("Pari batch verification task panicked")?;
        Self::record_artifact_build(stage, tx_count, start.elapsed(), result.is_ok());
        result
    }

    /// Verifies extracted proofs in exact-family Pari batches.
    /// Amortizes the MSM cost across all proofs in the slice.
    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn batch_verify_artifacts_for_bench(
        registry: Arc<Registry>,
        artifacts: &[Arc<TxArtifact>],
    ) -> Result<()> {
        Self::verify_tx_artifacts_for_stage(registry, "bench_batch", artifacts).await?;
        Ok(())
    }

    fn independently_verify_artifacts(
        registry: Arc<Registry>,
        artifacts: Vec<Arc<TxArtifact>>,
    ) -> Result<Vec<Arc<VerifiedTxArtifact>>> {
        let capabilities = Self::merge_artifact_proof_items(&artifacts)
            .into_iter()
            .map(|(family, items)| {
                let capabilities = items
                    .iter()
                    .map(|item| registry.verify_item(item))
                    .collect::<Result<Vec<_>>>()?;
                Ok((family, VecDeque::from(capabilities)))
            })
            .collect::<Result<_>>()?;
        Self::attach_verified_capabilities(registry, artifacts, capabilities)
    }

    fn attach_verified_capabilities(
        registry: Arc<Registry>,
        artifacts: Vec<Arc<TxArtifact>>,
        mut capabilities: BTreeMap<Family, VecDeque<Verified>>,
    ) -> Result<Vec<Arc<VerifiedTxArtifact>>> {
        let verified = artifacts
            .into_iter()
            .map(|artifact| {
                VerifiedTxArtifact::take_family_capabilities(artifact, &mut capabilities, &registry)
                    .map(Arc::new)
            })
            .collect::<Result<Vec<_>>>()?;
        anyhow::ensure!(
            capabilities.values().all(VecDeque::is_empty),
            "verified proof capabilities remain after exact transaction-slot assignment"
        );
        Ok(verified)
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn process_candidate_envelope(
        &mut self,
        envelope: &CandidateEnvelope,
        stateless_cache: Option<&StatelessCache>,
    ) -> Result<BatchVerdict> {
        let context = self.benchmark_block_context().await?;
        let proposal = Self::process_proposal_request_from_envelope(&context, envelope);
        envelope.validate()?;

        Ok(self.validate_batch(proposal, stateless_cache, false).await)
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub async fn execute_validated_candidate_envelope_profiled(
        &mut self,
        envelope: &CandidateEnvelope,
        storage: Storage,
    ) -> Result<ExecutionBlockProfile> {
        envelope.validate()?;
        let context = self.benchmark_block_context().await?;
        let begin_block = cnidarium_component::BlockContext {
            height: context.height,
            time: context.time,
        };
        let mut profile = ExecutionBlockProfile {
            block_tx_count: envelope.block_tx_count,
            ..Default::default()
        };

        let begin_block_start = Instant::now();
        let _events = self.begin_block(&begin_block).await;
        profile.begin_block_ms = begin_block_start.elapsed().as_secs_f64() * 1000.0;

        let decoded_txs = envelope
            .txs
            .iter()
            .enumerate()
            .map(|(index, tx_bytes)| {
                Transaction::decode_canonical(tx_bytes.as_slice())
                    .map(Arc::new)
                    .with_context(|| format!("decoding execution benchmark tx ordinal {index}"))
            })
            .collect::<Result<Vec<_>>>()?;

        let extracted_artifacts = Self::build_tx_artifacts_extracted(&decoded_txs).await?;
        let verified_artifacts = Self::verify_tx_artifacts_for_stage(
            self.registry.clone(),
            "candidate",
            &extracted_artifacts,
        )
        .await?;

        let historical_context = HistoricalCheckContext::load(Arc::as_ref(&self.state)).await?;
        let deliver_txs_start = Instant::now();
        for artifact in verified_artifacts {
            let execute_tx_start = Instant::now();
            let _events = self
                .deliver_tx_with_verified_stateless(artifact, Some(&historical_context))
                .await?;
            profile.execute_tx_ms += execute_tx_start.elapsed().as_secs_f64() * 1000.0;
        }
        profile.deliver_txs_wall_ms = deliver_txs_start.elapsed().as_secs_f64() * 1000.0;

        let end_block_start = Instant::now();
        let _events = self.end_block(context.height).await;
        profile.end_block_ms = end_block_start.elapsed().as_secs_f64() * 1000.0;

        let commit_start = Instant::now();
        let _root_hash = self.commit(storage).await?;
        profile.commit_ms = commit_start.elapsed().as_secs_f64() * 1000.0;

        Ok(profile)
    }

    #[cfg(any(test, feature = "benchmark-helpers"))]
    pub fn candidate_envelope_from_prepared_proposal_public(
        prepared: &PreparedBatch,
        source_builder_label: impl Into<String>,
    ) -> Result<CandidateEnvelope> {
        CandidateEnvelope::new(
            prepared.txs.iter().map(|tx| tx.to_vec()).collect(),
            source_builder_label.into(),
        )
    }

    fn ensure_unique_spend_nullifiers_from_artifacts(artifacts: &[Arc<TxArtifact>]) -> Result<()> {
        let mut seen = HashSet::new();
        for artifact in artifacts {
            for &nullifier in &artifact.spend_nullifiers {
                if !seen.insert(nullifier) {
                    anyhow::bail!("duplicate spend nullifier in proposal");
                }
            }
        }
        Ok(())
    }

    fn ensure_unique_volume_nullifiers_from_artifacts(artifacts: &[Arc<TxArtifact>]) -> Result<()> {
        let mut seen = HashSet::new();
        for artifact in artifacts {
            for scoped in artifact.tx.volume_nullifiers() {
                anyhow::ensure!(
                    seen.insert(scoped),
                    "duplicate daily volume nullifier in proposal"
                );
            }
            if let Some(fee_funding) = &artifact.tx.transaction_body.fee_funding {
                anyhow::ensure!(
                    fee_funding.transfer.body.proof_context
                        == shieldd_sdk_shielded_pool::TransferProofContext::FeeFunding,
                    "fee funding transfer must use fee-funding proof context"
                );
            }
        }
        Ok(())
    }

    async fn prepare_proposal_batched(
        &mut self,
        txs: Vec<Bytes>,
        max_proposal_size_bytes: u64,
        stateless_cache: Option<&StatelessCache>,
        allow_oversized_proposal: bool,
    ) -> Result<Vec<Bytes>> {
        if txs.is_empty() || (!allow_oversized_proposal && max_proposal_size_bytes == 0) {
            return Ok(Vec::new());
        }
        let historical_context = HistoricalCheckContext::load(Arc::as_ref(&self.state)).await?;
        let mut included = Vec::new();
        let mut payload_size = 0u64;
        let mut nullifier_count = 0usize;
        let mut txs = txs.into_iter().peekable();
        while txs.peek().is_some()
            && (allow_oversized_proposal || payload_size < max_proposal_size_bytes)
        {
            let mut candidates = Vec::new();
            for bytes in txs.by_ref().take(32) {
                if !transaction_size_allowed(bytes.len())
                    || (!allow_oversized_proposal
                        && bytes.len() as u64
                            > max_proposal_size_bytes.saturating_sub(payload_size))
                {
                    continue;
                }
                let hash: [u8; 32] = sha2::Sha256::digest(bytes.as_ref()).into();
                match stateless_cache.and_then(|cache| cache.get(self.registry.id(), &hash, &bytes))
                {
                    Some(CacheEntry::Invalid) => continue,
                    Some(CacheEntry::FullyVerified(artifact)) => {
                        Self::record_artifact_reuse("prepare_proposal");
                        candidates.push(Candidate {
                            bytes,
                            data: CandidateData::VerifiedArtifact(artifact),
                        });
                        continue;
                    }
                    None => {}
                }
                let extracted = async {
                    let tx = Arc::new(Transaction::decode_canonical(bytes.as_ref())?);
                    Self::build_tx_artifacts_extracted(&[tx])
                        .await?
                        .pop()
                        .context("missing extracted candidate")
                }
                .await;
                match extracted {
                    Ok(artifact) => candidates.push(Candidate {
                        bytes,
                        data: CandidateData::ExtractedArtifact(artifact),
                    }),
                    Err(_) => {
                        if let Some(cache) = stateless_cache {
                            cache.insert_invalid(self.registry.id(), &bytes)?;
                        }
                    }
                }
            }
            let unresolved = candidates
                .iter()
                .filter_map(|candidate| match &candidate.data {
                    CandidateData::ExtractedArtifact(artifact) => Some(artifact.clone()),
                    CandidateData::VerifiedArtifact(_) => None,
                })
                .collect::<Vec<_>>();
            let verified = match Self::verify_tx_artifacts_for_stage(
                self.registry.clone(),
                "prepare_proposal",
                &unresolved,
            )
            .await
            {
                Ok(verified) => verified.into_iter().map(Some).collect::<Vec<_>>(),
                Err(_) => {
                    // A failed batch identifies no particular bad transaction. Check each once.
                    let mut verified = Vec::with_capacity(unresolved.len());
                    for artifact in unresolved {
                        verified.push(
                            Self::verify_tx_artifacts_for_stage(
                                self.registry.clone(),
                                "prepare_proposal_fallback",
                                &[artifact],
                            )
                            .await
                            .ok()
                            .and_then(|mut verified| verified.pop()),
                        );
                    }
                    verified
                }
            };
            let mut verified = verified.into_iter();
            for candidate in candidates {
                let artifact = match candidate.data {
                    CandidateData::VerifiedArtifact(artifact) => artifact,
                    CandidateData::ExtractedArtifact(_) => {
                        match verified.next().expect("one result per extracted candidate") {
                            Some(artifact) => {
                                if let Some(cache) = stateless_cache {
                                    cache.insert_fully_verified(
                                        &candidate.bytes,
                                        artifact.clone(),
                                    )?;
                                }
                                artifact
                            }
                            None => {
                                if let Some(cache) = stateless_cache {
                                    cache.insert_invalid(self.registry.id(), &candidate.bytes)?;
                                }
                                continue;
                            }
                        }
                    }
                };
                let next_size = payload_size.saturating_add(candidate.bytes.len() as u64);
                let next_nullifier_count = nullifier_count
                    .saturating_add(artifact.tx().spent_nullifiers().count())
                    .saturating_add(artifact.tx().volume_nullifiers().count());
                if (!allow_oversized_proposal && next_size > max_proposal_size_bytes)
                    || !block_nullifier_count_allowed(next_nullifier_count)
                {
                    continue;
                }
                if self
                    .deliver_tx_with_verified_stateless(artifact, Some(&historical_context))
                    .await
                    .is_ok()
                {
                    payload_size = next_size;
                    nullifier_count = next_nullifier_count;
                    included.push(candidate.bytes);
                }
            }
        }
        self.flush_deferred_block_transactions().await?;
        Ok(included)
    }

    /// Constructs an application only when populated state matches the configured proof keys.
    pub async fn new(snapshot: Snapshot, registry: Arc<Registry>) -> Result<Self> {
        crate::registry_binding::check(&snapshot, registry.id()).await?;
        Ok(Self::from_snapshot(snapshot, registry))
    }

    fn from_snapshot(snapshot: Snapshot, registry: Arc<Registry>) -> Self {
        tracing::debug!("initializing App instance");
        let snapshot_version = snapshot.version();

        // We perform the `Arc` wrapping of `State` here to ensure
        // there should be no unexpected copies elsewhere.
        let state = Arc::new(StateDelta::new(snapshot.clone()));

        Self {
            #[cfg(test)]
            historical_check_gate: None,
            #[cfg(test)]
            commit_extracted: None,
            state,
            committed_snapshot: snapshot,
            snapshot_version,
            block_tx_indexing_mode: BlockTxIndexingMode::PerTx,
            deferred_block_transactions: Vec::new(),
            registry,
        }
    }

    pub fn set_block_tx_indexing_mode(&mut self, mode: BlockTxIndexingMode) {
        self.block_tx_indexing_mode = mode;
    }

    pub async fn is_ready(state: Snapshot) -> bool {
        if let Err(error) = shieldd_sdk_sct::nullifier_tree::verify_committed_roots(&state).await {
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

    pub async fn prepare_batch(
        &mut self,
        mut proposal: BatchPreparation,
        stateless_cache: Option<&StatelessCache>,
        allow_oversized_proposal: bool,
    ) -> PreparedBatch {
        let num_candidate_txs = proposal.txs.len();
        truncate_prepare_candidates(&mut proposal.txs);
        tracing::debug!(
            "processing PrepareProposal, found {} candidate transactions",
            num_candidate_txs
        );

        let max_proposal_size_bytes = prepare_proposal_payload_limit(proposal.max_tx_bytes);
        let included_txs = match self
            .prepare_proposal_batched(
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
                Vec::new()
            }
        };

        tracing::debug!(
            "finished processing PrepareProposal, including {}/{} candidate transactions",
            included_txs.len(),
            num_candidate_txs
        );

        PreparedBatch { txs: included_txs }
    }

    #[instrument(skip_all, ret, level = "debug")]
    pub async fn validate_batch(
        &mut self,
        proposal: BatchCandidate,
        stateless_cache: Option<&StatelessCache>,
        allow_oversized_proposal: bool,
    ) -> BatchVerdict {
        tracing::debug!(height = proposal.height, "processing proposal");

        let proposal_height = proposal.height;
        macro_rules! reject_process_proposal {
            ($reason:literal) => {{
                tracing::warn!(
                    height = proposal_height,
                    reason = $reason,
                    "process_proposal_reject_reason"
                );
                return BatchVerdict::Reject;
            }};
            ($reason:literal, $($field:tt)*) => {{
                tracing::warn!(
                    height = proposal_height,
                    reason = $reason,
                    $($field)*,
                    "process_proposal_reject_reason"
                );
                return BatchVerdict::Reject;
            }};
        }

        enum UserTxData {
            ExtractedArtifact(Arc<TxArtifact>),
            VerifiedArtifact(Arc<VerifiedTxArtifact>),
            Decoded(Arc<Transaction>),
        }

        struct UserTx {
            raw_tx: Bytes,
            data: UserTxData,
            cache_miss: bool,
        }

        impl UserTx {
            fn artifact(&self) -> Option<Arc<TxArtifact>> {
                match &self.data {
                    UserTxData::ExtractedArtifact(artifact) => Some(artifact.clone()),
                    UserTxData::VerifiedArtifact(artifact) => Some(artifact.extracted()),
                    UserTxData::Decoded(_) => None,
                }
            }
        }

        let proposal_tx_count = proposal.txs.len();
        if !process_proposal_tx_count_allowed(proposal_tx_count) {
            reject_process_proposal!("tx_count_exceeded", proposal_tx_count);
        }
        let mut total_txs_payload_size = 0usize;
        let mut user_txs = Vec::with_capacity(proposal_tx_count);

        for (index, tx_bytes) in proposal.txs.into_iter().enumerate() {
            let tx_size = tx_bytes.len();
            if !allow_oversized_proposal && tx_size > max_transaction_size_bytes() {
                reject_process_proposal!("tx_size_exceeded", index, tx_size);
            }

            total_txs_payload_size = total_txs_payload_size.saturating_add(tx_size);
            if !allow_oversized_proposal
                && !process_proposal_payload_size_allowed(total_txs_payload_size)
            {
                reject_process_proposal!(
                    "total_txs_payload_exceeded",
                    index,
                    total_txs_payload_size
                );
            }

            let tx_hash: [u8; 32] = sha2::Sha256::digest(tx_bytes.as_ref()).into();
            if let Some(cache) = stateless_cache {
                match cache.get(self.registry.id(), &tx_hash, tx_bytes.as_ref()) {
                    Some(CacheEntry::Invalid) => {
                        reject_process_proposal!("stateless_cache_invalid", tx_hash = %hex::encode(tx_hash));
                    }
                    Some(CacheEntry::FullyVerified(artifact)) => {
                        Self::record_artifact_reuse("process_proposal");

                        user_txs.push(UserTx {
                            raw_tx: tx_bytes.clone(),
                            data: UserTxData::VerifiedArtifact(artifact),
                            cache_miss: false,
                        });
                        continue;
                    }
                    None => {}
                }
            }

            let tx = match Transaction::decode_canonical(tx_bytes.as_ref()) {
                Ok(tx) => Arc::new(tx),
                Err(_) => reject_process_proposal!("tx_decode_failed", index),
            };

            user_txs.push(UserTx {
                raw_tx: tx_bytes,
                data: UserTxData::Decoded(tx),
                cache_miss: true,
            });
        }

        if !user_txs.is_empty() {
            let raw_miss_txs = user_txs
                .iter()
                .filter_map(|user| match &user.data {
                    UserTxData::Decoded(tx) => Some(tx.clone()),
                    _ => None,
                })
                .collect::<Vec<_>>();
            let mut extracted = match Self::build_tx_artifacts_extracted(&raw_miss_txs).await {
                Ok(artifacts) => artifacts.into_iter(),
                Err(_) => reject_process_proposal!("artifact_reconstruction_failed"),
            };
            for user in &mut user_txs {
                if matches!(user.data, UserTxData::Decoded(_)) {
                    user.data = UserTxData::ExtractedArtifact(
                        extracted.next().expect("exact extraction count"),
                    );
                }
            }
        }

        let artifacts = user_txs
            .iter()
            .map(|user_tx| {
                user_tx
                    .artifact()
                    .expect("proposal user tx should have artifact after miss fill")
            })
            .collect::<Vec<_>>();
        let block_nullifier_count = artifacts
            .iter()
            .map(|artifact| {
                artifact.spend_nullifiers.len() + artifact.tx.volume_nullifiers().count()
            })
            .sum::<usize>();
        if !block_nullifier_count_allowed(block_nullifier_count) {
            reject_process_proposal!("block_nullifier_count_exceeded", block_nullifier_count);
        }

        if Self::ensure_unique_spend_nullifiers_from_artifacts(&artifacts).is_err() {
            reject_process_proposal!("duplicate_spend_nullifiers");
        }
        if Self::ensure_unique_volume_nullifiers_from_artifacts(&artifacts).is_err() {
            reject_process_proposal!("duplicate_volume_nullifiers");
        }

        let unresolved = user_txs
            .iter()
            .filter_map(|user| match &user.data {
                UserTxData::ExtractedArtifact(artifact) => Some(artifact.clone()),
                _ => None,
            })
            .collect::<Vec<_>>();
        let mut newly_verified = match Self::verify_tx_artifacts_for_stage(
            self.registry.clone(),
            "proposal_batch",
            &unresolved,
        )
        .await
        {
            Ok(verified) => verified.into_iter(),
            Err(_) => reject_process_proposal!("pari_batch_verification_failed"),
        };
        let verified_artifacts = user_txs
            .iter()
            .map(|user| match &user.data {
                UserTxData::VerifiedArtifact(artifact) => artifact.clone(),
                UserTxData::ExtractedArtifact(_) => newly_verified
                    .next()
                    .expect("exact verified artifact count"),
                UserTxData::Decoded(_) => unreachable!("all transactions extracted"),
            })
            .collect::<Vec<_>>();
        let historical_context = match HistoricalCheckContext::load(Arc::as_ref(&self.state)).await
        {
            Ok(context) => context,
            Err(_) => reject_process_proposal!("historical_context_load_failed"),
        };

        if let Some(cache) = stateless_cache {
            for (user_tx, artifact) in user_txs.iter().zip(&verified_artifacts) {
                if user_tx.cache_miss {
                    if cache
                        .insert_fully_verified(user_tx.raw_tx.as_ref(), artifact.clone())
                        .is_err()
                    {
                        reject_process_proposal!("stateless_cache_artifact_binding_failed");
                    }
                }
            }
        }

        for artifact in verified_artifacts {
            match self
                .deliver_tx_with_verified_stateless(artifact, Some(&historical_context))
                .await
            {
                Ok(_) => {}
                Err(_) => reject_process_proposal!("stateful_replay_failed"),
            };
        }

        if self.block_tx_indexing_mode == BlockTxIndexingMode::DeferredBatch {
            if self.flush_deferred_block_transactions().await.is_err() {
                reject_process_proposal!("deferred_index_flush_failed");
            }
        }

        BatchVerdict::Accept
    }

    async fn append_block_transaction_to_state<S>(
        state_tx: &mut S,
        height: u64,
        transaction: shieldd_sdk_proto::core::transaction::v1::Transaction,
    ) -> Result<()>
    where
        S: StateWrite + StateReadExt,
    {
        let mut transactions_response = state_tx.transactions_by_height(height).await?;

        transactions_response.transactions.push(transaction);

        let encoded = transactions_response.encode_to_vec();

        state_tx.nonverifiable_put_raw(
            state_key::block_data::transactions_by_height(height).into(),
            encoded,
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
            .context("flushing block transactions requires exclusive application state")?;
        let height = state_tx.get_block_height().await?;
        let mut transactions_response = state_tx.transactions_by_height(height).await?;
        transactions_response
            .transactions
            .append(&mut self.deferred_block_transactions);
        state_tx.nonverifiable_put_raw(
            state_key::block_data::transactions_by_height(height).into(),
            transactions_response.encode_to_vec(),
        );
        state_tx.apply();
        Ok(())
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

    /// Gets the chain revision number from the chain ID.

    /// Returns the set of app parameters
    async fn get_app_params(&self) -> Result<AppParameters> {
        let chain_id = self.get_chain_id().await?;
        let compliance_params = self.get_compliance_params().await?;
        let fee_params = self.get_fee_params().await?;
        let sct_params = self.get_sct_params().await?;
        let shielded_pool_params = self.get_shielded_pool_params().await?;

        Ok(AppParameters {
            chain_id,
            compliance_params,
            fee_params,
            sct_params,
            shielded_pool_params,
        })
    }

    /// Selects from the committed execution log, never from submitted or indexed candidates.
    async fn committed_transaction(
        &self,
        block_height: u64,
        transaction_id: [u8; 32],
    ) -> Result<shieldd_sdk_proto::core::app::v1::CommittedTransactionResponse> {
        let block = self.transactions_by_height(block_height).await?;
        let mut selected = None;
        for transaction in block.transactions {
            let tx: Transaction = transaction.clone().try_into()?;
            if tx.id().as_ref() == transaction_id {
                anyhow::ensure!(
                    transaction.encoded_len() <= MAX_TRANSACTION_SIZE_BYTES,
                    "committed transaction exceeds supported query size"
                );
                selected = Some(transaction);
                break;
            }
        }
        Ok(
            shieldd_sdk_proto::core::app::v1::CommittedTransactionResponse {
                block_height,
                transaction: selected,
            },
        )
    }

    async fn transactions_by_height(
        &self,
        block_height: u64,
    ) -> Result<TransactionsByHeightResponse> {
        let transactions = match self
            .nonverifiable_get_raw(
                state_key::block_data::transactions_by_height(block_height).as_bytes(),
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
            + shieldd_sdk_fee::component::StateReadExt
            + shieldd_sdk_sct::component::clock::EpochRead
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

    /// Appends a transaction to the durable block log consumed by host queries.
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
            state_key::block_data::transactions_by_height(height).into(),
            transactions_response.encode_to_vec(),
        );
        Ok(())
    }
}

impl<T: StateWrite + ?Sized> StateWriteExt for T {}

#[cfg(test)]
mod tests;
