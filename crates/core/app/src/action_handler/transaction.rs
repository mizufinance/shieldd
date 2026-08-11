use std::collections::{BTreeSet, HashMap, HashSet};
use std::sync::atomic::{AtomicUsize, Ordering};
use std::sync::{Arc, RwLock};
use std::time::Instant;

use anyhow::{Context as _, Result};
use async_trait::async_trait;
use cnidarium::{Snapshot, StateRead, StateWrite};
use shieldd_sdk_compact_block::StatePayload;
use shieldd_sdk_compliance::params::StateReadExt as _;
use shieldd_sdk_compliance::registry::{check_timestamp_freshness, ComplianceRegistryRead as _};
use shieldd_sdk_fee::component::FeePay as _;
use shieldd_sdk_sct::component::clock::EpochRead;
use shieldd_sdk_sct::component::source::SourceContext;
use shieldd_sdk_sct::component::tree::VerificationExt as _;
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_shielded_pool::component::{
    note_reshape_execute_verified, shielded_host_withdrawal_execute_verified,
    shielded_ics20_withdrawal_execute_verified, transfer_execute_validated,
    transfer_execute_verified, transfer_validate_verified, Ics20Transfer, StateReadExt as _,
};
use shieldd_sdk_shielded_pool::discovery;
use shieldd_sdk_tct::StateCommitment;
use shieldd_sdk_transaction::{gas::GasCost as _, Action, Transaction};
use shieldd_sdk_txhash::TransactionId;
use tokio::sync::OnceCell;
use tokio::task::JoinSet;
use tracing::{instrument, Instrument};

use super::AppActionHandler;
use crate::{
    app::{StateReadExt as _, MAX_TRANSACTION_ACTION_COUNT, MAX_TRANSACTION_NULLIFIER_COUNT},
    stateless_cache::{ProofSlot, VerifiedTxArtifact},
    ShielddHost,
};

mod stateful;
pub(crate) mod stateless;

use self::stateful::{
    claimed_anchor_is_valid, discovery_parameters_valid_with_context,
    tx_parameters_historical_check_with_context,
};
use stateless::{
    check_memo_exists_if_outputs_absent_if_not, check_non_empty_transaction,
    valid_binding_signature,
};

#[derive(Clone, Copy, Debug, Default)]
pub(crate) struct TransactionExecutionProfile {
    pub set_source_ms: f64,
    pub pay_fee_ms: f64,
    pub action_execute_ms: f64,
    pub read_local_precheck_ms: f64,
    pub read_lookup_wait_or_join_ms: f64,
    pub read_historical_check_ms: f64,
    pub read_nullifier_wait_ms: f64,
    pub read_anchor_cache_wait_ms: f64,
    pub read_anchor_validation_ms: f64,
    pub read_committed_nullifier_ms: f64,
    pub read_effects_build_ms: f64,
    pub nullifier_lookup_count: usize,
    pub spend_action_execute_ms: f64,
    pub spend_nullifier_check_ms: f64,
    pub spend_nullifier_tx_local_scan_ms: f64,
    pub spend_nullifier_block_log_lookup_ms: f64,
    pub spend_nullifier_committed_check_ms: f64,
    pub spend_nullifier_enqueue_ms: f64,
    pub spend_nullifier_stage_ms: f64,
    pub spend_nullifier_merge_ms: f64,
    pub output_action_execute_ms: f64,
    pub output_add_note_payload_ms: f64,
    pub other_action_execute_ms: f64,
}

#[derive(Clone, Debug, Default)]
pub(crate) struct PreparedCandidateEffects {
    pub spend_nullifiers: Vec<Nullifier>,
    pub sct_payloads: Vec<StatePayload>,
}

#[derive(Clone, Debug, Default)]
pub(crate) struct PreparedCandidateRead {
    pub check_historical_ms: f64,
    pub read_wall_ms: f64,
    pub checktx_fast_context_load_ms: f64,
    pub checktx_fast_read_queue_wait_ms: f64,
    pub checktx_fast_read_blocking_total_ms: f64,
    pub execution_profile: TransactionExecutionProfile,
    pub effects: PreparedCandidateEffects,
}

type AnchorValidationKey = (StateCommitment, StateCommitment, u64, u64);
type ClaimedAnchorKey = shieldd_sdk_tct::Root;

#[derive(Clone, Copy, Debug, Default)]
pub(crate) struct HistoricalCheckProfile {
    pub total_ms: f64,
    pub await_ms: f64,
}

#[derive(Debug, Default)]
pub(crate) struct AnchorValidationCache {
    entries: RwLock<HashMap<AnchorValidationKey, Arc<OnceCell<std::result::Result<(), String>>>>>,
    hits: AtomicUsize,
    misses: AtomicUsize,
}

impl AnchorValidationCache {
    fn entry(
        &self,
        key: AnchorValidationKey,
    ) -> (Arc<OnceCell<std::result::Result<(), String>>>, bool, f64) {
        let read_wait_start = Instant::now();
        let existing = self
            .entries
            .read()
            .expect("anchor cache poisoned")
            .get(&key)
            .cloned();
        let mut wait_ms = read_wait_start.elapsed().as_secs_f64() * 1000.0;
        if let Some(cell) = existing {
            self.hits.fetch_add(1, Ordering::Relaxed);
            return (cell, true, wait_ms);
        }

        let write_wait_start = Instant::now();
        let mut entries = self.entries.write().expect("anchor cache poisoned");
        wait_ms += write_wait_start.elapsed().as_secs_f64() * 1000.0;
        if let Some(cell) = entries.get(&key).cloned() {
            self.hits.fetch_add(1, Ordering::Relaxed);
            return (cell, true, wait_ms);
        }

        let cell = Arc::new(OnceCell::new());
        entries.insert(key, cell.clone());
        self.misses.fetch_add(1, Ordering::Relaxed);
        (cell, false, wait_ms)
    }

    pub(crate) fn stats(&self) -> (usize, usize, usize) {
        (
            self.hits.load(Ordering::Relaxed),
            self.misses.load(Ordering::Relaxed),
            self.entries.read().expect("anchor cache poisoned").len(),
        )
    }
}

#[derive(Debug, Default)]
pub(crate) struct ClaimedAnchorValidationCache {
    entries: RwLock<HashMap<ClaimedAnchorKey, Arc<OnceCell<std::result::Result<(), String>>>>>,
    hits: AtomicUsize,
    misses: AtomicUsize,
}

impl ClaimedAnchorValidationCache {
    fn entry(
        &self,
        anchor: ClaimedAnchorKey,
    ) -> (Arc<OnceCell<std::result::Result<(), String>>>, bool) {
        if let Some(cell) = self
            .entries
            .read()
            .expect("claimed anchor cache poisoned")
            .get(&anchor)
            .cloned()
        {
            self.hits.fetch_add(1, Ordering::Relaxed);
            return (cell, true);
        }

        let mut entries = self.entries.write().expect("claimed anchor cache poisoned");
        if let Some(cell) = entries.get(&anchor).cloned() {
            self.hits.fetch_add(1, Ordering::Relaxed);
            return (cell, true);
        }

        let cell = Arc::new(OnceCell::new());
        entries.insert(anchor, cell.clone());
        self.misses.fetch_add(1, Ordering::Relaxed);
        (cell, false)
    }

    pub(crate) fn stats(&self) -> (usize, usize, usize) {
        (
            self.hits.load(Ordering::Relaxed),
            self.misses.load(Ordering::Relaxed),
            self.entries
                .read()
                .expect("claimed anchor cache poisoned")
                .len(),
        )
    }
}

#[derive(Clone, Debug)]
struct TxExecutionContext {
    block_timestamp: u64,
    source: TransactionId,
}

#[derive(Clone, Debug)]
pub(crate) struct HistoricalCheckContext {
    pub chain_id: String,
    pub block_height: u64,
    pub block_timestamp: u64,
    pub discovery_grace_period_blocks: u64,
    pub previous_discovery_parameters: discovery::Parameters,
    pub current_discovery_parameters: discovery::Parameters,
    pub anchor_cache: Arc<AnchorValidationCache>,
    pub claimed_anchor_cache: Arc<ClaimedAnchorValidationCache>,
}

impl HistoricalCheckContext {
    pub(crate) async fn load<S: StateRead>(state: &S) -> Result<Self> {
        Self::load_inner(state).await
    }

    pub(crate) async fn load_for_checktx<S: StateRead>(state: &S) -> Result<Self> {
        Self::load_inner(state).await
    }

    async fn load_inner<S: StateRead>(state: &S) -> Result<Self> {
        let shielded_pool_params = state
            .get_shielded_pool_params()
            .await
            .expect("chain params request must succeed");

        Ok(Self {
            chain_id: state.get_chain_id().await?,
            block_height: state.get_block_height().await?,
            block_timestamp: state.get_current_block_timestamp().await?.unix_timestamp() as u64,
            discovery_grace_period_blocks: shielded_pool_params.discovery_grace_period_blocks,
            previous_discovery_parameters: state
                .get_previous_discovery_parameters()
                .await
                .expect("chain params request must succeed"),
            current_discovery_parameters: state
                .get_current_discovery_parameters()
                .await
                .expect("chain params request must succeed"),
            anchor_cache: Arc::new(AnchorValidationCache::default()),
            claimed_anchor_cache: Arc::new(ClaimedAnchorValidationCache::default()),
        })
    }
}

async fn drain_joinset_results<T: Send + 'static>(
    tasks: &mut JoinSet<Result<T>>,
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

pub(crate) fn transaction_action_count_allowed(
    body_action_count: usize,
    has_fee_funding: bool,
) -> bool {
    body_action_count.saturating_add(usize::from(has_fee_funding)) <= MAX_TRANSACTION_ACTION_COUNT
}

pub(crate) fn transaction_nullifier_count_allowed(nullifier_count: usize) -> bool {
    nullifier_count <= MAX_TRANSACTION_NULLIFIER_COUNT
}

pub(crate) fn transaction_nullifier_count(tx: &Transaction) -> usize {
    tx.spent_nullifier_count()
}

pub(crate) fn ensure_transaction_resource_bounds(tx: &Transaction) -> Result<()> {
    let body_action_count = tx.transaction_body.actions.len();
    let has_fee_funding = tx.transaction_body.fee_funding.is_some();
    anyhow::ensure!(
        transaction_action_count_allowed(body_action_count, has_fee_funding),
        "transaction action count {} exceeds maximum {}",
        body_action_count.saturating_add(usize::from(has_fee_funding)),
        MAX_TRANSACTION_ACTION_COUNT
    );
    let nullifier_count = transaction_nullifier_count(tx);
    anyhow::ensure!(
        transaction_nullifier_count_allowed(nullifier_count),
        "transaction spend nullifier count {} exceeds maximum {}",
        nullifier_count,
        MAX_TRANSACTION_NULLIFIER_COUNT
    );
    Ok(())
}

pub(crate) fn validate_transaction_envelope(tx: &Transaction) -> Result<()> {
    ensure_transaction_resource_bounds(tx)?;
    valid_binding_signature(tx)?;
    check_memo_exists_if_outputs_absent_if_not(tx)?;
    check_non_empty_transaction(tx)
}

async fn check_nullifier_read_only<S>(
    state: &S,
    _context: &HistoricalCheckContext,
    nullifier: shieldd_sdk_sct::Nullifier,
) -> Result<f64>
where
    S: StateRead,
{
    let committed_check_start = Instant::now();
    state.check_nullifier_unspent(nullifier).await?;
    Ok(committed_check_start.elapsed().as_secs_f64() * 1000.0)
}

async fn validate_compliance_anchors_read_only<S: StateRead>(
    state: &S,
    user_anchor: &StateCommitment,
    asset_anchor: &StateCommitment,
    block_height: u64,
    anchor_cache: Arc<AnchorValidationCache>,
) -> Result<(f64, f64)> {
    let anchor_validation_window_blocks = state
        .get_compliance_params()
        .await?
        .anchor_validation_window_blocks;
    let anchor_key = (
        *user_anchor,
        *asset_anchor,
        block_height,
        anchor_validation_window_blocks,
    );
    let validate_start = Instant::now();
    let (cell, _, cache_wait_ms) = anchor_cache.entry(anchor_key);

    let result = cell
        .get_or_init(|| async move {
            let user_anchor_height = state
                .check_user_anchor(user_anchor)
                .await
                .map_err(|e| e.to_string())?
                .ok_or_else(|| "invalid user compliance anchor: not found in history".to_string())?;
            if block_height > user_anchor_height + anchor_validation_window_blocks {
                return Err(format!(
                    "user compliance anchor too old: height {} is more than {} blocks behind current height {}",
                    user_anchor_height,
                    anchor_validation_window_blocks,
                    block_height
                ));
            }

            let current_asset_anchor = state
                .get_asset_imt_root()
                .await
                .map_err(|e| e.to_string())?;
            if *asset_anchor != current_asset_anchor {
                return Err(
                    "asset compliance anchor does not match the current asset compliance root"
                        .to_string(),
                );
            }

            Ok(())
        })
        .await;

    match result {
        Ok(()) => Ok((
            validate_start.elapsed().as_secs_f64() * 1000.0,
            cache_wait_ms,
        )),
        Err(error) => anyhow::bail!(error.clone()),
    }
}

async fn validate_claimed_anchor_read_only<S: StateRead>(
    state: Arc<S>,
    tx: Arc<Transaction>,
    claimed_anchor_cache: Arc<ClaimedAnchorValidationCache>,
) -> Result<f64> {
    let anchor = tx.anchor;
    let wait_start = Instant::now();
    let (cell, _) = claimed_anchor_cache.entry(anchor);
    let result = cell
        .get_or_init(|| async move {
            claimed_anchor_is_valid(state, Arc::as_ref(&tx))
                .await
                .map_err(|e| e.to_string())
        })
        .await;
    let elapsed_ms = wait_start.elapsed().as_secs_f64() * 1000.0;

    match result {
        Ok(()) => Ok(elapsed_ms),
        Err(error) => anyhow::bail!(error.clone()),
    }
}

pub(crate) fn supports_parallel_prepare(tx: &Transaction) -> bool {
    tx.actions().all(|a| matches!(a, Action::Transfer(_)))
}

fn action_requires_historical_check(action: &Action) -> bool {
    matches!(
        action,
        Action::IbcRelay(_)
            | Action::ShieldedIcs20Withdrawal(_)
            | Action::ShieldedHostWithdrawal(_)
    )
}

fn check_nullifier_read_only_sync(
    handle: &tokio::runtime::Handle,
    snapshot: &Snapshot,
    _context: &HistoricalCheckContext,
    nullifier: shieldd_sdk_sct::Nullifier,
) -> Result<f64> {
    let committed_check_start = Instant::now();
    handle.block_on(snapshot.check_nullifier_unspent(nullifier))?;
    Ok(committed_check_start.elapsed().as_secs_f64() * 1000.0)
}

fn validate_compliance_anchors_read_only_sync(
    handle: &tokio::runtime::Handle,
    snapshot: &Snapshot,
    user_anchor: &StateCommitment,
    asset_anchor: &StateCommitment,
    block_height: u64,
    anchor_cache: Arc<AnchorValidationCache>,
) -> Result<(f64, f64)> {
    let anchor_validation_window_blocks = handle
        .block_on(snapshot.get_compliance_params())?
        .anchor_validation_window_blocks;
    let anchor_key = (
        *user_anchor,
        *asset_anchor,
        block_height,
        anchor_validation_window_blocks,
    );
    let validate_start = Instant::now();
    let (cell, _, cache_wait_ms) = anchor_cache.entry(anchor_key);
    let snapshot = snapshot.clone();
    let user_anchor = *user_anchor;
    let asset_anchor = *asset_anchor;

    let result = handle
        .clone()
        .block_on(cell.get_or_init(|| async move {
            let user_anchor_height = snapshot
                .get_raw(&shieldd_sdk_compliance::state_key::anchor::user_anchor_lookup(
                    &user_anchor,
                ))
                .await
                .map_err(|e| e.to_string())?
                .map(|bytes| {
                    <u64 as shieldd_sdk_proto::Message>::decode(bytes.as_slice())
                        .map_err(|e| anyhow::anyhow!(e).to_string())
                })
                .transpose()?
                .ok_or_else(|| "invalid user compliance anchor: not found in history".to_string())?;
            if block_height > user_anchor_height + anchor_validation_window_blocks {
                return Err(format!(
                    "user compliance anchor too old: height {} is more than {} blocks behind current height {}",
                    user_anchor_height,
                    anchor_validation_window_blocks,
                    block_height
                ));
            }

            let current_asset_anchor = snapshot
                .get_asset_imt_root()
                .await
                .map_err(|e| e.to_string())?;
            if asset_anchor != current_asset_anchor {
                return Err(
                    "asset compliance anchor does not match the current asset compliance root"
                        .to_string(),
                );
            }

            Ok(())
        }))
        .clone();

    match result {
        Ok(()) => Ok((
            validate_start.elapsed().as_secs_f64() * 1000.0,
            cache_wait_ms,
        )),
        Err(error) => anyhow::bail!(error),
    }
}

fn validate_claimed_anchor_read_only_sync(
    handle: &tokio::runtime::Handle,
    snapshot: &Snapshot,
    tx: &Transaction,
    claimed_anchor_cache: Arc<ClaimedAnchorValidationCache>,
) -> Result<f64> {
    let anchor = tx.anchor;
    let wait_start = Instant::now();
    let (cell, _) = claimed_anchor_cache.entry(anchor);
    let snapshot = snapshot.clone();

    let result = handle
        .clone()
        .block_on(cell.get_or_init(|| async move {
            if anchor.is_empty() {
                return Ok(());
            }
            if snapshot
                .get_raw(&shieldd_sdk_sct::state_key::tree::anchor_lookup(anchor))
                .await
                .map_err(|e| e.to_string())?
                .map(|bytes| {
                    <u64 as shieldd_sdk_proto::Message>::decode(bytes.as_slice())
                        .map_err(|e| anyhow::anyhow!(e).to_string())
                })
                .transpose()?
                .is_some()
            {
                Ok(())
            } else {
                Err(format!(
                    "provided anchor {} is not a valid SCT root",
                    anchor
                ))
            }
        }))
        .clone();
    let elapsed_ms = wait_start.elapsed().as_secs_f64() * 1000.0;

    match result {
        Ok(()) => Ok(elapsed_ms),
        Err(error) => anyhow::bail!(error),
    }
}

pub(crate) async fn check_historical_with_context_profiled<S: StateRead + 'static>(
    tx: &Transaction,
    state: Arc<S>,
    context: &HistoricalCheckContext,
) -> Result<HistoricalCheckProfile> {
    let total_start = Instant::now();
    let mut await_ms = 0.0;
    let mut action_checks = JoinSet::new();

    ensure_transaction_resource_bounds(tx)?;
    tx_parameters_historical_check_with_context(tx, context)?;
    discovery_parameters_valid_with_context(tx, context)?;

    let claimed_anchor_tx = Arc::new(tx.clone());
    let claimed_anchor_wait_start = Instant::now();
    validate_claimed_anchor_read_only(
        state.clone(),
        claimed_anchor_tx,
        context.claimed_anchor_cache.clone(),
    )
    .await?;
    await_ms += claimed_anchor_wait_start.elapsed().as_secs_f64() * 1000.0;

    for (i, action) in tx.actions().cloned().enumerate() {
        if !action_requires_historical_check(&action) {
            continue;
        }

        let state2 = state.clone();
        let span = action.create_span(i);
        action_checks.spawn(async move { action.check_historical(state2).await }.instrument(span));
    }

    while !action_checks.is_empty() {
        let join_wait_start = Instant::now();
        let check = action_checks
            .join_next()
            .await
            .expect("join set must yield while not empty");
        await_ms += join_wait_start.elapsed().as_secs_f64() * 1000.0;
        check??;
    }

    Ok(HistoricalCheckProfile {
        total_ms: total_start.elapsed().as_secs_f64() * 1000.0,
        await_ms,
    })
}

pub(crate) async fn check_historical_with_context<S: StateRead + 'static>(
    tx: &Transaction,
    state: Arc<S>,
    context: &HistoricalCheckContext,
) -> Result<()> {
    check_historical_with_context_profiled(tx, state, context)
        .await
        .map(|_| ())
}

pub(crate) fn check_historical_with_context_sync_profiled(
    tx: &Transaction,
    snapshot: &Snapshot,
    context: &HistoricalCheckContext,
    handle: &tokio::runtime::Handle,
) -> Result<HistoricalCheckProfile> {
    let total_start = Instant::now();

    ensure_transaction_resource_bounds(tx)?;
    tx_parameters_historical_check_with_context(tx, context)?;
    discovery_parameters_valid_with_context(tx, context)?;

    let await_ms = validate_claimed_anchor_read_only_sync(
        handle,
        snapshot,
        tx,
        context.claimed_anchor_cache.clone(),
    )?;

    Ok(HistoricalCheckProfile {
        total_ms: total_start.elapsed().as_secs_f64() * 1000.0,
        await_ms,
    })
}

pub(crate) async fn check_and_execute_profiled<S>(
    artifact: &VerifiedTxArtifact,
    mut state: S,
) -> Result<TransactionExecutionProfile>
where
    S: StateWrite,
{
    let tx = artifact.tx().as_ref();
    let mut profile = TransactionExecutionProfile::default();
    ensure_transaction_resource_bounds(tx)?;
    let tx_context = tx.context();
    let tx_id = tx.id();
    let action_spans_enabled = tracing::enabled!(tracing::Level::INFO);

    let set_source_start = Instant::now();
    state.put_current_source(Some(tx_id.clone()));
    profile.set_source_ms = set_source_start.elapsed().as_secs_f64() * 1000.0;

    let pay_fee_start = Instant::now();
    let gas_used = tx.gas_cost();
    let fee = tx.transaction_body.transaction_parameters.fee;
    state.pay_fee(gas_used, fee).await?;
    profile.pay_fee_ms = pay_fee_start.elapsed().as_secs_f64() * 1000.0;

    let action_execute_start = Instant::now();
    // Fee funding is hashed before body actions and validates against the
    // pre-transaction roots used to build its proof. Its effects remain in
    // their original post-body position to preserve commitment ordering.
    let validated_fee_funding = if let Some(fee_funding) = &tx.transaction_body.fee_funding {
        let action_start = Instant::now();
        let validated = transfer_validate_verified(
            &fee_funding.transfer,
            &tx_context,
            artifact.proof_for_slot(ProofSlot::FeeFunding)?,
            &mut state,
        )
        .await?;
        profile.other_action_execute_ms += action_start.elapsed().as_secs_f64() * 1000.0;
        Some(validated)
    } else {
        None
    };
    for (i, action) in tx.actions().enumerate() {
        let action_start = Instant::now();
        match action {
            Action::Transfer(action) => {
                transfer_execute_verified(
                    action,
                    &tx_context,
                    artifact.proof_for_slot(ProofSlot::BodyAction(i))?,
                    &mut state,
                )
                .await?;
                profile.other_action_execute_ms += action_start.elapsed().as_secs_f64() * 1000.0;
            }
            Action::NoteReshape(action) => {
                note_reshape_execute_verified(
                    action,
                    &tx_context,
                    artifact.proof_for_slot(ProofSlot::BodyAction(i))?,
                    &mut state,
                )
                .await?;
                profile.other_action_execute_ms += action_start.elapsed().as_secs_f64() * 1000.0;
            }
            Action::ShieldedIcs20Withdrawal(action) => {
                shielded_ics20_withdrawal_execute_verified(
                    action,
                    &tx_context,
                    artifact.proof_for_slot(ProofSlot::BodyAction(i))?,
                    &mut state,
                )
                .await?;
                profile.other_action_execute_ms += action_start.elapsed().as_secs_f64() * 1000.0;
            }
            Action::ShieldedHostWithdrawal(action) => {
                shielded_host_withdrawal_execute_verified(
                    action,
                    &tx_context,
                    artifact.proof_for_slot(ProofSlot::BodyAction(i))?,
                    &mut state,
                )
                .await?;
                profile.other_action_execute_ms += action_start.elapsed().as_secs_f64() * 1000.0;
            }
            Action::IbcRelay(action) => {
                let relay = action.clone().with_handler::<Ics20Transfer, ShielddHost>();
                let execute = relay.check_and_execute(&mut state);
                if action_spans_enabled {
                    let span = Action::IbcRelay(action.clone()).create_span(i);
                    execute.instrument(span).await?;
                } else {
                    execute.await?;
                }
                profile.other_action_execute_ms += action_start.elapsed().as_secs_f64() * 1000.0;
            }
            action @ (Action::ValidatorDefinition(_)
            | Action::ValidatorVote(_)
            | Action::ProposalSubmit(_)
            | Action::ComplianceRegisterAsset(_)
            | Action::ComplianceRegisterUser(_)) => {
                if action_spans_enabled {
                    let span = action.create_span(i);
                    action
                        .check_and_execute(&mut state)
                        .instrument(span)
                        .await?;
                } else {
                    action.check_and_execute(&mut state).await?;
                }
                profile.other_action_execute_ms += action_start.elapsed().as_secs_f64() * 1000.0;
            }
            Action::AggregateBundle(_) => anyhow::bail!(
                "aggregate bundle actions are only permitted in the dedicated aggregation pipeline"
            ),
        }
    }
    if let Some(fee_funding) = &tx.transaction_body.fee_funding {
        let action_start = Instant::now();
        transfer_execute_validated(
            &fee_funding.transfer,
            &tx_context,
            validated_fee_funding.expect("fee funding validation must exist"),
            &mut state,
        )
        .await?;
        profile.other_action_execute_ms += action_start.elapsed().as_secs_f64() * 1000.0;
    }
    profile.action_execute_ms = action_execute_start.elapsed().as_secs_f64() * 1000.0;

    Ok(profile)
}

pub(crate) async fn prepare_candidate_read_profiled<S: StateRead + 'static>(
    tx: Arc<Transaction>,
    state: Arc<S>,
    context: HistoricalCheckContext,
    skip_historical: bool,
) -> Result<PreparedCandidateRead> {
    let read_start = Instant::now();
    let mut prepared = PreparedCandidateRead::default();
    ensure_transaction_resource_bounds(tx.as_ref())?;

    let execution_context = TxExecutionContext {
        block_timestamp: context.block_timestamp,
        source: tx.id(),
    };
    let mut anchor_pairs = BTreeSet::new();
    let mut output_payloads = Vec::new();
    let mut spend_nullifiers = Vec::new();
    let mut tx_nullifiers = HashSet::new();
    let action_execute_start = Instant::now();
    let local_precheck_start = Instant::now();

    for (i, action) in tx.actions().enumerate() {
        match action {
            Action::Transfer(transfer) => {
                check_action_timestamp_freshness(
                    transfer.body.target_timestamp,
                    execution_context.block_timestamp,
                )?;
                for input in &transfer.body.inputs {
                    anyhow::ensure!(
                        tx_nullifiers.insert(input.nullifier),
                        "transaction contains duplicate spend nullifier {}",
                        input.nullifier
                    );
                    spend_nullifiers.push(input.nullifier);
                }
                anchor_pairs.insert((transfer.body.compliance_anchor, transfer.body.asset_anchor));
                output_payloads.extend(
                    transfer
                        .body
                        .outputs
                        .iter()
                        .map(|output| output.note_payload.clone()),
                );
            }
            // Note reshape has no compliance anchors. Every proof-bound input
            // nullifier and output payload participates in prepared effects;
            // body-only padding sentinels cannot suppress consensus writes.
            Action::NoteReshape(note_reshape) => {
                for input in &note_reshape.body.inputs {
                    anyhow::ensure!(
                        tx_nullifiers.insert(input.nullifier),
                        "transaction contains duplicate spend nullifier {}",
                        input.nullifier
                    );
                    spend_nullifiers.push(input.nullifier);
                }
                output_payloads.extend(
                    note_reshape
                        .body
                        .outputs
                        .iter()
                        .map(|output| output.note_payload.clone()),
                );
            }
            _ => anyhow::bail!(
                "parallel prepare only supports transfer and note reshape actions, found unsupported action {:?} at index {}",
                action,
                i
            ),
        }
    }
    if let Some(fee_funding) = &tx.transaction_body.fee_funding {
        check_action_timestamp_freshness(
            fee_funding.transfer.body.target_timestamp,
            execution_context.block_timestamp,
        )?;
        for input in &fee_funding.transfer.body.inputs {
            anyhow::ensure!(
                tx_nullifiers.insert(input.nullifier),
                "transaction contains duplicate spend nullifier {}",
                input.nullifier
            );
            spend_nullifiers.push(input.nullifier);
        }
        anchor_pairs.insert((
            fee_funding.transfer.body.compliance_anchor,
            fee_funding.transfer.body.asset_anchor,
        ));
        output_payloads.extend(
            fee_funding
                .transfer
                .body
                .outputs
                .iter()
                .map(|output| output.note_payload.clone()),
        );
    }
    let read_nullifiers = spend_nullifiers.clone();
    prepared.execution_profile.read_local_precheck_ms =
        local_precheck_start.elapsed().as_secs_f64() * 1000.0;

    enum ReadTaskResult {
        Anchor { elapsed_ms: f64, cache_wait_ms: f64 },
        Nullifier(f64),
    }

    let historical_future = async {
        if skip_historical {
            Ok(HistoricalCheckProfile::default())
        } else {
            check_historical_with_context_profiled(Arc::as_ref(&tx), state.clone(), &context).await
        }
    };

    let mut read_tasks = JoinSet::new();
    for (user_anchor, asset_anchor) in anchor_pairs {
        let state = state.clone();
        let anchor_cache = context.anchor_cache.clone();
        read_tasks.spawn(async move {
            validate_compliance_anchors_read_only(
                Arc::as_ref(&state),
                &user_anchor,
                &asset_anchor,
                context.block_height,
                anchor_cache,
            )
            .await
            .map(|(elapsed_ms, cache_wait_ms)| ReadTaskResult::Anchor {
                elapsed_ms,
                cache_wait_ms,
            })
        });
    }
    for nullifier in &read_nullifiers {
        let state = state.clone();
        let nullifier = *nullifier;
        let context = context.clone();
        read_tasks.spawn(async move {
            check_nullifier_read_only(Arc::as_ref(&state), &context, nullifier)
                .await
                .map(ReadTaskResult::Nullifier)
        });
    }

    let read_task_future = async {
        let mut execution_profile = TransactionExecutionProfile::default();
        while let Some(result) = read_tasks.join_next().await {
            match result?? {
                ReadTaskResult::Anchor {
                    elapsed_ms,
                    cache_wait_ms,
                } => {
                    execution_profile.read_anchor_validation_ms += elapsed_ms;
                    execution_profile.read_anchor_cache_wait_ms += cache_wait_ms;
                }
                ReadTaskResult::Nullifier(elapsed_ms) => {
                    execution_profile.read_committed_nullifier_ms += elapsed_ms;
                    execution_profile.read_nullifier_wait_ms += elapsed_ms;
                    execution_profile.spend_nullifier_committed_check_ms += elapsed_ms;
                    execution_profile.spend_nullifier_check_ms += elapsed_ms;
                    execution_profile.nullifier_lookup_count += 1;
                }
            }
        }
        Ok::<TransactionExecutionProfile, anyhow::Error>(execution_profile)
    };

    let read_lookup_wait_start = Instant::now();
    let (historical_profile, read_task_profile) =
        tokio::try_join!(historical_future, read_task_future)?;
    prepared.execution_profile.read_lookup_wait_or_join_ms =
        read_lookup_wait_start.elapsed().as_secs_f64() * 1000.0;

    prepared.check_historical_ms = historical_profile.total_ms;
    prepared.execution_profile.read_historical_check_ms = historical_profile.await_ms;
    prepared.execution_profile.read_anchor_validation_ms +=
        read_task_profile.read_anchor_validation_ms;
    prepared.execution_profile.read_anchor_cache_wait_ms +=
        read_task_profile.read_anchor_cache_wait_ms;
    prepared.execution_profile.read_committed_nullifier_ms +=
        read_task_profile.read_committed_nullifier_ms;
    prepared.execution_profile.read_nullifier_wait_ms += read_task_profile.read_nullifier_wait_ms;
    prepared
        .execution_profile
        .spend_nullifier_committed_check_ms += read_task_profile.spend_nullifier_committed_check_ms;
    prepared.execution_profile.spend_nullifier_check_ms +=
        read_task_profile.spend_nullifier_check_ms;
    prepared.execution_profile.nullifier_lookup_count += read_task_profile.nullifier_lookup_count;

    let effects_build_start = Instant::now();
    prepared.effects.spend_nullifiers = spend_nullifiers;
    prepared.effects.sct_payloads = output_payloads
        .into_iter()
        .map(|note_payload| (note_payload, execution_context.source.clone().into()).into())
        .collect();
    prepared.execution_profile.read_effects_build_ms =
        effects_build_start.elapsed().as_secs_f64() * 1000.0;
    prepared.execution_profile.output_add_note_payload_ms =
        prepared.execution_profile.read_effects_build_ms;
    prepared.execution_profile.output_action_execute_ms =
        prepared.execution_profile.read_effects_build_ms;
    prepared.execution_profile.action_execute_ms =
        action_execute_start.elapsed().as_secs_f64() * 1000.0;
    prepared.read_wall_ms = read_start.elapsed().as_secs_f64() * 1000.0;
    Ok(prepared)
}

pub(crate) fn prepare_candidate_read_blocking_profiled(
    tx: Arc<Transaction>,
    snapshot: Snapshot,
    context: HistoricalCheckContext,
    skip_historical: bool,
    handle: tokio::runtime::Handle,
) -> Result<PreparedCandidateRead> {
    let read_start = Instant::now();
    let mut prepared = PreparedCandidateRead::default();
    ensure_transaction_resource_bounds(tx.as_ref())?;

    let execution_context = TxExecutionContext {
        block_timestamp: context.block_timestamp,
        source: tx.id(),
    };
    let mut anchor_pairs = BTreeSet::new();
    let mut output_payloads = Vec::new();
    let mut spend_nullifiers = Vec::new();
    let mut tx_nullifiers = HashSet::new();
    let action_execute_start = Instant::now();
    let local_precheck_start = Instant::now();

    for (i, action) in tx.actions().enumerate() {
        match action {
            Action::Transfer(transfer) => {
                check_action_timestamp_freshness(
                    transfer.body.target_timestamp,
                    execution_context.block_timestamp,
                )?;
                for input in &transfer.body.inputs {
                    anyhow::ensure!(
                        tx_nullifiers.insert(input.nullifier),
                        "transaction contains duplicate spend nullifier {}",
                        input.nullifier
                    );
                    spend_nullifiers.push(input.nullifier);
                }
                anchor_pairs.insert((transfer.body.compliance_anchor, transfer.body.asset_anchor));
                output_payloads.extend(
                    transfer
                        .body
                        .outputs
                        .iter()
                        .map(|output| output.note_payload.clone()),
                );
            }
            // Note reshape has no compliance anchors. Every proof-bound input
            // nullifier and output payload participates in prepared effects;
            // body-only padding sentinels cannot suppress consensus writes.
            Action::NoteReshape(note_reshape) => {
                for input in &note_reshape.body.inputs {
                    anyhow::ensure!(
                        tx_nullifiers.insert(input.nullifier),
                        "transaction contains duplicate spend nullifier {}",
                        input.nullifier
                    );
                    spend_nullifiers.push(input.nullifier);
                }
                output_payloads.extend(
                    note_reshape
                        .body
                        .outputs
                        .iter()
                        .map(|output| output.note_payload.clone()),
                );
            }
            _ => anyhow::bail!(
                "parallel prepare only supports transfer and note reshape actions, found unsupported action {:?} at index {}",
                action,
                i
            ),
        }
    }
    if let Some(fee_funding) = &tx.transaction_body.fee_funding {
        check_action_timestamp_freshness(
            fee_funding.transfer.body.target_timestamp,
            execution_context.block_timestamp,
        )?;
        for input in &fee_funding.transfer.body.inputs {
            anyhow::ensure!(
                tx_nullifiers.insert(input.nullifier),
                "transaction contains duplicate spend nullifier {}",
                input.nullifier
            );
            spend_nullifiers.push(input.nullifier);
        }
        anchor_pairs.insert((
            fee_funding.transfer.body.compliance_anchor,
            fee_funding.transfer.body.asset_anchor,
        ));
        output_payloads.extend(
            fee_funding
                .transfer
                .body
                .outputs
                .iter()
                .map(|output| output.note_payload.clone()),
        );
    }
    let read_nullifiers = spend_nullifiers.clone();
    prepared.execution_profile.read_local_precheck_ms =
        local_precheck_start.elapsed().as_secs_f64() * 1000.0;

    let lookup_wait_start = Instant::now();
    if skip_historical {
        prepared.check_historical_ms = 0.0;
    } else {
        let historical_profile = check_historical_with_context_sync_profiled(
            Arc::as_ref(&tx),
            &snapshot,
            &context,
            &handle,
        )?;
        prepared.check_historical_ms = historical_profile.total_ms;
        prepared.execution_profile.read_historical_check_ms = historical_profile.await_ms;
    }

    for (user_anchor, asset_anchor) in anchor_pairs {
        let (elapsed_ms, cache_wait_ms) = validate_compliance_anchors_read_only_sync(
            &handle,
            &snapshot,
            &user_anchor,
            &asset_anchor,
            context.block_height,
            context.anchor_cache.clone(),
        )?;
        prepared.execution_profile.read_anchor_validation_ms += elapsed_ms;
        prepared.execution_profile.read_anchor_cache_wait_ms += cache_wait_ms;
    }
    for nullifier in &read_nullifiers {
        let elapsed_ms = check_nullifier_read_only_sync(&handle, &snapshot, &context, *nullifier)?;
        prepared.execution_profile.read_committed_nullifier_ms += elapsed_ms;
        prepared.execution_profile.read_nullifier_wait_ms += elapsed_ms;
        prepared
            .execution_profile
            .spend_nullifier_committed_check_ms += elapsed_ms;
        prepared.execution_profile.spend_nullifier_check_ms += elapsed_ms;
        prepared.execution_profile.nullifier_lookup_count += 1;
    }
    prepared.execution_profile.read_lookup_wait_or_join_ms =
        lookup_wait_start.elapsed().as_secs_f64() * 1000.0;

    let effects_build_start = Instant::now();
    prepared.effects.spend_nullifiers = spend_nullifiers;
    prepared.effects.sct_payloads = output_payloads
        .into_iter()
        .map(|note_payload| (note_payload, execution_context.source.clone().into()).into())
        .collect();
    prepared.execution_profile.read_effects_build_ms =
        effects_build_start.elapsed().as_secs_f64() * 1000.0;
    prepared.execution_profile.output_add_note_payload_ms =
        prepared.execution_profile.read_effects_build_ms;
    prepared.execution_profile.output_action_execute_ms =
        prepared.execution_profile.read_effects_build_ms;
    prepared.execution_profile.action_execute_ms =
        action_execute_start.elapsed().as_secs_f64() * 1000.0;
    prepared.read_wall_ms = read_start.elapsed().as_secs_f64() * 1000.0;
    Ok(prepared)
}

fn check_action_timestamp_freshness(target_timestamp: u64, block_timestamp: u64) -> Result<()> {
    #[cfg(any(test, feature = "benchmark-helpers"))]
    if target_timestamp == 0 && crate::app::benchmark_zero_timestamp_allowed() {
        return Ok(());
    }
    check_timestamp_freshness(
        target_timestamp,
        i64::try_from(block_timestamp).context("block timestamp exceeds i64 range")?,
    )?;
    Ok(())
}

#[async_trait]
impl AppActionHandler for Transaction {
    type CheckStatelessContext = ();

    // We only instrument the top-level `check_stateless`, so we get one span for each transaction.
    #[instrument(skip(self, _context))]
    async fn check_stateless(&self, _context: ()) -> Result<()> {
        validate_transaction_envelope(self)?;

        let context = self.context();

        // Currently, we need to clone the component actions so that the spawned
        // futures can have 'static lifetimes. In the future, we could try to
        // use the yoke crate, but cloning is almost certainly not a big deal
        // for now.
        let mut action_checks = JoinSet::new();
        for (i, action) in self.actions().cloned().enumerate() {
            let context2 = context.clone();
            let span = action.create_span(i);
            action_checks
                .spawn(async move { action.check_stateless(context2).await }.instrument(span));
        }
        // Every verifier is joined before an error is returned.
        drain_joinset_results(
            &mut action_checks,
            "transaction stateless action check task panicked",
        )
        .await?;

        if let Some(fee_funding) = &self.transaction_body.fee_funding {
            Action::Transfer(fee_funding.transfer.clone())
                .check_stateless(context)
                .await?;
        }

        Ok(())
    }

    // We only instrument the top-level `check_stateful`, so we get one span for each transaction.
    #[instrument(skip(self, state))]
    async fn check_historical<S: StateRead + 'static>(&self, state: Arc<S>) -> Result<()> {
        let context = HistoricalCheckContext::load(Arc::as_ref(&state)).await?;
        check_historical_with_context(self, state, &context).await
    }

    // We only instrument the top-level `execute`, so we get one span for each transaction.
    #[instrument(skip(self, _state))]
    async fn check_and_execute<S: StateWrite>(&self, _state: S) -> Result<()> {
        anyhow::bail!("transaction execution requires the canonical verified App pipeline")
    }
}

#[cfg(test)]
mod tests {
    use std::sync::Arc;

    // Serializes tests that read/write SHIELDD_BENCH_ALLOW_ZERO_TARGET_TIMESTAMP to
    // prevent env-var races when tests run in parallel.
    static TIMESTAMP_ENV_MUTEX: std::sync::Mutex<()> = std::sync::Mutex::new(());

    use std::ops::Deref;

    use anyhow::Result;
    use decaf377::Fr;
    use rand_core::OsRng;
    use shieldd_sdk_asset::{asset, Value, BASE_ASSET_ID};
    use shieldd_sdk_compliance::{ComplianceLeaf, IndexedMerkleTree, MerklePath, QuadTree};
    use shieldd_sdk_fee::Fee;
    use shieldd_sdk_keys::{test_keys, Address};
    use shieldd_sdk_shielded_pool::{Note, ShieldedInputPlan, ShieldedOutputPlan, TransferPlan};
    use shieldd_sdk_tct as tct;
    use shieldd_sdk_transaction::{plan::TransactionPlan, TransactionParameters, WitnessData};

    use crate::action_handler::AppActionHandler;

    use super::{
        drain_joinset_results, transaction_action_count_allowed,
        transaction_nullifier_count_allowed, AnchorValidationCache, ClaimedAnchorValidationCache,
    };

    #[test]
    fn transaction_action_count_policy_is_fixed_at_boundary() {
        assert!(transaction_action_count_allowed(512, false));
        assert!(!transaction_action_count_allowed(513, false));
        assert!(transaction_action_count_allowed(511, true));
        assert!(!transaction_action_count_allowed(512, true));
        assert!(!transaction_action_count_allowed(usize::MAX, true));
    }

    #[test]
    fn transaction_nullifier_count_policy_is_fixed_at_boundary() {
        assert!(transaction_nullifier_count_allowed(256));
        assert!(!transaction_nullifier_count_allowed(257));
        assert!(!transaction_nullifier_count_allowed(usize::MAX));
    }

    #[tokio::test]
    async fn structured_join_drain_waits_for_transaction_siblings_after_error() {
        let completed = Arc::new(std::sync::atomic::AtomicBool::new(false));
        let mut tasks = tokio::task::JoinSet::new();
        tasks.spawn(async { anyhow::bail!("injected task failure") });
        let completed_by_sibling = completed.clone();
        tasks.spawn(async move {
            tokio::task::yield_now().await;
            completed_by_sibling.store(true, std::sync::atomic::Ordering::SeqCst);
            Ok::<(), anyhow::Error>(())
        });

        let result = drain_joinset_results(&mut tasks, "injected transaction task panic").await;
        assert!(result.is_err());
        assert!(
            completed.load(std::sync::atomic::Ordering::SeqCst),
            "the sibling must complete before the first error is returned"
        );
        assert!(tasks.is_empty());
    }

    #[tokio::test]
    async fn anchor_validation_cache_counts_shared_pair_once() -> Result<()> {
        let cache = Arc::new(AnchorValidationCache::default());
        let key = (
            tct::StateCommitment::try_from([0; 32]).expect("valid commitment"),
            tct::StateCommitment::try_from([1; 32]).expect("valid commitment"),
            100,
            50,
        );

        let mut tasks = tokio::task::JoinSet::new();
        for _ in 0..8 {
            let cache = cache.clone();
            tasks.spawn(async move {
                let (cell, _hit, _wait_ms) = cache.entry(key);
                let result = cell
                    .get_or_init(|| async { Ok::<(), String>(()) })
                    .await
                    .clone();
                anyhow::ensure!(result.is_ok(), "cache cell should initialize successfully");
                Ok::<(), anyhow::Error>(())
            });
        }

        while let Some(result) = tasks.join_next().await {
            result??;
        }

        let (hits, misses, unique_pairs) = cache.stats();
        assert_eq!(misses, 1);
        assert_eq!(hits, 7);
        assert_eq!(unique_pairs, 1);

        Ok(())
    }

    #[tokio::test]
    async fn claimed_anchor_validation_cache_counts_shared_anchor_once() -> Result<()> {
        let cache = Arc::new(ClaimedAnchorValidationCache::default());
        let anchor = shieldd_sdk_tct::Tree::new().root();

        let mut tasks = tokio::task::JoinSet::new();
        for _ in 0..8 {
            let cache = cache.clone();
            tasks.spawn(async move {
                let (cell, _hit) = cache.entry(anchor);
                let result = cell
                    .get_or_init(|| async { Ok::<(), String>(()) })
                    .await
                    .clone();
                anyhow::ensure!(
                    result.is_ok(),
                    "claimed anchor cell should initialize successfully"
                );
                Ok::<(), anyhow::Error>(())
            });
        }

        while let Some(result) = tasks.join_next().await {
            result??;
        }

        let (hits, misses, unique_values) = cache.stats();
        assert_eq!(misses, 1);
        assert_eq!(hits, 7);
        assert_eq!(unique_values, 1);

        Ok(())
    }

    /// Enrich a shielded input plan with valid compliance data for testing.
    /// Uses unregulated compliance for simplicity.
    fn enrich_spend_for_test<R: rand_core::RngCore + rand_core::CryptoRng>(
        _rng: &mut R,
        spend: &mut ShieldedInputPlan,
        _sender_address: &Address,
    ) {
        let asset_id = spend.note.asset_id();

        // Create IMT non-membership proof (unregulated asset)
        let imt = IndexedMerkleTree::new();
        let (position, indexed_leaf, auth_path) = imt
            .non_membership_proof(asset_id.0)
            .expect("can generate non-membership proof");
        let asset_anchor = tct::StateCommitment(imt.root().0);
        let asset_path = MerklePath::from_auth_path(auth_path);

        // Set IMT data BEFORE set_compliance_details (it reads asset_indexed_leaf for DLEQ)
        spend.asset_anchor = asset_anchor;
        spend.asset_path = asset_path;
        spend.asset_position = position;
        spend.asset_indexed_leaf = indexed_leaf;

        spend
            .set_compliance_details()
            .expect("can set compliance details");

        // Build user tree from the compliance_leaf that set_compliance_details created
        // (has real d derived from address, matching what the circuit will use)
        let user_leaf = spend.compliance_leaf.clone().unwrap();
        let mut user_tree = QuadTree::new();
        user_tree
            .update(0, user_leaf.commit())
            .expect("can update tree");
        let compliance_anchor = tct::StateCommitment(user_tree.root().0);
        let user_auth_path = user_tree.auth_path(0).expect("can get auth path");
        let compliance_path = MerklePath::from_auth_path(user_auth_path);

        spend.compliance_anchor = compliance_anchor;
        spend.compliance_path = compliance_path;
        spend.compliance_position = 0;
    }

    /// Enrich a shielded output plan with valid compliance data for testing.
    /// Uses unregulated compliance for simplicity.
    fn enrich_output_for_test<R: rand_core::RngCore + rand_core::CryptoRng>(
        _rng: &mut R,
        output: &mut ShieldedOutputPlan,
        _sender_address: &Address,
        asset_id: asset::Id,
    ) {
        // Create IMT non-membership proof (unregulated asset)
        let imt = IndexedMerkleTree::new();
        let (position, indexed_leaf, auth_path) = imt
            .non_membership_proof(asset_id.0)
            .expect("can generate non-membership proof");
        let asset_anchor = tct::StateCommitment(imt.root().0);
        let asset_path = MerklePath::from_auth_path(auth_path);

        // Set IMT data BEFORE set_compliance_details (it reads asset_indexed_leaf for DLEQ)
        output.asset_anchor = asset_anchor;
        output.asset_path = asset_path;
        output.asset_position = position;
        output.asset_indexed_leaf = indexed_leaf;

        // Create leaves with real d (matching what the circuit derives)
        let recv_b_d_fq = output
            .dest_address
            .diversified_generator()
            .vartime_compress_to_field();
        let recipient_leaf =
            ComplianceLeaf::new(output.dest_address.clone(), asset_id, recv_b_d_fq);

        output
            .set_compliance_details(&recipient_leaf, Fr::from(0u64))
            .expect("can set compliance details");

        // Build user tree from the compliance_leaf that set_compliance_details created
        // (has real d derived from address, matching what the circuit will use)
        let user_leaf = output.compliance_leaf.clone().unwrap();
        let mut user_tree = QuadTree::new();
        user_tree
            .update(0, user_leaf.commit())
            .expect("can update tree");
        let compliance_anchor = tct::StateCommitment(user_tree.root().0);
        let user_auth_path = user_tree.auth_path(0).expect("can get auth path");
        let compliance_path = MerklePath::from_auth_path(user_auth_path);

        output.compliance_anchor = compliance_anchor;
        output.compliance_path = compliance_path;
        output.compliance_position = 0;
    }

    fn align_transfer_compliance_for_test<R: rand_core::RngCore + rand_core::CryptoRng>(
        rng: &mut R,
        spends: &mut [&mut ShieldedInputPlan],
        outputs: &mut [&mut ShieldedOutputPlan],
    ) {
        let tx_blinding_nonce = Fr::rand(rng);
        let leaves = spends
            .iter()
            .map(|spend| {
                spend
                    .compliance_leaf
                    .clone()
                    .expect("test spend has compliance leaf")
            })
            .chain(outputs.iter().map(|output| {
                output
                    .compliance_leaf
                    .clone()
                    .expect("test output has compliance leaf")
            }))
            .collect::<Vec<_>>();

        let mut user_tree = QuadTree::new();
        for (position, leaf) in leaves.iter().enumerate() {
            user_tree
                .update(position as u64, leaf.commit())
                .expect("can update test compliance tree");
        }
        let compliance_anchor = tct::StateCommitment(user_tree.root().0);

        for (position, spend) in spends.iter_mut().enumerate() {
            let auth_path = user_tree
                .auth_path(position as u64)
                .expect("can get spend compliance path");
            spend.compliance_anchor = compliance_anchor;
            spend.compliance_path = MerklePath::from_auth_path(auth_path);
            spend.compliance_position = position as u64;
            spend.tx_blinding_nonce = tx_blinding_nonce;
        }
        for (index, output) in outputs.iter_mut().enumerate() {
            let position = spends.len() + index;
            let auth_path = user_tree
                .auth_path(position as u64)
                .expect("can get output compliance path");
            output.compliance_anchor = compliance_anchor;
            output.compliance_path = MerklePath::from_auth_path(auth_path);
            output.compliance_position = position as u64;
            output.tx_blinding_nonce = tx_blinding_nonce;
        }
    }

    #[tokio::test]
    async fn check_stateless_succeeds_on_valid_spend() -> Result<()> {
        // Generate a note controlled by the test address.
        let value = Value {
            amount: 100u64.into(),
            asset_id: *BASE_ASSET_ID,
        };
        let note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, value);

        // Record that note in an SCT, where we can generate an auth path.
        let mut sct = tct::Tree::new();
        // Assume there's a bunch of stuff already in the SCT.
        for _ in 0..5 {
            let random_note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, value);
            sct.insert(tct::Witness::Keep, random_note.commit())
                .unwrap();
        }
        sct.insert(tct::Witness::Keep, note.commit()).unwrap();
        // Do we want to seal the SCT block here?
        let auth_path = sct.witness(note.commit()).unwrap();

        // Create plans and enrich with compliance data
        let mut spend1 = ShieldedInputPlan::new(&mut OsRng, note, auth_path.position());
        let mut output1 =
            ShieldedOutputPlan::new(&mut OsRng, value, test_keys::ADDRESS_1.deref().clone());

        enrich_spend_for_test(&mut OsRng, &mut spend1, &test_keys::ADDRESS_0);
        enrich_output_for_test(
            &mut OsRng,
            &mut output1,
            &test_keys::ADDRESS_0,
            value.asset_id,
        );
        align_transfer_compliance_for_test(&mut OsRng, &mut [&mut spend1], &mut [&mut output1]);

        let transfer =
            TransferPlan::from_spend_output(spend1.into(), output1.into(), Fr::rand(&mut OsRng))
                .expect("valid transfer plan");

        let plan = TransactionPlan {
            transaction_parameters: TransactionParameters {
                expiry_height: 0,
                fee: Fee::default(),
                chain_id: "".into(),
            },
            actions: vec![transfer.into()],
            fee_funding: None,
            memo: None,
        };

        // Build the transaction.
        let fvk = &test_keys::FULL_VIEWING_KEY;
        let sk = &test_keys::SPEND_KEY;
        let auth_data = plan.authorize(OsRng, sk)?;
        let witness_data = WitnessData {
            anchor: sct.root(),
            state_commitment_proofs: plan
                .transfer_plans()
                .flat_map(|transfer| transfer.spends.iter())
                .map(|spend| {
                    (
                        spend.note.commit(),
                        sct.witness(spend.note.commit()).unwrap(),
                    )
                })
                .collect(),
        };
        let tx = plan
            .build_concurrent(fvk, &witness_data, &auth_data)
            .await
            .expect("can build transaction");

        let context = tx.context();

        // On the verifier side, perform stateless verification.
        for action in tx.transaction_body().actions {
            let result = action.check_stateless(context.clone()).await;
            assert!(result.is_ok())
        }

        Ok(())
    }

    #[tokio::test]
    async fn check_stateless_fails_on_auth_path_with_wrong_root() -> Result<()> {
        // Generate a note controlled by the test address.
        let value = Value {
            amount: 100u64.into(),
            asset_id: *BASE_ASSET_ID,
        };
        let note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, value);

        // Record that note in an SCT, where we can generate an auth path.
        let mut sct = tct::Tree::new();
        let wrong_root = sct.root();
        sct.insert(tct::Witness::Keep, note.commit()).unwrap();
        let auth_path = sct.witness(note.commit()).unwrap();

        // Create plans and enrich with compliance data
        let mut spend1 = ShieldedInputPlan::new(&mut OsRng, note, auth_path.position());
        let mut output1 =
            ShieldedOutputPlan::new(&mut OsRng, value, test_keys::ADDRESS_1.deref().clone());

        enrich_spend_for_test(&mut OsRng, &mut spend1, &test_keys::ADDRESS_0);
        enrich_output_for_test(
            &mut OsRng,
            &mut output1,
            &test_keys::ADDRESS_0,
            value.asset_id,
        );
        align_transfer_compliance_for_test(&mut OsRng, &mut [&mut spend1], &mut [&mut output1]);

        let transfer =
            TransferPlan::from_spend_output(spend1.into(), output1.into(), Fr::rand(&mut OsRng))
                .expect("valid transfer plan");

        let plan = TransactionPlan {
            transaction_parameters: TransactionParameters {
                expiry_height: 0,
                fee: Fee::default(),
                chain_id: "".into(),
            },
            actions: vec![transfer.into()],
            fee_funding: None,
            memo: None,
        };

        // Build the transaction.
        let fvk = &test_keys::FULL_VIEWING_KEY;
        let sk = &test_keys::SPEND_KEY;
        let auth_data = plan.authorize(OsRng, sk)?;
        let witness_data = WitnessData {
            anchor: sct.root(),
            state_commitment_proofs: plan
                .transfer_plans()
                .flat_map(|transfer| transfer.spends.iter())
                .map(|spend| {
                    (
                        spend.note.commit(),
                        sct.witness(spend.note.commit()).unwrap(),
                    )
                })
                .collect(),
        };
        let mut tx = plan
            .build_concurrent(fvk, &witness_data, &auth_data)
            .await
            .expect("can build transaction");

        // Set the anchor to the wrong root.
        tx.anchor = wrong_root;

        // On the verifier side, perform stateless verification.
        let result = tx.check_stateless(()).await;
        assert!(result.is_err());

        Ok(())
    }

    #[test]
    fn zero_timestamp_requires_benchmark_override() {
        let _guard = TIMESTAMP_ENV_MUTEX.lock().unwrap();
        std::env::remove_var("SHIELDD_BENCH_ALLOW_ZERO_TARGET_TIMESTAMP");
        assert!(super::check_action_timestamp_freshness(0, 1_700_000_000).is_err());
    }

    #[test]
    fn zero_timestamp_is_allowed_when_benchmark_override_is_set() {
        let _guard = TIMESTAMP_ENV_MUTEX.lock().unwrap();
        std::env::set_var("SHIELDD_BENCH_ALLOW_ZERO_TARGET_TIMESTAMP", "1");
        let result = super::check_action_timestamp_freshness(0, 1_700_000_000);
        std::env::remove_var("SHIELDD_BENCH_ALLOW_ZERO_TARGET_TIMESTAMP");
        assert!(result.is_ok());
    }

    #[test]
    fn nonzero_timestamps_still_enforce_timestamp_freshness() {
        let _guard = TIMESTAMP_ENV_MUTEX.lock().unwrap();
        assert!(super::check_action_timestamp_freshness(1_700_000_000, 1_700_000_100).is_ok());
        assert!(super::check_action_timestamp_freshness(1_700_000_000, 1_700_003_700).is_err());
    }
}
