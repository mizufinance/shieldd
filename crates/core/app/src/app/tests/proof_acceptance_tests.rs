use super::*;

use std::time::Duration;

use cnidarium::ArcStateDeltaExt as _;
use shieldd_sdk_compact_block::component::StateReadExt as _;
use shieldd_sdk_sct::component::tree::SctRead as _;
use shieldd_sdk_shielded_pool::{HostWithdrawal, Note, NoteReshapeFamilyId};
use tokio::sync::OnceCell;

use crate::app::{HostBlock, HostExecution, MAX_BLOCK_TXS_PAYLOAD_BYTES};
use crate::stateless_cache::ProofSlot;

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
enum DeployedProofFamily {
    Transfer,
    NoteReshape(NoteReshapeFamilyId),
    ShieldedWithdrawal,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
enum FixtureProofSlot {
    BodyAction,
    FeeFunding,
}

impl DeployedProofFamily {
    fn label(self) -> &'static str {
        match self {
            Self::Transfer => "transfer",
            Self::NoteReshape(family) => family.label(),
            Self::ShieldedWithdrawal => "shielded_withdrawal",
        }
    }

    fn fixture_binding_blinding(self) -> Fr {
        match self {
            Self::Transfer => Fr::from(1u64),
            Self::NoteReshape(family) => Fr::from(u64::from(family.get())),
            Self::ShieldedWithdrawal => Fr::from(29u64),
        }
    }
}

#[derive(Clone)]
struct FamilyFixture {
    family: DeployedProofFamily,
    proof_slot: FixtureProofSlot,
    binding_blinding: Fr,
    tx_bytes: Vec<u8>,
}

impl FamilyFixture {
    fn body_action(family: DeployedProofFamily, tx_bytes: Vec<u8>) -> Self {
        Self {
            family,
            proof_slot: FixtureProofSlot::BodyAction,
            binding_blinding: family.fixture_binding_blinding(),
            tx_bytes,
        }
    }

    fn fee_funding(tx_bytes: Vec<u8>) -> Self {
        Self {
            family: DeployedProofFamily::Transfer,
            proof_slot: FixtureProofSlot::FeeFunding,
            binding_blinding: Fr::from(3u64),
            tx_bytes,
        }
    }

    fn label(&self) -> &'static str {
        match self.proof_slot {
            FixtureProofSlot::BodyAction => self.family.label(),
            FixtureProofSlot::FeeFunding => "transfer_fee_funding",
        }
    }
}

struct FamilyFixtureSet {
    _storage_guard: TempStorage,
    fixtures: Vec<FamilyFixture>,
    fee_funding_fixture: FamilyFixture,
}

static FAMILY_FIXTURES: OnceCell<FamilyFixtureSet> = OnceCell::const_new();

async fn family_fixtures() -> Result<&'static FamilyFixtureSet> {
    FAMILY_FIXTURES
        .get_or_try_init(build_family_fixture_set)
        .await
}

async fn build_family_fixture_set() -> Result<FamilyFixtureSet> {
    let storage = build_fixture_storage().await?;
    let client = Arc::new(
        MockClient::new(test_keys::SPEND_KEY.clone())
            .with_sync_to_storage(&storage)
            .await?,
    );
    let notes = client
        .notes
        .values()
        .filter(|note| {
            note.asset_id() == *BASE_ASSET_ID
                && note.address() == test_keys::ADDRESS_0.deref().clone()
        })
        .cloned()
        .take(FIXTURE_REQUIRED_NOTES)
        .collect::<Vec<_>>();
    anyhow::ensure!(
        notes.len() == FIXTURE_REQUIRED_NOTES,
        "expected {FIXTURE_REQUIRED_NOTES} genesis notes, got {}",
        notes.len()
    );

    let mut note_cursor = 0usize;
    let transfer_note = notes[note_cursor].clone();
    note_cursor += 1;
    let transfer_action = transfer_plan(
        &client,
        transfer_note,
        Fr::from(1u64),
        test_keys::ADDRESS_1.deref().clone(),
    )?;
    let fee_funding_body_action =
        shieldd_sdk_mock_client::ActionIntent::from(transfer_action.clone());

    let fee_funding_note = notes[note_cursor].clone();
    note_cursor += 1;
    let fee_funding_transfer = transfer_plan(
        &client,
        fee_funding_note.clone(),
        Fr::from(2u64),
        fee_funding_note.address(),
    )?;

    let mut family_actions = vec![(
        DeployedProofFamily::Transfer,
        shieldd_sdk_mock_client::ActionIntent::from(transfer_action),
    )];

    for family in NoteReshapeFamilyId::ALL {
        let real_input_count = family.min_real_inputs();
        let real_output_count = family.min_real_outputs();
        let family_notes = &notes[note_cursor..note_cursor + real_input_count];
        note_cursor += real_input_count;
        let spends = family_notes
            .iter()
            .cloned()
            .map(|note| spend_plan(&client, note))
            .collect::<Result<Vec<_>>>()?;
        let total_amount = FIXTURE_ALLOCATION_AMOUNT
            .checked_mul(u64::try_from(real_input_count)?)
            .context("summing note reshape input amount")?;
        anyhow::ensure!(
            total_amount % u64::try_from(real_output_count)? == 0,
            "test amount must divide evenly across real outputs"
        );
        let output_amount = total_amount / u64::try_from(real_output_count)?;
        let outputs = (0..real_output_count)
            .map(|_| {
                ShieldedOutputPlan::new(
                    &mut OsRng,
                    Value {
                        amount: Amount::from(output_amount),
                        asset_id: *BASE_ASSET_ID,
                    },
                    test_keys::ADDRESS_0.deref().clone(),
                )
            })
            .collect();
        let action = shieldd_sdk_mock_client::NoteReshapeIntent {
            family_id: family,
            spends: spends,
            outputs: outputs,
            value_blinding: Fr::from(u64::from(family.get())),
        };
        family_actions.push((
            DeployedProofFamily::NoteReshape(family),
            shieldd_sdk_mock_client::ActionIntent::from(action),
        ));
    }

    let withdrawal_note = notes[note_cursor].clone();
    note_cursor += 1;
    let withdrawal_action = withdrawal_plan(&client, withdrawal_note, Fr::from(29u64))?;
    family_actions.push((
        DeployedProofFamily::ShieldedWithdrawal,
        shieldd_sdk_mock_client::ActionIntent::from(withdrawal_action),
    ));

    anyhow::ensure!(
        note_cursor == FIXTURE_REQUIRED_NOTES,
        "fixture note accounting drifted: used {note_cursor}, expected {FIXTURE_REQUIRED_NOTES}"
    );

    let mut fixtures = Vec::with_capacity(family_actions.len());
    for (family, action) in family_actions {
        let plan = shieldd_sdk_mock_client::TransactionIntent {
            actions: vec![action],
            memo: None,
            fee_funding: None,
            transaction_parameters: TransactionParameters {
                chain_id: TEST_CHAIN_ID.to_string(),
                ..Default::default()
            },
            nullifier_window: Some(test_nullifier_window()),
        };
        let tx = client
            .witness_auth_build(
                &client
                    .complete_intent(plan, storage.latest_snapshot())
                    .await?,
                registry(),
            )
            .await
            .with_context(|| format!("building {} transaction fixture", family.label()))?;
        fixtures.push(FamilyFixture::body_action(family, tx.encode_to_vec()));
    }

    let fee_funding_plan = shieldd_sdk_mock_client::TransactionIntent {
        actions: vec![fee_funding_body_action],
        memo: None,
        fee_funding: Some(fee_funding_transfer),
        transaction_parameters: TransactionParameters {
            chain_id: TEST_CHAIN_ID.to_string(),
            ..Default::default()
        },
        nullifier_window: Some(test_nullifier_window()),
    };
    let fee_funding_tx = client
        .witness_auth_build(
            &client
                .complete_intent(fee_funding_plan, storage.latest_snapshot())
                .await?,
            registry(),
        )
        .await
        .context("building fee-funding Transfer transaction fixture")?;
    let fee_funding_fixture = FamilyFixture::fee_funding(fee_funding_tx.encode_to_vec());

    anyhow::ensure!(
        fixtures.len() == 4,
        "acceptance-boundary fixture set must cover all four deployed proof families"
    );

    Ok(FamilyFixtureSet {
        _storage_guard: storage,
        fixtures,
        fee_funding_fixture,
    })
}

const FIXTURE_ALLOCATION_AMOUNT: u64 = 1_000_000;
const FIXTURE_REQUIRED_NOTES: usize = 6;

async fn build_fixture_storage() -> Result<TempStorage> {
    let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
    let allocations = std::iter::repeat(Allocation {
        raw_amount: u128::from(FIXTURE_ALLOCATION_AMOUNT).into(),
        raw_denom: BASE_ASSET_DENOM.deref().base_denom().denom,
        address: test_keys::ADDRESS_0.to_owned(),
    })
    .take(FIXTURE_REQUIRED_NOTES)
    .collect();
    let app_state_bytes = serde_json::to_vec(&AppState::Content(Content {
        chain_id: TEST_CHAIN_ID.to_string(),
        shielded_pool_content: shieldd_sdk_shielded_pool::genesis::Content {
            allocations,
            ..Default::default()
        },
        ..Default::default()
    }))?;

    let initial_time = Time::parse_from_rfc3339("2026-01-01T00:00:00Z")?;
    let mut node = TestHost::new(
        storage.as_ref().clone(),
        serde_json::from_slice(&app_state_bytes)?,
        initial_time,
        registry(),
    )
    .await?;
    node.execute(Vec::new()).await?;
    Ok(storage)
}

fn spend_plan(client: &MockClient, note: Note) -> Result<ShieldedInputPlan> {
    let position = client
        .position(note.commit())
        .context("fixture note position is known")?;
    Ok(ShieldedInputPlan::new(&mut OsRng, note, position))
}

fn transfer_plan(
    client: &MockClient,
    note: Note,
    value_blinding: Fr,
    receiver_address: shieldd_sdk_keys::Address,
) -> Result<shieldd_sdk_mock_client::TransferIntent> {
    let spend = spend_plan(client, note.clone())?;
    let receiver = ShieldedOutputPlan::new(
        &mut OsRng,
        Value {
            amount: Amount::from(1u64),
            asset_id: note.asset_id(),
        },
        receiver_address,
    );
    let change = ShieldedOutputPlan::new(
        &mut OsRng,
        Value {
            amount: note.amount() - Amount::from(1u64),
            asset_id: note.asset_id(),
        },
        note.address(),
    );

    Ok(shieldd_sdk_mock_client::TransferIntent {
        spends: vec![spend],
        outputs: vec![receiver, change],
        value_blinding: value_blinding,
    })
}

fn withdrawal_plan(
    client: &MockClient,
    note: Note,
    balance_blinding: Fr,
) -> Result<shieldd_sdk_mock_client::WithdrawalIntent> {
    let withdrawal_amount = Amount::from(1u64);
    let withdrawal = HostWithdrawal {
        value: Value {
            amount: withdrawal_amount,
            asset_id: note.asset_id(),
        },
        destination: shieldd_sdk_shielded_pool::HostWithdrawalDestination::Transfer(
            shieldd_sdk_shielded_pool::HostTransfer {
                recipient: "bank1destination".to_owned(),
            },
        ),
    };
    let spend = spend_plan(client, note.clone())?;
    let change = ShieldedOutputPlan::new(
        &mut OsRng,
        Value {
            amount: note.amount() - withdrawal_amount,
            asset_id: note.asset_id(),
        },
        note.address(),
    );
    Ok(shieldd_sdk_mock_client::WithdrawalIntent {
        spends: vec![spend],
        change_output: Some(change),
        withdrawal: withdrawal,
        value_blinding: balance_blinding,
    })
}

fn mutate_to_decodable_invalid_proof(fixture: &FamilyFixture) -> Result<(Transaction, Vec<u8>)> {
    let mut tx = Transaction::decode(fixture.tx_bytes.as_slice())
        .context("decoding valid family fixture")?;
    let proof_bytes = match fixture.proof_slot {
        FixtureProofSlot::BodyAction => {
            match (&mut tx.transaction_body.actions[..], fixture.family) {
                ([Action::Transfer(action)], DeployedProofFamily::Transfer) => {
                    &mut action.proof.inner
                }
                ([Action::NoteReshape(action)], DeployedProofFamily::NoteReshape(expected)) => {
                    anyhow::ensure!(
                        action.body.family_id == expected,
                        "note reshape fixture family mismatch"
                    );
                    &mut action.proof.inner
                }
                (
                    [Action::ShieldedHostWithdrawal(action)],
                    DeployedProofFamily::ShieldedWithdrawal,
                ) => &mut action.proof.inner,
                _ => anyhow::bail!(
                    "{} fixture did not contain its expected single proof action",
                    fixture.family.label()
                ),
            }
        }
        FixtureProofSlot::FeeFunding => {
            anyhow::ensure!(
                fixture.family == DeployedProofFamily::Transfer,
                "only Transfer may inhabit the fee-funding proof slot"
            );
            &mut tx
                .transaction_body
                .fee_funding
                .as_mut()
                .context("fee-funding fixture omitted its Transfer")?
                .transfer
                .proof
                .inner
        }
    };

    // Negate a valid compressed proof point; decoding stays canonical but the proof equation changes.
    proof_bytes[116] ^= 0x20;
    shieldd_sdk_circuits::proof::Envelope::from_bytes(proof_bytes)?;
    let binding_signing_key =
        rdsa::SigningKey::<rdsa::sapling::Binding>::try_from(fixture.binding_blinding.to_bytes())?;
    tx.binding_sig = binding_signing_key.sign(OsRng, tx.auth_hash().as_bytes());

    let invalid_bytes = tx.encode_to_vec();
    Transaction::decode(invalid_bytes.as_slice())
        .context("mutated proof must remain canonically decodable")?;
    Ok((tx, invalid_bytes))
}

async fn process_request(app: &App, tx_bytes: &[u8]) -> Result<BatchCandidate> {
    let context = app.benchmark_block_context().await?;
    Ok(BatchCandidate {
        txs: vec![tx_bytes.to_vec().into()],
        height: context.height,
    })
}

async fn prepare_request(app: &App, tx_bytes: Vec<u8>) -> Result<BatchPreparation> {
    let context = app.benchmark_block_context().await?;
    Ok(BatchPreparation {
        txs: vec![tx_bytes.into()],
        max_tx_bytes: i64::try_from(MAX_BLOCK_TXS_PAYLOAD_BYTES)?,
        height: context.height,
    })
}

fn tx_hash(tx_bytes: &[u8]) -> [u8; 32] {
    sha2::Sha256::digest(tx_bytes).into()
}

fn assert_cache_invalid(cache: &StatelessCache, hash: &[u8; 32], tx_bytes: &[u8], context: &str) {
    assert!(
        matches!(
            cache.get(registry().id(), hash, tx_bytes),
            Some(CacheEntry::Invalid)
        ),
        "{context}: failed proof must leave an Invalid cache entry"
    );
}

fn assert_cache_not_promoted(
    cache: &StatelessCache,
    hash: &[u8; 32],
    tx_bytes: &[u8],
    context: &str,
) {
    assert!(
        !matches!(
            cache.get(registry().id(), hash, tx_bytes),
            Some(CacheEntry::FullyVerified(_))
        ),
        "{context}: failed validation must never promote a Pari-verified cache entry"
    );
}

async fn assert_no_tx_effects(app: &App, tx: &Transaction, context: &str) -> Result<()> {
    assert!(
        app.state.pending_nullifiers().is_empty(),
        "{context}: rejected proof staged nullifiers"
    );
    assert!(
        app.state.pending_note_payloads().is_empty(),
        "{context}: rejected proof staged note payloads"
    );
    for nullifier in tx.spent_nullifiers() {
        assert!(
            !app.state.is_nullifier_spent(nullifier).await?,
            "{context}: rejected proof marked a nullifier spent"
        );
    }
    Ok(())
}

async fn stage_spent_nullifier(app: &mut App, tx: &Transaction) -> Result<[u8; 32]> {
    let nullifier = tx
        .spent_nullifiers()
        .next()
        .context("fixture transaction has a spend nullifier")?;
    let source_id = [0x5au8; 32];
    let mut state_tx = app
        .state
        .try_begin_transaction()
        .context("test app state is uniquely owned")?;
    state_tx
        .nullify_all(
            std::slice::from_ref(&nullifier),
            CommitmentSource::Transaction {
                id: Some(source_id),
            },
        )
        .await?;
    state_tx.apply();
    Ok(source_id)
}

#[tokio::test(flavor = "current_thread")]
async fn historical_attestation_stays_off_the_async_worker_in_both_verification_paths() -> Result<()>
{
    let fixtures = family_fixtures().await?;
    let tx = Arc::new(Transaction::decode(
        fixtures.fixtures[0].tx_bytes.as_slice(),
    )?);
    let observer = crate::stateless_cache::attachment_observer::Guard::new(tx.clone());
    let independently = App::build_tx_artifacts(registry(), std::slice::from_ref(&tx)).await?;
    assert_eq!(independently.len(), 1);
    let extracted = App::build_tx_artifacts_extracted(&[tx]).await?;
    let batched = App::verify_tx_artifacts_for_stage(registry(), "test", &extracted).await?;
    assert_eq!(batched.len(), 1);
    assert_eq!(
        observer.result(),
        (2, false),
        "historical verification must run on blocking workers"
    );
    Ok(())
}

#[tokio::test(flavor = "multi_thread")]
async fn artifact_build_rejects_decodable_invalid_pari() -> Result<()> {
    let family_set = family_fixtures().await?;

    for fixture in &family_set.fixtures {
        let (invalid_tx, _) = mutate_to_decodable_invalid_proof(fixture)?;
        let error = App::build_tx_artifacts(registry(), &[Arc::new(invalid_tx)])
            .await
            .err()
            .expect("artifact construction must reject an invalid proof");
        assert!(
            format!("{error:#}").contains("invalid Pari proof"),
            "{}: artifact construction failed for the wrong reason: {error:#}",
            fixture.label()
        );
    }

    Ok(())
}

#[tokio::test(flavor = "multi_thread")]
async fn process_proposal_rejects_decodable_invalid_pari() -> Result<()> {
    let family_set = family_fixtures().await?;

    for fixture in &family_set.fixtures {
        let (invalid_tx, invalid_bytes) = mutate_to_decodable_invalid_proof(fixture)?;
        let hash = tx_hash(&invalid_bytes);
        let cache = StatelessCache::new();
        let mut app = App::new(family_set._storage_guard.latest_snapshot(), registry()).await?;
        let proposal = process_request(&app, &invalid_bytes).await?;

        let verdict = app.validate_batch(proposal, Some(&cache), false).await;
        assert!(
            matches!(verdict, BatchVerdict::Reject),
            "{}: ProcessProposal accepted a decodable invalid proof",
            fixture.label()
        );
        assert_cache_not_promoted(&cache, &hash, &invalid_bytes, fixture.label());
        assert_no_tx_effects(&app, &invalid_tx, fixture.label()).await?;
    }

    Ok(())
}

#[tokio::test(flavor = "multi_thread")]
async fn fee_funding_process_proposal_rejects_invalid_pari() -> Result<()> {
    let family_set = family_fixtures().await?;
    let fixture = &family_set.fee_funding_fixture;
    let (invalid_tx, invalid_bytes) = mutate_to_decodable_invalid_proof(fixture)?;
    let hash = tx_hash(&invalid_bytes);
    let cache = StatelessCache::new();
    let mut app = App::new(family_set._storage_guard.latest_snapshot(), registry()).await?;
    let proposal = process_request(&app, &invalid_bytes).await?;

    let verdict = app.validate_batch(proposal, Some(&cache), false).await;
    assert!(
        matches!(verdict, BatchVerdict::Reject),
        "ProcessProposal accepted an invalid fee-funding Transfer proof"
    );
    assert_cache_not_promoted(&cache, &hash, &invalid_bytes, fixture.label());
    assert_no_tx_effects(&app, &invalid_tx, fixture.label()).await?;

    Ok(())
}

#[tokio::test(flavor = "multi_thread")]
async fn fee_funding_valid_proof_executes_and_persists() -> Result<()> {
    let family_set = family_fixtures().await?;
    let fixture = &family_set.fee_funding_fixture;
    let tx = Transaction::decode(fixture.tx_bytes.as_slice())
        .context("decoding valid fee-funding fixture")?;
    let fee_funding = tx
        .transaction_body
        .fee_funding
        .as_ref()
        .context("fee-funding fixture omitted its Transfer")?;
    let fee_nullifiers = fee_funding
        .transfer
        .body
        .inputs
        .iter()
        .map(|input| input.nullifier)
        .collect::<Vec<_>>();
    let fee_outputs = fee_funding
        .transfer
        .body
        .outputs
        .iter()
        .map(|output| output.note_payload.note_commitment)
        .collect::<Vec<_>>();
    let transaction_outputs = tx.state_commitments().collect::<Vec<_>>();
    assert!(
        fee_outputs
            .iter()
            .all(|commitment| transaction_outputs.contains(commitment)),
        "fee-funding outputs must be part of the transaction's canonical effect iterator"
    );

    let storage_guard = build_fixture_storage().await?;
    let storage = storage_guard.as_ref().clone();
    let mut app = App::new(storage.latest_snapshot(), registry()).await?;
    let context = app.benchmark_block_context().await?;
    let begin_block = cnidarium_component::BlockContext {
        height: context.height,
        time: context.time,
    };
    app.begin_block(&begin_block).await;

    let cache = StatelessCache::new();
    app.deliver_tx_bytes(&fixture.tx_bytes, Some(&cache))
        .await
        .context("valid fee-funding proof must execute")?;
    let hash = tx_hash(&fixture.tx_bytes);
    let Some(CacheEntry::FullyVerified(artifact)) =
        cache.get(registry().id(), &hash, &fixture.tx_bytes)
    else {
        anyhow::bail!("valid fee-funding delivery did not retain an exact proof capability")
    };
    artifact
        .proof_for_slot(ProofSlot::BodyAction(0))
        .context("body Transfer capability missing after verification")?;
    artifact
        .proof_for_slot(ProofSlot::FeeFunding)
        .context("fee-funding Transfer capability missing after verification")?;

    for nullifier in &fee_nullifiers {
        assert!(
            app.state.is_nullifier_spent(*nullifier).await?,
            "verified fee-funding execution did not stage nullifier {nullifier:?}"
        );
    }

    app.end_block(context.height).await;
    app.commit(storage.clone()).await?;

    let committed = storage.latest_snapshot();
    let compact_block: shieldd_sdk_compact_block::CompactBlock = committed
        .compact_block(context.height)
        .await?
        .context("committed fee-funding block must retain its compact block")?
        .try_into()?;
    let committed_outputs = compact_block
        .state_payloads
        .iter()
        .map(|payload| *payload.commitment())
        .collect::<Vec<_>>();
    assert_eq!(
        committed_outputs, transaction_outputs,
        "compact block must persist every body and fee-funding output"
    );
    for nullifier in fee_nullifiers {
        assert!(
            committed.is_nullifier_spent(nullifier).await?,
            "fee-funding nullifier {nullifier:?} was not durably committed"
        );
        assert!(
            compact_block.nullifiers.contains(&nullifier),
            "compact block omitted fee-funding nullifier {nullifier:?}"
        );
    }
    let transaction_log = committed.transactions_by_height(context.height).await?;
    let [logged] = transaction_log.transactions.as_slice() else {
        anyhow::bail!(
            "fee-funding block must persist exactly one transaction, got {}",
            transaction_log.transactions.len()
        )
    };
    let logged = Transaction::try_from(logged.clone())?;
    assert_eq!(
        logged.encode_to_vec(),
        fixture.tx_bytes,
        "persisted transaction must retain the exact fee-funding Transfer"
    );

    Ok(())
}

#[tokio::test(flavor = "multi_thread")]
async fn prepare_proposal_excludes_decodable_invalid_pari() -> Result<()> {
    let family_set = family_fixtures().await?;

    for fixture in &family_set.fixtures {
        let (invalid_tx, invalid_bytes) = mutate_to_decodable_invalid_proof(fixture)?;
        let hash = tx_hash(&invalid_bytes);
        let cache = StatelessCache::new();
        let mut app = App::new(family_set._storage_guard.latest_snapshot(), registry()).await?;
        let proposal = prepare_request(&app, invalid_bytes.clone()).await?;

        let prepared = app.prepare_batch(proposal, Some(&cache), false).await;
        assert!(
            prepared
                .txs
                .iter()
                .all(|tx_bytes| tx_bytes.as_ref() != invalid_bytes),
            "{}: PrepareProposal included a transaction with an invalid proof",
            fixture.label()
        );
        assert_cache_not_promoted(&cache, &hash, &invalid_bytes, fixture.label());
        assert_no_tx_effects(&app, &invalid_tx, fixture.label()).await?;
    }

    Ok(())
}

#[tokio::test(flavor = "multi_thread")]
async fn cold_deliver_rejects_invalid_pari_without_state_mutation() -> Result<()> {
    let family_set = family_fixtures().await?;

    for fixture in &family_set.fixtures {
        let (invalid_tx, invalid_bytes) = mutate_to_decodable_invalid_proof(fixture)?;
        let hash = tx_hash(&invalid_bytes);
        let cache = StatelessCache::new();
        let mut app = App::new(family_set._storage_guard.latest_snapshot(), registry()).await?;

        let error = app
            .deliver_tx_bytes(&invalid_bytes, Some(&cache))
            .await
            .expect_err("cold delivery must reject an invalid proof");
        assert!(
            format!("{error:#}").contains("Pari"),
            "{}: cold delivery failed for the wrong reason: {error:#}",
            fixture.label()
        );
        assert_cache_invalid(&cache, &hash, &invalid_bytes, fixture.label());
        assert_no_tx_effects(&app, &invalid_tx, fixture.label()).await?;
    }

    Ok(())
}

#[tokio::test(flavor = "multi_thread")]
async fn deferred_index_records_only_transactions_that_commit() -> Result<()> {
    let family_set = family_fixtures().await?;
    let withdrawal = family_set
        .fixtures
        .iter()
        .find(|fixture| fixture.family == DeployedProofFamily::ShieldedWithdrawal)
        .context("withdrawal fixture is present")?;

    for mode in [
        BlockTxIndexingMode::PerTx,
        BlockTxIndexingMode::DeferredBatch,
    ] {
        let mut app = App::new(family_set._storage_guard.latest_snapshot(), registry()).await?;
        app.set_block_tx_indexing_mode(mode);
        use shieldd_sdk_shielded_pool::component::StateWriteExt as _;
        let mut state_tx = app
            .state
            .try_begin_transaction()
            .context("unique test state")?;
        state_tx.put_host_withdrawals_enabled(false);
        state_tx.apply();
        let cache = StatelessCache::new();

        let error = app
            .deliver_tx_bytes(&withdrawal.tx_bytes, Some(&cache))
            .await
            .expect_err("disabled host withdrawal must reject after proof verification");
        assert!(
            format!("{error:#}").contains("host withdrawals are not enabled"),
            "{mode:?}: withdrawal failed for the wrong reason: {error:#}"
        );
        assert!(
            app.deferred_block_transactions.is_empty(),
            "{mode:?}: rejected transaction escaped into the deferred index buffer"
        );

        app.flush_deferred_block_transactions().await?;
        let height = app.state.get_block_height().await?;
        let tx_log = app.state.transactions_by_height(height).await?;
        assert!(
            tx_log.transactions.is_empty(),
            "{mode:?}: rejected transaction was persisted in the block transaction index"
        );
    }

    Ok(())
}

#[tokio::test(flavor = "multi_thread")]
async fn host_delivery_rejects_invalid_pari_cold_and_after_checktx() -> Result<()> {
    let family_set = family_fixtures().await?;
    let snapshot = family_set._storage_guard.latest_snapshot();
    let root_before = snapshot.root_hash().await?;
    let next_height = i64::try_from(snapshot.get_block_height().await?.saturating_add(1))?;
    let current_time = snapshot.get_current_block_timestamp().await?;
    let next_time = current_time
        .checked_add(Duration::from_secs(1))
        .unwrap_or(current_time);

    for fixture in &family_set.fixtures {
        let (_, invalid_bytes) = mutate_to_decodable_invalid_proof(fixture)?;
        let hash = tx_hash(&invalid_bytes);

        let checked_cache = Arc::new(StatelessCache::new());
        let mut checked_host = HostExecution::with_cache(
            family_set._storage_guard.as_ref().clone(),
            checked_cache.clone(),
            registry(),
        )
        .await?;
        let check_response = checked_host.check_tx(&invalid_bytes).await?;
        assert_ne!(
            check_response.code,
            0,
            "{}: HostExecution CheckTx accepted an invalid proof",
            fixture.label()
        );
        assert_cache_invalid(&checked_cache, &hash, &invalid_bytes, fixture.label());
        checked_host
            .begin_block(HostBlock {
                height: next_height,
                time: next_time,
            })
            .await?;
        let checked_delivery = checked_host.deliver_tx(&invalid_bytes).await?;
        assert_ne!(
            checked_delivery.code,
            0,
            "{}: HostExecution delivery accepted an invalid proof cached by CheckTx",
            fixture.label()
        );
        assert_cache_invalid(&checked_cache, &hash, &invalid_bytes, fixture.label());

        let cold_cache = Arc::new(StatelessCache::new());
        let mut cold_host = HostExecution::with_cache(
            family_set._storage_guard.as_ref().clone(),
            cold_cache.clone(),
            registry(),
        )
        .await?;
        cold_host
            .begin_block(HostBlock {
                height: next_height,
                time: next_time,
            })
            .await?;
        let cold_delivery = cold_host.deliver_tx(&invalid_bytes).await?;
        assert_ne!(
            cold_delivery.code,
            0,
            "{}: cold HostExecution delivery accepted an invalid proof",
            fixture.label()
        );
        assert_cache_invalid(&cold_cache, &hash, &invalid_bytes, fixture.label());
    }

    assert_eq!(
        family_set
            ._storage_guard
            .latest_snapshot()
            .root_hash()
            .await?,
        root_before,
        "rejected host proofs must not mutate durable state"
    );
    Ok(())
}

#[tokio::test(flavor = "multi_thread")]
async fn cache_promotion_never_exceeds_exact_pari_attestation() -> Result<()> {
    let family_set = family_fixtures().await?;
    let transfer = family_set
        .fixtures
        .iter()
        .find(|fixture| fixture.family == DeployedProofFamily::Transfer)
        .context("Transfer fixture is present")?;
    let valid_tx = Transaction::decode(transfer.tx_bytes.as_slice())?;
    let valid_hash = tx_hash(&transfer.tx_bytes);

    let process_cache = StatelessCache::new();
    let mut process_app = App::new(family_set._storage_guard.latest_snapshot(), registry()).await?;
    stage_spent_nullifier(&mut process_app, &valid_tx).await?;
    let proposal = process_request(&process_app, &transfer.tx_bytes).await?;
    let verdict = process_app
        .validate_batch(proposal, Some(&process_cache), false)
        .await;
    assert!(matches!(verdict, BatchVerdict::Reject));
    assert!(
        matches!(
            process_cache.get(registry().id(), &valid_hash, &transfer.tx_bytes),
            Some(CacheEntry::FullyVerified(_))
        ),
        "valid cryptographic evidence can survive a stateful rejection"
    );
    assert!(process_app.state.pending_note_payloads().is_empty());

    let deliver_cache = StatelessCache::new();
    let mut deliver_app = App::new(family_set._storage_guard.latest_snapshot(), registry()).await?;
    stage_spent_nullifier(&mut deliver_app, &valid_tx).await?;
    let pending_nullifiers_before = deliver_app.state.pending_nullifiers();
    let pending_note_commitments_before = deliver_app
        .state
        .pending_note_payloads()
        .iter()
        .map(|(_, payload, _)| payload.note_commitment)
        .collect::<Vec<_>>();
    deliver_app
        .deliver_tx_bytes(&transfer.tx_bytes, Some(&deliver_cache))
        .await
        .expect_err("committed-nullifier conflict must reject delivery");
    assert!(
        matches!(
            deliver_cache.get(registry().id(), &valid_hash, &transfer.tx_bytes),
            Some(CacheEntry::FullyVerified(_))
        ),
        "stateful delivery failure may retain only the exact Pari attestation"
    );
    assert_eq!(
        deliver_app.state.pending_nullifiers(),
        pending_nullifiers_before,
        "stateful delivery rejection must not stage another nullifier"
    );
    assert_eq!(
        deliver_app
            .state
            .pending_note_payloads()
            .iter()
            .map(|(_, payload, _)| payload.note_commitment)
            .collect::<Vec<_>>(),
        pending_note_commitments_before,
        "stateful delivery rejection must not stage note outputs"
    );

    let (_, invalid_bytes) = mutate_to_decodable_invalid_proof(transfer)?;
    let invalid_hash = tx_hash(&invalid_bytes);
    let proof_cache = StatelessCache::new();
    let mut proof_app = App::new(family_set._storage_guard.latest_snapshot(), registry()).await?;
    proof_app
        .deliver_tx_bytes(&invalid_bytes, Some(&proof_cache))
        .await
        .expect_err("invalid Pari proof must reject delivery");
    assert_cache_not_promoted(&proof_cache, &invalid_hash, &invalid_bytes, "proof failure");

    Ok(())
}

#[tokio::test]
async fn prepare_proposal_keeps_valid_candidate_after_invalid_proof() -> Result<()> {
    let family_set = family_fixtures().await?;
    let fixture = &family_set.fixtures[0];
    let (_, invalid) = mutate_to_decodable_invalid_proof(fixture)?;
    for invalid_first in [true, false] {
        let mut app = App::new(family_set._storage_guard.latest_snapshot(), registry()).await?;
        let mut request = prepare_request(&app, fixture.tx_bytes.clone()).await?;
        let invalid: Bytes = invalid.clone().into();
        if invalid_first {
            request.txs.insert(0, invalid);
        } else {
            request.txs.push(invalid);
        }
        let prepared = app
            .prepare_batch(request, Some(&StatelessCache::new()), false)
            .await;
        assert_eq!(prepared.txs, vec![Bytes::from(fixture.tx_bytes.clone())]);
    }
    Ok(())
}

#[tokio::test]
async fn prepare_proposal_keeps_multiple_candidates_with_one_worker() -> Result<()> {
    let family_set = family_fixtures().await?;
    let fixtures = &family_set.fixtures[..2];
    let mut app = App::new(family_set._storage_guard.latest_snapshot(), registry()).await?;
    let mut request = prepare_request(&app, fixtures[0].tx_bytes.clone()).await?;
    request.txs.push(fixtures[1].tx_bytes.clone().into());
    let expected = request.txs.clone();
    let prepared = app
        .prepare_batch(request, Some(&StatelessCache::new()), false)
        .await;
    assert_eq!(prepared.txs, expected);
    Ok(())
}

#[tokio::test]
async fn prepare_proposal_skips_unfitting_candidate_and_accepts_exact_limit() -> Result<()> {
    let family_set = family_fixtures().await?;
    let mut fixtures = family_set.fixtures.iter().collect::<Vec<_>>();
    fixtures.sort_by_key(|fixture| fixture.tx_bytes.len());
    let small = fixtures.first().context("small fixture")?;
    let large = fixtures.last().context("large fixture")?;
    assert!(large.tx_bytes.len() > small.tx_bytes.len());
    let mut app = App::new(family_set._storage_guard.latest_snapshot(), registry()).await?;
    let mut request = prepare_request(&app, small.tx_bytes.clone()).await?;
    request.txs.insert(0, large.tx_bytes.clone().into());
    request.max_tx_bytes = small.tx_bytes.len() as i64;
    let prepared = app.prepare_batch(request, None, false).await;
    assert_eq!(prepared.txs, vec![Bytes::from(small.tx_bytes.clone())]);
    Ok(())
}

#[tokio::test]
async fn output_capacity_rejection_rolls_back_all_transaction_effects() -> Result<()> {
    let (storage, _node, transactions) = setup_test_txs(1).await?;
    let tx = Transaction::decode_canonical(&transactions[0])?;
    let mut app = App::new(storage.latest_snapshot(), registry()).await?;
    let position = shieldd_sdk_tct::Position::from(
        (shieldd_sdk_sct::component::tree::SCT_BLOCK_COMMITMENT_CAPACITY - 1) as u64,
    );
    let tree = shieldd_sdk_tct::Tree::load(
        shieldd_sdk_tct::storage::StoredPosition::Position(position),
        shieldd_sdk_tct::Forgotten::default(),
    )
    .load_hashes()
    .finish();
    {
        let mut state = app.state.try_begin_transaction().context("unique state")?;
        state.object_put(
            shieldd_sdk_sct::state_key::cache::cached_state_commitment_tree(),
            tree,
        );
        state.apply();
    }
    let before_notes = pending_note_records(&app);
    let before_nullifiers = app.state.pending_nullifiers();
    let error = app
        .deliver_tx_bytes(&transactions[0], None)
        .await
        .expect_err("outputs do not fit");
    assert_eq!(
        error.downcast_ref::<shieldd_sdk_tct::error::InsertError>(),
        Some(&shieldd_sdk_tct::error::InsertError::BlockFull),
        "{error:#}"
    );
    assert_eq!(pending_note_records(&app), before_notes);
    assert_eq!(app.state.pending_nullifiers(), before_nullifiers);
    assert_eq!(app.state.get_sct_position().await?, Some(position));
    assert_no_tx_effects(&app, &tx, "SCT capacity rejection").await?;
    Ok(())
}
