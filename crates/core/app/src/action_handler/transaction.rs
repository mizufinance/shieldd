use std::collections::HashMap;
use std::sync::{Arc, RwLock};

use anyhow::{Context as _, Result};
use async_trait::async_trait;
use cnidarium::{StateRead, StateWrite};
use futures::{stream::FuturesUnordered, TryStreamExt as _};
use shieldd_sdk_compact_block::{component::RoutingManager as _, PendingRoutingAction};
use shieldd_sdk_compliance::{
    AuditEffect, AuditEffectRecord, AuditLogWrite as _, AuditSource, WithdrawalKind,
};
use shieldd_sdk_fee::component::FeePay as _;
use shieldd_sdk_sct::component::clock::EpochRead;
use shieldd_sdk_sct::component::source::SourceContext;
use shieldd_sdk_sct::nullifier_generation::{empty_history_head, PROTOCOL_VERSION};
use shieldd_sdk_sct::Nullifier;
use shieldd_sdk_shielded_pool::component::{
    note_reshape_execute_verified, shielded_host_withdrawal_execute_verified,
    transfer_execute_validated, transfer_execute_verified, transfer_validate_verified,
    AssetRegistryRead as _, NoteManager as _, StateReadExt as _,
};
use shieldd_sdk_shielded_pool::discovery;
use shieldd_sdk_shielded_pool::TransferProofContext;
use shieldd_sdk_transaction::{gas::GasCost as _, Action, Transaction};
use shieldd_sdk_txhash::{AuthorizingData, EffectingData as _};
use tokio::sync::OnceCell;
use tracing::{instrument, Instrument};

use super::AppActionHandler;
use crate::{
    app::{StateReadExt as _, MAX_TRANSACTION_ACTION_COUNT, MAX_TRANSACTION_NULLIFIER_COUNT},
    stateless_cache::{ProofSlot, VerifiedTxArtifact},
};

#[cfg(test)]
mod cancellation_tests;
mod stateful;
pub(crate) mod stateless;

use self::stateful::{
    claimed_anchor_is_valid, discovery_parameters_valid_with_context,
    tx_parameters_historical_check_with_context,
};
use crate::stateless_cache::VerifiedHistoricalInput;
use stateless::{
    check_memo_exists_if_outputs_absent_if_not, check_non_empty_transaction,
    valid_binding_signature,
};

type ClaimedAnchorKey = shieldd_sdk_tct::Root;
type ValidationCell = Arc<OnceCell<std::result::Result<(), String>>>;

#[derive(Debug)]
pub(crate) struct ValidationCache<K> {
    entries: RwLock<HashMap<K, ValidationCell>>,
}

impl<K> Default for ValidationCache<K> {
    fn default() -> Self {
        Self {
            entries: RwLock::new(HashMap::new()),
        }
    }
}

impl<K: Eq + std::hash::Hash> ValidationCache<K> {
    fn entry(&self, key: K) -> ValidationCell {
        if let Some(cell) = self
            .entries
            .read()
            .expect("validation cache poisoned")
            .get(&key)
        {
            return cell.clone();
        }
        self.entries
            .write()
            .expect("validation cache poisoned")
            .entry(key)
            .or_insert_with(|| Arc::new(OnceCell::new()))
            .clone()
    }
}

type ClaimedAnchorValidationCache = ValidationCache<ClaimedAnchorKey>;

/// Capture only the payloads appended by this action. Persistent-vector slicing
/// avoids walking or cloning payloads staged by earlier transactions.
fn stage_action_routing<S: StateWrite>(
    state: &mut S,
    transaction_id: shieldd_sdk_txhash::TransactionId,
    action_index: usize,
    tags: Vec<discovery::RoutingTag>,
    note_start: usize,
    volume_start: usize,
) -> Result<()> {
    let mut notes = state.pending_note_payloads();
    let mut volumes = state.pending_volume_accumulator_payloads();
    let mut payload_positions = notes
        .slice(note_start..)
        .iter()
        .map(|(pos, _, _)| u64::from(*pos))
        .chain(
            volumes
                .slice(volume_start..)
                .iter()
                .map(|(pos, _, _)| u64::from(*pos)),
        )
        .collect::<Vec<_>>();
    payload_positions.sort_unstable();
    state.stage_routing_actions([PendingRoutingAction {
        transaction_id,
        action_index: action_index
            .try_into()
            .context("action index exceeds u32")?,
        tags,
        payload_positions,
    }]);
    Ok(())
}

fn push_transaction_audit_effect(
    records: &mut Vec<AuditEffectRecord>,
    height: u64,
    transaction_id: [u8; 32],
    action_index: u32,
    effect_index: u32,
    effect: AuditEffect,
) {
    records.push(AuditEffectRecord {
        source: AuditSource::ShielddTransaction {
            height,
            transaction_id,
            action_index,
            effect_index,
        },
        effect,
    });
}

fn push_transfer_audit_effects(
    records: &mut Vec<AuditEffectRecord>,
    height: u64,
    transaction_id: [u8; 32],
    action_index: u32,
    transfer: &shieldd_sdk_shielded_pool::Transfer,
) -> Result<()> {
    let mut effect_index = 0u32;
    for output in &transfer.body.outputs {
        if !output.compliance_ciphertext.is_empty() {
            push_transaction_audit_effect(
                records,
                height,
                transaction_id,
                action_index,
                effect_index,
                AuditEffect::TransferOutput {
                    asset_anchor: transfer.body.asset_anchor,
                    compliance_ciphertext: output.compliance_ciphertext.clone(),
                    compliance_metadata: output.compliance_metadata.clone(),
                },
            );
            effect_index = effect_index
                .checked_add(1)
                .context("transfer audit effect index overflow")?;
        }
    }
    Ok(())
}

fn transaction_audit_effects(tx: &Transaction, height: u64) -> Result<Vec<AuditEffectRecord>> {
    let transaction_id = tx.id().0;
    let mut records = Vec::new();

    for (action_index, action) in tx.actions().enumerate() {
        let action_index = u32::try_from(action_index).context("action index exceeds u32")?;
        match action {
            Action::Transfer(transfer) => push_transfer_audit_effects(
                &mut records,
                height,
                transaction_id,
                action_index,
                transfer,
            )?,
            Action::NoteReshape(note_reshape) => push_transaction_audit_effect(
                &mut records,
                height,
                transaction_id,
                action_index,
                0,
                AuditEffect::NoteReshape {
                    action_effect_hash: note_reshape.effect_hash().0,
                },
            ),

            Action::ShieldedHostWithdrawal(withdrawal) => {
                let value = withdrawal.body.withdrawal.value;
                push_transaction_audit_effect(
                    &mut records,
                    height,
                    transaction_id,
                    action_index,
                    0,
                    AuditEffect::Withdrawal {
                        kind: WithdrawalKind::Host,
                        asset_id: value.asset_id,
                        amount: value.amount.value(),
                        asset_anchor: withdrawal.body.asset_anchor,
                        compliance_ciphertext: withdrawal
                            .body
                            .withdrawal_compliance_ciphertext
                            .to_bytes()
                            .to_vec(),
                    },
                );
            }

            Action::ComplianceRegisterAsset(registration) => push_transaction_audit_effect(
                &mut records,
                height,
                transaction_id,
                action_index,
                0,
                AuditEffect::AssetRegistered {
                    asset_id: registration.asset_id,
                    is_regulated: registration.is_regulated,
                },
            ),
            Action::ComplianceRegisterUser(registration) => push_transaction_audit_effect(
                &mut records,
                height,
                transaction_id,
                action_index,
                0,
                AuditEffect::UserRegistered {
                    asset_id: registration.leaf.asset_id,
                    address: registration.leaf.address.clone(),
                },
            ),
        }
    }

    if let Some(fee_funding) = &tx.transaction_body.fee_funding {
        let action_index =
            u32::try_from(tx.transaction_body.actions.len()).context("action index exceeds u32")?;
        push_transfer_audit_effects(
            &mut records,
            height,
            transaction_id,
            action_index,
            &fee_funding.transfer,
        )?;
    }

    for record in &records {
        record.validate()?;
    }
    Ok(records)
}

pub(crate) async fn append_transaction_audit_effects<S: StateWrite + ?Sized>(
    state: &mut S,
    records: impl IntoIterator<Item = AuditEffectRecord>,
) -> Result<()> {
    for record in records {
        state.append_audit_effect(record).await?;
    }
    Ok(())
}

#[derive(Clone, Debug)]
pub(crate) struct HistoricalCheckContext {
    pub chain_id: String,
    pub block_height: u64,
    pub discovery_grace_period_blocks: u64,
    pub previous_discovery_parameters: discovery::Parameters,
    pub current_discovery_parameters: discovery::Parameters,
    pub claimed_anchor_cache: Arc<ClaimedAnchorValidationCache>,
    pub nullifier_window: shieldd_sdk_sct::nullifier_generation::NullifierWindow,
}

impl HistoricalCheckContext {
    pub(crate) async fn load<S: StateRead>(state: &S) -> Result<Self> {
        let shielded_pool_params = state
            .get_shielded_pool_params()
            .await
            .context("loading shielded pool parameters")?;
        let nullifier_window = shieldd_sdk_sct::nullifier_tree::generation_state(state)
            .await?
            .window();

        Ok(Self {
            chain_id: state.get_chain_id().await?,
            block_height: state.get_block_height().await?,
            discovery_grace_period_blocks: shielded_pool_params.discovery_grace_period_blocks,
            previous_discovery_parameters: state
                .get_previous_discovery_parameters()
                .await
                .context("loading previous discovery parameters")?,
            current_discovery_parameters: state
                .get_current_discovery_parameters()
                .await
                .context("loading current discovery parameters")?,
            claimed_anchor_cache: Arc::new(ClaimedAnchorValidationCache::default()),
            nullifier_window,
        })
    }
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
        .saturating_add(tx.volume_nullifiers().count())
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
        "transaction proof-bound nullifier count {} exceeds maximum {}",
        nullifier_count,
        MAX_TRANSACTION_NULLIFIER_COUNT
    );
    Ok(())
}

pub(crate) fn validate_transaction_envelope(tx: &Transaction) -> Result<()> {
    ensure_transaction_resource_bounds(tx)?;
    tx.transaction_body.validate_nullifier_history()?;
    stateless::distinct_spend_keys(tx)?;
    valid_binding_signature(tx)?;
    check_memo_exists_if_outputs_absent_if_not(tx)?;
    check_non_empty_transaction(tx)
}

pub(crate) fn verify_historical_proofs(
    tx: &Transaction,
    registry: &shieldd_sdk_proof_params::pari::Registry,
) -> Result<Vec<VerifiedHistoricalInput>> {
    tx.transaction_body.validate_nullifier_history()?;
    let old_nullifiers = tx.transaction_body.historical_nullifiers();
    if old_nullifiers.is_empty() {
        return Ok(Vec::new());
    }
    let window = tx
        .transaction_body
        .nullifier_window
        .context("old inputs require a nullifier window")?;
    let auth_hash = tx.auth_hash();
    old_nullifiers
        .into_iter()
        .zip(&tx.transaction_body.historical_nullifier_proofs)
        .map(|(nullifier, bundle)| {
            verify_historical_nullifier_proof(nullifier, window, bundle, registry)?;
            Ok(VerifiedHistoricalInput::new(nullifier, window, auth_hash))
        })
        .collect()
}

pub(crate) fn verify_historical_nullifier_proof(
    nullifier: Nullifier,
    window: shieldd_sdk_sct::nullifier_generation::NullifierWindow,
    bundle: &shieldd_sdk_sct::nullifier_generation::HistoricalNullifierProof,
    registry: &shieldd_sdk_proof_params::pari::Registry,
) -> Result<()> {
    bundle.validate_structure(window)?;
    let nullifier_bytes: [u8; 32] = nullifier.into();
    let mut expected_head = empty_history_head();
    for chunk in &bundle.completed_chunks {
        shieldd_sdk_proof_params::historical::verify_chunk(
            registry,
            shieldd_sdk_proof_params::historical::ChunkClaim {
                protocol_version: PROTOCOL_VERSION,
                nullifier: nullifier_bytes,
                chunk_index: chunk.chunk_index,
                start_history_head: expected_head,
                end_history_head: chunk.end_history_head,
            },
            &chunk.proof,
        )?;
        expected_head = chunk.end_history_head;
    }
    for generation in &bundle.tail {
        let end_history_head = shieldd_sdk_sct::nullifier_generation::append_history(
            expected_head,
            generation.generation_index,
            generation.generation_root,
            generation.generation_start_position,
            generation.generation_end_position,
        )?;
        shieldd_sdk_proof_params::historical::verify_generation(
            registry,
            shieldd_sdk_proof_params::historical::GenerationClaim {
                protocol_version: PROTOCOL_VERSION,
                nullifier: nullifier_bytes,
                generation_index: generation.generation_index,
                generation_root: generation.generation_root,
                generation_start_position: generation.generation_start_position,
                generation_end_position: generation.generation_end_position,
                start_history_head: expected_head,
                end_history_head,
            },
            &generation.proof,
        )?;
        expected_head = end_history_head;
    }
    anyhow::ensure!(
        expected_head == window.archived_history_head,
        "verified historical proof has the wrong terminal history head"
    );
    Ok(())
}

async fn validate_claimed_anchor_read_only<S: StateRead>(
    state: Arc<S>,
    tx: &Transaction,
    claimed_anchor_cache: Arc<ClaimedAnchorValidationCache>,
) -> Result<()> {
    let anchor = tx.anchor;

    let cell = claimed_anchor_cache.entry(anchor);
    let result = cell
        .get_or_init(|| async move {
            claimed_anchor_is_valid(state, tx)
                .await
                .map_err(|e| e.to_string())
        })
        .await;

    match result {
        Ok(()) => Ok(()),
        Err(error) => anyhow::bail!(error.clone()),
    }
}

fn action_requires_historical_check(action: &Action) -> bool {
    matches!(action, Action::ShieldedHostWithdrawal(_))
}

pub(crate) async fn check_historical_with_context<S: StateRead + 'static>(
    tx: &Transaction,
    state: Arc<S>,
    context: &HistoricalCheckContext,
) -> Result<()> {
    let mut action_checks = FuturesUnordered::new();

    ensure_transaction_resource_bounds(tx)?;
    tx_parameters_historical_check_with_context(tx, context)?;
    stateful::nullifier_window_valid_with_context(tx, context)?;
    discovery_parameters_valid_with_context(tx, context)?;

    validate_claimed_anchor_read_only(state.clone(), tx, context.claimed_anchor_cache.clone())
        .await?;

    for (i, action) in tx.actions().enumerate() {
        if !action_requires_historical_check(action) {
            continue;
        }

        let span = action.create_span(i);
        action_checks.push(action.check_historical(state.clone()).instrument(span));
    }

    // Dropping this scope releases every state borrow before execution can resume.
    while action_checks.try_next().await?.is_some() {}

    Ok(())
}

pub(crate) async fn check_and_execute<S>(artifact: &VerifiedTxArtifact, mut state: S) -> Result<()>
where
    S: StateWrite,
{
    let tx = artifact.tx().as_ref();
    artifact.ensure_historical_coverage()?;

    ensure_transaction_resource_bounds(tx)?;
    let tx_context = tx.context();
    let tx_id = tx.id();
    let action_spans_enabled = tracing::enabled!(tracing::Level::INFO);

    state.put_current_source(Some(tx_id.clone()));

    let gas_used = tx.gas_cost();
    let fee = tx.transaction_body.transaction_parameters.fee;
    state.pay_fee(gas_used, fee).await?;

    let height = state.get_block_height().await?;
    append_transaction_audit_effects(&mut state, transaction_audit_effects(tx, height)?).await?;
    // Fee funding is hashed before body actions and validates against the
    // pre-transaction roots used to build its proof. Its effects remain in
    // their original post-body position to preserve commitment ordering.
    let validated_fee_funding = if let Some(fee_funding) = &tx.transaction_body.fee_funding {
        let validated = transfer_validate_verified(
            &fee_funding.transfer,
            &tx_context,
            artifact.proof_for_slot(ProofSlot::FeeFunding)?,
            TransferProofContext::FeeFunding,
            &mut state,
        )
        .await?;

        Some(validated)
    } else {
        None
    };
    for (i, action) in tx.actions().enumerate() {
        let note_start = state.pending_note_payloads().len();
        let volume_start = state.pending_volume_accumulator_payloads().len();
        match action {
            Action::Transfer(action) => {
                transfer_execute_verified(
                    action,
                    &tx_context,
                    artifact.proof_for_slot(ProofSlot::BodyAction(i))?,
                    TransferProofContext::Ordinary,
                    &mut state,
                )
                .await?;
            }
            Action::NoteReshape(action) => {
                note_reshape_execute_verified(
                    action,
                    &tx_context,
                    artifact.proof_for_slot(ProofSlot::BodyAction(i))?,
                    &mut state,
                )
                .await?;
            }

            Action::ShieldedHostWithdrawal(action) => {
                shielded_host_withdrawal_execute_verified(
                    action,
                    &tx_context,
                    artifact.proof_for_slot(ProofSlot::BodyAction(i))?,
                    &mut state,
                )
                .await?;
            }

            action @ Action::ComplianceRegisterAsset(registration) => {
                if registration.is_regulated {
                    anyhow::ensure!(
                        state
                            .denom_metadata_by_asset(&registration.asset_id)
                            .await
                            .is_none(),
                        "regulated asset must be registered before its first issuance"
                    );
                }
                if action_spans_enabled {
                    let span = action.create_span(i);
                    action
                        .check_and_execute(&mut state)
                        .instrument(span)
                        .await?;
                } else {
                    action.check_and_execute(&mut state).await?;
                }
            }
            action @ Action::ComplianceRegisterUser(_) => {
                if action_spans_enabled {
                    let span = action.create_span(i);
                    action
                        .check_and_execute(&mut state)
                        .instrument(span)
                        .await?;
                } else {
                    action.check_and_execute(&mut state).await?;
                }
            }
        }
        let tags = match action {
            Action::Transfer(action) => Some(action.body.routing.tags.to_vec()),
            Action::NoteReshape(action) => Some(vec![action.body.routing_tag]),
            Action::ShieldedHostWithdrawal(action) => Some(vec![action.body.routing_tag]),
            _ => None,
        };
        if let Some(tags) = tags {
            stage_action_routing(&mut state, tx_id, i, tags, note_start, volume_start)?;
        }
    }
    if let Some(fee_funding) = &tx.transaction_body.fee_funding {
        let note_start = state.pending_note_payloads().len();
        let volume_start = state.pending_volume_accumulator_payloads().len();
        transfer_execute_validated(
            &fee_funding.transfer,
            &tx_context,
            validated_fee_funding.expect("fee funding validation must exist"),
            &mut state,
        )
        .await?;
        stage_action_routing(
            &mut state,
            tx_id,
            tx.transaction_body.actions.len(),
            fee_funding.transfer.body.routing.tags.to_vec(),
            note_start,
            volume_start,
        )?;
    }

    Ok(())
}

#[async_trait]
impl AppActionHandler for Transaction {
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
    use std::sync::{
        atomic::{AtomicUsize, Ordering},
        Arc,
    };

    use anyhow::Result;

    use super::{
        transaction_action_count_allowed, transaction_nullifier_count_allowed,
        ClaimedAnchorValidationCache,
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
    async fn claimed_anchor_validation_cache_counts_shared_anchor_once() -> Result<()> {
        let cache = Arc::new(ClaimedAnchorValidationCache::default());
        let anchor = shieldd_sdk_tct::Tree::new().root();

        let initializations = Arc::new(AtomicUsize::new(0));
        let mut tasks = tokio::task::JoinSet::new();
        for _ in 0..8 {
            let cache = cache.clone();
            let initializations = initializations.clone();
            tasks.spawn(async move {
                let cell = cache.entry(anchor);
                let result = cell
                    .get_or_init(|| async {
                        initializations.fetch_add(1, Ordering::Relaxed);
                        Ok::<(), String>(())
                    })
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

        assert_eq!(initializations.load(Ordering::Relaxed), 1);
        assert_eq!(cache.entries.read().unwrap().len(), 1);

        Ok(())
    }
}
