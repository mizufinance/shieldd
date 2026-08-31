use std::collections::BTreeSet;

use anyhow::{ensure, Context, Result};
use rayon::prelude::*;
use shieldd_sdk_tct::{
    builder::block,
    storage::{InMemory, StoredPosition, Updates},
    structure::Hash,
    Forgotten, StateCommitment, Tree, Witness,
};

use super::super::{
    field_values,
    metrics::{measure_repeated, IoStats},
    pool, Measurement,
};
use super::SpikeConfig;

type BlockPath = [[Hash; 3]; 8];
type KeptBlockPaths = Vec<(usize, BlockPath)>;

fn root_and_paths(
    commitments: &[StateCommitment],
    kept: &BTreeSet<usize>,
    threads: usize,
) -> Result<(Hash, KeptBlockPaths)> {
    let pool = pool(threads)?;
    let mut levels = Vec::with_capacity(9);
    let leaves = pool.install(|| {
        commitments
            .par_iter()
            .copied()
            .map(Hash::of)
            .collect::<Vec<_>>()
    });
    levels.push(leaves);
    for height in 1..=8 {
        let next = pool.install(|| {
            levels
                .last()
                .expect("leaf level exists")
                .par_chunks(4)
                .map(|chunk| {
                    let mut children = [Hash::one(); 4];
                    children[..chunk.len()].copy_from_slice(chunk);
                    Hash::node(height, children[0], children[1], children[2], children[3])
                })
                .collect::<Vec<_>>()
        });
        levels.push(next);
    }
    let root = levels[8].first().copied().unwrap_or_else(Hash::one);

    let mut paths = Vec::with_capacity(kept.len());
    for &leaf_position in kept {
        ensure!(
            leaf_position < commitments.len(),
            "kept TCT position is absent"
        );
        let mut position = leaf_position;
        let mut bottom_up = Vec::with_capacity(8);
        for level in levels.iter().take(8) {
            let child = position % 4;
            let base = position / 4 * 4;
            let siblings: Vec<_> = (0..4)
                .filter(|index| *index != child)
                .map(|index| level.get(base + index).copied().unwrap_or_else(Hash::one))
                .collect();
            bottom_up.push(siblings.try_into().expect("three siblings"));
            position /= 4;
        }
        bottom_up.reverse();
        paths.push((
            leaf_position,
            bottom_up.try_into().expect("TCT block has eight levels"),
        ));
    }
    Ok((root, paths))
}

pub fn measure(config: &SpikeConfig) -> Result<Vec<Measurement>> {
    ensure!(config.batch_size <= 65_536, "TCT block capacity exceeded");
    let commitments: Vec<_> = field_values(config.batch_size, config.pattern)
        .into_iter()
        .map(StateCommitment)
        .collect();
    let kept: BTreeSet<_> = [
        0,
        commitments.len() / 2,
        commitments.len().saturating_sub(1),
    ]
    .into_iter()
    .filter(|position| *position < commitments.len())
    .collect();

    let (production_tree, production_timing) =
        measure_repeated(config.warmups, config.repetitions, || {
            let mut tree = Tree::new();
            for (position, commitment) in commitments.iter().copied().enumerate() {
                tree.insert(
                    if kept.contains(&position) {
                        Witness::Keep
                    } else {
                        Witness::Forget
                    },
                    commitment,
                )?;
            }
            tree.end_block()?;
            let _ = tree.root();
            Ok(tree)
        })?;

    let ((candidate_root, candidate_paths), root_timing) =
        measure_repeated(config.warmups, config.repetitions, || {
            root_and_paths(&commitments, &kept, config.threads)
        })?;

    let mut validator_tree = Tree::new();
    for commitment in commitments.iter().copied() {
        validator_tree.insert(Witness::Forget, commitment)?;
    }
    validator_tree.end_block()?;
    let _ = validator_tree.root();

    let (candidate_tree, integration_timing) =
        measure_repeated(config.warmups, config.repetitions, || {
            let mut tree = Tree::new();
            tree.insert_block(block::Root(candidate_root))?;
            let _ = tree.root();
            Ok(tree)
        })?;

    ensure!(
        candidate_tree.root() == validator_tree.root(),
        "TCT tree root drift after direct block insertion"
    );
    ensure!(
        candidate_tree.position() == validator_tree.position(),
        "TCT position drift after direct block insertion"
    );
    let production_updates: Updates = validator_tree
        .updates(StoredPosition::default(), Forgotten::default())
        .collect();
    let candidate_updates: Updates = candidate_tree
        .updates(StoredPosition::default(), Forgotten::default())
        .collect();
    let persistence_match =
        serde_json::to_vec(&candidate_updates)? == serde_json::to_vec(&production_updates)?;
    let mut validator_storage = InMemory::new();
    validator_tree.to_writer(&mut validator_storage)?;
    let reloaded_validator = Tree::from_reader(&mut validator_storage)?;
    let mut candidate_storage = InMemory::new();
    candidate_tree.to_writer(&mut candidate_storage)?;
    let reloaded_candidate = Tree::from_reader(&mut candidate_storage)?;
    ensure!(
        reloaded_candidate.root() == reloaded_validator.root()
            && reloaded_candidate.position() == reloaded_validator.position(),
        "TCT restart state drift"
    );
    for (position, path) in candidate_paths {
        let proof = production_tree
            .witness(commitments[position])
            .context("kept commitment lacks a production TCT witness")?;
        let production_block_path = &proof.auth_path()[16..];
        ensure!(
            production_block_path
                .iter()
                .zip(path.iter())
                .all(|(actual, expected)| **actual == *expected),
            "selective TCT block witness drift at position {position}"
        );
        proof.verify(production_tree.root())?;
    }

    let internal_hashes: usize = (1..=8)
        .scan(commitments.len(), |nodes, _| {
            *nodes = nodes.div_ceil(4);
            Some(*nodes)
        })
        .sum();
    let root = production_tree.root().to_string();
    Ok(vec![
        Measurement {
            tree: "tct",
            operation: "t0_current_mixed_keep_forget",
            pattern: config.pattern.label(),
            prefill_items: 0,
            items: commitments.len(),
            threads: 1,
            parallel_threshold: None,
            elapsed_ms: production_timing.median_ms,
            commit_ms: None,
            timing: Some(production_timing),
            io: IoStats::default(),
            internal_hashes,
            root: root.clone(),
            exact_root_match: true,
            state_parity: Some(true),
        },
        Measurement {
            tree: "tct",
            operation: "t1_parallel_block_root_t3_selective_paths",
            pattern: config.pattern.label(),
            prefill_items: 0,
            items: commitments.len(),
            threads: config.threads,
            parallel_threshold: Some(1),
            elapsed_ms: root_timing.median_ms,
            commit_ms: None,
            timing: Some(root_timing),
            io: IoStats::default(),
            internal_hashes,
            root: root.clone(),
            exact_root_match: true,
            state_parity: None,
        },
        Measurement {
            tree: "tct",
            operation: "t2_direct_forget_block_integration",
            pattern: config.pattern.label(),
            prefill_items: 0,
            items: commitments.len(),
            threads: config.threads,
            parallel_threshold: None,
            elapsed_ms: integration_timing.median_ms,
            commit_ms: None,
            timing: Some(integration_timing),
            io: IoStats::default(),
            internal_hashes: 16,
            root,
            exact_root_match: true,
            state_parity: Some(persistence_match),
        },
    ])
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn parallel_block_integrates_and_selective_paths_match() -> Result<()> {
        for count in [0, 1, 3, 4, 5, 100, 1_000] {
            let mut config = SpikeConfig::smoke(4);
            config.batch_size = count;
            let measurements = measure(&config)?;
            assert!(measurements
                .iter()
                .all(|measurement| measurement.exact_root_match));
            assert_eq!(
                measurements
                    .iter()
                    .find(|measurement| {
                        measurement.operation == "t2_direct_forget_block_integration"
                    })
                    .and_then(|measurement| measurement.state_parity),
                Some(true)
            );
        }
        Ok(())
    }
}
