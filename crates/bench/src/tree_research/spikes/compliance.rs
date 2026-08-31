use std::collections::BTreeMap;

use anyhow::{ensure, Context, Result};
use decaf377::Fq;
use shieldd_sdk_compliance::{
    indexed_tree::{FqOrdKey, FQ_MAX},
    AssetPolicy, IndexedLeaf, IndexedMerkleTree, QuadTree, IMT_ZERO_HASHES,
    ZERO_HASHES as USER_ZERO_HASHES,
};
use shieldd_sdk_tct::StateCommitment;

use super::super::{
    field_values, leaf_positions,
    metrics::{measure_repeated, IoStats},
    pool, root_hex, Measurement, SparseQuad,
};
use super::SpikeConfig;

fn policy() -> AssetPolicy {
    AssetPolicy::simple(
        decaf377::Element::GENERATOR,
        u128::MAX,
        decaf377::Element::GENERATOR,
    )
}

fn plan_asset_leaves(values: &[Fq], policy: &AssetPolicy) -> Result<BTreeMap<u64, IndexedLeaf>> {
    let sentinel = IndexedLeaf::with_default_policy(Fq::from(0u64), 0, *FQ_MAX);
    let mut leaves = BTreeMap::from([(0, sentinel)]);
    let mut ordered = BTreeMap::from([(FqOrdKey::from(Fq::from(0u64)), 0)]);
    for (index, value) in values.iter().copied().enumerate() {
        let key = FqOrdKey::from(value);
        ensure!(value != Fq::from(0u64), "asset model reserves zero");
        ensure!(!ordered.contains_key(&key), "duplicate asset in model");
        let predecessor_position = *ordered
            .range(..key)
            .next_back()
            .context("asset model requires a predecessor")?
            .1;
        let predecessor = leaves
            .get(&predecessor_position)
            .cloned()
            .context("asset model predecessor is missing")?;
        let position = index as u64 + 1;
        let inserted = IndexedLeaf::from_policy(
            value,
            predecessor.next_index,
            predecessor.next_value,
            policy,
        );
        let updated_predecessor = IndexedLeaf::new(
            predecessor.value,
            position,
            value,
            predecessor.params,
            predecessor.ring,
        );
        leaves.insert(predecessor_position, updated_predecessor);
        leaves.insert(position, inserted);
        ordered.insert(key, position);
    }
    Ok(leaves)
}

pub fn measure(config: &SpikeConfig) -> Result<Vec<Measurement>> {
    let positions = leaf_positions(config.batch_size, config.pattern);
    let leaves = field_values(config.batch_size, super::super::InputPattern::Spread);
    let user_updates: Vec<_> = positions.into_iter().zip(leaves).collect();
    let mut user_fixture = QuadTree::new();
    for &(position, leaf) in &user_updates {
        user_fixture.update(position, StateCommitment(leaf))?;
    }

    let (production_user, production_user_timing) =
        measure_repeated(config.warmups, config.repetitions, || {
            let mut tree = QuadTree::new();
            for &(position, leaf) in &user_updates {
                tree.update(position, StateCommitment(leaf))?;
            }
            Ok(tree)
        })?;
    ensure!(
        production_user.root() == user_fixture.root(),
        "compliance user baseline root drift"
    );

    let (_, clone_timing) = measure_repeated(config.warmups, config.repetitions, || {
        Ok(user_fixture.clone())
    })?;
    let (no_event_root, no_event_timing) =
        measure_repeated(config.warmups, config.repetitions, || {
            Ok(user_fixture.root())
        })?;
    ensure!(no_event_root == user_fixture.root(), "no-event root drift");

    let thread_pool = pool(config.threads)?;
    let (candidate_user, user_batch_timing) =
        measure_repeated(config.warmups, config.repetitions, || {
            let mut tree = SparseQuad {
                depth: 16,
                nodes: BTreeMap::new(),
                zeros: USER_ZERO_HASHES.iter().map(|hash| hash.0).collect(),
            };
            let hashes = tree.update_batch(&user_updates, &thread_pool);
            Ok((tree, hashes))
        })?;
    ensure!(
        candidate_user.0.root() == user_fixture.root().0,
        "compliance user overlay root drift"
    );

    let values = field_values(config.batch_size, config.pattern);
    let asset_policy = policy();
    let (production_asset, production_asset_timing) =
        measure_repeated(config.warmups, config.repetitions, || {
            let mut tree = IndexedMerkleTree::new();
            for value in values.iter().copied() {
                tree.insert(value, &asset_policy)?;
            }
            Ok(tree)
        })?;
    let ((candidate_asset, changed_leaves), candidate_asset_timing) =
        measure_repeated(config.warmups, config.repetitions, || {
            let planned = plan_asset_leaves(&values, &asset_policy)?;
            let updates = planned
                .iter()
                .map(|(&position, leaf)| (position, leaf.commit().0))
                .collect::<Vec<_>>();
            let mut tree = SparseQuad {
                depth: (IMT_ZERO_HASHES.len() - 1) as u8,
                nodes: BTreeMap::new(),
                zeros: IMT_ZERO_HASHES.iter().map(|hash| hash.0).collect(),
            };
            let hashes = tree.update_batch(&updates, &thread_pool);
            Ok((tree, (planned, hashes)))
        })?;
    ensure!(
        candidate_asset.root() == production_asset.root().0,
        "asset transactional overlay root drift"
    );
    for &value in values.iter().take(1).chain(values.iter().rev().take(1)) {
        let position = production_asset
            .get_position(value)
            .context("inserted asset position is missing")?;
        let production_path = production_asset.auth_path(position)?;
        let candidate_path = candidate_asset.auth_path(position);
        ensure!(
            production_path
                .iter()
                .map(|siblings| siblings.map(|hash| hash.0))
                .eq(candidate_path),
            "asset overlay proof drift"
        );
        ensure!(
            production_asset.get_leaf(position) == changed_leaves.0.get(&position),
            "asset overlay leaf drift"
        );
    }

    let root = root_hex(user_fixture.root().0);
    Ok(vec![
        Measurement {
            tree: "user_compliance",
            operation: "c0_current_sequential_updates",
            pattern: config.pattern.label(),
            prefill_items: 0,
            items: user_updates.len(),
            threads: 1,
            parallel_threshold: None,
            elapsed_ms: production_user_timing.median_ms,
            commit_ms: None,
            timing: Some(production_user_timing),
            io: IoStats::default(),
            internal_hashes: user_updates.len() * 16,
            root: root.clone(),
            exact_root_match: true,
            state_parity: None,
        },
        Measurement {
            tree: "user_compliance",
            operation: "c0_state_clone_baseline",
            pattern: config.pattern.label(),
            prefill_items: 0,
            items: user_updates.len(),
            threads: 1,
            parallel_threshold: None,
            elapsed_ms: clone_timing.median_ms,
            commit_ms: None,
            timing: Some(clone_timing),
            io: IoStats::default(),
            internal_hashes: 0,
            root: root.clone(),
            exact_root_match: true,
            state_parity: None,
        },
        Measurement {
            tree: "user_compliance",
            operation: "c1_no_event_fast_path",
            pattern: config.pattern.label(),
            prefill_items: 0,
            items: user_updates.len(),
            threads: 1,
            parallel_threshold: None,
            elapsed_ms: no_event_timing.median_ms,
            commit_ms: None,
            timing: Some(no_event_timing),
            io: IoStats::default(),
            internal_hashes: 0,
            root: root.clone(),
            exact_root_match: true,
            state_parity: None,
        },
        Measurement {
            tree: "user_compliance",
            operation: "c2_transactional_dirty_overlay",
            pattern: config.pattern.label(),
            prefill_items: 0,
            items: user_updates.len(),
            threads: config.threads,
            parallel_threshold: Some(1),
            elapsed_ms: user_batch_timing.median_ms,
            commit_ms: None,
            timing: Some(user_batch_timing),
            io: IoStats::default(),
            internal_hashes: candidate_user.1,
            root,
            exact_root_match: true,
            state_parity: None,
        },
        Measurement {
            tree: "asset_policy",
            operation: "c0_checked_insert_baseline",
            pattern: config.pattern.label(),
            prefill_items: 0,
            items: values.len(),
            threads: 1,
            parallel_threshold: None,
            elapsed_ms: production_asset_timing.median_ms,
            commit_ms: None,
            timing: Some(production_asset_timing),
            io: IoStats::default(),
            internal_hashes: values.len() * (IMT_ZERO_HASHES.len() - 1),
            root: root_hex(production_asset.root().0),
            exact_root_match: true,
            state_parity: None,
        },
        Measurement {
            tree: "asset_policy",
            operation: "c3_local_validation_dirty_overlay",
            pattern: config.pattern.label(),
            prefill_items: 0,
            items: values.len(),
            threads: config.threads,
            parallel_threshold: Some(1),
            elapsed_ms: candidate_asset_timing.median_ms,
            commit_ms: None,
            timing: Some(candidate_asset_timing),
            io: IoStats::default(),
            internal_hashes: changed_leaves.1,
            root: root_hex(candidate_asset.root()),
            exact_root_match: true,
            state_parity: None,
        },
    ])
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn compliance_overlays_match_roots_leaves_and_paths() -> Result<()> {
        let mut config = SpikeConfig::smoke(4);
        config.batch_size = 10;
        config.prefill_size = 0;
        let measurements = measure(&config)?;
        assert!(measurements
            .iter()
            .all(|measurement| measurement.exact_root_match));
        Ok(())
    }
}
