use shieldd_sdk_circuits::{
    encoding,
    hash::Parameters,
    history,
    tree::{self, Tree},
};
use shieldd_sdk_crypto::{domains, Fq};
use shieldd_sdk_sct::{
    indexed_nullifier_tree::{IndexedNullifierLeaf, IndexedNullifierWitness, DEPTH, ZERO_HASHES},
    nullifier_generation, Nullifier,
};

#[test]
fn history_tree_and_linked_heads_match_pari() {
    let params = Parameters::load().unwrap();
    for position in [0, 1, 2, 3, (1 << 40) - 1] {
        let leaf = IndexedNullifierLeaf::ordinary(
            Nullifier(Fq::from(7)),
            8,
            Fq::from(9).to_bytes(),
            false,
        );
        let witness = IndexedNullifierWitness {
            leaf_position: position,
            leaf,
            auth_path: (0..DEPTH)
                .map(|level| [ZERO_HASHES[level as usize].to_bytes(); 3])
                .collect(),
        };
        let circuit_leaf = history::Leaf {
            value: encoding::field(&Fq::from(7)),
            next_index: 8,
            next_value: encoding::field(&Fq::from(9)),
            lower_sentinel: false,
            terminal: false,
        };
        assert_eq!(
            encoding::native_field(&circuit_leaf.commitment(&params)),
            leaf.commitment().unwrap()
        );
        // Position zero is reserved for the lower sentinel; test the raw root formula there separately.
        let siblings = std::array::from_fn::<_, 20, _>(|level| {
            witness.auth_path[level]
                .map(|bytes| encoding::field(&shieldd_sdk_crypto::encoding::field(&bytes).unwrap()))
        });
        let expected = tree::native_root(
            &params,
            Tree::History,
            circuit_leaf.commitment(&params),
            position,
            &siblings,
        );
        if position != 0 {
            assert_eq!(
                encoding::native_field(&expected).to_bytes(),
                witness.root().unwrap()
            );
        }
    }
    let empty = params.native(domains::HISTORY_EMPTY, &[encoding::field(&Fq::from(0))]);
    assert_eq!(
        encoding::native_field(&empty).to_bytes(),
        nullifier_generation::empty_history_head()
    );
    let statement = history::GenerationStatement {
        version: history::VERSION,
        nullifier: encoding::field(&Fq::from(19)),
        index: 17,
        root: encoding::field(&Fq::from(23)),
        start_position: 31,
        end_position: 37,
        start_head: empty,
        end_head: encoding::field(&Fq::from(0)),
    };
    let native = nullifier_generation::append_history(
        nullifier_generation::empty_history_head(),
        17,
        Fq::from(23).to_bytes(),
        31,
        37,
    )
    .unwrap();
    assert_eq!(
        native,
        encoding::native_field(&statement.history_head(&params)).to_bytes()
    );
}
