//! Storage-backed nullifier baselines and dirty-path prototypes.

use std::collections::{BTreeMap, BTreeSet};

use anyhow::{ensure, Context, Result};
use cnidarium::{Snapshot, StateDelta, StateRead, StateWrite, TempStorage};
use decaf377::Fq;
use futures::{stream, StreamExt, TryStreamExt};
use rayon::prelude::*;
use shieldd_sdk_proto::{StateReadProto, StateWriteProto};
use shieldd_sdk_sct::{
    indexed_nullifier_tree::{
        hash_children, FqOrdKey, IndexedNullifierLeaf, IndexedNullifierWitness, CAPACITY, DEPTH,
        ZERO_HASHES,
    },
    nullifier_generation::{NullifierGenerationState, NullifierTreeId},
    nullifier_tree,
    state_key::nullifier_generations as keys,
    Nullifier,
};

use super::super::{
    metrics::{measure_repeated_async, CountingState, IoStats, NodeKey, TimingDistribution},
    pool, Measurement,
};
use super::SpikeConfig;

type ResearchState = CountingState<StateDelta<Snapshot>>;

#[derive(Debug, Eq, PartialEq)]
struct LookupFingerprint {
    tree: NullifierTreeId,
    root: [u8; 32],
    spent: bool,
    proof: IndexedNullifierWitness,
}

#[derive(Debug, Eq, PartialEq)]
struct StateFingerprint {
    generation: NullifierGenerationState,
    leaf_count: u64,
    lookups: Vec<LookupFingerprint>,
    verifiable_changes: BTreeMap<String, Option<Vec<u8>>>,
    nonverifiable_changes: BTreeMap<Vec<u8>, Option<Vec<u8>>>,
}

struct Outcome {
    fingerprint: StateFingerprint,
    io: IoStats,
    internal_hashes: usize,
}

#[derive(Clone, Copy)]
enum LeafAccess {
    Point,
    Concurrent,
    Prefix,
}

fn encode_position(position: u64) -> Vec<u8> {
    position.to_be_bytes().to_vec()
}

fn decode_position(bytes: Vec<u8>) -> Result<u64> {
    Ok(u64::from_be_bytes(bytes.try_into().map_err(
        |bytes: Vec<u8>| anyhow::anyhow!("position must be 8 bytes, got {}", bytes.len()),
    )?))
}

fn decode_fq(bytes: Vec<u8>) -> Result<Fq> {
    let bytes: [u8; 32] = bytes
        .try_into()
        .map_err(|bytes: Vec<u8>| anyhow::anyhow!("node must be 32 bytes, got {}", bytes.len()))?;
    Fq::from_bytes_checked(&bytes).map_err(|_| anyhow::anyhow!("node is not canonical"))
}

fn descending_key(value: Fq) -> [u8; 32] {
    let mut key = FqOrdKey::from(value).0;
    for byte in &mut key {
        *byte = !*byte;
    }
    key
}

async fn leaf_count<S: StateRead + ?Sized>(state: &S, tree: NullifierTreeId) -> Result<u64> {
    state
        .get_proto(&keys::leaf_count(tree))
        .await?
        .context("nullifier leaf count is missing")
}

async fn read_leaf<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
    position: u64,
) -> Result<IndexedNullifierLeaf> {
    let bytes = state
        .nonverifiable_get_raw(&keys::leaf(tree, position))
        .await?
        .with_context(|| format!("nullifier leaf {position} is missing"))?;
    bincode::deserialize(&bytes).context("decode indexed nullifier leaf")
}

async fn read_node<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
    key: NodeKey,
) -> Result<Fq> {
    state
        .nonverifiable_get_raw(&keys::tree_node(tree, key.level, key.position))
        .await?
        .map(decode_fq)
        .transpose()
        .map(|node| node.unwrap_or(ZERO_HASHES[key.level as usize]))
}

async fn read_predecessor_position<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
    target: Fq,
) -> Result<u64> {
    let prefix = keys::value_desc_prefix(tree);
    let mut start = descending_key(target).to_vec();
    start.push(0);
    let stream = state.nonverifiable_range_raw(Some(&prefix), start..)?;
    futures::pin_mut!(stream);
    match stream.next().await.transpose()? {
        Some((_key, bytes)) => decode_position(bytes),
        None => Ok(0),
    }
}

fn put_node<S: StateWrite + ?Sized>(state: &mut S, tree: NullifierTreeId, key: NodeKey, hash: Fq) {
    let storage_key = keys::tree_node(tree, key.level, key.position);
    if hash == ZERO_HASHES[key.level as usize] {
        state.nonverifiable_delete(storage_key);
    } else {
        state.nonverifiable_put_raw(storage_key, hash.to_bytes().to_vec());
    }
}

fn put_leaf<S: StateWrite + ?Sized>(
    state: &mut S,
    tree: NullifierTreeId,
    position: u64,
    leaf: IndexedNullifierLeaf,
) -> Result<()> {
    state.nonverifiable_put_raw(
        keys::leaf(tree, position),
        bincode::serialize(&leaf).context("encode indexed nullifier leaf")?,
    );
    if !leaf.is_lower_sentinel {
        state.nonverifiable_put_raw(keys::value(tree, leaf.value), encode_position(position));
        state.nonverifiable_put_raw(
            keys::value_desc(tree, descending_key(leaf.value_fq()?)),
            encode_position(position),
        );
    }
    Ok(())
}

async fn write_paths_elided(
    state: &mut ResearchState,
    tree: NullifierTreeId,
    overlay: &mut BTreeMap<NodeKey, Fq>,
    updates: &[(u64, Fq)],
) -> Result<Fq> {
    let mut root = ZERO_HASHES[DEPTH as usize];
    for &(position, leaf_hash) in updates {
        let mut current_position = position;
        let mut current_hash = leaf_hash;
        let leaf_key = NodeKey { level: 0, position };
        overlay.insert(leaf_key, leaf_hash);
        put_node(state, tree, leaf_key, leaf_hash);
        for level in 0..DEPTH {
            let parent_position = current_position / 4;
            let base = parent_position * 4;
            let mut children = [Fq::from(0u64); 4];
            for (index, child) in children.iter_mut().enumerate() {
                let key = NodeKey {
                    level,
                    position: base + index as u64,
                };
                if let Some(hash) = overlay.get(&key).copied() {
                    state.record_overlay_hits(1);
                    *child = hash;
                } else {
                    *child = read_node(state, tree, key).await?;
                }
            }
            children[(current_position % 4) as usize] = current_hash;
            current_hash = hash_children(children);
            current_position = parent_position;
            let key = NodeKey {
                level: level + 1,
                position: current_position,
            };
            overlay.insert(key, current_hash);
            put_node(state, tree, key, current_hash);
        }
        root = current_hash;
    }
    Ok(root)
}

async fn insert_read_elision(
    mut state: ResearchState,
    nullifiers: Vec<Nullifier>,
) -> Result<(ResearchState, usize)> {
    let mut seen = BTreeSet::new();
    for nullifier in &nullifiers {
        ensure!(seen.insert(*nullifier), "duplicate nullifier in batch");
    }
    if nullifiers.is_empty() {
        return Ok((state, 0));
    }
    for (nullifier, spent) in nullifiers
        .iter()
        .zip(nullifier_tree::contains_batch(&state, &nullifiers).await?)
    {
        ensure!(!spent, "nullifier {nullifier} was already spent");
    }
    let mut generation = nullifier_tree::generation_state(&state).await?;
    let tree = generation.current_tree;
    let mut node_overlay = BTreeMap::new();
    let mut leaf_overlay = BTreeMap::new();
    for nullifier in nullifiers.iter().copied() {
        let count = leaf_count(&state, tree).await?;
        ensure!(count < CAPACITY, "nullifier generation is full");
        let predecessor_position = read_predecessor_position(&state, tree, nullifier.0).await?;
        let predecessor = if let Some(leaf) = leaf_overlay.get(&predecessor_position).copied() {
            state.record_overlay_hits(1);
            leaf
        } else {
            read_leaf(&state, tree, predecessor_position).await?
        };
        let target = FqOrdKey::from(nullifier.0);
        if !predecessor.is_lower_sentinel {
            ensure!(
                FqOrdKey::from(predecessor.value_fq()?) < target,
                "invalid predecessor"
            );
        }
        if !predecessor.is_terminal {
            ensure!(
                target < FqOrdKey::from(predecessor.next_value_fq()?),
                "invalid successor gap"
            );
        }
        let inserted = IndexedNullifierLeaf::ordinary(
            nullifier,
            predecessor.next_index,
            predecessor.next_value,
            predecessor.is_terminal,
        );
        let updated_predecessor = IndexedNullifierLeaf {
            next_index: count,
            next_value: nullifier.to_bytes(),
            is_terminal: false,
            ..predecessor
        };
        put_leaf(&mut state, tree, count, inserted)?;
        put_leaf(&mut state, tree, predecessor_position, updated_predecessor)?;
        leaf_overlay.insert(count, inserted);
        leaf_overlay.insert(predecessor_position, updated_predecessor);
        let root = write_paths_elided(
            &mut state,
            tree,
            &mut node_overlay,
            &[
                (count, inserted.commitment()?),
                (predecessor_position, updated_predecessor.commitment()?),
            ],
        )
        .await?;
        state.put_raw(keys::root(tree), root.to_bytes().to_vec());
        state.put_proto(keys::leaf_count(tree), count + 1);
        generation.current_root = root.to_bytes();
    }
    generation.validate()?;
    state.put(keys::state().to_owned(), generation);
    Ok((state, nullifiers.len() * DEPTH as usize * 2))
}

async fn plan_leaves(
    state: &ResearchState,
    tree: NullifierTreeId,
    start_count: u64,
    nullifiers: &[Nullifier],
) -> Result<BTreeMap<u64, IndexedNullifierLeaf>> {
    ensure!(
        start_count.saturating_add(nullifiers.len() as u64) <= CAPACITY,
        "nullifier generation is full"
    );
    let mut leaves = BTreeMap::new();
    let mut batch_index = BTreeMap::<FqOrdKey, u64>::new();
    for (offset, nullifier) in nullifiers.iter().copied().enumerate() {
        let target = FqOrdKey::from(nullifier.0);
        let durable_position = read_predecessor_position(state, tree, nullifier.0).await?;
        let durable_leaf = if let Some(leaf) = leaves.get(&durable_position).copied() {
            state.record_overlay_hits(1);
            leaf
        } else {
            read_leaf(state, tree, durable_position).await?
        };
        let batch_predecessor = batch_index.range(..target).next_back();
        let predecessor_position = match batch_predecessor {
            Some((key, position)) if *key > FqOrdKey::from(durable_leaf.value_fq()?) => *position,
            _ => durable_position,
        };
        let predecessor = if predecessor_position == durable_position {
            durable_leaf
        } else {
            state.record_overlay_hits(1);
            leaves
                .get(&predecessor_position)
                .copied()
                .context("batch predecessor is missing")?
        };
        if !predecessor.is_lower_sentinel {
            ensure!(
                FqOrdKey::from(predecessor.value_fq()?) < target,
                "invalid predecessor"
            );
        }
        if !predecessor.is_terminal {
            ensure!(
                target < FqOrdKey::from(predecessor.next_value_fq()?),
                "invalid successor gap"
            );
        }
        let position = start_count + offset as u64;
        let inserted = IndexedNullifierLeaf::ordinary(
            nullifier,
            predecessor.next_index,
            predecessor.next_value,
            predecessor.is_terminal,
        );
        let updated_predecessor = IndexedNullifierLeaf {
            next_index: position,
            next_value: nullifier.to_bytes(),
            is_terminal: false,
            ..predecessor
        };
        leaves.insert(predecessor_position, updated_predecessor);
        leaves.insert(position, inserted);
        batch_index.insert(target, position);
    }
    Ok(leaves)
}

async fn plan_leaves_prefetched(
    state: &ResearchState,
    tree: NullifierTreeId,
    start_count: u64,
    nullifiers: &[Nullifier],
) -> Result<BTreeMap<u64, IndexedNullifierLeaf>> {
    ensure!(
        start_count.saturating_add(nullifiers.len() as u64) <= CAPACITY,
        "nullifier generation is full"
    );
    let prefix = keys::leaf_prefix(tree);
    let stream = state.nonverifiable_prefix_raw(&prefix);
    futures::pin_mut!(stream);
    let mut all_leaves = BTreeMap::new();
    let mut ordered = BTreeMap::new();
    while let Some((key, bytes)) = stream.try_next().await? {
        let position_bytes = key
            .get(key.len().saturating_sub(8)..)
            .context("prefetched leaf key omits its position")?;
        let position = u64::from_be_bytes(
            position_bytes
                .try_into()
                .map_err(|_| anyhow::anyhow!("prefetched leaf position is malformed"))?,
        );
        let leaf: IndexedNullifierLeaf =
            bincode::deserialize(&bytes).context("decode prefetched nullifier leaf")?;
        ordered.insert(FqOrdKey::from(leaf.value_fq()?), position);
        all_leaves.insert(position, leaf);
    }
    ensure!(
        all_leaves.len() as u64 == start_count,
        "prefetched leaf count does not match durable count"
    );

    let mut changed = BTreeSet::new();
    for (offset, nullifier) in nullifiers.iter().copied().enumerate() {
        let target = FqOrdKey::from(nullifier.0);
        let predecessor_position = *ordered
            .range(..target)
            .next_back()
            .context("prefetched index requires a lower predecessor")?
            .1;
        let predecessor = all_leaves
            .get(&predecessor_position)
            .copied()
            .context("prefetched predecessor leaf is missing")?;
        if !predecessor.is_lower_sentinel {
            ensure!(
                FqOrdKey::from(predecessor.value_fq()?) < target,
                "invalid predecessor"
            );
        }
        if !predecessor.is_terminal {
            ensure!(
                target < FqOrdKey::from(predecessor.next_value_fq()?),
                "invalid successor gap"
            );
        }
        let position = start_count + offset as u64;
        let inserted = IndexedNullifierLeaf::ordinary(
            nullifier,
            predecessor.next_index,
            predecessor.next_value,
            predecessor.is_terminal,
        );
        let updated_predecessor = IndexedNullifierLeaf {
            next_index: position,
            next_value: nullifier.to_bytes(),
            is_terminal: false,
            ..predecessor
        };
        all_leaves.insert(predecessor_position, updated_predecessor);
        all_leaves.insert(position, inserted);
        ordered.insert(target, position);
        changed.insert(predecessor_position);
        changed.insert(position);
    }
    changed
        .into_iter()
        .map(|position| {
            Ok((
                position,
                all_leaves
                    .get(&position)
                    .copied()
                    .context("changed prefetched leaf is missing")?,
            ))
        })
        .collect()
}

async fn plan_leaves_concurrent(
    state: &ResearchState,
    tree: NullifierTreeId,
    start_count: u64,
    nullifiers: &[Nullifier],
    max_concurrent_reads: usize,
) -> Result<BTreeMap<u64, IndexedNullifierLeaf>> {
    ensure!(
        start_count.saturating_add(nullifiers.len() as u64) <= CAPACITY,
        "nullifier generation is full"
    );
    let mut durable = stream::iter(nullifiers.iter().copied().enumerate())
        .map(|(index, nullifier)| async move {
            let position = read_predecessor_position(state, tree, nullifier.0).await?;
            let leaf = read_leaf(state, tree, position).await?;
            Ok::<_, anyhow::Error>((index, position, leaf))
        })
        .buffer_unordered(max_concurrent_reads)
        .try_collect::<Vec<_>>()
        .await?;
    durable.sort_unstable_by_key(|(index, _, _)| *index);

    let mut leaves = BTreeMap::new();
    let mut batch_index = BTreeMap::<FqOrdKey, u64>::new();
    for ((offset, nullifier), (_, durable_position, prefetched_leaf)) in
        nullifiers.iter().copied().enumerate().zip(durable)
    {
        let target = FqOrdKey::from(nullifier.0);
        let durable_leaf = leaves
            .get(&durable_position)
            .copied()
            .unwrap_or(prefetched_leaf);
        let batch_predecessor = batch_index.range(..target).next_back();
        let predecessor_position = match batch_predecessor {
            Some((key, position)) if *key > FqOrdKey::from(durable_leaf.value_fq()?) => *position,
            _ => durable_position,
        };
        let predecessor = if predecessor_position == durable_position {
            durable_leaf
        } else {
            leaves
                .get(&predecessor_position)
                .copied()
                .context("concurrent batch predecessor is missing")?
        };
        if !predecessor.is_lower_sentinel {
            ensure!(
                FqOrdKey::from(predecessor.value_fq()?) < target,
                "invalid predecessor"
            );
        }
        if !predecessor.is_terminal {
            ensure!(
                target < FqOrdKey::from(predecessor.next_value_fq()?),
                "invalid successor gap"
            );
        }
        let position = start_count + offset as u64;
        let inserted = IndexedNullifierLeaf::ordinary(
            nullifier,
            predecessor.next_index,
            predecessor.next_value,
            predecessor.is_terminal,
        );
        let updated_predecessor = IndexedNullifierLeaf {
            next_index: position,
            next_value: nullifier.to_bytes(),
            is_terminal: false,
            ..predecessor
        };
        leaves.insert(predecessor_position, updated_predecessor);
        leaves.insert(position, inserted);
        batch_index.insert(target, position);
    }
    Ok(leaves)
}

async fn compute_dirty_nodes(
    state: &ResearchState,
    tree: NullifierTreeId,
    leaves: &BTreeMap<u64, IndexedNullifierLeaf>,
    threads: usize,
    parallel_threshold: usize,
    concurrent_reads: usize,
) -> Result<(BTreeMap<NodeKey, Fq>, usize)> {
    let mut nodes = BTreeMap::new();
    let mut dirty = Vec::with_capacity(leaves.len());
    for (&position, leaf) in leaves {
        nodes.insert(NodeKey { level: 0, position }, leaf.commitment()?);
        dirty.push(position);
    }
    let pool = pool(threads)?;
    let mut hashes = 0;
    for level in 0..DEPTH {
        let parents: Vec<_> = dirty
            .iter()
            .map(|position| position / 4)
            .collect::<BTreeSet<_>>()
            .into_iter()
            .collect();
        let mut missing = Vec::new();
        for &parent in &parents {
            for offset in 0..4 {
                let key = NodeKey {
                    level,
                    position: parent * 4 + offset,
                };
                if nodes.contains_key(&key) {
                    state.record_overlay_hits(1);
                } else {
                    missing.push(key);
                }
            }
        }
        let base_nodes: BTreeMap<_, _> = if concurrent_reads > 1 {
            stream::iter(missing.iter().copied())
                .map(|key| async move {
                    Ok::<_, anyhow::Error>((key, read_node(state, tree, key).await?))
                })
                .buffer_unordered(concurrent_reads)
                .try_collect()
                .await?
        } else {
            let mut values = BTreeMap::new();
            for key in missing {
                values.insert(key, read_node(state, tree, key).await?);
            }
            values
        };
        let inputs: Vec<_> = parents
            .iter()
            .map(|&parent| {
                let children = std::array::from_fn(|offset| {
                    let key = NodeKey {
                        level,
                        position: parent * 4 + offset as u64,
                    };
                    nodes
                        .get(&key)
                        .or_else(|| base_nodes.get(&key))
                        .copied()
                        .expect("every dirty child is available")
                });
                (parent, children)
            })
            .collect();
        let values: Vec<_> = if parents.len() >= parallel_threshold && threads > 1 {
            pool.install(|| {
                inputs
                    .par_iter()
                    .map(|(position, children)| (*position, hash_children(*children)))
                    .collect()
            })
        } else {
            inputs
                .iter()
                .map(|(position, children)| (*position, hash_children(*children)))
                .collect()
        };
        hashes += values.len();
        for (position, hash) in values {
            nodes.insert(
                NodeKey {
                    level: level + 1,
                    position,
                },
                hash,
            );
        }
        dirty = parents;
    }
    Ok((nodes, hashes))
}

async fn insert_dirty_union(
    mut state: ResearchState,
    nullifiers: Vec<Nullifier>,
    threads: usize,
    parallel_threshold: usize,
    concurrent_reads: usize,
    leaf_access: LeafAccess,
) -> Result<(ResearchState, usize)> {
    let hashes = apply_dirty_union(
        &mut state,
        nullifiers,
        threads,
        parallel_threshold,
        concurrent_reads,
        leaf_access,
    )
    .await?;
    Ok((state, hashes))
}

async fn apply_dirty_union(
    state: &mut ResearchState,
    nullifiers: Vec<Nullifier>,
    threads: usize,
    parallel_threshold: usize,
    concurrent_reads: usize,
    leaf_access: LeafAccess,
) -> Result<usize> {
    let mut seen = BTreeSet::new();
    for nullifier in &nullifiers {
        ensure!(seen.insert(*nullifier), "duplicate nullifier in batch");
    }
    if nullifiers.is_empty() {
        return Ok(0);
    }
    for (nullifier, spent) in nullifiers
        .iter()
        .zip(nullifier_tree::contains_batch(&state, &nullifiers).await?)
    {
        ensure!(!spent, "nullifier {nullifier} was already spent");
    }
    let mut generation = nullifier_tree::generation_state(&state).await?;
    let tree = generation.current_tree;
    let count = leaf_count(&state, tree).await?;
    let leaves = match leaf_access {
        LeafAccess::Point => plan_leaves(state, tree, count, &nullifiers).await?,
        LeafAccess::Concurrent => {
            plan_leaves_concurrent(state, tree, count, &nullifiers, concurrent_reads).await?
        }
        LeafAccess::Prefix => plan_leaves_prefetched(state, tree, count, &nullifiers).await?,
    };
    let (nodes, hashes) = compute_dirty_nodes(
        state,
        tree,
        &leaves,
        threads,
        parallel_threshold,
        concurrent_reads,
    )
    .await?;
    let root = nodes
        .get(&NodeKey {
            level: DEPTH,
            position: 0,
        })
        .copied()
        .context("dirty union did not produce a root")?;

    for (&position, &leaf) in &leaves {
        put_leaf(state, tree, position, leaf)?;
    }
    for (&key, &hash) in &nodes {
        put_node(state, tree, key, hash);
    }
    state.put_raw(keys::root(tree), root.to_bytes().to_vec());
    state.put_proto(keys::leaf_count(tree), count + nullifiers.len() as u64);
    generation.current_root = root.to_bytes();
    generation.validate()?;
    state.put(keys::state().to_owned(), generation);
    Ok(hashes)
}

async fn fingerprint(
    state: ResearchState,
    samples: &[Nullifier],
    internal_hashes: usize,
) -> Result<Outcome> {
    let io = state.stats();
    let generation = nullifier_tree::generation_state(&state).await?;
    let count = leaf_count(&state, generation.current_tree).await?;
    let mut lookups = Vec::new();
    for nullifier in samples {
        let lookup = nullifier_tree::active_lookups(&state, *nullifier)
            .await?
            .into_iter()
            .next()
            .context("active nullifier lookup is missing")?;
        lookups.push(LookupFingerprint {
            tree: lookup.tree,
            root: lookup.root,
            spent: lookup.spent,
            proof: lookup.proof,
        });
    }
    let (_snapshot, cache) = state.into_inner().flatten();
    Ok(Outcome {
        fingerprint: StateFingerprint {
            generation,
            leaf_count: count,
            lookups,
            verifiable_changes: cache.unwritten_changes().clone(),
            nonverifiable_changes: cache.nonverifiable_changes().clone(),
        },
        io,
        internal_hashes,
    })
}

fn workload_values(count: usize, pattern: super::super::InputPattern, prefill: bool) -> Vec<Fq> {
    let order = match pattern {
        super::super::InputPattern::Sequential => (0..count).collect::<Vec<_>>(),
        super::super::InputPattern::Descending => (0..count).rev().collect(),
        super::super::InputPattern::Spread => {
            let mut values = (0..count).collect::<Vec<_>>();
            values.sort_by_key(|index| {
                let mut value = *index as u64 + 0x9e37_79b9_7f4a_7c15;
                value = (value ^ (value >> 30)).wrapping_mul(0xbf58_476d_1ce4_e5b9);
                value = (value ^ (value >> 27)).wrapping_mul(0x94d0_49bb_1331_11eb);
                value ^ (value >> 31)
            });
            values
        }
    };
    order
        .into_iter()
        .map(|index| {
            Fq::from(if prefill {
                (index as u64 + 1) * 2
            } else {
                index as u64 * 2 + 1
            })
        })
        .collect()
}

async fn initialized_fixture(config: &SpikeConfig) -> Result<(TempStorage, Snapshot)> {
    let storage = TempStorage::new().await?;
    let mut state = StateDelta::new(storage.latest_snapshot());
    let prefill = workload_values(config.prefill_size, config.pattern, true)
        .into_iter()
        .map(Nullifier)
        .collect::<Vec<_>>();
    nullifier_tree::insert_batch(&mut state, prefill).await?;
    storage.commit(state).await?;
    let snapshot = storage.latest_snapshot();
    Ok((storage, snapshot))
}

async fn measure_production(
    snapshot: &Snapshot,
    nullifiers: &[Nullifier],
    config: &SpikeConfig,
) -> Result<(Outcome, TimingDistribution)> {
    let (state, timing) = measure_repeated_async(config.warmups, config.repetitions, || {
        let snapshot = snapshot.clone();
        let nullifiers = nullifiers.to_vec();
        async move {
            let mut state = CountingState::new(StateDelta::new(snapshot));
            nullifier_tree::insert_batch(&mut state, nullifiers).await?;
            Ok(state)
        }
    })
    .await?;
    let samples = nullifiers
        .iter()
        .take(1)
        .chain(nullifiers.iter().rev().take(1))
        .copied()
        .chain(std::iter::once(Nullifier(Fq::from(u64::MAX))))
        .collect::<Vec<_>>();
    let outcome = fingerprint(state, &samples, nullifiers.len() * DEPTH as usize * 2).await?;
    Ok((outcome, timing))
}

async fn measure_candidate<F, Fut>(
    snapshot: &Snapshot,
    nullifiers: &[Nullifier],
    config: &SpikeConfig,
    mut run: F,
) -> Result<(Outcome, TimingDistribution)>
where
    F: FnMut(ResearchState, Vec<Nullifier>) -> Fut,
    Fut: std::future::Future<Output = Result<(ResearchState, usize)>>,
{
    let (result, timing) = measure_repeated_async(config.warmups, config.repetitions, || {
        let state = CountingState::new(StateDelta::new(snapshot.clone()));
        run(state, nullifiers.to_vec())
    })
    .await?;
    let samples = nullifiers
        .iter()
        .take(1)
        .chain(nullifiers.iter().rev().take(1))
        .copied()
        .chain(std::iter::once(Nullifier(Fq::from(u64::MAX))))
        .collect::<Vec<_>>();
    let outcome = fingerprint(result.0, &samples, result.1).await?;
    Ok((outcome, timing))
}

fn measurement(
    operation: &'static str,
    config: &SpikeConfig,
    threads: usize,
    threshold: Option<usize>,
    outcome: Outcome,
    timing: TimingDistribution,
    commit_ms: f64,
) -> Measurement {
    Measurement {
        tree: "nullifier",
        operation,
        pattern: config.pattern.label(),
        prefill_items: config.prefill_size,
        items: config.batch_size,
        threads,
        parallel_threshold: threshold,
        elapsed_ms: timing.median_ms,
        commit_ms: Some(commit_ms),
        timing: Some(timing),
        io: outcome.io,
        internal_hashes: outcome.internal_hashes,
        root: hex::encode(outcome.fingerprint.generation.current_root),
        exact_root_match: true,
        state_parity: Some(true),
    }
}

pub async fn measure(config: &SpikeConfig) -> Result<Vec<Measurement>> {
    ensure!(
        config.batch_size > 0,
        "nullifier spike requires a nonempty batch"
    );
    ensure!(
        config.repetitions > 0,
        "nullifier spike requires repetitions"
    );
    ensure!(config.threads > 0, "thread count must be positive");
    let (storage, snapshot) = initialized_fixture(config).await?;
    let nullifiers = workload_values(config.batch_size, config.pattern, false)
        .into_iter()
        .map(Nullifier)
        .collect::<Vec<_>>();

    let (baseline, baseline_timing) = measure_production(&snapshot, &nullifiers, config).await?;
    let (n1, n1_timing) = measure_candidate(&snapshot, &nullifiers, config, |state, values| {
        insert_read_elision(state, values)
    })
    .await?;
    let (n2, n2_timing) = measure_candidate(&snapshot, &nullifiers, config, |state, values| {
        insert_dirty_union(state, values, 1, usize::MAX, 1, LeafAccess::Point)
    })
    .await?;
    let threshold = config.parallel_threshold;
    let threads = config.threads;
    let (n3, n3_timing) = measure_candidate(&snapshot, &nullifiers, config, |state, values| {
        insert_dirty_union(state, values, threads, threshold, 1, LeafAccess::Point)
    })
    .await?;
    let max_reads = config.max_concurrent_reads;
    let (n4_concurrent, n4_concurrent_timing) =
        measure_candidate(&snapshot, &nullifiers, config, |state, values| {
            insert_dirty_union(
                state,
                values,
                threads,
                threshold,
                max_reads,
                LeafAccess::Concurrent,
            )
        })
        .await?;
    let (n4_prefix, n4_prefix_timing) =
        measure_candidate(&snapshot, &nullifiers, config, |state, values| {
            insert_dirty_union(
                state,
                values,
                threads,
                threshold,
                max_reads,
                LeafAccess::Prefix,
            )
        })
        .await?;

    for (name, candidate) in [
        ("N1", &n1),
        ("N2", &n2),
        ("N3", &n3),
        ("N4-concurrent", &n4_concurrent),
        ("N4-prefix", &n4_prefix),
    ] {
        ensure!(
            candidate.fingerprint == baseline.fingerprint,
            "{name} serialized state or proof drift"
        );
    }

    let mut failed_state = CountingState::new(StateDelta::new(snapshot.clone()));
    let failed = apply_dirty_union(
        &mut failed_state,
        vec![nullifiers[0], nullifiers[0]],
        threads,
        threshold,
        1,
        LeafAccess::Point,
    )
    .await;
    ensure!(failed.is_err(), "dirty union accepted a duplicate batch");
    let (_, cache) = failed_state.into_inner().flatten();
    ensure!(
        cache.unwritten_changes().is_empty() && cache.nonverifiable_changes().is_empty(),
        "duplicate failure left partial nullifier state"
    );
    if config.prefill_size > 0 {
        let mut failed_state = CountingState::new(StateDelta::new(snapshot.clone()));
        let failed = apply_dirty_union(
            &mut failed_state,
            vec![Nullifier(Fq::from(2u64))],
            threads,
            threshold,
            1,
            LeafAccess::Point,
        )
        .await;
        ensure!(
            failed.is_err(),
            "dirty union accepted an already-spent nullifier"
        );
        let (_, cache) = failed_state.into_inner().flatten();
        ensure!(
            cache.unwritten_changes().is_empty() && cache.nonverifiable_changes().is_empty(),
            "already-spent failure left partial nullifier state"
        );
    }

    let (candidate, _) = insert_dirty_union(
        CountingState::new(StateDelta::new(snapshot)),
        nullifiers.clone(),
        threads,
        threshold,
        1,
        LeafAccess::Point,
    )
    .await?;
    let commit_started = std::time::Instant::now();
    storage.commit(candidate.into_inner()).await?;
    let commit_ms = commit_started.elapsed().as_secs_f64() * 1_000.0;
    let restarted = storage.latest_snapshot();
    nullifier_tree::verify_committed_roots(&restarted).await?;
    let restarted_generation = nullifier_tree::generation_state(&restarted).await?;
    ensure!(
        restarted_generation.current_root == baseline.fingerprint.generation.current_root,
        "dirty union restart root drift"
    );
    for nullifier in nullifiers
        .iter()
        .take(1)
        .chain(nullifiers.iter().rev().take(1))
    {
        let lookup = nullifier_tree::active_lookups(&restarted, *nullifier).await?;
        ensure!(
            lookup.first().is_some_and(|lookup| lookup.spent),
            "restart membership proof is missing"
        );
    }

    Ok(vec![
        measurement(
            "n0_current_storage_baseline",
            config,
            1,
            None,
            baseline,
            baseline_timing,
            commit_ms,
        ),
        measurement(
            "n1_overlay_read_elision",
            config,
            1,
            None,
            n1,
            n1_timing,
            commit_ms,
        ),
        measurement(
            "n2_sequential_dirty_union",
            config,
            1,
            None,
            n2,
            n2_timing,
            commit_ms,
        ),
        measurement(
            "n3_parallel_dirty_union",
            config,
            threads,
            Some(threshold),
            n3,
            n3_timing,
            commit_ms,
        ),
        measurement(
            "n4_concurrent_predecessor_reads",
            config,
            threads,
            Some(threshold),
            n4_concurrent,
            n4_concurrent_timing,
            commit_ms,
        ),
        measurement(
            "n4_prefetched_leaf_index_and_bounded_reads",
            config,
            threads,
            Some(threshold),
            n4_prefix,
            n4_prefix_timing,
            commit_ms,
        ),
    ])
}

#[cfg(test)]
mod tests {
    use super::*;

    #[tokio::test]
    async fn nullifier_candidates_match_serialized_state_proofs_and_restart() -> Result<()> {
        let measurements = measure(&SpikeConfig::smoke(4)).await?;
        assert_eq!(measurements.len(), 6);
        assert!(measurements
            .iter()
            .all(|measurement| measurement.exact_root_match));
        Ok(())
    }
}
