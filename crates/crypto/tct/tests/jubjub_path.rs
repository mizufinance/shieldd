use shieldd_sdk_circuits::{
    encoding,
    hash::Parameters,
    tree::{self, Tree as Kind},
};
use shieldd_sdk_crypto::Fq;
use shieldd_sdk_tct::{StateCommitment, Tree, Witness};

#[test]
fn duplicate_commitment_preserves_every_retained_occurrence() {
    let mut tree = Tree::new();
    let commitment = StateCommitment(Fq::from(42));
    let first = tree.insert(Witness::Keep, commitment).unwrap();
    let second = tree.insert(Witness::Keep, commitment).unwrap();
    assert_ne!(first, second);
    assert_eq!(tree.witnessed_count(), 2);
    assert_eq!(tree.commitments().count(), 2);
    tree.end_block().unwrap();
    tree.end_epoch().unwrap();
    let third = tree.insert(Witness::Keep, commitment).unwrap();
    let encoded = serde_json::to_vec(&tree).unwrap();
    tree = serde_json::from_slice(&encoded).unwrap();
    for position in [first, second, third] {
        let proof = tree.witness(position).unwrap();
        assert_eq!(proof.position(), position);
        assert_eq!(proof.commitment(), commitment);
        proof.verify(tree.root()).unwrap();
    }
    for sparse in [false, true] {
        let mut store = if sparse {
            shieldd_sdk_tct::storage::InMemory::new_sparse()
        } else {
            shieldd_sdk_tct::storage::InMemory::new()
        };
        tree.to_writer(&mut store).unwrap();
        let mut restored = Tree::from_reader(&mut store).unwrap();
        assert_eq!(tree, restored);
        assert!(restored.forget(second));
        assert!(!restored.forget(second));
        assert!(restored.witness(second).is_none());
        for position in [first, third] {
            restored
                .witness(position)
                .unwrap()
                .verify(restored.root())
                .unwrap();
        }
        assert_eq!(restored.root(), tree.root());
        restored.to_writer(&mut store).unwrap();
        assert_eq!(Tree::from_reader(&mut store).unwrap(), restored);
    }
}

#[test]
fn runtime_roots_and_paths_match_the_pari_state_relation_across_tiers() {
    let params = Parameters::load().unwrap();
    let mut tree = Tree::new();
    let mut commitments = Vec::new();
    for i in 0..20 {
        let commitment = StateCommitment(Fq::from(i + 1));
        let position = tree.insert(Witness::Keep, commitment).unwrap();
        commitments.push((position, commitment));
        if i == 7 {
            tree.end_block().unwrap();
        }
        if i == 13 {
            tree.end_epoch().unwrap();
        }
        for (position, commitment) in &commitments {
            let proof = tree.witness(*position).unwrap();
            proof.verify(tree.root()).unwrap();
            let path = proof.auth_path();
            let siblings = std::array::from_fn::<_, 24, _>(|level| {
                path[23 - level].map(|hash| encoding::field(&Fq::from(hash)))
            });
            let root = tree::native_root(
                &params,
                Kind::State,
                encoding::field(&commitment.0),
                u64::from(proof.position()),
                &siblings,
            );
            assert_eq!(
                encoding::native_field(&root).to_bytes(),
                Fq::from(tree.root()).to_bytes()
            );
        }
    }
}

#[test]
fn zero_and_one_leaves_survive_incremental_storage_and_finalization() {
    for value in [0, 1] {
        for witness in [Witness::Keep, Witness::Forget] {
            for sparse in [false, true] {
                let mut store = if sparse {
                    shieldd_sdk_tct::storage::InMemory::new_sparse()
                } else {
                    shieldd_sdk_tct::storage::InMemory::new()
                };
                let mut tree = Tree::new();
                tree.insert(witness, StateCommitment(Fq::from(value)))
                    .unwrap();
                for stage in 0..4 {
                    match stage {
                        1 => {
                            tree.insert(Witness::Keep, StateCommitment(Fq::from(42)))
                                .unwrap();
                        }
                        2 => {
                            tree.end_block().unwrap();
                        }
                        3 => {
                            tree.end_epoch().unwrap();
                        }
                        _ => {}
                    }
                    tree.to_writer(&mut store).unwrap();
                    let restored = Tree::from_reader(&mut store).unwrap();
                    assert_eq!(
                        tree.root(),
                        restored.root(),
                        "value={value}, witness={witness:?}, sparse={sparse}, stage={stage}"
                    );
                    tree = restored;
                }
            }
        }
    }
}

#[test]
fn proof_decoding_rejects_position_bits_above_tree_height() {
    let mut tree = Tree::new();
    let commitment = StateCommitment(Fq::from(42));
    let position = tree.insert(Witness::Keep, commitment).unwrap();
    let mut encoded: shieldd_sdk_proto::shieldd::crypto::tct::v1::StateCommitmentProof =
        tree.witness(position).unwrap().into();
    encoded.position |= 1 << 48;
    assert!(shieldd_sdk_tct::Proof::try_from(encoded).is_err());
}
