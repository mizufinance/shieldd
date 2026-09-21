use shieldd_sdk_circuits::{
    encoding,
    hash::Parameters,
    tree::{self, Tree as Kind},
};
use shieldd_sdk_crypto::Fq;
use shieldd_sdk_tct::{StateCommitment, Tree, Witness};

#[test]
fn runtime_roots_and_paths_match_the_pari_state_relation_across_tiers() {
    let params = Parameters::load().unwrap();
    let mut tree = Tree::new();
    let mut commitments = Vec::new();
    for i in 0..20 {
        let commitment = StateCommitment(Fq::from(i + 1));
        tree.insert(Witness::Keep, commitment).unwrap();
        commitments.push(commitment);
        if i == 7 {
            tree.end_block().unwrap();
        }
        if i == 13 {
            tree.end_epoch().unwrap();
        }
        for commitment in &commitments {
            let proof = tree.witness(*commitment).unwrap();
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
    tree.insert(Witness::Keep, commitment).unwrap();
    let mut encoded: shieldd_sdk_proto::shieldd::crypto::tct::v1::StateCommitmentProof =
        tree.witness(commitment).unwrap().into();
    encoded.position |= 1 << 48;
    assert!(shieldd_sdk_tct::Proof::try_from(encoded).is_err());
}
