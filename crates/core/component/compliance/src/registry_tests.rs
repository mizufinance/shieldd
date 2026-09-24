use super::*;
use crate::params::{ComplianceParameters, StateWriteExt as _};
use crate::tree::QuadTree;
use cnidarium::TempStorage;
use futures::StreamExt;
use group::Group;
use reddsa::{sapling::SpendAuth, SigningKey, VerificationKey};
use shieldd_sdk_crypto::{Fq, Fr};
use shieldd_sdk_keys::Address;
use shieldd_sdk_sct::component::clock::EpochManager;
use std::collections::BTreeMap;

#[tokio::test]
async fn missing_committed_roots_are_not_reconstructed() {
    let storage = TempStorage::new().await.unwrap();
    let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
    state.initialize_trees().await.unwrap();
    let leaf = ComplianceLeaf::registered_for_test(
        Address::dummy(&mut rand::thread_rng()),
        asset::Id(Fq::from(1u64)),
    );
    state.add_compliance_leaf(leaf).await.unwrap();
    state.ensure_asset_tree_initialized().await.unwrap();
    for key in [state_key::user_tree_root(), state_key::asset_imt_root()] {
        let mut corrupted = cnidarium::StateDelta::new(&state);
        corrupted.delete(key.to_string());
        assert!(corrupted.verify_committed_tree_roots().await.is_err());
    }
}

async fn nv_count(
    state: &cnidarium::StateDelta<cnidarium::Snapshot>,
    prefix: &'static str,
) -> usize {
    let stream = state
        .nonverifiable_range_raw(Some(prefix.as_bytes()), Vec::new()..)
        .unwrap();
    futures::pin_mut!(stream);
    let mut count = 0usize;
    while let Some(entry) = stream.next().await {
        entry.unwrap();
        count += 1;
    }
    count
}

async fn delete_nv_prefix(
    state: &mut cnidarium::StateDelta<cnidarium::Snapshot>,
    prefix: &'static str,
) {
    let mut keys = Vec::new();
    {
        let stream = state
            .nonverifiable_range_raw(Some(prefix.as_bytes()), Vec::new()..)
            .unwrap();
        futures::pin_mut!(stream);
        while let Some(entry) = stream.next().await {
            let (key, _) = entry.unwrap();
            keys.push(key);
        }
    }
    for key in keys {
        state.nonverifiable_delete(key);
    }
}

const TEST_ANCHOR_MAX_AGE_SECONDS: u64 = 100;

fn put_test_compliance_params<S: cnidarium::StateWrite>(state: &mut S) {
    state.put_compliance_params(ComplianceParameters {
        compliance_anchor_max_age_seconds: TEST_ANCHOR_MAX_AGE_SECONDS,
    });
}

#[test]
fn base_fee_asset_cannot_be_admitted_as_regulated() {
    assert!(ensure_regulated_asset_id(*shieldd_sdk_asset::BASE_ASSET_ID, true).is_err());
    assert!(ensure_regulated_asset_id(*shieldd_sdk_asset::BASE_ASSET_ID, false).is_ok());
    assert!(ensure_regulated_asset_id(asset::Id(Fq::from(9u64)), true).is_ok());
}

#[tokio::test]
async fn freeze_and_unfreeze_replace_the_leaf_at_its_existing_position() {
    let storage = TempStorage::new().await.unwrap();
    let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
    state.initialize_trees().await.unwrap();
    let address = Address::dummy(&mut rand::thread_rng());
    let asset_id = asset::Id(Fq::from(91u64));
    state
        .test_only_register_asset(
            asset_id,
            AssetPolicy::for_test(
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
                u128::MAX,
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
            ),
            true,
        )
        .await
        .unwrap();
    let position = state
        .test_only_add_compliance_leaf(ComplianceLeaf::registered_for_test(
            address.clone(),
            asset_id,
        ))
        .await
        .unwrap();
    let active_root = state.get_user_tree_root().await.unwrap();
    let asset_root = state.get_asset_imt_root().await.unwrap();
    put_test_compliance_params(&mut state);
    state.put_block_timestamp(40, tendermint::Time::from_unix_timestamp(1000, 0).unwrap());
    crate::admission::state::record(&mut state, 40, 1000)
        .await
        .unwrap();
    assert_eq!(crate::admission::state::epoch(&state).await.unwrap(), 0);

    let frozen = state
        .apply_user_status_action(&address, asset_id, UserAssetStatusAction::Freeze, 40)
        .await
        .unwrap();
    assert_eq!(crate::admission::state::epoch(&state).await.unwrap(), 1);
    let stale = state
        .validate_compliance_anchors(&active_root, &asset_root)
        .await
        .unwrap_err();
    assert_eq!(
        stale.downcast_ref::<crate::admission::StaleComplianceSnapshot>(),
        Some(&crate::admission::StaleComplianceSnapshot::Frozen)
    );
    assert_eq!(frozen.position, position);
    assert_eq!(frozen.previous_status, UserAssetStatus::Active);
    assert_eq!(frozen.leaf.status, UserAssetStatus::Frozen);
    assert_eq!(frozen.leaf.freeze_generation, 1);
    assert_eq!(frozen.leaf.frozen_since_height, 40);
    assert_ne!(state.get_user_tree_root().await.unwrap(), active_root);
    assert_eq!(
        state
            .get_user_leaf(&address, asset_id)
            .await
            .unwrap()
            .unwrap()
            .status,
        UserAssetStatus::Frozen
    );

    state
        .apply_user_status_action(&address, asset_id, UserAssetStatusAction::Freeze, 41)
        .await
        .expect_err("freeze cannot be applied twice");
    let active = state
        .apply_user_status_action(&address, asset_id, UserAssetStatusAction::Unfreeze, 42)
        .await
        .unwrap();
    assert_eq!(crate::admission::state::epoch(&state).await.unwrap(), 1);
    assert!(state
        .validate_compliance_anchors(&active_root, &asset_root)
        .await
        .is_err());
    assert_eq!(active.position, position);
    assert_eq!(active.previous_status, UserAssetStatus::Frozen);
    assert_eq!(active.leaf.status, UserAssetStatus::Active);
    assert_ne!(state.get_user_tree_root().await.unwrap(), active_root);

    let refrozen = state
        .apply_user_status_action(&address, asset_id, UserAssetStatusAction::Freeze, 50)
        .await
        .unwrap();
    assert_eq!(crate::admission::state::epoch(&state).await.unwrap(), 2);
    assert_eq!(refrozen.leaf.freeze_generation, 2);
    assert_eq!(refrozen.leaf.frozen_since_height, 50);
    assert_ne!(refrozen.commitment, frozen.commitment);
    state
        .apply_user_status_action(&address, asset_id, UserAssetStatusAction::Unfreeze, 51)
        .await
        .unwrap();
    state.put_proto(state_key::admission::freeze_epoch().to_owned(), u64::MAX);
    let before = state
        .get_user_leaf(&address, asset_id)
        .await
        .unwrap()
        .unwrap();
    let root = state.get_user_tree_root().await.unwrap();
    assert!(state
        .apply_user_status_action(&address, asset_id, UserAssetStatusAction::Freeze, 52)
        .await
        .unwrap_err()
        .to_string()
        .contains("epoch overflow"));
    assert_eq!(state.get_user_tree_root().await.unwrap(), root);
    assert_eq!(
        state
            .get_user_leaf(&address, asset_id)
            .await
            .unwrap()
            .unwrap()
            .commit(),
        before.commit()
    );
}

#[tokio::test]
async fn note_seizure_is_terminal_but_allows_more_notes_from_the_same_freeze() {
    let storage = TempStorage::new().await.unwrap();
    let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
    state.initialize_trees().await.unwrap();
    let address = Address::dummy(&mut rand::thread_rng());
    let asset_id = asset::Id(Fq::from(92u64));
    state
        .test_only_register_asset(
            asset_id,
            AssetPolicy::for_test(
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
                u128::MAX,
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
            ),
            true,
        )
        .await
        .unwrap();
    state
        .test_only_add_compliance_leaf(ComplianceLeaf::registered_for_test(
            address.clone(),
            asset_id,
        ))
        .await
        .unwrap();

    state
        .admit_note_seizure(&address, asset_id, 1, 40)
        .await
        .expect_err("active leaf cannot admit seizure");
    state
        .apply_user_status_action(&address, asset_id, UserAssetStatusAction::Freeze, 40)
        .await
        .unwrap();
    state
        .admit_note_seizure(&address, asset_id, 2, 40)
        .await
        .expect_err("wrong generation cannot admit seizure");

    let first = state
        .admit_note_seizure(&address, asset_id, 1, 40)
        .await
        .unwrap();
    assert_eq!(first.previous_status, UserAssetStatus::Frozen);
    assert_eq!(first.leaf.status, UserAssetStatus::Seized);
    assert!(first.status_change.is_some());
    let seized_root = state.get_user_tree_root().await.unwrap();

    let next = state
        .admit_note_seizure(&address, asset_id, 1, 40)
        .await
        .unwrap();
    assert_eq!(next.previous_status, UserAssetStatus::Seized);
    assert_eq!(next.leaf.status, UserAssetStatus::Seized);
    assert!(next.status_change.is_none());
    assert_eq!(state.get_user_tree_root().await.unwrap(), seized_root);
    state
        .apply_user_status_action(&address, asset_id, UserAssetStatusAction::Unfreeze, 41)
        .await
        .expect_err("seized leaf cannot be unfrozen");
}

#[tokio::test]
async fn add_compliance_leaf_rejects_identity_capability_before_mutation() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();
    let mut leaf = ComplianceLeaf::registered_for_test(
        Address::dummy(&mut rand::thread_rng()),
        asset::Id(Fq::from(1u64)),
    );
    leaf.rnk_dh_pk = shieldd_sdk_crypto::SubgroupPoint::identity();

    let err = state
        .add_compliance_leaf(leaf)
        .await
        .expect_err("durable state must reject an identity capability");

    assert!(
        err.to_string().contains("rnk_dh_pk must be nonidentity"),
        "unexpected error: {err:#}"
    );
    assert_eq!(state.get_user_count().await.unwrap(), 0);
    assert_eq!(
        nv_count(&state, state_key::tree_storage::user_node_prefix()).await,
        0
    );
}

#[tokio::test]
async fn add_compliance_leaf_rejects_zero_asset_before_mutation() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();
    let leaf = ComplianceLeaf::registered_for_test(
        Address::dummy(&mut rand::thread_rng()),
        asset::Id(Fq::from(0u64)),
    );

    let err = state
        .add_compliance_leaf(leaf)
        .await
        .expect_err("the IMT sentinel value must not enter the user registry");

    assert!(
        err.to_string().contains("asset ID zero is reserved"),
        "unexpected error: {err:#}"
    );
    assert_eq!(state.get_user_count().await.unwrap(), 0);
    assert_eq!(
        nv_count(&state, state_key::tree_storage::user_node_prefix()).await,
        0
    );
}

#[tokio::test]
async fn test_user_tree_full_returns_domain_error_without_mutation() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();
    let capacity = QuadTree::max_leaves_for_depth(crate::tree::DEFAULT_DEPTH);
    state.put_proto(state_key::user_count().to_string(), capacity);

    let leaf = ComplianceLeaf::registered_for_test(
        Address::dummy(&mut rand::thread_rng()),
        asset::Id(Fq::from(1u64)),
    );
    let err = state
        .add_compliance_leaf(leaf)
        .await
        .expect_err("full user tree should fail before mutation");

    assert!(
        err.to_string().contains("compliance user tree is full"),
        "unexpected error: {err:#}"
    );
    assert_eq!(state.get_user_count().await.unwrap(), capacity);
    assert_eq!(
        nv_count(&state, state_key::tree_storage::user_node_prefix()).await,
        0
    );
}

#[tokio::test]
async fn test_user_tree_uses_nv_nodes_not_full_blob() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();

    let leaf = ComplianceLeaf::registered_for_test(
        Address::dummy(&mut rand::thread_rng()),
        asset::Id(Fq::from(1u64)),
    );
    state.add_compliance_leaf(leaf).await.unwrap();
    let root = state.get_user_tree_root().await.unwrap();

    assert!(
        nv_count(&state, state_key::tree_storage::user_node_prefix()).await
            <= crate::tree::DEFAULT_DEPTH as usize + 1
    );

    let reloaded = state.reconstruct_user_tree().await.unwrap();
    assert_eq!(reloaded.root(), root);
}

#[tokio::test]
async fn test_user_tree_root_check_fails_on_missing_nv_nodes() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();

    let leaf = ComplianceLeaf::registered_for_test(
        Address::dummy(&mut rand::thread_rng()),
        asset::Id(Fq::from(1u64)),
    );
    state.add_compliance_leaf(leaf).await.unwrap();
    state.verify_committed_tree_roots().await.unwrap();

    delete_nv_prefix(&mut state, state_key::tree_storage::user_node_prefix()).await;

    let err = state
        .verify_committed_tree_roots()
        .await
        .expect_err("missing user-tree NV nodes should fail root verification");
    assert!(err.to_string().contains("user tree root mismatch"));
}

#[tokio::test]
async fn test_register_regulated_asset() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();

    let asset_id = asset::Id(Fq::from(123u64));

    // Initially asset is unregulated (not in IMT)
    let proof_before = state.get_asset_proof_data(asset_id).await.unwrap();
    assert!(!proof_before.is_regulated);

    let policy = AssetPolicy::for_test(
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
        500,
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
    );

    // Register as regulated
    state
        .register_regulated_asset(asset_id, policy.clone())
        .await
        .unwrap();

    // Now asset is regulated (in IMT)
    let proof_after = state.get_asset_proof_data(asset_id).await.unwrap();
    assert!(proof_after.is_regulated);
    assert_eq!(
        state.get_asset_policy(asset_id).await.unwrap(),
        Some(policy)
    );
    assert_eq!(proof_after.indexed_leaf.value, asset_id.0);
    let tree = state.reconstruct_asset_tree().await.unwrap();
    assert!(tree.contains(asset_id.0));
    assert_eq!(tree.leaf_count(), 2);

    // IMT root should have changed
    let empty_imt = IndexedMerkleTree::new();
    let root = state.get_asset_imt_root().await.unwrap();
    assert_ne!(root.0, empty_imt.root().0);
}

#[tokio::test]
async fn test_asset_imt_uses_nv_nodes_and_leaves_not_full_blob() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();

    let asset_id = asset::Id(Fq::from(777u64));
    state
        .register_regulated_asset(
            asset_id,
            AssetPolicy::for_test(
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
                u128::MAX,
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
            ),
        )
        .await
        .unwrap();
    let root = state.get_asset_imt_root().await.unwrap();
    let proof_before = state.get_asset_proof_data(asset_id).await.unwrap();

    assert!(
        nv_count(&state, state_key::tree_storage::asset_node_prefix()).await
            <= ((crate::tree::DEFAULT_DEPTH as usize + 1) * 2)
    );
    assert_eq!(
        nv_count(&state, state_key::tree_storage::asset_leaf_prefix()).await,
        2
    );
    assert_eq!(
        nv_count(&state, state_key::tree_storage::asset_value_desc_prefix()).await,
        2
    );

    let reloaded = state.reconstruct_asset_tree().await.unwrap();
    assert_eq!(reloaded.root(), root);
    let proof_after = state.get_asset_proof_data(asset_id).await.unwrap();
    assert_eq!(
        proof_after.indexed_leaf.value,
        proof_before.indexed_leaf.value
    );
    assert_eq!(proof_after.position, proof_before.position);
}

#[tokio::test]
async fn test_asset_imt_root_check_fails_on_missing_nv_leaves() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();

    state
        .register_regulated_asset(
            asset::Id(Fq::from(777u64)),
            AssetPolicy::for_test(
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
                u128::MAX,
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
            ),
        )
        .await
        .unwrap();
    state.verify_committed_tree_roots().await.unwrap();

    delete_nv_prefix(&mut state, state_key::tree_storage::asset_leaf_prefix()).await;

    let err = state
        .verify_committed_tree_roots()
        .await
        .expect_err("missing asset-IMT NV leaves should fail root verification");
    assert!(err.to_string().contains("asset IMT"));
}

#[tokio::test]
async fn full_asset_structure_validation_is_confined_to_readiness() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();
    let policy = AssetPolicy::for_test(
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
        u128::MAX,
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
    );
    state
        .register_regulated_asset(asset::Id(Fq::from(777u64)), policy.clone())
        .await
        .unwrap();

    let mut sentinel = state.read_asset_leaf(0).await.unwrap();
    sentinel.next_value = Fq::from(778u64);
    state.nonverifiable_put_raw(
        state_key::tree_storage::asset_leaf(0).into_bytes(),
        bincode::serialize(&sentinel).unwrap(),
    );

    let readiness_error = state
        .verify_committed_tree_roots()
        .await
        .expect_err("a malformed successor chain must fail readiness");
    assert!(
        readiness_error.to_string().contains("successor value"),
        "unexpected error: {readiness_error:#}"
    );

    let next_asset = asset::Id(Fq::from(888u64));
    state
        .register_regulated_asset(next_asset, policy)
        .await
        .expect("an unrelated authenticated mutation should not reconstruct the full tree");
}

#[tokio::test]
async fn asset_mutation_rejects_a_corrupted_touched_path() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();
    let policy = AssetPolicy::for_test(
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
        u128::MAX,
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
    );
    state
        .register_regulated_asset(asset::Id(Fq::from(777u64)), policy.clone())
        .await
        .unwrap();

    state.nonverifiable_put_raw(
        state_key::tree_storage::asset_node(0, 0).into_bytes(),
        Fq::from(99_999u64).to_bytes().to_vec(),
    );

    let error = state
        .register_regulated_asset(asset::Id(Fq::from(888u64)), policy)
        .await
        .expect_err("a touched path must authenticate before mutation");
    assert!(
        error.to_string().contains("does not authenticate"),
        "unexpected error: {error:#}"
    );
}

#[tokio::test]
async fn test_direct_read_proofs_match_reconstructed_trees_random_trace() {
    use rand::{Rng, SeedableRng};

    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();
    let mut rng = rand::rngs::StdRng::seed_from_u64(0x5eed);
    let policy = AssetPolicy::for_test(
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
        u128::MAX,
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
    );
    let mut user_positions = Vec::new();
    let mut asset_ids = Vec::new();

    for step in 0..32u64 {
        if rng.gen_bool(0.5) {
            let asset_id = asset::Id(Fq::from(10_000u64 + step));
            let leaf = ComplianceLeaf::registered_for_test(Address::dummy(&mut rng), asset_id);
            let root_before = state.get_user_tree_root().await.unwrap();
            let commitment = leaf.commit();
            let position = state.add_compliance_leaf(leaf).await.unwrap();
            user_positions.push((position, commitment));
            assert_eq!(
                state.get_user_count().await.unwrap(),
                user_positions.len() as u64
            );
            assert_ne!(state.get_user_tree_root().await.unwrap(), root_before);

            let reconstructed = state.reconstruct_user_tree().await.unwrap();
            assert_eq!(
                state.get_user_tree_root().await.unwrap(),
                reconstructed.root()
            );
            let direct_path = state.get_user_auth_path(position).await.unwrap();
            let reconstructed_path = reconstructed.auth_path(position).unwrap();
            assert_eq!(direct_path.len(), 16);
            assert_eq!(direct_path, reconstructed_path);
            assert!(QuadTree::verify_auth_path(
                position,
                commitment,
                &direct_path,
                reconstructed.root(),
                reconstructed.depth()
            ));
        } else {
            let asset_id = asset::Id(Fq::from(20_000u64 + step));
            state
                .register_regulated_asset(asset_id, policy.clone())
                .await
                .unwrap();
            asset_ids.push(asset_id);

            let reconstructed = state.reconstruct_asset_tree().await.unwrap();
            assert_eq!(
                state.get_asset_imt_root().await.unwrap(),
                reconstructed.root()
            );
            let direct_proof = state.get_asset_proof_data(asset_id).await.unwrap();
            let (position, leaf, path) = reconstructed.membership_proof(asset_id.0).unwrap();
            assert_eq!(direct_proof.position, position);
            assert_eq!(direct_proof.indexed_leaf, leaf);
            assert_eq!(direct_proof.auth_path, MerklePath::from_auth_path(path));
        }
    }

    for (position, commitment) in user_positions {
        let direct_path = state.get_user_auth_path(position).await.unwrap();
        let reconstructed = state.reconstruct_user_tree().await.unwrap();
        assert!(QuadTree::verify_auth_path(
            position,
            commitment,
            &direct_path,
            reconstructed.root(),
            reconstructed.depth()
        ));
    }
    for asset_id in asset_ids {
        let direct_proof = state.get_asset_proof_data(asset_id).await.unwrap();
        let reconstructed = state.reconstruct_asset_tree().await.unwrap();
        assert_eq!(
            indexed_tree::recompute_root(
                direct_proof.indexed_leaf.commit(),
                &direct_proof.auth_path,
                direct_proof.position,
            )
            .unwrap(),
            reconstructed.root()
        );
    }
}

#[tokio::test]
async fn test_asset_proof_direct_read_membership_and_gap_parity() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();
    let policy = AssetPolicy::for_test(
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
        u128::MAX,
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
    );
    let registered = [300u64, 100u64];
    for value in registered {
        state
            .register_regulated_asset(asset::Id(Fq::from(value)), policy.clone())
            .await
            .unwrap();
    }

    // (query, regulated, predecessor/value, position): insertion order is not numeric order.
    let cases = [
        (Fq::from(50u64), false, Fq::from(0u64), 0),
        (Fq::from(100u64), true, Fq::from(100u64), 2),
        (Fq::from(200u64), false, Fq::from(100u64), 2),
        (Fq::from(300u64), true, Fq::from(300u64), 1),
        (Fq::from(400u64), false, Fq::from(300u64), 1),
        (*FQ_MAX - Fq::from(1u64), false, Fq::from(300u64), 1),
    ];

    let reconstructed = state.reconstruct_asset_tree().await.unwrap();
    for (value, regulated, expected_value, position) in cases {
        let asset_id = asset::Id(value);
        let direct = state.get_asset_proof_data(asset_id).await.unwrap();
        assert_eq!(direct.is_regulated, regulated);
        assert_eq!(direct.indexed_leaf.value, expected_value);
        assert_eq!(direct.position, position);
        assert_eq!(
            direct.auth_path.layers.len(),
            crate::tree::DEFAULT_DEPTH as usize
        );
        if !regulated {
            assert!(
                crate::indexed_tree::FqOrdKey::from(expected_value)
                    < crate::indexed_tree::FqOrdKey::from(value)
            );
            assert!(
                crate::indexed_tree::FqOrdKey::from(value)
                    < crate::indexed_tree::FqOrdKey::from(direct.indexed_leaf.next_value)
            );
        }
        if regulated {
            let (position, leaf, path) = reconstructed.membership_proof(asset_id.0).unwrap();
            assert!(direct.is_regulated);
            assert_eq!(direct.position, position);
            assert_eq!(direct.indexed_leaf, leaf);
            assert_eq!(direct.auth_path, MerklePath::from_auth_path(path));
        } else {
            let (position, leaf, path) = reconstructed.non_membership_proof(asset_id.0).unwrap();
            assert!(!direct.is_regulated);
            assert_eq!(direct.position, position);
            assert_eq!(direct.indexed_leaf, leaf);
            assert_eq!(direct.auth_path, MerklePath::from_auth_path(path));
        }
    }
}

#[tokio::test]
async fn test_asset_duplicate_prevention() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();

    let asset_id = asset::Id(Fq::from(789u64));

    // First registration should succeed
    state
        .register_regulated_asset(
            asset_id,
            AssetPolicy::for_test(
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
                u128::MAX,
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
            ),
        )
        .await
        .expect("First registration should succeed");

    // Verify asset is regulated
    let proof = state.get_asset_proof_data(asset_id).await.unwrap();
    assert!(proof.is_regulated);

    // Get IMT leaf count
    let imt = state.reconstruct_asset_tree().await.unwrap();
    let root_before = imt.root();
    let policy_before = state.get_asset_policy(asset_id).await.unwrap();
    let count_before = imt.leaf_count();
    assert_eq!(count_before, 2);

    // Second registration of same asset should be idempotent (succeed but no change)
    state
        .register_regulated_asset(
            asset_id,
            AssetPolicy::for_test(
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
                u128::MAX,
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
            ),
        )
        .await
        .expect("Duplicate registration should be idempotent");

    // Verify IMT leaf count didn't increase
    let imt = state.reconstruct_asset_tree().await.unwrap();
    assert_eq!(imt.root(), root_before);
    assert_eq!(
        state.get_asset_policy(asset_id).await.unwrap(),
        policy_before
    );
    assert_eq!(
        imt.leaf_count(),
        count_before,
        "IMT leaf count should remain unchanged after idempotent registration"
    );
}

#[tokio::test]
async fn test_user_leaf_position_lookup() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();
    put_test_compliance_params(&mut state);
    let mut rng = rand::thread_rng();

    let wallet1 = Address::dummy(&mut rng);
    let wallet2 = Address::dummy(&mut rng);
    let usdc = asset::Id(Fq::from(12345u64));
    let dai = asset::Id(Fq::from(67890u64));

    let leaf1 = ComplianceLeaf::registered_for_test(wallet1.clone(), usdc);
    let leaf2 = ComplianceLeaf::registered_for_test(wallet1.clone(), dai);
    let leaf3 = ComplianceLeaf::registered_for_test(wallet2.clone(), usdc);

    state.add_compliance_leaf(leaf1.clone()).await.unwrap();
    state.add_compliance_leaf(leaf2.clone()).await.unwrap();
    state.add_compliance_leaf(leaf3.clone()).await.unwrap();

    assert_eq!(state.get_user_count().await.unwrap(), 3);
    for leaf in [&leaf1, &leaf2, &leaf3] {
        assert_eq!(
            state
                .get_user_leaf(&leaf.address, leaf.asset_id)
                .await
                .unwrap(),
            Some(leaf.clone())
        );
    }

    // Position lookups
    assert_eq!(
        state.get_user_leaf_position(&wallet1, usdc).await.unwrap(),
        Some(0)
    );
    assert_eq!(
        state.get_user_leaf_position(&wallet1, dai).await.unwrap(),
        Some(1)
    );
    assert_eq!(
        state.get_user_leaf_position(&wallet2, usdc).await.unwrap(),
        Some(2)
    );
    assert_eq!(
        state
            .get_user_leaf_position(&Address::dummy(&mut rng), usdc)
            .await
            .unwrap(),
        None
    );

    // Auth paths verify correctly
    let tree = state.reconstruct_user_tree().await.unwrap();
    let root = tree.root();
    let path0 = state.get_user_auth_path(0).await.unwrap();
    let path1 = state.get_user_auth_path(1).await.unwrap();
    assert_eq!(path0.len(), 16);
    assert!(QuadTree::verify_auth_path(
        0,
        leaf1.commit(),
        &path0,
        root,
        tree.depth()
    ));
    assert!(QuadTree::verify_auth_path(
        1,
        leaf2.commit(),
        &path1,
        root,
        tree.depth()
    ));
}

/// Tests that get_user_leaf() returns the exact registered leaf (including RNK and lifecycle fields).
#[tokio::test]
async fn test_user_leaf_roundtrip() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();
    let mut rng = rand::thread_rng();
    put_test_compliance_params(&mut state);

    let wallet = Address::dummy(&mut rng);
    let asset_id = asset::Id(Fq::from(12345u64));

    let original_leaf = ComplianceLeaf::registered_for_test(wallet.clone(), asset_id);
    state
        .add_compliance_leaf(original_leaf.clone())
        .await
        .unwrap();

    let fetched_leaf = state
        .get_user_leaf(&wallet, asset_id)
        .await
        .unwrap()
        .unwrap();
    assert_eq!(original_leaf, fetched_leaf);
    assert!(state
        .get_user_leaf(&Address::dummy(&mut rng), asset_id)
        .await
        .unwrap()
        .is_none());
}

#[tokio::test]
async fn user_leaf_record_matches_its_committed_tree_position() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();
    let mut rng = rand::thread_rng();
    put_test_compliance_params(&mut state);

    let wallet = Address::dummy(&mut rng);
    let asset_id = asset::Id(Fq::from(54321u64));
    let leaf = ComplianceLeaf::registered_for_test(wallet.clone(), asset_id);
    let position = state.add_compliance_leaf(leaf.clone()).await.unwrap();

    let record = state
        .get_user_leaf_record(&wallet, asset_id)
        .await
        .unwrap()
        .unwrap();
    assert_eq!(
        record,
        UserLeafRecord {
            position,
            leaf: leaf.clone()
        }
    );

    let corrupt_leaf = leaf.clone().with_status_for_test(UserAssetStatus::Frozen);
    let corrupt = UserLeafRecord {
        position,
        leaf: corrupt_leaf,
    };
    state.put_raw(
        state_key::user_leaf_record(&wallet, &asset_id),
        encode_user_leaf_record(&corrupt).unwrap(),
    );
    let error = state
        .get_user_leaf(&wallet, asset_id)
        .await
        .expect_err("record that disagrees with the tree must be rejected");
    assert!(format!("{error:#}").contains("does not match the committed user tree"));
}

// ========== IMT Tests ==========

#[tokio::test]
async fn regulated_asset_identity_keys_fail_before_tree_mutation() {
    let identity_authority = VerificationKey::from(
        &SigningKey::<SpendAuth>::try_from(Fr::from(0u64).to_bytes()).unwrap(),
    );
    let cases = [
        (
            "detection key",
            AssetPolicy::for_test(
                shieldd_sdk_crypto::SubgroupPoint::identity(),
                1,
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
            ),
        ),
        (
            "ring key",
            AssetPolicy::for_test(
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
                1,
                shieldd_sdk_crypto::SubgroupPoint::identity(),
            ),
        ),
        (
            "registration authority key",
            AssetPolicy::for_test(
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
                1,
                *shieldd_sdk_crypto::generators::SPEND_AUTH,
            )
            .with_registration_authority(identity_authority),
        ),
    ];

    for (index, (key_role, policy)) in cases.into_iter().enumerate() {
        let storage = TempStorage::new().await.unwrap();
        let snapshot = storage.latest_snapshot();
        let mut state = cnidarium::StateDelta::new(snapshot);
        state.initialize_trees().await.unwrap();
        let root_before = state.get_asset_imt_root().await.unwrap();
        let asset_id = asset::Id(Fq::from(12345u64 + index as u64));

        let error = state
            .register_regulated_asset(asset_id, policy)
            .await
            .unwrap_err();

        assert!(
            format!("{error:#}").contains("identity"),
            "{key_role} returned unexpected error: {error:#}"
        );
        assert_eq!(
            state.get_asset_imt_root().await.unwrap(),
            root_before,
            "{key_role} changed the asset tree root"
        );
        assert!(
            !state
                .reconstruct_asset_tree()
                .await
                .unwrap()
                .contains(asset_id.0),
            "{key_role} inserted an asset leaf"
        );
        assert!(
            state.get_asset_policy(asset_id).await.unwrap().is_none(),
            "{key_role} persisted an asset policy"
        );
    }
}

// ========== Historical Anchor Tests ==========

// ========== Bounded Anchor Window Tests (Phase 7) ==========

#[tokio::test]
async fn test_get_asset_policy_cached_matches_uncached() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();

    let present_asset = asset::Id(Fq::from(77u64));
    let missing_asset = asset::Id(Fq::from(88u64));
    let policy = AssetPolicy::for_test(
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
        u128::MAX,
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
    );

    state
        .register_regulated_asset(present_asset, policy.clone())
        .await
        .unwrap();

    assert_eq!(
        state.get_asset_policy(present_asset).await.unwrap(),
        state.get_asset_policy_cached(present_asset).await.unwrap()
    );
    assert_eq!(
        state.get_asset_policy_cached(present_asset).await.unwrap(),
        Some(policy.clone())
    );

    assert_eq!(
        state.get_asset_policy(missing_asset).await.unwrap(),
        state.get_asset_policy_cached(missing_asset).await.unwrap()
    );
    assert_eq!(
        state.get_asset_policy_cached(missing_asset).await.unwrap(),
        None
    );

    let cached: BTreeMap<asset::Id, Option<AssetPolicy>> = state
        .object_get(state_key::cache::cached_asset_policies())
        .unwrap();
    assert_eq!(cached.get(&present_asset), Some(&Some(policy)));
    assert_eq!(cached.get(&missing_asset), Some(&None));
}

#[tokio::test]
async fn test_ibc_origin_lookup_rejects_duplicate_base_denom() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();
    put_test_compliance_params(&mut state);

    let route = crate::IbcRoute::transfer("channel-0", "connection-0", "channel-7");
    let mut policy = AssetPolicy::for_test(
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
        500,
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
    );
    policy.replace_allowed_ibc_routes(vec![route.clone()]);
    policy.params.ibc_origin = Some(crate::IbcAssetOrigin {
        route,
        base_denom: "ubank".to_string(),
    });

    let asset_id = asset::Id(Fq::from(700u64));
    state
        .register_regulated_asset(asset_id, policy.clone())
        .await
        .unwrap();
    assert_eq!(
        state.get_ibc_origin_asset_id("ubank").await.unwrap(),
        Some(asset_id)
    );

    let duplicate = state
        .register_regulated_asset(asset::Id(Fq::from(701u64)), policy)
        .await
        .expect_err("duplicate base denom should fail");
    assert!(
        duplicate.to_string().contains("already registered"),
        "unexpected error: {duplicate:#}"
    );
}

#[tokio::test]
async fn test_replace_asset_ibc_policy_requires_expected_hash() {
    let storage = TempStorage::new().await.unwrap();
    let snapshot = storage.latest_snapshot();
    let mut state = cnidarium::StateDelta::new(snapshot);
    state.initialize_trees().await.unwrap();

    let old_route = crate::IbcRoute::transfer("channel-0", "connection-0", "channel-7");
    let new_route = crate::IbcRoute::transfer("channel-1", "connection-1", "channel-8");
    let mut policy = AssetPolicy::for_test(
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
        500,
        *shieldd_sdk_crypto::generators::SPEND_AUTH,
    );
    policy.replace_allowed_ibc_routes(vec![old_route.clone()]);
    let expected_hash = indexed_tree::route_policy_to_fq(&policy.params).to_bytes();
    let asset_id = asset::Id(Fq::from(702u64));

    state
        .register_regulated_asset(asset_id, policy)
        .await
        .unwrap();
    state
        .replace_asset_ibc_policy(asset_id, expected_hash, vec![new_route.clone()])
        .await
        .unwrap();

    let updated = state.get_asset_policy(asset_id).await.unwrap().unwrap();
    assert!(updated.permits_ibc_route(&new_route));
    assert!(!updated.permits_ibc_route(&old_route));

    let stale = state
        .replace_asset_ibc_policy(asset_id, expected_hash, vec![])
        .await
        .expect_err("stale route policy hash should fail");
    assert!(
        stale.to_string().contains("did not match"),
        "unexpected error: {stale:#}"
    );
}

#[test]
fn timestamp_freshness_enforces_the_thirty_minute_drift_limit() {
    for (target, consensus, accepted) in [
        (1u64, 0i64, true),
        (1, 1, true),
        (1, 1801, true),
        (1, 1802, false),
        (3601, 1801, true),
        (3602, 1801, false),
        (1_700_000_000, 1_700_000_000, true),
        (1_699_998_200, 1_700_000_000, true),
        (1_700_001_800, 1_700_000_000, true),
        (0, 0, false),
        (0, 1, false),
        (0, 3600, false),
        (1000, 4601, false),
        (4601, 1000, false),
        (i64::MAX as u64, i64::MAX, true),
        (u64::MAX, i64::MAX, false),
    ] {
        assert_eq!(
            check_timestamp_freshness(target, consensus).is_ok(),
            accepted,
            "target={target}, consensus={consensus}"
        );
    }
    let error = check_timestamp_freshness(1, -1).unwrap_err();
    assert!(error.to_string().contains("must be nonnegative"));
}
