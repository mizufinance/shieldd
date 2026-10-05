#[macro_use]
extern crate proptest_derive;

use std::collections::BTreeMap;

use proptest::{arbitrary::*, prelude::*};

use shieldd_sdk_tct::{validate, StateCommitment, Tree, Witness};

const MAX_USED_COMMITMENTS: usize = 3;
const MAX_TIER_ACTIONS: usize = 10;

#[derive(Debug, Copy, Clone, Arbitrary)]
#[proptest(params("Vec<StateCommitment>"))]
enum Action {
    EndBlock,
    EndEpoch,
    Forget(u8),
    Insert(Witness, StateCommitment),
}

impl Action {
    fn apply(&self, tree: &mut Tree) -> anyhow::Result<()> {
        // Predict the position of the next insertion
        let predicted_position = tree.position();

        match self {
            Action::Insert(witness, commitment) => {
                // Insert the commitment
                tree.insert(*witness, *commitment)?;

                // If the insertion succeeded, the position must have been non-`None`
                assert!(predicted_position.is_some());

                // If the commitment was witnessed, the position must match the position of the
                // commitment when retrieved, and the proof must validate and contain the correct
                // commitment
                if matches!(witness, Witness::Keep) {
                    let proof = tree.witness(predicted_position.unwrap()).unwrap();
                    assert_eq!(proof.position(), predicted_position.unwrap());
                    assert_eq!(*commitment, proof.commitment());

                    assert!(proof.verify(tree.root()).is_ok());
                }

                // Check that the position advanced by one commitment
                let old_position = predicted_position.unwrap();
                let new_position = tree.position().unwrap();

                assert_eq!(new_position.epoch(), old_position.epoch());
                assert_eq!(new_position.block(), old_position.block());
                assert_eq!(new_position.commitment(), old_position.commitment() + 1);
            }
            Action::EndBlock => {
                tree.end_block()?;

                let old_position = predicted_position.unwrap();
                let new_position = tree.position().unwrap();

                assert_eq!(new_position.epoch(), old_position.epoch());
                assert_eq!(new_position.block(), old_position.block() + 1);
                assert_eq!(new_position.commitment(), 0);
            }
            Action::EndEpoch => {
                tree.end_epoch()?;

                let old_position = predicted_position.unwrap();
                let new_position = tree.position().unwrap();

                assert_eq!(new_position.epoch(), old_position.epoch() + 1);
                assert_eq!(new_position.block(), 0);
                assert_eq!(new_position.commitment(), 0);
            }
            Action::Forget(choice) => {
                let position = tree
                    .commitments()
                    .nth(usize::from(*choice) % tree.witnessed_count().max(1))
                    .map(|(position, _)| position)
                    .unwrap_or(0u64.into());
                let exists = tree.witness(position).is_some();
                let result = tree.forget(position);
                assert_eq!(exists, result);
            }
        };

        Ok(())
    }
}

proptest! {
    #[test]
    fn index_correct(
        actions in
            prop::collection::vec(any::<StateCommitment>(), 1..MAX_USED_COMMITMENTS)
                .prop_flat_map(|commitments| {
                    prop::collection::vec(any_with::<Action>(commitments), 1..MAX_TIER_ACTIONS)
                })
    ) {
        let mut tree = Tree::new();

        let mut commitments_added = BTreeMap::new();

        for action in &actions {
            match action {
                Action::Insert (Witness::Keep, commitment) => {
                    commitments_added.insert(tree.position().unwrap(), *commitment);
                },
                Action::Forget (choice) => {
                    let position = commitments_added.keys().nth(usize::from(*choice) % commitments_added.len().max(1)).copied();
                    if let Some(position) = position { commitments_added.remove(&position); }
                },
                _ => {}
            }
            action.apply(&mut tree).unwrap();
        }

        // Check generated commitments
        assert_eq!(tree.witnessed_count(), commitments_added.len());
        for (position, commitment) in commitments_added {
            let proof = tree.witness(position).unwrap();
            assert_eq!(commitment, proof.commitment());

            assert!(proof.verify(tree.root()).is_ok());
        }
    }

    #[test]
    fn trace_preserves_index_proofs_and_cached_hashes(
        actions in
            prop::collection::vec(any::<StateCommitment>(), 1..MAX_USED_COMMITMENTS)
                .prop_flat_map(|commitments| {
                    prop::collection::vec(any_with::<Action>(commitments), 1..MAX_TIER_ACTIONS)
                })
    ) {
        let mut tree = Tree::new();
        for action in actions {
            action.apply(&mut tree).unwrap();
        }
        validate::index(&tree).expect("index after trace");
        validate::all_proofs(&tree).expect("authentication proofs after trace");
        validate::cached_hashes(&tree).expect("cached hashes after trace");
    }






    #[test]
    fn validate_forgotten(
        actions in
            prop::collection::vec(any::<StateCommitment>(), 1..MAX_USED_COMMITMENTS)
                .prop_flat_map(|commitments| {
                    prop::collection::vec(any_with::<Action>(commitments), 1..MAX_TIER_ACTIONS)
                })
    ) {
        let mut tree = Tree::new();
        for action in actions {
            // Number of commitments forgotten already
            let pre = tree.forgotten();

            let should_increase = matches!(action, Action::Forget(_)) && tree.witnessed_count() > 0;

            // Apply the action
            action.apply(&mut tree).unwrap();

            // Number of commitments forgotten after the action
            let post = tree.forgotten();

            // Check that the count is increasing correctly
            if should_increase {
                assert_eq!(u64::from(post), u64::from(pre) + 1);
            } else {
                assert_eq!(post, pre);
            }
        }
        validate::forgotten(&tree).unwrap();
    }
}
