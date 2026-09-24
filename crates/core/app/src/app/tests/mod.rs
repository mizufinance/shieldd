mod proof_acceptance_tests;

use std::ops::Deref;
use std::sync::Arc;

use crate::test_support::{TestHost, TEST_CHAIN_ID};
use anyhow::{anyhow, Context, Result};
use cnidarium::{ArcStateDeltaExt as _, StateDelta, StateRead, StateWrite, TempStorage};
use futures::StreamExt as _;
use group::GroupEncoding;
use prost::bytes::Bytes;
use rand_core::OsRng;
use reddsa as rdsa;
use sha2::Digest as _;
use shieldd_sdk_asset::{asset, Value, BASE_ASSET_DENOM, BASE_ASSET_ID};
use shieldd_sdk_compliance::genesis::{GenesisUserRegistration, NativeAssetRegistration};
use shieldd_sdk_compliance::registry::ComplianceRegistryWrite as _;
use shieldd_sdk_compliance::structs::{
    OrbisCapabilityCertificate, UserRegistrationGrant, UserRegistrationGrantBody,
};
use shieldd_sdk_compliance::{
    derive_regulated_nullifier_key, AssetPolicy, ComplianceLeaf, MsgRegisterUser,
};
use shieldd_sdk_crypto::{Fq, Fr};
use shieldd_sdk_keys::{test_keys, Address};
use shieldd_sdk_mock_client::MockClient;
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::DomainType;
use shieldd_sdk_sct::component::clock::{EpochManager as _, EpochRead as _};
use shieldd_sdk_sct::component::tree::{SctManager as _, SctRead as _, VerificationExt as _};
use shieldd_sdk_sct::component::StateWriteExt as _;
use shieldd_sdk_sct::epoch::Epoch;
use shieldd_sdk_sct::nullifier_generation::{
    empty_history_head, NullifierWindow, PROTOCOL_VERSION,
};
use shieldd_sdk_sct::params::SctParameters;
use shieldd_sdk_sct::{CommitmentSource, Nullifier};
use shieldd_sdk_shielded_pool::component::NoteManager as _;
use shieldd_sdk_shielded_pool::test_proof_helpers::proof_test_helpers::build_transfer_action_and_public_without_proof;
use shieldd_sdk_shielded_pool::{genesis::Allocation, ShieldedInputPlan, ShieldedOutputPlan};
use shieldd_sdk_tct as tct;
use shieldd_sdk_transaction::{
    memo::{MemoCiphertext, MemoPlaintext, MEMO_CIPHERTEXT_LEN_BYTES},
    plan::MemoPlan,
    Action, ActionPlan, Transaction, TransactionParameters, TransactionPlan,
};
use shieldd_sdk_txhash::AuthorizingData;
use tendermint::Time;

use super::{BatchCandidate, BatchPreparation, BatchVerdict};

use crate::app::CandidateEnvelope;
use crate::genesis::{AppState, Content};
use crate::stateless_cache::{CacheEntry, StatelessCache};
use crate::SUBSTORE_PREFIXES;

use super::{App, BlockTxIndexingMode, StateReadExt};

pub(super) fn registry() -> Arc<shieldd_sdk_proof_params::pari::Registry> {
    static REGISTRY: std::sync::OnceLock<Arc<shieldd_sdk_proof_params::pari::Registry>> =
        std::sync::OnceLock::new();
    REGISTRY
        .get_or_init(|| {
            Arc::new(
                shieldd_sdk_proof_params::pari::Registry::load(
                    std::env::var("SHIELDD_PARI_KEYS")
                        .expect("app tests require SHIELDD_PARI_KEYS"),
                )
                .expect("valid test registry"),
            )
        })
        .clone()
}

fn test_nullifier_window() -> NullifierWindow {
    NullifierWindow {
        protocol_version: PROTOCOL_VERSION,
        current_generation: 0,
        recent_position_floor: 0,
        archived_generation_count: 0,
        archived_history_head: empty_history_head(),
    }
}

#[tokio::test]
async fn maintenance_error_keeps_pending_app_state_for_retry() -> Result<()> {
    let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
    let mut app = App::from_snapshot(storage.latest_snapshot(), registry());
    app.init_chain(&AppState::Content(
        Content::default().with_chain_id(TEST_CHAIN_ID.to_owned()),
    ))
    .await;
    let cursor = shieldd_sdk_sct::state_key::nullifier_generations::prune_cursor();
    let state = Arc::get_mut(&mut app.state).context("app state is shared")?;
    state.put_raw(
        "test/pending_maintenance_retry".to_owned(),
        b"kept".to_vec(),
    );
    state.nonverifiable_put_raw(cursor.to_vec(), b"invalid cursor".to_vec());
    let directory = tempfile::tempdir()?;
    let repository = shieldd_sdk_sct::generation_pack::GenerationPackRepository::new(
        directory.path().to_path_buf(),
        0,
    )?;
    assert!(app
        .commit(storage.as_ref().clone(), Some(&repository))
        .await
        .is_err());
    let state = Arc::get_mut(&mut app.state).context("pending state was lost")?;
    assert_eq!(
        state.get_raw("test/pending_maintenance_retry").await?,
        Some(b"kept".to_vec())
    );
    state.nonverifiable_delete(cursor.to_vec());
    app.commit(storage.as_ref().clone(), Some(&repository))
        .await?;
    assert_eq!(
        storage
            .latest_snapshot()
            .get_raw("test/pending_maintenance_retry")
            .await?,
        Some(b"kept".to_vec())
    );
    Ok(())
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
    let payload = shieldd_sdk_shielded_pool::NotePayload {
        note_commitment: tct::StateCommitment(Fq::from(72u64)),
        ..shieldd_sdk_shielded_pool::NotePayload::dummy()
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
        state_tx.add_note_payload(payload, source).await?;
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
    assert!(!shieldd_sdk_sct::nullifier_tree::is_spent(Arc::as_ref(&state), nullifier).await?);
    assert_eq!(state.get_raw(unrelated_effect_key.as_str()).await?, None);

    Ok(())
}

#[test]
fn proposal_tx_count_policy_is_fixed_at_boundary() {
    let mut candidates = vec![Bytes::new(); super::MAX_BLOCK_TX_COUNT + 1];
    super::truncate_prepare_candidates(&mut candidates);
    assert_eq!(candidates.len(), super::MAX_BLOCK_TX_COUNT);
    assert!(super::process_proposal_tx_count_allowed(
        super::MAX_BLOCK_TX_COUNT
    ));
    assert!(!super::process_proposal_tx_count_allowed(
        super::MAX_BLOCK_TX_COUNT + 1
    ));
}

#[test]
fn proposal_payload_size_policy_is_fixed_at_boundary() {
    assert_eq!(super::prepare_proposal_payload_limit(-1), 0);
    assert_eq!(super::prepare_proposal_payload_limit(0), 0);
    assert_eq!(
        super::prepare_proposal_payload_limit(super::MAX_BLOCK_TXS_PAYLOAD_BYTES as i64),
        super::MAX_BLOCK_TXS_PAYLOAD_BYTES as u64
    );
    assert_eq!(
        super::prepare_proposal_payload_limit(super::MAX_BLOCK_TXS_PAYLOAD_BYTES as i64 + 1),
        super::MAX_BLOCK_TXS_PAYLOAD_BYTES as u64
    );
    assert!(super::process_proposal_payload_size_allowed(
        super::MAX_BLOCK_TXS_PAYLOAD_BYTES
    ));
    assert!(!super::process_proposal_payload_size_allowed(
        super::MAX_BLOCK_TXS_PAYLOAD_BYTES + 1
    ));
}

#[test]
fn proposal_nullifier_count_policy_is_fixed_at_boundary() {
    assert!(super::block_nullifier_count_allowed(
        super::MAX_BLOCK_NULLIFIER_COUNT
    ));
    assert!(!super::block_nullifier_count_allowed(
        super::MAX_BLOCK_NULLIFIER_COUNT + 1
    ));
    assert!(!super::block_nullifier_count_allowed(usize::MAX));
}

#[test]
fn proposal_transaction_size_policy_is_fixed_at_boundary() {
    assert!(super::transaction_size_allowed(
        super::MAX_TRANSACTION_SIZE_BYTES
    ));
    assert!(!super::transaction_size_allowed(
        super::MAX_TRANSACTION_SIZE_BYTES + 1
    ));
}

#[tokio::test]
async fn oversized_checktx_bytes_reject_before_decode_or_cache() -> Result<()> {
    let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
    let mut app = App::new(storage.latest_snapshot(), registry()).await?;
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

#[tokio::test]
async fn artifact_extraction_cannot_bypass_action_stateless_checks() -> Result<()> {
    let action_anchor = tct::Tree::default().root();
    let balance_commitment = shieldd_sdk_asset::Balance::default().commit(Fr::from(1u64));
    let inputs = (0..8)
        .map(|index| shieldd_sdk_shielded_pool::NoteReshapeInputBody {
            nullifier: Nullifier(Fq::from(10u64 + index)),
            rk: rdsa::VerificationKey::from(
                &rdsa::SigningKey::<rdsa::sapling::SpendAuth>::try_from(
                    Fr::from(20u64 + index).to_bytes(),
                )
                .unwrap(),
            ),
            encrypted_backref: shieldd_sdk_shielded_pool::EncryptedBackref::try_from(
                [u8::try_from(index + 1).expect("small index"); 48],
            )
            .expect("fixed-size encrypted backref"),
            history_required: false,
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
            routing_tag: Default::default(),
            routing_parameter_set_id: Fq::from(0u64),
            asset_anchor: tct::StateCommitment(Fq::from(0u64)),
            compliance_anchor: tct::StateCommitment(Fq::from(0u64)),
        },
        auth_sigs: vec![[0u8; 64].into(); 8],
        proof: shieldd_sdk_shielded_pool::NoteReshapeProof::default(),
    };
    let mut invalid_auth = Transaction {
        transaction_body: shieldd_sdk_transaction::TransactionBody {
            actions: vec![Action::NoteReshape(note_reshape)],
            memo: Some(MemoCiphertext([0u8; MEMO_CIPHERTEXT_LEN_BYTES])),
            nullifier_window: Some(test_nullifier_window()),
            ..Default::default()
        },
        anchor: action_anchor,
        ..Default::default()
    };
    let binding_signing_key =
        rdsa::SigningKey::<rdsa::sapling::Binding>::try_from(Fr::from(1u64).to_bytes()).unwrap();
    invalid_auth.binding_sig =
        binding_signing_key.sign(rand_core::OsRng, invalid_auth.auth_hash().as_bytes());

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

    Ok(())
}

#[test]
fn fee_funding_extraction_rejects_identity_randomized_key() {
    let (mut transfer, _, context) = build_transfer_action_and_public_without_proof(true);
    transfer.body.proof_context = shieldd_sdk_shielded_pool::TransferProofContext::FeeFunding;
    transfer.body.volume_accumulator =
        shieldd_sdk_shielded_pool::VolumeAccumulatorPayload::canonical_fee_funding();
    let identity_sk =
        rdsa::SigningKey::<rdsa::sapling::SpendAuth>::try_from(Fr::from(0u64).to_bytes()).unwrap();
    transfer.body.inputs[0].rk = rdsa::VerificationKey::from(&identity_sk);
    let different_message = b"different fee funding authorization hash";
    assert_ne!(&different_message[..], context.effect_hash.as_ref());
    transfer.auth_sigs[0] = identity_sk.sign(rand_core::OsRng, different_message);
    transfer.body.inputs[0]
        .rk
        .verify(context.effect_hash.as_ref(), &transfer.auth_sigs[0])
        .expect("the pinned RDSA primitive admits identity keys across messages");
    let fee_funding = shieldd_sdk_transaction::FeeFunding { transfer };

    let error = match super::extract_fee_funding_proof_item(&fee_funding, &context) {
        Ok(_) => panic!("fee funding must use the shared identity-RK rejection"),
        Err(error) => error,
    };
    assert!(
        format!("{error:#}").contains("identity Jubjub key"),
        "unexpected rejection reason: {error:#}"
    );
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

async fn setup_test_txs(tx_count: usize) -> Result<(TempStorage, TestHost, Vec<Vec<u8>>)> {
    let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;

    let allocations: Vec<Allocation> = std::iter::repeat(Allocation {
        raw_amount: 1_000_000u128.into(),
        raw_denom: BASE_ASSET_DENOM.deref().base_denom().denom,
        address: test_keys::ADDRESS_0.to_owned(),
    })
    .take(tx_count)
    .collect();

    let app_state_bytes = serde_json::to_vec(&AppState::Content(Content {
        chain_id: TEST_CHAIN_ID.to_string(),
        shielded_pool_content: shieldd_sdk_shielded_pool::genesis::Content {
            allocations,
            ..Default::default()
        },
        ..Default::default()
    }))?;

    let initial_time = tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:00Z")?;
    let mut test_node = TestHost::new(
        storage.as_ref().clone(),
        serde_json::from_slice(&app_state_bytes)?,
        initial_time,
        registry(),
    )
    .await?;
    test_node.execute(Vec::new()).await?;

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
        let output = ShieldedOutputPlan::new(
            &mut OsRng,
            Value {
                amount: send_amount,
                asset_id: note.asset_id(),
            },
            test_keys::ADDRESS_1.deref().clone(),
        );
        let change = ShieldedOutputPlan::new(
            &mut OsRng,
            Value {
                amount: change_amount,
                asset_id: note.asset_id(),
            },
            note.address(),
        );

        let intent = shieldd_sdk_mock_client::TransactionIntent {
            actions: vec![shieldd_sdk_mock_client::TransferIntent {
                spends: vec![spend.into()],
                outputs: vec![output.into(), change.into()],
                value_blinding: Fr::from(1u64),
            }
            .into()],
            memo: Some(MemoPlan::new(
                &mut OsRng,
                MemoPlaintext::blank_memo(test_keys::ADDRESS_0.deref().clone()),
            )),
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
                    .complete_intent(intent, storage.latest_snapshot())
                    .await?,
                registry(),
            )
            .await?;
        txs.push(tx.encode_to_vec());
    }

    Ok((storage, test_node, txs))
}

#[tokio::test]
async fn regulated_genesis_note_transfers_through_host_and_compact_block() -> Result<()> {
    let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
    let authority_vk = rdsa::VerificationKey::from(test_keys::SPEND_KEY.spend_auth_key());
    let regulated_denom = "wregulated_usd";
    let regulated_asset_id = asset::REGISTRY.parse_unit(regulated_denom).id();
    let native_asset = NativeAssetRegistration {
        audit_keys: Some(shieldd_sdk_compliance::audit_keys::test_keys()),
        asset_id: regulated_asset_id,
        is_regulated: true,
        dk_pub: Some((*shieldd_sdk_crypto::generators::SPEND_AUTH).to_bytes()),
        registration_authority_vk: Some(authority_vk),
        seizure_authority_vk: Some(authority_vk),
        ring_pk: Some((*shieldd_sdk_crypto::generators::SPEND_AUTH).to_bytes()),
        ring_id: "test-ring".to_owned(),
        policy_id: "test-policy".to_owned(),
        permission: "read".to_owned(),
        resource: "document".to_owned(),
    };
    let policy = native_asset.asset_policy()?;
    let make_leaf = |address: Address| {
        let rnk_dh_pk = address.diversified_generator().clone();
        let rnk = derive_regulated_nullifier_key(
            test_keys::FULL_VIEWING_KEY.incoming(),
            &address,
            regulated_asset_id,
            *shieldd_sdk_crypto::generators::SPEND_AUTH,
            rnk_dh_pk,
        )?;
        ComplianceLeaf::registered_from_rnk(address, regulated_asset_id, rnk_dh_pk, rnk)
    };
    let genesis_leaf = make_leaf(test_keys::ADDRESS_0.deref().clone())?;
    let runtime_leaf = make_leaf(test_keys::ADDRESS_1.deref().clone())?;
    let app_state_bytes = serde_json::to_vec(&AppState::Content(Content {
        chain_id: TEST_CHAIN_ID.to_string(),
        compliance_content: shieldd_sdk_compliance::genesis::Content {
            native_assets: vec![native_asset],
            user_registrations: vec![GenesisUserRegistration {
                capability_certificate: OrbisCapabilityCertificate::sign_for_test(
                    TEST_CHAIN_ID,
                    &genesis_leaf,
                    &policy,
                    shieldd_sdk_crypto::Fr::from(1u64),
                )?,
                leaf: genesis_leaf,
            }],
            ..Default::default()
        },
        shielded_pool_content: shieldd_sdk_shielded_pool::genesis::Content {
            allocations: vec![
                Allocation {
                    raw_amount: 1_000_000u128.into(),
                    raw_denom: regulated_denom.to_string(),
                    address: test_keys::ADDRESS_0.deref().clone(),
                },
                Allocation {
                    raw_amount: 1_000_000u128.into(),
                    raw_denom: BASE_ASSET_DENOM.deref().base_denom().denom,
                    address: test_keys::ADDRESS_0.deref().clone(),
                },
            ],
            ..Default::default()
        },
        ..Default::default()
    }))?;

    let mut test_node = TestHost::new(
        storage.as_ref().clone(),
        serde_json::from_slice(&app_state_bytes)?,
        tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:00Z")?,
        registry(),
    )
    .await?;
    test_node.execute(Vec::new()).await?;

    let mut client = MockClient::new(test_keys::SPEND_KEY.clone())
        .with_sync_to_storage(&storage)
        .await?;
    let grant_body = UserRegistrationGrantBody {
        leaf: runtime_leaf.clone(),
        policy_id: "test-policy".to_owned(),
        valid_until_unix: 4_102_444_800,
        nonce: vec![1u8; 16],
    };
    let registration = MsgRegisterUser {
        leaf: runtime_leaf.clone(),
        capability_certificate: Some(OrbisCapabilityCertificate::sign_for_test(
            TEST_CHAIN_ID,
            &runtime_leaf,
            &policy,
            shieldd_sdk_crypto::Fr::from(1u64),
        )?),
        grant: Some(UserRegistrationGrant {
            signature: test_keys::SPEND_KEY
                .spend_auth_key()
                .sign(OsRng, &grant_body.signing_bytes()),
            body: grant_body,
        }),
    };
    let registration_plan = TransactionPlan {
        actions: vec![ActionPlan::from(registration)],
        memo: None,
        fee_funding: None,
        transaction_parameters: TransactionParameters {
            chain_id: TEST_CHAIN_ID.to_string(),
            ..Default::default()
        },
        nullifier_window: None,
    };
    let registration_tx = client
        .witness_auth_build(&registration_plan, registry())
        .await?;
    let before_registration = storage.latest_snapshot();
    test_node
        .execute(vec![registration_tx.encode_to_vec()])
        .await?;
    let note = client
        .notes
        .values()
        .find(|note| {
            note.asset_id() == regulated_asset_id
                && note.address() == test_keys::ADDRESS_0.deref().clone()
        })
        .cloned()
        .context("regulated genesis note must be recoverable")?;
    let spent_commitment = note.commit();
    let position = client
        .position(note.commit())
        .context("regulated genesis note position must be known")?;
    let spend = ShieldedInputPlan::new(&mut OsRng, note.clone(), position);
    let fee_note = client
        .notes
        .values()
        .find(|note| {
            note.asset_id() == *BASE_ASSET_ID
                && note.address() == test_keys::ADDRESS_0.deref().clone()
        })
        .cloned()
        .context("base genesis note must be recoverable for fee funding")?;
    let fee_position = client
        .position(fee_note.commit())
        .context("base genesis note position must be known")?;
    let fee_spend = ShieldedInputPlan::new(&mut OsRng, fee_note.clone(), fee_position);
    let fee_change = ShieldedOutputPlan::new(
        &mut OsRng,
        Value {
            amount: fee_note.amount(),
            asset_id: *BASE_ASSET_ID,
        },
        test_keys::ADDRESS_0.deref().clone(),
    );
    let fee_funding_transfer = shieldd_sdk_mock_client::TransferIntent {
        spends: vec![fee_spend],
        outputs: vec![fee_change],
        value_blinding: Fr::from(2u64),
    };
    let send_amount = Amount::from(100u64);
    let output = ShieldedOutputPlan::new(
        &mut OsRng,
        Value {
            amount: send_amount,
            asset_id: regulated_asset_id,
        },
        test_keys::ADDRESS_1.deref().clone(),
    );
    let change = ShieldedOutputPlan::new(
        &mut OsRng,
        Value {
            amount: note.amount() - send_amount,
            asset_id: regulated_asset_id,
        },
        test_keys::ADDRESS_0.deref().clone(),
    );
    let intent = shieldd_sdk_mock_client::TransactionIntent {
        actions: vec![shieldd_sdk_mock_client::TransferIntent {
            spends: vec![spend],
            outputs: vec![output, change],
            value_blinding: Fr::from(1u64),
        }
        .into()],
        memo: Some(MemoPlan::new(
            &mut OsRng,
            MemoPlaintext::blank_memo(test_keys::ADDRESS_0.deref().clone()),
        )),
        fee_funding: Some(fee_funding_transfer),
        transaction_parameters: TransactionParameters {
            chain_id: TEST_CHAIN_ID.to_string(),
            ..Default::default()
        },
        nullifier_window: Some(test_nullifier_window()),
    };
    let plan = client
        .complete_intent(intent, storage.latest_snapshot())
        .await?;
    let tx_bytes = client
        .witness_auth_build(&plan, registry())
        .await?
        .encode_to_vec();
    eprintln!(
        "PET-ready regulated host transaction: {} bytes",
        tx_bytes.len()
    );

    before_registration
        .check_claimed_anchor(Transaction::decode_canonical(&tx_bytes)?.anchor)
        .await?;
    // Registration changes compliance witnesses while the SCT anchor is already committed.
    let ordered = vec![
        Bytes::from(registration_tx.encode_to_vec()),
        Bytes::from(tx_bytes.clone()),
    ];
    let mut ordered_prepare = App::new(before_registration.clone(), registry()).await?;
    let prepared_ordered = ordered_prepare
        .prepare_batch(
            BatchPreparation {
                txs: ordered.clone(),
                max_tx_bytes: 1024 * 1024,
                height: 2,
            },
            None,
            false,
        )
        .await;
    assert_eq!(
        prepared_ordered.txs, ordered,
        "registration must admit a transfer under its new root"
    );
    let mut ordered_validate = App::new(before_registration.clone(), registry()).await?;
    assert!(matches!(
        ordered_validate
            .validate_batch(
                BatchCandidate {
                    txs: ordered.clone(),
                    height: 2,
                },
                None,
                false
            )
            .await,
        BatchVerdict::Accept
    ));
    let mut reversed = ordered.clone();
    reversed.reverse();
    let mut reverse_validate = App::new(before_registration, registry()).await?;
    assert!(matches!(
        reverse_validate
            .validate_batch(
                BatchCandidate {
                    txs: reversed,
                    height: 2,
                },
                None,
                false
            )
            .await,
        BatchVerdict::Reject
    ));

    let cache = StatelessCache::new();
    let mut mempool_app = App::new(storage.latest_snapshot(), registry()).await?;
    mempool_app.set_block_tx_indexing_mode(BlockTxIndexingMode::NoIndex);
    mempool_app
        .deliver_tx_bytes(tx_bytes.as_slice(), Some(&cache))
        .await?;

    test_node.execute(Vec::new()).await?;
    let mut recheck_app = App::new(storage.latest_snapshot(), registry()).await?;
    recheck_app.set_block_tx_indexing_mode(BlockTxIndexingMode::NoIndex);
    recheck_app
        .deliver_tx_bytes(tx_bytes.as_slice(), Some(&cache))
        .await
        .context("regulated transfer must remain valid during next-block mempool recheck")?;

    let proposal = BatchPreparation {
        txs: vec![tx_bytes.into()],
        max_tx_bytes: 1024 * 1024,
        height: 4,
    };
    let mut batch_app = App::new(storage.latest_snapshot(), registry()).await?;
    let prepared = batch_app.prepare_batch(proposal, Some(&cache), false).await;
    assert_eq!(
        prepared.txs.len(),
        1,
        "proposal must include the regulated transfer"
    );
    let mut validator = App::new(storage.latest_snapshot(), registry()).await?;
    let verdict = validator
        .validate_batch(
            BatchCandidate {
                txs: prepared.txs.clone(),
                height: 4,
            },
            Some(&cache),
            false,
        )
        .await;
    assert!(matches!(verdict, BatchVerdict::Accept));
    test_node
        .execute(
            prepared
                .txs
                .into_iter()
                .take(1)
                .map(|bytes| bytes.to_vec())
                .collect(),
        )
        .await?;
    client.sync_to_latest(storage.latest_snapshot()).await?;
    assert!(
        client.spent_note(&spent_commitment),
        "committed regulated transfer nullifier must be visible in the compact block"
    );

    Ok(())
}

async fn candidate_envelope_from_fixture_txs(
    _storage: &TempStorage,
    txs: &[Vec<u8>],
) -> Result<CandidateEnvelope> {
    CandidateEnvelope::new(txs.to_vec(), "app_test".into())
}

#[tokio::test]
async fn process_candidate_envelope_accepts_valid_fixture() -> Result<()> {
    let (storage, _node, txs) = setup_test_txs(2).await?;
    let envelope = candidate_envelope_from_fixture_txs(&storage, &txs).await?;
    let mut app = App::new(storage.latest_snapshot(), registry()).await?;
    let starting_generation =
        shieldd_sdk_sct::nullifier_tree::generation_state(Arc::as_ref(&app.state)).await?;

    let verdict = app.process_candidate_envelope(&envelope, None).await?;
    assert!(matches!(verdict, BatchVerdict::Accept));
    assert_eq!(app.state.pending_nullifiers().len(), 4);
    assert!(!app.state.nullifier_block_is_materialized());
    assert_eq!(
        shieldd_sdk_sct::nullifier_tree::generation_state(Arc::as_ref(&app.state))
            .await?
            .current_root,
        starting_generation.current_root,
        "ProcessProposal should reuse delivery semantics without building a disposable tree",
    );

    Ok(())
}

#[tokio::test]
async fn execute_validated_candidate_envelope_rechecks_metadata() -> Result<()> {
    let (storage, _node, txs) = setup_test_txs(1).await?;
    let spent_nullifiers = Transaction::decode(txs[0].as_slice())?
        .spent_nullifiers()
        .collect::<Vec<_>>();
    let envelope = candidate_envelope_from_fixture_txs(&storage, &txs).await?;

    let mut preflight_app = App::new(storage.latest_snapshot(), registry()).await?;
    let verdict = preflight_app
        .process_candidate_envelope(&envelope, None)
        .await?;
    assert!(matches!(verdict, BatchVerdict::Accept));

    let mut execution_only = envelope.clone();
    execution_only.tx_hashes.clear();
    execution_only.candidate_digest = [0; 32];

    let mut app = App::new(storage.latest_snapshot(), registry()).await?;
    assert!(app
        .execute_validated_candidate_envelope_profiled(&execution_only, storage.as_ref().clone())
        .await
        .is_err());
    let committed = storage.latest_snapshot();
    for nullifier in spent_nullifiers {
        assert!(!shieldd_sdk_sct::nullifier_tree::is_spent(&committed, nullifier).await?);
    }
    shieldd_sdk_sct::nullifier_tree::verify_committed_roots(&committed).await?;

    Ok(())
}

#[tokio::test(flavor = "multi_thread")]
async fn checktx_cache_hit_and_miss_match_for_supported_tx() -> Result<()> {
    let (storage, _node, txs) = setup_test_txs(1).await?;
    let tx_bytes = txs.first().expect("fixture transaction").clone();
    let cache = StatelessCache::new();

    let mut miss_app = App::new(storage.latest_snapshot(), registry()).await?;
    let miss_events = miss_app.deliver_tx_bytes(&tx_bytes, Some(&cache)).await?;
    let hash: [u8; 32] = sha2::Sha256::digest(&tx_bytes).into();
    assert!(matches!(
        cache.get(registry().id(), &hash, &tx_bytes),
        Some(CacheEntry::FullyVerified(_))
    ));

    let mut hit_app = App::new(storage.latest_snapshot(), registry()).await?;
    let hit_events = hit_app.deliver_tx_bytes(&tx_bytes, Some(&cache)).await?;
    assert!(matches!(
        cache.get(registry().id(), &hash, &tx_bytes),
        Some(CacheEntry::FullyVerified(_))
    ));
    assert_eq!(miss_events, hit_events);

    Ok(())
}

#[tokio::test]
async fn canonical_execution_rejects_same_block_nullifier_conflicts() -> Result<()> {
    let (storage, _node, txs) = setup_test_txs(1).await?;
    let bytes = txs.first().context("fixture transaction")?;
    let cache = StatelessCache::new();
    let mut app = App::new(storage.latest_snapshot(), registry()).await?;
    app.deliver_tx_bytes(bytes, Some(&cache)).await?;
    let notes_before = pending_note_records(&app);
    let err = app
        .deliver_tx_bytes(bytes, Some(&cache))
        .await
        .expect_err("duplicate spend rejected");
    assert!(format!("{err:#}").contains("spent"), "{err:#}");
    assert_eq!(pending_note_records(&app), notes_before);
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
    shieldd_sdk_sct::nullifier_tree::initialize(&mut repeated).await?;
    for nullifier in &nullifiers {
        repeated.nullify(*nullifier, source.clone()).await?;
    }

    let mut batched = StateDelta::new(snapshot);
    batched.put_block_height(42);
    shieldd_sdk_sct::nullifier_tree::initialize(&mut batched).await?;
    batched.nullify_all(&nullifiers, source).await?;

    assert_eq!(repeated.pending_nullifiers(), batched.pending_nullifiers());

    for nullifier in &nullifiers {
        assert_eq!(
            repeated.is_nullifier_spent(*nullifier).await?,
            batched.is_nullifier_spent(*nullifier).await?,
        );
    }

    repeated.materialize_nullifier_block().await?;
    batched.materialize_nullifier_block().await?;
    assert_eq!(
        shieldd_sdk_sct::nullifier_tree::generation_state(&repeated)
            .await?
            .current_root,
        shieldd_sdk_sct::nullifier_tree::generation_state(&batched)
            .await?
            .current_root,
    );

    Ok(())
}

#[tokio::test]
async fn app_readiness_requires_initialized_state() -> Result<()> {
    let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
    assert!(!App::is_ready(storage.latest_snapshot()).await);
    Ok(())
}

async fn readiness_state(storage: &TempStorage) -> StateDelta<cnidarium::Snapshot> {
    let mut state = StateDelta::new(storage.latest_snapshot());
    <shieldd_sdk_compliance::Compliance as cnidarium_component::Component>::init_chain(
        &mut state,
        Some(&Default::default()),
    )
    .await;
    state
}

#[tokio::test]
async fn app_readiness_fails_on_corrupted_nullifier_tree_nv() -> Result<()> {
    let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
    let mut state = readiness_state(&storage).await;
    shieldd_sdk_sct::nullifier_tree::insert_batch(&mut state, [Nullifier(Fq::from(91u64))]).await?;
    storage.commit(state).await?;
    assert!(App::is_ready(storage.latest_snapshot()).await);

    let mut corrupt = StateDelta::new(storage.latest_snapshot());
    let tree = shieldd_sdk_sct::nullifier_tree::generation_state(&corrupt)
        .await?
        .current_tree;
    let mut stream = corrupt.nonverifiable_prefix_raw(
        &shieldd_sdk_sct::state_key::nullifier_generations::tree_node_prefix(tree),
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
    let mut state = readiness_state(&storage).await;
    shieldd_sdk_sct::nullifier_tree::initialize(&mut state).await?;
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
    let mut state = readiness_state(&storage).await;
    shieldd_sdk_sct::nullifier_tree::initialize(&mut state).await?;
    state
        .test_only_add_compliance_leaf(ComplianceLeaf::registered_for_test(
            Address::dummy(&mut rand::thread_rng()),
            asset::Id(Fq::from(123u64)),
        ))
        .await?;
    state
        .test_only_register_asset(
            asset::Id(Fq::from(456u64)),
            AssetPolicy::for_test(
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
                u128::MAX,
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
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
async fn checktx_no_index_does_not_record_tx_log_entries_on_app_fork() -> Result<()> {
    let (storage, _node, txs) = setup_test_txs(1).await?;
    let tx_bytes = txs
        .into_iter()
        .next()
        .expect("fixture should return one tx");

    let mut app = App::new(storage.latest_snapshot(), registry()).await?;
    app.set_block_tx_indexing_mode(BlockTxIndexingMode::NoIndex);
    let cache = StatelessCache::new();
    app.deliver_tx_bytes(tx_bytes.as_slice(), Some(&cache))
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

    node.execute(txs).await?;

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
async fn prepare_proposal_reuses_fully_verified_checktx_cache_entries() -> Result<()> {
    let (storage, _node, txs) = setup_test_txs(1).await?;
    let tx_bytes = txs
        .into_iter()
        .next()
        .expect("fixture should return one tx");
    let tx_hash: [u8; 32] = sha2::Sha256::digest(tx_bytes.as_slice()).into();
    let cache = StatelessCache::new();

    let mut mempool_app = App::new(storage.latest_snapshot(), registry()).await?;
    mempool_app.set_block_tx_indexing_mode(BlockTxIndexingMode::NoIndex);
    mempool_app
        .deliver_tx_bytes(tx_bytes.as_slice(), Some(&cache))
        .await?;

    let extracted = match cache.get(registry().id(), &tx_hash, &tx_bytes) {
        Some(CacheEntry::FullyVerified(artifact)) => artifact.extracted(),
        _ => anyhow::bail!("expected fully verified cache entry after CheckTx"),
    };
    assert!(!extracted.proof_items.is_empty());
    let mut proposer = App::new(storage.latest_snapshot(), registry()).await?;
    proposer.set_block_tx_indexing_mode(BlockTxIndexingMode::DeferredBatch);
    let proposal = BatchPreparation {
        txs: vec![tx_bytes.clone().into()],
        max_tx_bytes: 1024 * 1024,
        height: 1,
    };

    let prepared = proposer.prepare_batch(proposal, Some(&cache), false).await;
    assert_eq!(
        prepared.txs.len(),
        1,
        "proposal should include the user transaction"
    );

    match cache.get(registry().id(), &tx_hash, &tx_bytes) {
        Some(CacheEntry::FullyVerified(_)) => {}
        _ => anyhow::bail!("expected fully verified cache entry after PrepareProposal"),
    }

    Ok(())
}

#[tokio::test]
async fn prepare_proposal_rechecks_spends_after_snapshot_changes() -> Result<()> {
    let (storage, mut node, txs) = setup_test_txs(1).await?;
    let tx_bytes = txs[0].clone();
    let cache = StatelessCache::new();
    let mut mempool = App::new(storage.latest_snapshot(), registry()).await?;
    mempool.set_block_tx_indexing_mode(BlockTxIndexingMode::NoIndex);
    mempool.deliver_tx_bytes(&tx_bytes, Some(&cache)).await?;
    node.execute(txs).await?;
    let mut proposer = App::new(storage.latest_snapshot(), registry()).await?;
    let prepared = proposer
        .prepare_batch(
            BatchPreparation {
                txs: vec![tx_bytes.into()],
                max_tx_bytes: 1024 * 1024,
                height: 2,
            },
            Some(&cache),
            false,
        )
        .await;
    assert!(prepared.txs.is_empty());
    Ok(())
}

#[tokio::test]
async fn committed_transaction_query_is_bounded_for_large_logs() -> Result<()> {
    use crate::app::StateWriteExt as _;
    use prost::Message as _;
    use shieldd_sdk_proto::core::app::v1::MAX_COMMITTED_TRANSACTION_RESPONSE_BYTES;
    let storage = TempStorage::new().await?;
    let mut state = StateDelta::new(storage.latest_snapshot());
    let mut selected = None;
    for ordinal in 0..256 {
        let mut tx = Transaction::default();
        tx.transaction_body.transaction_parameters.chain_id = format!(
            "{ordinal:08}{}",
            "x".repeat(super::MAX_TRANSACTION_SIZE_BYTES - 1024)
        );
        let id = tx.id().0;
        let encoded: shieldd_sdk_proto::core::transaction::v1::Transaction = tx.into();
        state.put_block_transaction(7, encoded.clone()).await?;
        selected = Some((id, encoded));
    }
    let (id, encoded) = selected.unwrap();
    assert_eq!(state.block_transaction_count(7).await?, 256);
    assert!(state.transactions_by_height(7).await?.encoded_len() > 22_020_096);
    let response = state.committed_transaction(7, id).await?;
    assert_eq!(response.transaction.as_ref(), Some(&encoded));
    assert!(response.encoded_len() <= MAX_COMMITTED_TRANSACTION_RESPONSE_BYTES);
    assert!(state
        .committed_transaction(7, [0; 32])
        .await?
        .transaction
        .is_none());
    assert!(state
        .committed_transaction(8, id)
        .await?
        .transaction
        .is_none());
    assert!(state.put_block_transaction(7, encoded).await.is_err());
    assert_eq!(state.block_transaction_count(7).await?, 256);
    Ok(())
}

fn pending_note_records(app: &App) -> Vec<(tct::Position, Vec<u8>, CommitmentSource)> {
    app.state
        .pending_note_payloads()
        .iter()
        .map(|(position, note, source)| (*position, note.encode_to_vec(), source.clone()))
        .collect()
}
