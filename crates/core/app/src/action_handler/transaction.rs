use std::sync::Arc;
use std::time::Instant;

use anyhow::{Context as _, Result};
use async_trait::async_trait;
use cnidarium::{StateRead, StateWrite};
use shieldd_sdk_fee::component::FeePay as _;
use shieldd_sdk_sct::component::clock::EpochRead;
use shieldd_sdk_sct::component::source::SourceContext;
use shieldd_sdk_shielded_pool::component::{
    note_reshape_execute_verified, shielded_ics20_withdrawal_execute_verified,
    transfer_execute_verified, ClueManager, Ics20Transfer, StateReadExt as _,
};
use shieldd_sdk_shielded_pool::fmd;
use shieldd_sdk_transaction::{gas::GasCost as _, Action, Transaction};
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
    claimed_anchor_is_valid, fmd_parameters_valid_with_context,
    tx_parameters_historical_check_with_context,
};
use stateless::{
    check_memo_exists_if_outputs_absent_if_not, check_non_empty_transaction,
    num_clues_equal_to_num_outputs, valid_binding_signature,
};

#[derive(Clone, Copy, Debug, Default)]
pub(crate) struct TransactionExecutionProfile {
    pub set_source_ms: f64,
    pub pay_fee_ms: f64,
    pub action_execute_ms: f64,
    pub other_action_execute_ms: f64,
    pub record_clues_ms: f64,
}

#[derive(Clone, Debug)]
pub(crate) struct HistoricalCheckContext {
    pub chain_id: String,
    pub block_height: u64,
    pub fmd_meta_params: fmd::MetaParameters,
    pub previous_fmd_parameters: fmd::Parameters,
    pub current_fmd_parameters: fmd::Parameters,
}

impl HistoricalCheckContext {
    pub(crate) async fn load<S: StateRead>(state: &S) -> Result<Self> {
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
            fmd_meta_params: shielded_pool_params.fmd_meta_params,
            previous_fmd_parameters: state
                .get_previous_fmd_parameters()
                .await
                .expect("chain params request must succeed"),
            current_fmd_parameters: state
                .get_current_fmd_parameters()
                .await
                .expect("chain params request must succeed"),
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
    num_clues_equal_to_num_outputs(tx)?;
    check_memo_exists_if_outputs_absent_if_not(tx)?;
    check_non_empty_transaction(tx)
}

pub(crate) async fn check_historical_with_context<S: StateRead + 'static>(
    tx: &Transaction,
    state: Arc<S>,
    context: &HistoricalCheckContext,
) -> Result<()> {
    ensure_transaction_resource_bounds(tx)?;
    tx_parameters_historical_check_with_context(tx, context)?;
    fmd_parameters_valid_with_context(tx, context)?;

    claimed_anchor_is_valid(state.clone(), tx).await?;

    let mut action_checks = JoinSet::new();
    for (i, action) in tx.actions().cloned().enumerate() {
        let state2 = state.clone();
        let span = action.create_span(i);
        action_checks.spawn(async move { action.check_historical(state2).await }.instrument(span));
    }

    drain_joinset_results(&mut action_checks, "historical action check task panicked").await?;
    Ok(())
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
            Action::ValidatorDefinition(_)
            | Action::ProposalSubmit(_)
            | Action::ValidatorVote(_)
            | Action::ComplianceRegisterAsset(_)
            | Action::ComplianceRegisterUser(_) => {
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
        }
    }
    if let Some(fee_funding) = &tx.transaction_body.fee_funding {
        let action_start = Instant::now();
        transfer_execute_verified(
            &fee_funding.transfer,
            &tx_context,
            artifact.proof_for_slot(ProofSlot::FeeFunding)?,
            &mut state,
        )
        .await?;
        profile.other_action_execute_ms += action_start.elapsed().as_secs_f64() * 1000.0;
    }
    profile.action_execute_ms = action_execute_start.elapsed().as_secs_f64() * 1000.0;

    let record_clues_start = Instant::now();
    state.put_current_source(None);
    for clue in tx
        .transaction_body
        .detection_data
        .iter()
        .flat_map(|x| x.fmd_clues.iter())
    {
        state.record_clue(clue.clone(), tx_id.clone()).await?;
    }
    profile.record_clues_ms = record_clues_start.elapsed().as_secs_f64() * 1000.0;

    Ok(profile)
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
    use shieldd_sdk_transaction::{
        plan::{CluePlan, DetectionDataPlan, TransactionPlan},
        TransactionParameters, WitnessData,
    };

    use crate::action_handler::AppActionHandler;

    use super::{
        drain_joinset_results, transaction_action_count_allowed,
        transaction_nullifier_count_allowed,
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
    fn enrich_output_for_test(output: &mut ShieldedOutputPlan, asset_id: asset::Id) {
        // Create IMT non-membership proof (unregulated asset)
        let imt = IndexedMerkleTree::new();
        let (position, indexed_leaf, auth_path) = imt
            .non_membership_proof(asset_id.0)
            .expect("can generate non-membership proof");
        let asset_anchor = tct::StateCommitment(imt.root().0);
        let asset_path = MerklePath::from_auth_path(auth_path);

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
            .set_compliance_details(
                &recipient_leaf,
                Fr::from(0u64), // tx_blinding_nonce
            )
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
        enrich_output_for_test(&mut output1, value.asset_id);
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
            detection_data: Some(DetectionDataPlan {
                clue_plans: vec![CluePlan::new(
                    &mut OsRng,
                    test_keys::ADDRESS_1.deref().clone(),
                    1.try_into().unwrap(),
                )],
            }),
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
        enrich_output_for_test(&mut output1, value.asset_id);
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
            detection_data: None,
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
}
