use super::*;

/// Helper to create a test policy.
fn test_policy() -> AssetPolicy {
    AssetPolicy::default_unregulated()
}

#[test]
fn empty_tree_proves_only_the_open_sentinel_interval() {
    let tree = IndexedMerkleTree::new();
    assert_eq!(tree.leaf_count(), 1);
    tree.validate_well_formed().unwrap();

    let sentinel = tree.get_leaf(0).expect("Sentinel should exist");
    assert_eq!(sentinel.value, Fq::from(0u64));
    assert_eq!(sentinel.next_index, 0);
    assert_eq!(sentinel.next_value, *FQ_MAX);
    for value in [
        Fq::from(1u64),
        Fq::from(1000u64),
        Fq::from(12345u64),
        Fq::from(u64::MAX / 2),
        Fq::from(u64::MAX),
        *FQ_MAX - Fq::from(1u64),
    ] {
        let (position, leaf, path) = tree.non_membership_proof(value).unwrap();
        assert_eq!(position, 0);
        assert_eq!(&leaf, sentinel);
        assert!(fq_less_than(&leaf.value, &value));
        assert!(fq_less_than(&value, &leaf.next_value));
        assert!(IndexedMerkleTree::verify_auth_path(
            position,
            &leaf,
            &path,
            tree.root(),
            DEFAULT_DEPTH
        ));
    }
    for endpoint in [Fq::from(0u64), *FQ_MAX] {
        assert!(tree.non_membership_proof(endpoint).is_err());
    }
}

fn populated_tree() -> IndexedMerkleTree {
    let mut tree = IndexedMerkleTree::with_depth(4);
    for value in [300u64, 100, 200] {
        tree.insert(Fq::from(value), &test_policy()).unwrap();
    }
    tree.validate_well_formed().unwrap();
    tree
}

#[test]
fn well_formedness_rejects_depth_and_capacity_corruption() {
    let mut depth = populated_tree();
    depth.depth = DEFAULT_DEPTH + 1;
    assert!(depth
        .validate_well_formed()
        .unwrap_err()
        .to_string()
        .contains("depth"));

    let mut capacity = IndexedMerkleTree::with_depth(1);
    capacity.leaf_count = 5;
    assert!(capacity
        .validate_well_formed()
        .unwrap_err()
        .to_string()
        .contains("capacity"));
}

#[test]
fn well_formedness_rejects_count_and_position_corruption() {
    let mut count = populated_tree();
    count.leaf_count += 1;
    assert!(count
        .validate_well_formed()
        .unwrap_err()
        .to_string()
        .contains("leaf map"));

    let mut position = populated_tree();
    let leaf = position.leaves.remove(&1).unwrap();
    position.leaves.insert(position.leaf_count, leaf);
    assert!(position
        .validate_well_formed()
        .unwrap_err()
        .to_string()
        .contains("missing position"));
}

#[test]
fn well_formedness_rejects_duplicate_values_and_noncanonical_sentinel() {
    let mut duplicate = populated_tree();
    let duplicated_value = duplicate.leaves[&1].value;
    duplicate.leaves.get_mut(&2).unwrap().value = duplicated_value;
    assert!(duplicate
        .validate_well_formed()
        .unwrap_err()
        .to_string()
        .contains("duplicate"));

    let mut sentinel = populated_tree();
    sentinel
        .leaves
        .get_mut(&0)
        .unwrap()
        .params
        .daily_volume_limit = 7;
    assert!(sentinel
        .validate_well_formed()
        .unwrap_err()
        .to_string()
        .contains("sentinel policy"));
}

#[test]
fn well_formedness_rejects_incomplete_and_inconsistent_successor_chains() {
    let mut incomplete = populated_tree();
    let sentinel = incomplete.leaves.get_mut(&0).unwrap();
    sentinel.next_index = 0;
    sentinel.next_value = *FQ_MAX;
    assert!(incomplete
        .validate_well_formed()
        .unwrap_err()
        .to_string()
        .contains("visits"));

    let mut inconsistent = populated_tree();
    inconsistent.leaves.get_mut(&0).unwrap().next_value = Fq::from(99u64);
    assert!(inconsistent
        .validate_well_formed()
        .unwrap_err()
        .to_string()
        .contains("successor value"));

    let mut non_increasing = populated_tree();
    non_increasing.leaves.get_mut(&0).unwrap().next_index = 1;
    non_increasing.leaves.get_mut(&0).unwrap().next_value = Fq::from(300u64);
    non_increasing.leaves.get_mut(&1).unwrap().next_index = 2;
    non_increasing.leaves.get_mut(&1).unwrap().next_value = Fq::from(100u64);
    assert!(non_increasing
        .validate_well_formed()
        .unwrap_err()
        .to_string()
        .contains("strictly increasing"));
}

#[test]
fn well_formedness_rejects_derived_index_and_merkle_corruption() {
    let mut index = populated_tree();
    index.value_index.insert(Fq::from(999u64).to_bytes(), 1);
    assert!(index
        .validate_well_formed()
        .unwrap_err()
        .to_string()
        .contains("value index"));

    let mut predecessor = populated_tree();
    predecessor
        .predecessor_index
        .insert(FqOrdKey::from(Fq::from(999u64)), 1);
    assert!(predecessor
        .validate_well_formed()
        .unwrap_err()
        .to_string()
        .contains("predecessor index"));

    let mut nodes = populated_tree();
    nodes.nodes.insert(
        IndexedMerkleTree::node_key(nodes.depth, 0),
        StateCommitment(Fq::from(9u64)),
    );
    assert!(nodes
        .validate_well_formed()
        .unwrap_err()
        .to_string()
        .contains("stored nodes"));
}

#[test]
fn sparse_reconstruction_and_deserialization_reject_corruption() {
    let tree = populated_tree();
    let mut leaves = tree.leaves.clone();
    leaves.get_mut(&0).unwrap().next_value = Fq::from(99u64);
    assert!(IndexedMerkleTree::try_from_sparse_parts(
        tree.depth,
        tree.nodes.clone(),
        leaves,
        tree.leaf_count,
    )
    .is_err());

    let mut serialized_corruption = tree;
    serialized_corruption.value_index.clear();
    let bytes = bincode::serialize(&serialized_corruption).unwrap();
    assert!(bincode::deserialize::<IndexedMerkleTree>(&bytes).is_err());
}

#[test]
fn insertion_and_policy_update_preserve_all_invariants() {
    let mut tree = IndexedMerkleTree::with_depth(4);
    for value in [400u64, 100, 900, 250, 700] {
        tree.insert(Fq::from(value), &test_policy()).unwrap();
        tree.validate_well_formed().unwrap();
    }
    tree.update_policy(Fq::from(400u64), &test_policy())
        .unwrap();
    tree.validate_well_formed().unwrap();
}

#[test]
fn insertion_returns_the_stored_leaf_and_updated_predecessor() {
    let mut tree = IndexedMerkleTree::new();
    let value = Fq::from(100u64);

    let root_before = tree.root();
    let result = tree.insert(value, &test_policy()).unwrap();
    assert_ne!(tree.root(), root_before);
    assert_eq!(result.low_leaf_position, 0);
    assert_eq!(
        *tree.get_leaf(result.position).unwrap(),
        result.indexed_leaf
    );
    assert_eq!(
        *tree.get_leaf(result.low_leaf_position).unwrap(),
        result.updated_low_leaf
    );
    assert_eq!(result.updated_low_leaf.value, Fq::from(0u64));
    assert_eq!(result.position, 1);
    assert_eq!(tree.leaf_count(), 2);
    assert!(tree.contains(value));

    let leaf = tree.get_leaf(1).unwrap();
    assert_eq!(leaf.value, value);
    assert_eq!(leaf.next_index, 0);
    assert_eq!(leaf.next_value, *FQ_MAX);

    let sentinel = tree.get_leaf(0).unwrap();
    assert_eq!(sentinel.next_index, 1);
    assert_eq!(sentinel.next_value, value);
}

#[test]
fn test_imt_insert_multiple_maintains_order() {
    let mut tree = IndexedMerkleTree::with_depth(4);
    let policy = test_policy();

    let values = [
        Fq::from(500u64),
        Fq::from(100u64),
        Fq::from(300u64),
        Fq::from(200u64),
    ];

    for v in values {
        tree.insert(v, &policy).unwrap();
    }

    let mut collected = Vec::new();
    let mut pos = 0u64;
    loop {
        let leaf = tree.get_leaf(pos).unwrap();
        if leaf.next_value == *FQ_MAX {
            break;
        }
        collected.push(leaf.next_value);
        pos = leaf.next_index;
    }

    let expected = vec![
        Fq::from(100u64),
        Fq::from(200u64),
        Fq::from(300u64),
        Fq::from(500u64),
    ];
    assert_eq!(collected, expected);
}

#[test]
fn membership_and_gap_proofs_authenticate_at_supported_depths() {
    for depth in [4, DEFAULT_DEPTH] {
        let mut tree = IndexedMerkleTree::with_depth(depth);
        assert_eq!(tree.depth(), depth);
        assert!(tree.membership_proof(Fq::from(100u64)).is_err());
        for value in [100u64, 300] {
            tree.insert(Fq::from(value), &test_policy()).unwrap();
        }
        for (value, present, predecessor) in [(100u64, true, 100u64), (200, false, 100)] {
            let value = Fq::from(value);
            let (position, leaf, path) = if present {
                assert!(tree.non_membership_proof(value).is_err());
                tree.membership_proof(value).unwrap()
            } else {
                assert!(tree.membership_proof(value).is_err());
                tree.non_membership_proof(value).unwrap()
            };
            assert_eq!(position, 1);
            assert_eq!(leaf.value, Fq::from(predecessor));
            assert_eq!(path.len(), depth as usize);
            if !present {
                assert!(crate::indexed_tree::FqOrdKey::from(leaf.value) < value.into());
                assert!(crate::indexed_tree::FqOrdKey::from(value) < leaf.next_value.into());
            }
            assert!(IndexedMerkleTree::verify_auth_path(
                position,
                &leaf,
                &path,
                tree.root(),
                depth
            ));
            assert!(!IndexedMerkleTree::verify_auth_path(
                position,
                &leaf,
                &path,
                StateCommitment(tree.root().0 + Fq::from(1u64)),
                depth
            ));
        }
    }
}

#[test]
fn rejected_insertions_leave_the_tree_unchanged() {
    let mut tree = IndexedMerkleTree::new();
    tree.insert(Fq::from(100u64), &test_policy()).unwrap();
    for value in [0u64, 100] {
        let before = bincode::serialize(&tree).unwrap();
        assert!(tree.insert(Fq::from(value), &test_policy()).is_err());
        assert_eq!(bincode::serialize(&tree).unwrap(), before);
    }
}

#[test]
fn tree_codecs_preserve_leaves_indexes_and_proofs() {
    let mut tree = IndexedMerkleTree::new();
    let policy = test_policy();
    tree.insert(Fq::from(100u64), &policy).unwrap();
    tree.insert(Fq::from(200u64), &policy).unwrap();

    let decoded = [
        bincode::deserialize::<IndexedMerkleTree>(&bincode::serialize(&tree).unwrap()).unwrap(),
        serde_json::from_slice::<IndexedMerkleTree>(&serde_json::to_vec(&tree).unwrap()).unwrap(),
    ];
    for deserialized in decoded {
        assert_eq!(tree.root(), deserialized.root());
        assert_eq!(tree.leaf_count(), deserialized.leaf_count());
        assert_eq!(tree.leaves, deserialized.leaves);
        assert_eq!(tree.value_index, deserialized.value_index);
        assert_eq!(tree.predecessor_index, deserialized.predecessor_index);
        let (pos1, leaf1, path1) = tree.non_membership_proof(Fq::from(999u64)).unwrap();
        let (pos2, leaf2, path2) = deserialized.non_membership_proof(Fq::from(999u64)).unwrap();
        assert_eq!(pos1, pos2);
        assert_eq!(leaf1, leaf2);
        assert_eq!(path1, path2);

        assert!(IndexedMerkleTree::verify_auth_path(
            pos2,
            &leaf2,
            &path2,
            deserialized.root(),
            DEFAULT_DEPTH
        ));
    }
}

#[test]
fn test_fq_ord_key_numeric_order() {
    let ordered = [
        Fq::from(0u64),
        Fq::from(1u64),
        Fq::from(2u64),
        Fq::from(10u64),
        Fq::from(u64::MAX),
        *FQ_MAX,
    ];

    for window in ordered.windows(2) {
        assert!(FqOrdKey::from(window[0]) < FqOrdKey::from(window[1]));
    }
}

#[test]
fn test_imt_predecessor_index_matches_linear_scan() {
    let mut tree = IndexedMerkleTree::new();
    let policy = test_policy();
    for value in [400u64, 100, 900, 250, 700] {
        tree.insert(Fq::from(value), &policy).unwrap();
    }

    let linear_low_leaf = |target: Fq| -> Option<(u64, IndexedLeaf)> {
        tree.leaves
            .iter()
            .filter(|(_, leaf)| FqOrdKey::from(leaf.value) <= FqOrdKey::from(target))
            .max_by_key(|(_, leaf)| FqOrdKey::from(leaf.value))
            .map(|(&position, leaf)| (position, leaf.clone()))
    };

    for target in [
        Fq::from(1u64),
        Fq::from(50u64),
        Fq::from(100u64),
        Fq::from(150u64),
        Fq::from(101u64),
        Fq::from(399u64),
        Fq::from(700u64),
        Fq::from(800u64),
        *FQ_MAX - Fq::from(1u64),
    ] {
        let indexed = tree.find_low_leaf(target).unwrap();
        let linear = linear_low_leaf(target).unwrap();
        assert_eq!(indexed.0, linear.0);
        assert_eq!(indexed.1, linear.1);
    }

    let mut changed_policy = test_policy();
    changed_policy.params.daily_volume_limit = 42;
    tree.update_policy(Fq::from(400u64), &changed_policy)
        .unwrap();
    let (_, leaf) = tree.find_low_leaf(Fq::from(450u64)).unwrap();
    assert_eq!(leaf.value, Fq::from(400u64));
    assert_eq!(leaf.daily_volume_limit(), 42);
}

#[test]
fn test_fq_max_is_field_modulus_minus_one() {
    let fq_max = *FQ_MAX;
    let fq_max_plus_one = fq_max + Fq::from(1u64);
    assert_eq!(fq_max_plus_one, Fq::from(0u64));
    assert!(fq_less_than(&Fq::from(0u64), &fq_max));
    assert!(fq_less_than(&Fq::from(u64::MAX), &fq_max));
}

#[test]
fn test_indexed_leaf_proto_roundtrip() {
    let leaf = IndexedLeaf::with_default_policy(Fq::from(100u64), 2, Fq::from(200u64));

    let proto: pb::IndexedLeafData = leaf.clone().into();
    let back = IndexedLeaf::try_from(proto).unwrap();

    assert_eq!(back, leaf);
}

#[test]
fn indexed_leaf_proto_rejects_omitted_policy_facts_and_invalid_points() {
    let leaf = IndexedLeaf::with_default_policy(Fq::from(100u64), 2, Fq::from(200u64));
    let proto: pb::IndexedLeafData = leaf.into();
    let mutations: [(&str, fn(&mut pb::IndexedLeafData)); 10] = [
        ("dk_pub", |p| p.dk_pub.clear()),
        ("daily_volume_limit", |p| p.daily_volume_limit.clear()),
        ("route_policy_hash", |p| p.route_policy_hash.clear()),
        ("ring_pk", |p| p.ring_pk.clear()),
        ("ring_id_hash", |p| p.ring_id_hash.clear()),
        ("policy_id_hash", |p| p.policy_id_hash.clear()),
        ("permission_hash", |p| p.permission_hash.clear()),
        ("resource_hash", |p| p.resource_hash.clear()),
        ("invalid dk_pub", |p| p.dk_pub.fill(0xff)),
        ("invalid ring_pk", |p| p.ring_pk.fill(0xff)),
    ];

    for (label, mutate) in mutations {
        let mut candidate = proto.clone();
        mutate(&mut candidate);
        assert!(
            IndexedLeaf::try_from(candidate).is_err(),
            "indexed leaf {label} alias must fail"
        );
    }
}

#[test]
fn test_indexed_leaf_bincode_roundtrip() {
    let leaf = IndexedLeaf::with_default_policy(Fq::from(100u64), 2, Fq::from(200u64));

    let bytes = bincode::serialize(&leaf).unwrap();
    let back: IndexedLeaf = bincode::deserialize(&bytes).unwrap();

    assert_eq!(back.value, leaf.value);
    assert_eq!(back.next_index, leaf.next_index);
    assert_eq!(back.next_value, leaf.next_value);
    assert_eq!(back.params, leaf.params);
    assert_eq!(back.ring, leaf.ring);
}

#[test]
fn test_route_policy_to_fq_order_independent() {
    use crate::structs::IbcRoute;
    let mut a = AssetPolicy::default_unregulated().params;
    a.allowed_ibc_routes = vec![
        IbcRoute::transfer("channel-0", "connection-0", "channel-7"),
        IbcRoute::transfer("channel-1", "connection-1", "channel-8"),
    ];
    let mut b = a.clone();
    b.allowed_ibc_routes.reverse();
    assert_eq!(route_policy_to_fq(&a), route_policy_to_fq(&b));
}

#[test]
fn indexed_leaf_commitment_binds_each_policy_and_link_field() {
    let leaf = IndexedLeaf::from_policy(Fq::from(100u64), 0, *FQ_MAX, &test_policy());
    let cases: &[(&str, fn(&mut IndexedLeaf))] = &[
        ("value", |x| x.value += Fq::from(1u64)),
        ("next index", |x| x.next_index += 1),
        ("next value", |x| x.next_value -= Fq::from(1u64)),
        ("detection key", |x| {
            x.params.dk_pub += *shieldd_sdk_crypto::generators::SPEND_AUTH
        }),
        ("daily limit", |x| x.params.daily_volume_limit -= 1),
        ("route policy", |x| {
            x.params.route_policy_hash += Fq::from(1u64)
        }),
        ("ring key", |x| {
            x.ring.ring_pk += *shieldd_sdk_crypto::generators::SPEND_AUTH
        }),
        ("ring id", |x| x.ring.ring_id_hash += Fq::from(1u64)),
        ("policy id", |x| x.ring.policy_id_hash += Fq::from(1u64)),
        ("permission", |x| x.ring.permission_hash += Fq::from(1u64)),
        ("resource", |x| x.ring.resource_hash += Fq::from(1u64)),
        ("audit epoch", |x| x.ring.audit_keys.epoch += 1),
        ("audit payload", |x| {
            x.ring.audit_keys.payload += *shieldd_sdk_crypto::generators::SPEND_AUTH
        }),
        ("audit checking", |x| {
            x.ring.audit_keys.checking += *shieldd_sdk_crypto::generators::SPEND_AUTH
        }),
    ];
    for (name, mutate) in cases {
        let mut changed = leaf.clone();
        mutate(&mut changed);
        assert_ne!(changed.commit(), leaf.commit(), "unbound {name}");
    }
}

#[test]
fn test_leaf_from_policy() {
    let policy = AssetPolicy::default_unregulated();
    let leaf = IndexedLeaf::from_policy(Fq::from(42u64), 0, *FQ_MAX, &policy);

    assert_eq!(leaf.value, Fq::from(42u64));
    assert_eq!(leaf.params.dk_pub, *crate::crypto::UNREGULATED_DETECTION);
    assert_eq!(leaf.params.daily_volume_limit, u128::MAX);
    assert_eq!(leaf.ring.ring_pk, *crate::crypto::UNREGULATED_RING);
}
