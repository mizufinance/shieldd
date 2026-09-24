use shieldd_sdk_compliance::{AssetPolicy, IndexedMerkleTree, QuadTree};
use shieldd_sdk_crypto::Fq;
use shieldd_sdk_tct::StateCommitment;

#[test]
fn suite_policy_round_trip() {
    let policy = AssetPolicy::default_unregulated();
    let encoded = policy.to_bytes().unwrap();
    assert_eq!(AssetPolicy::from_bytes(&encoded).unwrap(), policy);
}

#[test]
fn compliance_paths_reject_extra_layers_and_high_positions() {
    let mut tree = QuadTree::with_depth(2);
    let leaf = StateCommitment(Fq::from(7));
    tree.update(0, leaf).unwrap();
    let path = tree.auth_path(0).unwrap();
    assert!(QuadTree::verify_auth_path(0, leaf, &path, tree.root(), 2));
    assert!(!QuadTree::verify_auth_path(16, leaf, &path, tree.root(), 2));
    let mut extra = path.clone();
    extra.push([leaf; 3]);
    assert!(!QuadTree::verify_auth_path(0, leaf, &extra, tree.root(), 2));
    assert!(!QuadTree::verify_auth_path(0, leaf, &[], leaf, 2));
}

#[test]
fn asset_paths_reject_extra_layers_and_high_positions() {
    let tree = IndexedMerkleTree::with_depth(2);
    let leaf = tree.get_leaf(0).unwrap();
    let path = tree.auth_path(0).unwrap();
    assert!(IndexedMerkleTree::verify_auth_path(
        0,
        leaf,
        &path,
        tree.root(),
        2
    ));
    assert!(!IndexedMerkleTree::verify_auth_path(
        16,
        leaf,
        &path,
        tree.root(),
        2
    ));
    let mut extra = path.clone();
    extra.push([leaf.commit(); 3]);
    assert!(!IndexedMerkleTree::verify_auth_path(
        0,
        leaf,
        &extra,
        tree.root(),
        2
    ));
    assert!(!IndexedMerkleTree::verify_auth_path(
        0,
        leaf,
        &[],
        leaf.commit(),
        2
    ));
}
