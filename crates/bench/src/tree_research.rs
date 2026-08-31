//! Exact-root prototypes and measurements for Shieldd's quaternary Merkle trees.

pub mod metrics;
pub mod spikes;

use std::{
    collections::{BTreeMap, BTreeSet},
    time::{Duration, Instant},
};

use anyhow::{ensure, Context, Result};
use cnidarium::StateDelta;
use decaf377::Fq;
use rayon::{prelude::*, ThreadPool, ThreadPoolBuilder};
use serde::Serialize;
use shieldd_sdk_compliance::{
    AssetPolicy, IndexedMerkleTree, QuadTree, ZERO_HASHES as USER_ZERO_HASHES,
};
use shieldd_sdk_sct::{
    indexed_nullifier_tree::{
        FqOrdKey, IndexedNullifierLeaf, DEPTH as NULLIFIER_DEPTH, ZERO_HASHES,
    },
    nullifier_tree, Nullifier,
};
use shieldd_sdk_tct::{builder::block, structure::Hash as TctHash, StateCommitment, Witness};

pub use metrics::{IoStats, TimingDistribution};
pub use spikes::{
    run_compliance_spikes, run_nullifier_spikes, run_poseidon_spikes, run_spike_suite,
    run_tct_spikes, SpikeConfig,
};

#[derive(Clone, Copy, Debug)]
pub enum InputPattern {
    Sequential,
    Descending,
    Spread,
}

impl InputPattern {
    pub fn label(self) -> &'static str {
        match self {
            Self::Sequential => "sequential",
            Self::Descending => "descending",
            Self::Spread => "spread",
        }
    }
}

#[derive(Debug, Serialize)]
pub struct Measurement {
    pub tree: &'static str,
    pub operation: &'static str,
    pub pattern: &'static str,
    pub prefill_items: usize,
    pub items: usize,
    pub threads: usize,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub parallel_threshold: Option<usize>,
    pub elapsed_ms: f64,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub commit_ms: Option<f64>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub timing: Option<TimingDistribution>,
    #[serde(skip_serializing_if = "IoStats::is_empty")]
    pub io: IoStats,
    pub internal_hashes: usize,
    pub root: String,
    pub exact_root_match: bool,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub state_parity: Option<bool>,
}

#[derive(Debug, Serialize)]
pub struct ResearchRun {
    pub revision: String,
    pub research_source: &'static str,
    pub rustc: String,
    pub os: &'static str,
    pub architecture: &'static str,
    pub build_profile: &'static str,
    pub deterministic_seed: u64,
    pub logical_cpus: usize,
    pub measurements: Vec<Measurement>,
}

#[derive(Clone)]
struct SparseQuad {
    depth: u8,
    nodes: BTreeMap<(u8, u64), Fq>,
    zeros: Vec<Fq>,
}

impl SparseQuad {
    fn node(&self, level: u8, position: u64) -> Fq {
        self.nodes
            .get(&(level, position))
            .copied()
            .unwrap_or(self.zeros[level as usize])
    }

    fn set_node(&mut self, level: u8, position: u64, hash: Fq) {
        if hash == self.zeros[level as usize] {
            self.nodes.remove(&(level, position));
        } else {
            self.nodes.insert((level, position), hash);
        }
    }

    fn update_batch(&mut self, updates: &[(u64, Fq)], pool: &ThreadPool) -> usize {
        let final_leaves: BTreeMap<_, _> = updates.iter().copied().collect();
        let mut dirty: Vec<u64> = final_leaves.keys().copied().collect();
        for (position, leaf) in final_leaves {
            self.set_node(0, position, leaf);
        }

        let mut hashes = 0;
        for level in 0..self.depth {
            let parents: Vec<u64> = dirty
                .iter()
                .map(|position| position / 4)
                .collect::<BTreeSet<_>>()
                .into_iter()
                .collect();
            let values: Vec<(u64, Fq)> = pool.install(|| {
                parents
                    .par_iter()
                    .map(|&parent| {
                        let base = parent * 4;
                        let children =
                            std::array::from_fn(|offset| self.node(level, base + offset as u64));
                        (parent, hash_children(children))
                    })
                    .collect()
            });
            hashes += values.len();
            for (position, hash) in values {
                self.set_node(level + 1, position, hash);
            }
            dirty = parents;
        }
        hashes
    }

    fn root(&self) -> Fq {
        self.node(self.depth, 0)
    }

    fn auth_path(&self, position: u64) -> Vec<[Fq; 3]> {
        let mut current = position;
        (0..self.depth)
            .map(|level| {
                let child_index = (current % 4) as usize;
                let base = current / 4 * 4;
                let siblings: Vec<_> = (0..4)
                    .filter(|&index| index != child_index)
                    .map(|index| self.node(level, base + index as u64))
                    .collect();
                current /= 4;
                siblings.try_into().expect("three siblings")
            })
            .collect()
    }
}

fn hash_children(children: [Fq; 4]) -> Fq {
    poseidon377::hash_4(
        &Fq::from(0u64),
        (children[0], children[1], children[2], children[3]),
    )
}

fn pool(threads: usize) -> Result<ThreadPool> {
    ThreadPoolBuilder::new()
        .num_threads(threads)
        .build()
        .context("build research thread pool")
}

fn elapsed_ms(duration: Duration) -> f64 {
    duration.as_secs_f64() * 1_000.0
}

fn root_hex(root: Fq) -> String {
    hex::encode(root.to_bytes())
}

fn field_values(count: usize, pattern: InputPattern) -> Vec<Fq> {
    let values = (0..count).map(|index| match pattern {
        InputPattern::Sequential => index as u64 + 1,
        InputPattern::Descending => (count - index) as u64,
        InputPattern::Spread => {
            // An odd multiplier permutes the low 48-bit space without requiring RNG state.
            ((index as u64 + 1).wrapping_mul(0x9e37_79b9_7f4a) & ((1u64 << 48) - 1)) + 1
        }
    });
    values.map(Fq::from).collect()
}

fn leaf_positions(count: usize, pattern: InputPattern) -> Vec<u64> {
    match pattern {
        InputPattern::Sequential => (0..count as u64).collect(),
        InputPattern::Descending => (0..count as u64).rev().collect(),
        InputPattern::Spread => (0..count)
            .map(|index| {
                ((index as u64).wrapping_mul(0x9e37_79b9) & ((1u64 << 32) - 1)) % (1u64 << 32)
            })
            .collect(),
    }
}

pub fn measure_sparse_user_updates(
    count: usize,
    pattern: InputPattern,
    threads: usize,
) -> Result<Vec<Measurement>> {
    let positions = leaf_positions(count, pattern);
    let leaves = field_values(count, InputPattern::Spread);
    let updates: Vec<_> = positions.into_iter().zip(leaves).collect();

    let mut production = QuadTree::new();
    let started = Instant::now();
    for &(position, leaf) in &updates {
        production.update(position, StateCommitment(leaf))?;
    }
    let sequential_elapsed = started.elapsed();

    let mut candidate = SparseQuad {
        depth: 16,
        nodes: BTreeMap::new(),
        zeros: USER_ZERO_HASHES.iter().map(|hash| hash.0).collect(),
    };
    let thread_pool = pool(threads)?;
    let started = Instant::now();
    let batch_hashes = candidate.update_batch(&updates, &thread_pool);
    let batch_elapsed = started.elapsed();
    let production_root = production.root().0;
    ensure!(candidate.root() == production_root, "user-tree root drift");
    for &(position, _) in updates.iter().take(1).chain(updates.iter().rev().take(1)) {
        let production_path = production.auth_path(position)?;
        let candidate_path = candidate.auth_path(position);
        ensure!(
            production_path
                .iter()
                .map(|siblings| siblings.map(|hash| hash.0))
                .eq(candidate_path),
            "user-tree proof drift"
        );
    }

    Ok(vec![
        Measurement {
            tree: "user_compliance",
            operation: "production_sequential_paths",
            pattern: pattern.label(),
            prefill_items: 0,
            items: count,
            threads: 1,
            parallel_threshold: None,
            elapsed_ms: elapsed_ms(sequential_elapsed),
            commit_ms: None,
            timing: None,
            io: IoStats::default(),
            internal_hashes: count * 16,
            root: root_hex(production_root),
            exact_root_match: true,
            state_parity: None,
        },
        Measurement {
            tree: "user_compliance",
            operation: "prototype_dirty_path_union",
            pattern: pattern.label(),
            prefill_items: 0,
            items: count,
            threads,
            parallel_threshold: Some(1),
            elapsed_ms: elapsed_ms(batch_elapsed),
            commit_ms: None,
            timing: None,
            io: IoStats::default(),
            internal_hashes: batch_hashes,
            root: root_hex(candidate.root()),
            exact_root_match: true,
            state_parity: None,
        },
    ])
}

fn tct_parallel_root(commitments: &[StateCommitment], pool: &ThreadPool) -> TctHash {
    let mut level: Vec<TctHash> =
        pool.install(|| commitments.par_iter().copied().map(TctHash::of).collect());
    for height in 1..=8 {
        level = pool.install(|| {
            level
                .par_chunks(4)
                .map(|chunk| {
                    let mut children = [TctHash::one(); 4];
                    children[..chunk.len()].copy_from_slice(chunk);
                    TctHash::node(height, children[0], children[1], children[2], children[3])
                })
                .collect()
        });
    }
    level.first().copied().unwrap_or_else(TctHash::one)
}

pub fn measure_tct_block(count: usize, threads: usize) -> Result<Vec<Measurement>> {
    ensure!(count <= 65_536, "TCT block capacity exceeded");
    let commitments: Vec<_> = field_values(count, InputPattern::Spread)
        .into_iter()
        .map(StateCommitment)
        .collect();

    let started = Instant::now();
    let mut builder = block::Builder::new();
    for commitment in commitments.iter().copied() {
        builder.insert(Witness::Forget, commitment)?;
    }
    let production_root = builder.finalize().root();
    let sequential_elapsed = started.elapsed();

    let thread_pool = pool(threads)?;
    let started = Instant::now();
    let candidate_root = tct_parallel_root(&commitments, &thread_pool);
    let batch_elapsed = started.elapsed();
    ensure!(candidate_root == production_root.0, "TCT block root drift");

    let internal_hashes = (1..=8)
        .scan(count, |nodes, _| {
            *nodes = (*nodes).div_ceil(4);
            Some(*nodes)
        })
        .sum();
    Ok(vec![
        Measurement {
            tree: "tct",
            operation: "production_block_builder",
            pattern: "append",
            prefill_items: 0,
            items: count,
            threads: 1,
            parallel_threshold: None,
            elapsed_ms: elapsed_ms(sequential_elapsed),
            commit_ms: None,
            timing: None,
            io: IoStats::default(),
            internal_hashes,
            root: production_root.to_string(),
            exact_root_match: true,
            state_parity: None,
        },
        Measurement {
            tree: "tct",
            operation: "prototype_parallel_block_root",
            pattern: "append",
            prefill_items: 0,
            items: count,
            threads,
            parallel_threshold: Some(1),
            elapsed_ms: elapsed_ms(batch_elapsed),
            commit_ms: None,
            timing: None,
            io: IoStats::default(),
            internal_hashes,
            root: hex::encode(candidate_root.to_bytes()),
            exact_root_match: true,
            state_parity: None,
        },
    ])
}

fn plan_nullifier_leaves(values: &[Fq]) -> Result<BTreeMap<u64, IndexedNullifierLeaf>> {
    let mut leaves = BTreeMap::from([(0, IndexedNullifierLeaf::lower_sentinel())]);
    let mut ordered = BTreeMap::from([(FqOrdKey::from(Fq::from(0u64)), 0)]);

    for (index, value) in values.iter().copied().enumerate() {
        let key = FqOrdKey::from(value);
        ensure!(!ordered.contains_key(&key), "duplicate nullifier in model");
        let (&_, &predecessor_position) = ordered
            .range(..key)
            .next_back()
            .context("nullifier model requires a lower predecessor")?;
        let predecessor = leaves
            .get(&predecessor_position)
            .copied()
            .context("nullifier model predecessor is missing")?;
        let new_position = index as u64 + 1;
        let inserted = IndexedNullifierLeaf::ordinary(
            Nullifier(value),
            predecessor.next_index,
            predecessor.next_value,
            predecessor.is_terminal,
        );
        let updated_predecessor = IndexedNullifierLeaf {
            value: predecessor.value,
            next_index: new_position,
            next_value: value.to_bytes(),
            is_lower_sentinel: predecessor.is_lower_sentinel,
            is_terminal: false,
        };
        leaves.insert(predecessor_position, updated_predecessor);
        leaves.insert(new_position, inserted);
        ordered.insert(key, new_position);
    }
    Ok(leaves)
}

pub async fn measure_nullifier_batch(
    count: usize,
    pattern: InputPattern,
    threads: usize,
) -> Result<Vec<Measurement>> {
    let values = field_values(count, pattern);
    let nullifiers: Vec<_> = values.iter().copied().map(Nullifier).collect();
    let storage = cnidarium::TempStorage::new().await?;
    let mut state = StateDelta::new(storage.latest_snapshot());
    let started = Instant::now();
    nullifier_tree::insert_batch(&mut state, nullifiers).await?;
    let production_elapsed = started.elapsed();
    let production_root = nullifier_tree::generation_state(&state).await?.current_root;

    let thread_pool = pool(threads)?;
    let started = Instant::now();
    let leaves = plan_nullifier_leaves(&values)?;
    let updates = leaves
        .iter()
        .map(|(&position, leaf)| Ok((position, leaf.commitment()?)))
        .collect::<Result<Vec<_>>>()?;
    let mut candidate = SparseQuad {
        depth: NULLIFIER_DEPTH,
        nodes: BTreeMap::new(),
        zeros: ZERO_HASHES.iter().copied().collect(),
    };
    let batch_hashes = candidate.update_batch(&updates, &thread_pool);
    let candidate_elapsed = started.elapsed();
    ensure!(
        candidate.root().to_bytes() == production_root,
        "nullifier root drift"
    );
    for &value in values.iter().take(1).chain(values.iter().rev().take(1)) {
        let lookup = nullifier_tree::active_lookups(&state, Nullifier(value))
            .await?
            .into_iter()
            .next()
            .context("current nullifier lookup is missing")?;
        ensure!(lookup.spent, "inserted nullifier lacks a membership proof");
        let model_leaf = leaves
            .get(&lookup.proof.leaf_position)
            .context("proof position is missing from nullifier model")?;
        ensure!(
            *model_leaf == lookup.proof.leaf,
            "nullifier proof leaf drift"
        );
        let candidate_path = candidate.auth_path(lookup.proof.leaf_position);
        ensure!(
            lookup
                .proof
                .auth_path
                .iter()
                .zip(candidate_path)
                .all(|(actual, expected)| actual == &expected.map(|hash| hash.to_bytes())),
            "nullifier proof path drift"
        );
    }

    Ok(vec![
        Measurement {
            tree: "nullifier",
            operation: "production_insert_batch",
            pattern: pattern.label(),
            prefill_items: 0,
            items: count,
            threads: 1,
            parallel_threshold: None,
            elapsed_ms: elapsed_ms(production_elapsed),
            commit_ms: None,
            timing: None,
            io: IoStats::default(),
            internal_hashes: count * NULLIFIER_DEPTH as usize * 2,
            root: hex::encode(production_root),
            exact_root_match: true,
            state_parity: None,
        },
        Measurement {
            tree: "nullifier",
            operation: "prototype_plan_then_dirty_path_union",
            pattern: pattern.label(),
            prefill_items: 0,
            items: count,
            threads,
            parallel_threshold: Some(1),
            elapsed_ms: elapsed_ms(candidate_elapsed),
            commit_ms: None,
            timing: None,
            io: IoStats::default(),
            internal_hashes: batch_hashes,
            root: root_hex(candidate.root()),
            exact_root_match: true,
            state_parity: None,
        },
    ])
}

pub fn measure_asset_insertions(count: usize) -> Result<Measurement> {
    let mut tree = IndexedMerkleTree::new();
    let policy = AssetPolicy::simple(
        decaf377::Element::GENERATOR,
        u128::MAX,
        decaf377::Element::GENERATOR,
    );
    let started = Instant::now();
    for value in field_values(count, InputPattern::Spread) {
        tree.insert(value, &policy)?;
    }
    Ok(Measurement {
        tree: "asset_policy",
        operation: "production_in_memory_checked_insert",
        pattern: "spread",
        prefill_items: 0,
        items: count,
        threads: 1,
        parallel_threshold: None,
        elapsed_ms: elapsed_ms(started.elapsed()),
        commit_ms: None,
        timing: None,
        io: IoStats::default(),
        internal_hashes: count * 32,
        root: root_hex(tree.root().0),
        exact_root_match: true,
        state_parity: None,
    })
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn tct_parallel_block_root_matches_production_for_partial_shapes() -> Result<()> {
        for count in [0, 1, 3, 4, 5, 17, 100, 1_000] {
            measure_tct_block(count, 4)?;
        }
        Ok(())
    }

    #[test]
    fn dirty_path_union_matches_production_user_tree() -> Result<()> {
        for pattern in [
            InputPattern::Sequential,
            InputPattern::Descending,
            InputPattern::Spread,
        ] {
            measure_sparse_user_updates(1_000, pattern, 4)?;
        }
        Ok(())
    }

    #[tokio::test]
    async fn planned_nullifier_batch_matches_production() -> Result<()> {
        for pattern in [
            InputPattern::Sequential,
            InputPattern::Descending,
            InputPattern::Spread,
        ] {
            measure_nullifier_batch(100, pattern, 4).await?;
        }
        Ok(())
    }
}
