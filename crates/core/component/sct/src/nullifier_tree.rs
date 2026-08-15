use anyhow::{ensure, Context, Result};
use cnidarium::{StateRead, StateWrite};
use decaf377::Fq;
use futures::{stream, StreamExt, TryStreamExt};
use shieldd_sdk_proto::{StateReadProto, StateWriteProto};
use std::collections::BTreeMap;

use crate::{
    generation_pack::NullifierGenerationPack,
    indexed_nullifier_tree::{
        hash_children, FqOrdKey, IndexedNullifierLeaf, IndexedNullifierWitness, CAPACITY, DEPTH,
        ZERO_HASHES,
    },
    nullifier_generation::{
        ArchivedNullifierProof, NullifierGenerationArchived, NullifierGenerationPackReceipt,
        NullifierGenerationState, NullifierGenerationTransition, NullifierTreeId,
    },
    state_key, Nullifier,
};

const STORAGE_SCHEMA_VERSION: &[u8] = &[3];
const MAX_CONCURRENT_MARKER_READS: usize = 256;

#[derive(Clone, Debug)]
pub struct NullifierLookup {
    pub tree: NullifierTreeId,
    pub root: [u8; 32],
    pub spent: bool,
    pub proof: IndexedNullifierWitness,
}

fn encode_position(position: u64) -> Vec<u8> {
    position.to_be_bytes().to_vec()
}

fn decode_position(bytes: Vec<u8>) -> Result<u64> {
    Ok(u64::from_be_bytes(bytes.try_into().map_err(
        |bytes: Vec<u8>| anyhow::anyhow!("indexed position must be 8 bytes, got {}", bytes.len()),
    )?))
}

fn decode_fq(bytes: Vec<u8>, label: &str) -> Result<Fq> {
    let bytes: [u8; 32] = bytes.try_into().map_err(|bytes: Vec<u8>| {
        anyhow::anyhow!("{label} must be 32 bytes, got {}", bytes.len())
    })?;
    Fq::from_bytes_checked(&bytes).map_err(|_| anyhow::anyhow!("{label} is not canonical"))
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
        .get_proto(&state_key::nullifier_generations::leaf_count(tree))
        .await?
        .context("nullifier IMT leaf count is missing")
}

async fn read_leaf<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
    position: u64,
) -> Result<IndexedNullifierLeaf> {
    let bytes = state
        .nonverifiable_get_raw(&state_key::nullifier_generations::leaf(tree, position))
        .await?
        .with_context(|| format!("nullifier IMT leaf {position} is missing"))?;
    bincode::deserialize(&bytes).context("decode indexed nullifier leaf")
}

async fn read_node<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
    level: u8,
    position: u64,
) -> Result<Fq> {
    ensure!(level <= DEPTH, "nullifier IMT level exceeds depth");
    state
        .nonverifiable_get_raw(&state_key::nullifier_generations::tree_node(
            tree, level, position,
        ))
        .await?
        .map(|bytes| decode_fq(bytes, "nullifier IMT node"))
        .transpose()
        .map(|node| node.unwrap_or(ZERO_HASHES[level as usize]))
}

async fn read_path<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
    position: u64,
) -> Result<Vec<[[u8; 32]; 3]>> {
    ensure!(
        position < CAPACITY,
        "nullifier IMT position exceeds capacity"
    );
    let mut path = Vec::with_capacity(DEPTH as usize);
    let mut current = position;
    for level in 0..DEPTH {
        let child_index = (current % 4) as usize;
        let base = current / 4 * 4;
        let children = [
            read_node(state, tree, level, base).await?,
            read_node(state, tree, level, base + 1).await?,
            read_node(state, tree, level, base + 2).await?,
            read_node(state, tree, level, base + 3).await?,
        ];
        path.push(match child_index {
            0 => [
                children[1].to_bytes(),
                children[2].to_bytes(),
                children[3].to_bytes(),
            ],
            1 => [
                children[0].to_bytes(),
                children[2].to_bytes(),
                children[3].to_bytes(),
            ],
            2 => [
                children[0].to_bytes(),
                children[1].to_bytes(),
                children[3].to_bytes(),
            ],
            3 => [
                children[0].to_bytes(),
                children[1].to_bytes(),
                children[2].to_bytes(),
            ],
            _ => unreachable!(),
        });
        current /= 4;
    }
    Ok(path)
}

async fn write_path_updates<S: StateWrite + ?Sized>(
    state: &mut S,
    tree: NullifierTreeId,
    updates: &[(u64, Fq)],
) -> Result<Fq> {
    let mut overlay = BTreeMap::<(u8, u64), Fq>::new();
    let mut root = ZERO_HASHES[DEPTH as usize];
    for &(position, leaf_hash) in updates {
        ensure!(
            position < CAPACITY,
            "nullifier IMT position exceeds capacity"
        );
        let mut current_position = position;
        let mut current_hash = leaf_hash;
        overlay.insert((0, current_position), current_hash);
        put_node(state, tree, 0, current_position, current_hash);

        for level in 0..DEPTH {
            let parent_position = current_position / 4;
            let base = parent_position * 4;
            let mut children = [Fq::from(0u64); 4];
            for (index, child) in children.iter_mut().enumerate() {
                let position = base + index as u64;
                *child = overlay
                    .get(&(level, position))
                    .copied()
                    .unwrap_or(read_node(state, tree, level, position).await?);
            }
            children[(current_position % 4) as usize] = current_hash;
            current_hash = hash_children(children);
            current_position = parent_position;
            overlay.insert((level + 1, current_position), current_hash);
            put_node(state, tree, level + 1, current_position, current_hash);
        }
        root = current_hash;
    }
    Ok(root)
}

fn put_node<S: StateWrite + ?Sized>(
    state: &mut S,
    tree: NullifierTreeId,
    level: u8,
    position: u64,
    hash: Fq,
) {
    let key = state_key::nullifier_generations::tree_node(tree, level, position);
    if hash == ZERO_HASHES[level as usize] {
        state.nonverifiable_delete(key);
    } else {
        state.nonverifiable_put_raw(key, hash.to_bytes().to_vec());
    }
}

fn put_leaf<S: StateWrite + ?Sized>(
    state: &mut S,
    tree: NullifierTreeId,
    position: u64,
    leaf: IndexedNullifierLeaf,
) -> Result<()> {
    state.nonverifiable_put_raw(
        state_key::nullifier_generations::leaf(tree, position),
        bincode::serialize(&leaf).context("encode indexed nullifier leaf")?,
    );
    if !leaf.is_lower_sentinel {
        state.nonverifiable_put_raw(
            state_key::nullifier_generations::value(tree, leaf.value),
            encode_position(position),
        );
    }
    if !leaf.is_lower_sentinel {
        state.nonverifiable_put_raw(
            state_key::nullifier_generations::value_desc(tree, descending_key(leaf.value_fq()?)),
            encode_position(position),
        );
    }
    Ok(())
}

async fn read_predecessor_position<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
    target: Fq,
) -> Result<u64> {
    let prefix = state_key::nullifier_generations::value_desc_prefix(tree);
    // Cnidarium range bounds are relative to the supplied prefix.
    let mut start = descending_key(target).to_vec();
    start.push(0);
    let stream = state.nonverifiable_range_raw(Some(&prefix), start..)?;
    futures::pin_mut!(stream);
    match stream.next().await.transpose()? {
        Some((_key, bytes)) => decode_position(bytes),
        None => Ok(0),
    }
}

async fn lookup_in_tree<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
    nullifier: Nullifier,
) -> Result<NullifierLookup> {
    verify_storage_schema(state, tree).await?;
    let root = committed_root_for(state, tree)
        .await?
        .context("nullifier IMT root is missing")?;
    lookup_in_tree_at_root(state, tree, root, nullifier).await
}

async fn lookup_in_tree_at_root<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
    root: [u8; 32],
    nullifier: Nullifier,
) -> Result<NullifierLookup> {
    let exact = state
        .nonverifiable_get_raw(&state_key::nullifier_generations::value(
            tree,
            nullifier.to_bytes(),
        ))
        .await?;
    let (spent, position) = match exact {
        Some(bytes) => (true, decode_position(bytes)?),
        None => (
            false,
            read_predecessor_position(state, tree, nullifier.0).await?,
        ),
    };
    let proof = IndexedNullifierWitness {
        leaf_position: position,
        leaf: read_leaf(state, tree, position).await?,
        auth_path: read_path(state, tree, position).await?,
    };
    if spent {
        proof.verify_membership(nullifier, root)?;
    } else {
        proof.verify_nonmembership(nullifier, root)?;
    }
    Ok(NullifierLookup {
        tree,
        root,
        spent,
        proof,
    })
}

async fn initialize_tree<S: StateWrite + ?Sized>(
    state: &mut S,
    tree: NullifierTreeId,
) -> Result<[u8; 32]> {
    if let Some(root) = committed_root_for(state, tree).await? {
        verify_storage_schema(state, tree).await?;
        return Ok(root);
    }
    ensure!(
        state
            .get_raw(&state_key::nullifier_generations::schema_version(tree))
            .await?
            .is_none(),
        "nullifier storage schema exists without a root"
    );
    let sentinel = IndexedNullifierLeaf::lower_sentinel();
    put_leaf(state, tree, 0, sentinel)?;
    let root = write_path_updates(state, tree, &[(0, sentinel.commitment()?)]).await?;
    state.put_raw(
        state_key::nullifier_generations::root(tree),
        root.to_bytes().to_vec(),
    );
    state.put_raw(
        state_key::nullifier_generations::schema_version(tree),
        STORAGE_SCHEMA_VERSION.to_vec(),
    );
    state.put_proto(state_key::nullifier_generations::leaf_count(tree), 1u64);
    Ok(root.to_bytes())
}

async fn verify_storage_schema<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
) -> Result<()> {
    ensure!(
        state
            .get_raw(&state_key::nullifier_generations::schema_version(tree))
            .await?
            .as_deref()
            == Some(STORAGE_SCHEMA_VERSION),
        "unsupported nullifier IMT schema; replay state"
    );
    Ok(())
}

pub async fn committed_root_for<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
) -> Result<Option<[u8; 32]>> {
    state
        .get_raw(&state_key::nullifier_generations::root(tree))
        .await?
        .map(|bytes| Ok(decode_fq(bytes, "nullifier IMT root")?.to_bytes()))
        .transpose()
}

pub async fn generation_state<S: StateRead + ?Sized>(
    state: &S,
) -> Result<NullifierGenerationState> {
    state
        .get(state_key::nullifier_generations::state())
        .await?
        .context("nullifier generation state is missing")
}

pub async fn initialize<S: StateWrite + ?Sized>(state: &mut S) -> Result<()> {
    if let Some(generation_state) = state
        .get::<NullifierGenerationState>(state_key::nullifier_generations::state())
        .await?
    {
        generation_state.validate()?;
        verify_committed_roots(state).await?;
        return Ok(());
    }
    ensure!(
        state.get_raw("sct/nullifier_set/root").await?.is_none()
            && state
                .get_raw("sct/nullifier_set/schema_version")
                .await?
                .is_none(),
        "legacy nullifier state cannot be imported; initialize protocol v2 from genesis or replay"
    );
    let current = NullifierTreeId::Generation(0);
    let current_root = initialize_tree(state, current).await?;
    state.put(
        state_key::nullifier_generations::state().to_owned(),
        NullifierGenerationState::at_activation(0, 0, current_root)?,
    );
    Ok(())
}

async fn verify_tree<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
    expected_root: [u8; 32],
) -> Result<()> {
    verify_storage_schema(state, tree).await?;
    ensure!(
        committed_root_for(state, tree).await? == Some(expected_root),
        "generation state root mismatch for {tree:?}"
    );
    let root = read_node(state, tree, DEPTH, 0).await?.to_bytes();
    ensure!(root == expected_root, "durable nullifier IMT root mismatch");
    let count = leaf_count(state, tree).await?;
    ensure!(
        (1..=CAPACITY).contains(&count),
        "invalid nullifier IMT leaf count"
    );
    Ok(())
}

pub async fn verify_committed_roots<S: StateRead + ?Sized>(state: &S) -> Result<()> {
    let generation = generation_state(state).await?;
    verify_tree(state, generation.current_tree, generation.current_root).await?;
    match (generation.previous_tree, generation.previous_root) {
        (Some(previous_tree), Some(previous_root)) => {
            verify_tree(state, previous_tree, previous_root).await
        }
        (None, None) => Ok(()),
        _ => anyhow::bail!("previous nullifier tree and root disagree"),
    }
}

pub async fn active_lookups<S: StateRead + ?Sized>(
    state: &S,
    nullifier: Nullifier,
) -> Result<Vec<NullifierLookup>> {
    let generation = generation_state(state).await?;
    let mut lookups = vec![lookup_in_tree(state, generation.current_tree, nullifier).await?];
    if let Some(previous) = generation.previous_tree {
        lookups.push(lookup_in_tree(state, previous, nullifier).await?);
    }
    Ok(lookups)
}

pub(crate) async fn is_spent_in_tree<S: StateRead + ?Sized>(
    state: &S,
    tree: NullifierTreeId,
    nullifier: Nullifier,
) -> Result<bool> {
    Ok(state
        .nonverifiable_get_raw(&state_key::nullifier_generations::value(
            tree,
            nullifier.to_bytes(),
        ))
        .await?
        .is_some())
}

pub async fn is_spent<S: StateRead + ?Sized>(state: &S, nullifier: Nullifier) -> Result<bool> {
    let generation = generation_state(state).await?;
    if is_spent_in_tree(state, generation.current_tree, nullifier).await? {
        return Ok(true);
    }
    match generation.previous_tree {
        Some(previous) => is_spent_in_tree(state, previous, nullifier).await,
        None => Ok(false),
    }
}

pub async fn contains_batch<S: StateRead + ?Sized>(
    state: &S,
    nullifiers: &[Nullifier],
) -> Result<Vec<bool>> {
    let generation = generation_state(state).await?;
    let mut results = stream::iter(nullifiers.iter().copied().enumerate())
        .map(|(index, nullifier)| async move {
            let spent = is_spent_in_tree(state, generation.current_tree, nullifier).await?
                || match generation.previous_tree {
                    Some(previous) => is_spent_in_tree(state, previous, nullifier).await?,
                    None => false,
                };
            Ok::<_, anyhow::Error>((index, spent))
        })
        .buffer_unordered(MAX_CONCURRENT_MARKER_READS)
        .try_collect::<Vec<_>>()
        .await?;
    results.sort_unstable_by_key(|(index, _)| *index);
    Ok(results.into_iter().map(|(_, spent)| spent).collect())
}

async fn insert_one<S: StateWrite + ?Sized>(
    state: &mut S,
    tree: NullifierTreeId,
    nullifier: Nullifier,
) -> Result<[u8; 32]> {
    ensure!(
        !is_spent_in_tree(state, tree, nullifier).await?,
        "nullifier was already spent"
    );
    let count = leaf_count(state, tree).await?;
    ensure!(count < CAPACITY, "nullifier generation is full");
    let predecessor_position = read_predecessor_position(state, tree, nullifier.0).await?;
    let predecessor = read_leaf(state, tree, predecessor_position).await?;
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
    put_leaf(state, tree, count, inserted)?;
    put_leaf(state, tree, predecessor_position, updated_predecessor)?;
    let root = write_path_updates(
        state,
        tree,
        &[
            (count, inserted.commitment()?),
            (predecessor_position, updated_predecessor.commitment()?),
        ],
    )
    .await?;
    state.put_raw(
        state_key::nullifier_generations::root(tree),
        root.to_bytes().to_vec(),
    );
    state.put_proto(
        state_key::nullifier_generations::leaf_count(tree),
        count + 1,
    );
    Ok(root.to_bytes())
}

pub async fn insert_batch<S: StateWrite + ?Sized>(
    state: &mut S,
    nullifiers: impl IntoIterator<Item = Nullifier>,
) -> Result<()> {
    initialize(state).await?;
    let mut ordered = Vec::new();
    let mut seen = std::collections::BTreeSet::new();
    for nullifier in nullifiers {
        ensure!(
            seen.insert(nullifier),
            "duplicate nullifier {nullifier} in batch"
        );
        ordered.push(nullifier);
    }
    if ordered.is_empty() {
        return Ok(());
    }
    for (nullifier, spent) in ordered.iter().zip(contains_batch(state, &ordered).await?) {
        ensure!(!spent, "nullifier {nullifier} was already spent");
    }
    let mut generation = generation_state(state).await?;
    for nullifier in ordered {
        generation.current_root = insert_one(state, generation.current_tree, nullifier).await?;
    }
    generation.validate()?;
    state.put(
        state_key::nullifier_generations::state().to_owned(),
        generation,
    );
    Ok(())
}

pub async fn rollover<S: StateWrite + ?Sized>(
    state: &mut S,
    next_epoch: u64,
    next_position: u64,
) -> Result<Option<NullifierGenerationTransition>> {
    let generation = generation_state(state).await?;
    if !generation.should_rollover(next_epoch)? {
        return Ok(None);
    }
    verify_committed_roots(state).await?;
    let next_tree = NullifierTreeId::Generation(generation.current_generation + 1);
    let empty_root = initialize_tree(state, next_tree).await?;
    let transition = generation.rollover(next_epoch, next_position, empty_root)?;
    if let (Some(retired), Some(archived)) = (generation.previous_tree, transition.archived) {
        state.nonverifiable_put(
            state_key::nullifier_generations::retired_record(retired),
            archived,
        );
        state.delete(state_key::nullifier_generations::root(retired));
        state.delete(state_key::nullifier_generations::schema_version(retired));
        state.delete(state_key::nullifier_generations::leaf_count(retired));
    }
    state.put(
        state_key::nullifier_generations::state().to_owned(),
        transition.next.clone(),
    );
    Ok(Some(transition))
}

pub async fn archived_nonmembership_proof<S: StateRead + ?Sized>(
    state: &S,
    generation_index: u64,
    nullifier: Nullifier,
) -> Result<ArchivedNullifierProof> {
    let tree = NullifierTreeId::Generation(generation_index);
    let archived: NullifierGenerationArchived = state
        .nonverifiable_get(&state_key::nullifier_generations::retired_record(tree))
        .await?
        .with_context(|| format!("nullifier generation {generation_index} is not archived"))?;
    let lookup = lookup_in_tree_at_root(state, tree, archived.generation_root, nullifier).await?;
    ensure!(!lookup.spent, "nullifier was spent in archived generation");
    Ok(ArchivedNullifierProof {
        generation_index,
        generation_root: archived.generation_root,
        generation_start_position: archived.generation_start_position,
        generation_end_position: archived.generation_end_position,
        witness: lookup.proof,
    })
}

pub async fn archived_generation<S: StateRead + ?Sized>(
    state: &S,
    generation_index: u64,
) -> Result<NullifierGenerationArchived> {
    state
        .nonverifiable_get(&state_key::nullifier_generations::retired_record(
            NullifierTreeId::Generation(generation_index),
        ))
        .await?
        .with_context(|| format!("nullifier generation {generation_index} is not archived"))
}

pub async fn build_generation_pack<S: StateRead + ?Sized>(
    state: &S,
    generation_index: u64,
) -> Result<NullifierGenerationPack> {
    let tree = NullifierTreeId::Generation(generation_index);
    let archived: NullifierGenerationArchived = state
        .nonverifiable_get(&state_key::nullifier_generations::retired_record(tree))
        .await?
        .context("nullifier generation is not archived")?;
    ensure!(
        read_node(state, tree, DEPTH, 0).await?.to_bytes() == archived.generation_root,
        "durable archived nullifier IMT root mismatch"
    );
    let stream =
        state.nonverifiable_prefix_raw(&state_key::nullifier_generations::leaf_prefix(tree));
    futures::pin_mut!(stream);
    let mut expected_position = 0u64;
    let mut nullifiers = Vec::new();
    while let Some(item) = stream.next().await {
        let (key, bytes) = item?;
        let position_bytes = key
            .get(key.len().saturating_sub(8)..)
            .context("generation leaf key omits its position")?;
        let position = u64::from_be_bytes(
            position_bytes
                .try_into()
                .map_err(|_| anyhow::anyhow!("generation leaf position is malformed"))?,
        );
        let leaf: IndexedNullifierLeaf =
            bincode::deserialize(&bytes).context("decode packed generation leaf")?;
        ensure!(
            position == expected_position,
            "retired generation leaf positions are not contiguous"
        );
        if position == 0 {
            ensure!(
                leaf.is_lower_sentinel,
                "generation sentinel leaf is invalid"
            );
        } else {
            ensure!(!leaf.is_lower_sentinel, "ordinary pack leaf is a sentinel");
            nullifiers.push(Nullifier(leaf.value_fq()?));
        }
        expected_position = expected_position
            .checked_add(1)
            .context("retired generation leaf count overflow")?;
    }
    ensure!(
        expected_position > 0,
        "retired generation has no leaves to pack"
    );
    let pack = NullifierGenerationPack::new(archived, nullifiers)?;
    pack.reconstruct()?;
    Ok(pack)
}

pub async fn record_generation_pack_completion<S: StateWrite + ?Sized>(
    state: &mut S,
    receipt: &NullifierGenerationPackReceipt,
) -> Result<()> {
    receipt.validate()?;
    let tree = NullifierTreeId::Generation(receipt.generation_index);
    let archived: NullifierGenerationArchived = state
        .nonverifiable_get(&state_key::nullifier_generations::retired_record(tree))
        .await?
        .context("nullifier generation is not archived")?;
    ensure!(
        archived.generation_root == receipt.generation_root
            && archived.generation_start_position == receipt.generation_start_position
            && archived.generation_end_position == receipt.generation_end_position,
        "generation pack receipt does not match retired generation"
    );
    state.nonverifiable_put_raw(
        state_key::nullifier_generations::local_pack_receipt(tree),
        serde_json::to_vec(receipt)?,
    );
    Ok(())
}

pub async fn generation_pack_receipt<S: StateRead + ?Sized>(
    state: &S,
    generation_index: u64,
) -> Result<Option<NullifierGenerationPackReceipt>> {
    state
        .nonverifiable_get_raw(&state_key::nullifier_generations::local_pack_receipt(
            NullifierTreeId::Generation(generation_index),
        ))
        .await?
        .map(|bytes| serde_json::from_slice(&bytes).context("decode generation pack receipt"))
        .transpose()
}

pub async fn prune_packed_generation<S: StateWrite + ?Sized>(
    state: &mut S,
    receipt: &NullifierGenerationPackReceipt,
) -> Result<u64> {
    receipt.validate()?;
    let tree = NullifierTreeId::Generation(receipt.generation_index);
    let stored = state
        .nonverifiable_get_raw(&state_key::nullifier_generations::local_pack_receipt(tree))
        .await?
        .context("local generation pack receipt is missing")?;
    ensure!(
        serde_json::from_slice::<NullifierGenerationPackReceipt>(&stored)? == *receipt,
        "pruning receipt does not match local generation pack"
    );
    let generation = generation_state(state).await?;
    ensure!(
        generation.current_tree != tree && generation.previous_tree != Some(tree),
        "cannot prune a consensus-active nullifier generation"
    );
    let archived: NullifierGenerationArchived = state
        .nonverifiable_get(&state_key::nullifier_generations::retired_record(tree))
        .await?
        .context("nullifier generation is not archived")?;
    ensure!(
        archived.generation_root == receipt.generation_root
            && archived.generation_start_position == receipt.generation_start_position
            && archived.generation_end_position == receipt.generation_end_position,
        "pruning receipt does not match the retired generation"
    );
    let mut keys = Vec::new();
    for prefix in [
        state_key::nullifier_generations::tree_node_prefix(tree),
        state_key::nullifier_generations::leaf_prefix(tree),
        state_key::nullifier_generations::value_prefix(tree),
        state_key::nullifier_generations::value_desc_prefix(tree),
    ] {
        let stream = state.nonverifiable_prefix_raw(&prefix);
        futures::pin_mut!(stream);
        while let Some(item) = stream.next().await {
            keys.push(item?.0);
        }
    }
    keys.sort();
    keys.dedup();
    let deleted = keys.len() as u64;
    for key in keys {
        state.nonverifiable_delete(key);
    }
    Ok(deleted)
}

#[cfg(test)]
mod tests {
    use super::*;
    use cnidarium::TempStorage;

    fn nullifier(value: u64) -> Nullifier {
        Nullifier(Fq::from(value))
    }

    #[tokio::test]
    async fn indexed_tree_handles_membership_and_boundary_gaps() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
        initialize(&mut state).await?;
        insert_batch(&mut state, [nullifier(7), nullifier(1), nullifier(12)]).await?;
        assert!(is_spent(&state, nullifier(7)).await?);
        assert!(!is_spent(&state, nullifier(8)).await?);
        for value in [0, 2, 8, 13] {
            let lookup = lookup_in_tree(
                &state,
                generation_state(&state).await?.current_tree,
                nullifier(value),
            )
            .await?;
            assert!(!lookup.spent);
            lookup
                .proof
                .verify_nonmembership(nullifier(value), lookup.root)?;
        }
        verify_committed_roots(&state).await?;
        Ok(())
    }

    #[tokio::test]
    async fn field_boundaries_are_ordinary_nullifiers() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
        initialize(&mut state).await?;
        let maximum = Nullifier(Fq::from(0u64) - Fq::from(1u64));
        insert_batch(&mut state, [nullifier(0), maximum]).await?;
        assert!(is_spent(&state, nullifier(0)).await?);
        assert!(is_spent(&state, maximum).await?);
        verify_committed_roots(&state).await?;
        Ok(())
    }

    #[tokio::test]
    async fn duplicate_batch_insert_is_rejected_before_mutation() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
        initialize(&mut state).await?;
        let nf = nullifier(11);
        let root = generation_state(&state).await?.current_root;

        let error = insert_batch(&mut state, [nf, nf])
            .await
            .expect_err("duplicate nullifier should be rejected");

        assert!(error.to_string().contains("duplicate nullifier"));
        assert_eq!(generation_state(&state).await?.current_root, root);
        assert!(!is_spent(&state, nf).await?);
        Ok(())
    }

    #[tokio::test]
    async fn already_spent_nullifier_is_rejected_before_mutation() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
        initialize(&mut state).await?;
        let nf = nullifier(13);
        insert_batch(&mut state, [nf]).await?;
        let root = generation_state(&state).await?.current_root;

        let error = insert_batch(&mut state, [nf])
            .await
            .expect_err("already-spent nullifier should be rejected");

        assert!(error.to_string().contains("already spent"));
        assert_eq!(generation_state(&state).await?.current_root, root);
        assert!(is_spent(&state, nf).await?);
        Ok(())
    }

    #[tokio::test]
    async fn rollover_archives_poseidon_generation() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
        initialize(&mut state).await?;
        insert_batch(&mut state, [nullifier(7)]).await?;
        assert!(is_spent(&state, nullifier(7)).await?);
        let first = rollover(&mut state, 30, 1 << 32)
            .await?
            .context("rollover")?;
        assert!(first.archived.is_none());
        assert!(is_spent(&state, nullifier(7)).await?);
        let transition = rollover(&mut state, 60, 2 << 32)
            .await?
            .context("second rollover")?;
        assert_eq!(
            transition
                .archived
                .context("archived generation")?
                .generation_index,
            0
        );
        let proof = archived_nonmembership_proof(&state, 0, nullifier(9)).await?;
        proof.verify_for(nullifier(9))?;
        Ok(())
    }

    #[tokio::test]
    async fn packed_generation_is_provable_until_pruned() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
        initialize(&mut state).await?;
        insert_batch(&mut state, [nullifier(7)]).await?;
        rollover(&mut state, 30, 1 << 32)
            .await?
            .context("rollover")?;
        rollover(&mut state, 60, 2 << 32)
            .await?
            .context("second rollover")?;

        let pack = build_generation_pack(&state, 0).await?;
        let bytes = pack.encode()?;
        let receipt = pack.receipt(&bytes)?;
        record_generation_pack_completion(&mut state, &receipt).await?;
        archived_nonmembership_proof(&state, 0, nullifier(9))
            .await?
            .verify_for(nullifier(9))?;

        assert!(prune_packed_generation(&mut state, &receipt).await? > 0);
        assert!(committed_root_for(&state, NullifierTreeId::Generation(0))
            .await?
            .is_none());
        assert!(archived_nonmembership_proof(&state, 0, nullifier(9))
            .await
            .is_err());
        Ok(())
    }

    #[tokio::test]
    async fn reconstructed_pack_matches_live_witnesses() -> Result<()> {
        let storage = TempStorage::new().await?;
        let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
        initialize(&mut state).await?;
        insert_batch(
            &mut state,
            [nullifier(7), nullifier(1), nullifier(12), nullifier(5)],
        )
        .await?;
        rollover(&mut state, 30, 1 << 32)
            .await?
            .context("rollover")?;
        rollover(&mut state, 60, 2 << 32)
            .await?
            .context("second rollover")?;

        let pack = build_generation_pack(&state, 0).await?;
        let reconstructed = pack.reconstruct()?;
        assert_eq!(reconstructed.root(), pack.metadata.generation_root);
        for value in [0, 2, 6, 8, 13] {
            let live = archived_nonmembership_proof(&state, 0, nullifier(value)).await?;
            let packed = reconstructed.nonmembership_proof(nullifier(value))?;
            assert_eq!(*packed, live);
        }
        Ok(())
    }
}
