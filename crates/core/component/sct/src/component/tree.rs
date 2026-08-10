use anyhow::{anyhow, ensure, Context, Result};
use async_trait::async_trait;
use cnidarium::{StateRead, StateWrite};
use futures::{Stream, StreamExt};
use shieldd_sdk_proto::{DomainType as _, StateReadProto, StateWriteProto};
use shieldd_sdk_tct as tct;
use std::{
    fmt,
    ops::{Range, RangeFrom},
    pin::Pin,
};
use tct::builder::{block, epoch};
use tct::storage::{AsyncRead as TctAsyncRead, AsyncWrite as TctAsyncWrite, StoredPosition};
use tct::structure::Hash;
use tracing::instrument;

use crate::{
    component::{clock::EpochRead, sct::StateReadExt},
    event, nullifier_tree, state_key, CommitmentSource, Nullifier,
};

#[derive(Clone, Copy, Debug, Default)]
pub struct ProposalNullifierBatchProfile {
    pub lookup_write_ms: f64,
    pub pending_stage_ms: f64,
}

pub const SCT_BLOCK_COMMITMENT_CAPACITY: usize = u16::MAX as usize + 1;

#[derive(Debug, PartialEq, Eq)]
pub enum SctCapacityError {
    TreeFull,
    Block { requested: usize, remaining: usize },
}

impl fmt::Display for SctCapacityError {
    fn fmt(&self, formatter: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Self::TreeFull => formatter.write_str("state commitment tree is full"),
            Self::Block {
                requested,
                remaining,
            } => write!(
                formatter,
                "SCT block commitment capacity exceeded: requested {requested}, remaining {remaining}"
            ),
        }
    }
}

impl std::error::Error for SctCapacityError {}

fn ensure_block_capacity(
    tree: &tct::Tree,
    requested: usize,
) -> std::result::Result<(), SctCapacityError> {
    let position = tree.position().ok_or(SctCapacityError::TreeFull)?;
    let used = position.commitment() as usize;
    let remaining = SCT_BLOCK_COMMITMENT_CAPACITY - used;
    if requested > remaining {
        return Err(SctCapacityError::Block {
            requested,
            remaining,
        });
    }
    Ok(())
}

struct SctNvStorage<'a, S: ?Sized> {
    state: &'a mut S,
}

impl<'a, S: ?Sized> SctNvStorage<'a, S> {
    fn new(state: &'a mut S) -> Self {
        Self { state }
    }
}

fn decode_stored_position(bytes: Option<Vec<u8>>) -> Result<StoredPosition> {
    bytes
        .map(|bytes| bincode::deserialize(&bytes).context("decode SCT stored position"))
        .transpose()
        .map(|position| position.unwrap_or_default())
}

fn decode_forgotten(bytes: Option<Vec<u8>>) -> Result<tct::Forgotten> {
    bytes
        .map(|bytes| bincode::deserialize(&bytes).context("decode SCT forgotten version"))
        .transpose()
        .map(|forgotten| forgotten.unwrap_or_default())
}

fn decode_hash_value(bytes: Vec<u8>) -> Result<Hash> {
    let bytes: [u8; 32] = bytes.try_into().map_err(|bytes: Vec<u8>| {
        anyhow!("stored SCT hash must be 32 bytes, got {}", bytes.len())
    })?;
    Hash::from_bytes(bytes).map_err(|_| anyhow!("stored SCT hash is not a field element"))
}

fn decode_commitment_value(bytes: Vec<u8>) -> Result<tct::StateCommitment> {
    let bytes: [u8; 32] = bytes.try_into().map_err(|bytes: Vec<u8>| {
        anyhow!(
            "stored SCT commitment must be 32 bytes, got {}",
            bytes.len()
        )
    })?;
    tct::StateCommitment::try_from(bytes)
        .map_err(|_| anyhow!("stored SCT commitment is not a field element"))
}

fn decode_hash_row(key: &[u8], bytes: Vec<u8>) -> Result<(tct::Position, u8, Hash)> {
    let key = std::str::from_utf8(key).context("SCT hash key is not UTF-8")?;
    let suffix = key
        .strip_prefix(state_key::tree::incremental_hash_prefix())
        .unwrap_or(key);
    let (position, height) = suffix
        .split_once('/')
        .ok_or_else(|| anyhow!("SCT hash key missing height: {key}"))?;
    Ok((
        position.parse::<u64>()?.into(),
        height.parse::<u8>()?,
        decode_hash_value(bytes)?,
    ))
}

fn decode_commitment_row(
    key: &[u8],
    bytes: Vec<u8>,
) -> Result<(tct::Position, tct::StateCommitment)> {
    let key = std::str::from_utf8(key).context("SCT commitment key is not UTF-8")?;
    let suffix = key
        .strip_prefix(state_key::tree::incremental_commitment_prefix())
        .unwrap_or(key);
    Ok((
        suffix.parse::<u64>()?.into(),
        decode_commitment_value(bytes)?,
    ))
}

fn prefix_range(prefix: &str) -> RangeFrom<Vec<u8>> {
    let _ = prefix;
    Vec::new()..
}

#[async_trait]
impl<S: StateRead + Send + Sync + ?Sized> TctAsyncRead for SctNvStorage<'_, S> {
    type Error = anyhow::Error;

    type HashesStream<'b>
        = Pin<Box<dyn Stream<Item = Result<(tct::Position, u8, Hash)>> + Send + 'b>>
    where
        Self: 'b;

    type CommitmentsStream<'b>
        = Pin<Box<dyn Stream<Item = Result<(tct::Position, tct::StateCommitment)>> + Send + 'b>>
    where
        Self: 'b;

    async fn position(&mut self) -> Result<StoredPosition> {
        decode_stored_position(
            self.state
                .nonverifiable_get_raw(state_key::tree::incremental_position().as_bytes())
                .await?,
        )
    }

    async fn forgotten(&mut self) -> Result<tct::Forgotten> {
        decode_forgotten(
            self.state
                .nonverifiable_get_raw(state_key::tree::incremental_forgotten().as_bytes())
                .await?,
        )
    }

    async fn hash(&mut self, position: tct::Position, height: u8) -> Result<Option<Hash>> {
        self.state
            .nonverifiable_get_raw(state_key::tree::incremental_hash(position, height).as_bytes())
            .await?
            .map(decode_hash_value)
            .transpose()
    }

    fn hashes(&mut self) -> Self::HashesStream<'_> {
        self.state
            .nonverifiable_range_raw(
                Some(state_key::tree::incremental_hash_prefix().as_bytes()),
                prefix_range(state_key::tree::incremental_hash_prefix()),
            )
            .expect("valid SCT hash storage range")
            .map(|result| result.and_then(|(key, bytes)| decode_hash_row(&key, bytes)))
            .boxed()
    }

    async fn commitment(
        &mut self,
        position: tct::Position,
    ) -> Result<Option<tct::StateCommitment>> {
        self.state
            .nonverifiable_get_raw(state_key::tree::incremental_commitment(position).as_bytes())
            .await?
            .map(decode_commitment_value)
            .transpose()
    }

    fn commitments(&mut self) -> Self::CommitmentsStream<'_> {
        self.state
            .nonverifiable_range_raw(
                Some(state_key::tree::incremental_commitment_prefix().as_bytes()),
                prefix_range(state_key::tree::incremental_commitment_prefix()),
            )
            .expect("valid SCT commitment storage range")
            .map(|result| result.and_then(|(key, bytes)| decode_commitment_row(&key, bytes)))
            .boxed()
    }
}

#[async_trait]
impl<S: StateWrite + Send + Sync + ?Sized> TctAsyncWrite for SctNvStorage<'_, S> {
    async fn add_hash(
        &mut self,
        position: tct::Position,
        height: u8,
        hash: Hash,
        essential: bool,
    ) -> Result<()> {
        if essential {
            self.state.nonverifiable_put_raw(
                state_key::tree::incremental_hash(position, height).into_bytes(),
                hash.to_bytes().to_vec(),
            );
        }
        Ok(())
    }

    async fn add_commitment(
        &mut self,
        position: tct::Position,
        commitment: tct::StateCommitment,
    ) -> Result<()> {
        let key = state_key::tree::incremental_commitment(position);
        if let Some(existing) = self.state.nonverifiable_get_raw(key.as_bytes()).await? {
            anyhow::ensure!(
                existing == commitment.0.to_bytes().to_vec(),
                "refusing to overwrite SCT commitment at position {}",
                u64::from(position)
            );
            return Ok(());
        }
        self.state
            .nonverifiable_put_raw(key.into_bytes(), commitment.0.to_bytes().to_vec());
        Ok(())
    }

    async fn delete_range(
        &mut self,
        below_height: u8,
        positions: Range<tct::Position>,
    ) -> Result<()> {
        // The forgotten subtree spans `positions`, whose width is 4^height and can be
        // billions of positions near the top of the tree. The tree is sparse though -
        // only a handful of positions in that span were ever written. Staging a
        // point-delete for *every* position (the old behavior) piled up millions of
        // dead tombstones in the in-memory write cache per block and OOM'd the node.
        //
        // Instead, range-scan the two prefixes for the keys that actually exist in the
        // span and delete only those. Positions are zero-padded fixed width ({:020}),
        // so lexicographic byte order matches numeric order and the range bounds (which
        // cnidarium appends to the prefix) select exactly [start, end).
        let start = u64::from(positions.start);
        let end = u64::from(positions.end);

        // Collect before deleting because the range streams borrow state immutably.
        let mut keys_to_delete: Vec<Vec<u8>> = Vec::new();
        let commitment_start = format!("{start:020}").into_bytes();
        let commitment_end = format!("{end:020}").into_bytes();
        {
            let commitment_stream = self.state.nonverifiable_range_raw(
                Some(state_key::tree::incremental_commitment_prefix().as_bytes()),
                commitment_start..commitment_end,
            )?;
            futures::pin_mut!(commitment_stream);
            while let Some((key, _)) = commitment_stream.next().await.transpose()? {
                keys_to_delete.push(key);
            }
        }

        let hash_start = format!("{start:020}/").into_bytes();
        let hash_end = format!("{end:020}/").into_bytes();
        {
            let hash_stream = self.state.nonverifiable_range_raw(
                Some(state_key::tree::incremental_hash_prefix().as_bytes()),
                hash_start..hash_end,
            )?;
            futures::pin_mut!(hash_stream);
            while let Some((key, bytes)) = hash_stream.next().await.transpose()? {
                let (_, height, _) = decode_hash_row(&key, bytes)?;
                if height < below_height {
                    keys_to_delete.push(key);
                }
            }
        }
        for key in keys_to_delete {
            self.state.nonverifiable_delete(key);
        }
        Ok(())
    }

    async fn set_position(&mut self, position: StoredPosition) -> Result<()> {
        self.state.nonverifiable_put_raw(
            state_key::tree::incremental_position().as_bytes().to_vec(),
            bincode::serialize(&position)?,
        );
        Ok(())
    }

    async fn set_forgotten(&mut self, forgotten: tct::Forgotten) -> Result<()> {
        self.state.nonverifiable_put_raw(
            state_key::tree::incremental_forgotten().as_bytes().to_vec(),
            bincode::serialize(&forgotten)?,
        );
        Ok(())
    }
}

#[async_trait]
/// Provides read access to the state commitment tree and related data.
pub trait SctRead: StateRead {
    /// Fallibly reconstruct the state commitment tree from nonverifiable storage.
    async fn load_sct_from_nv(&self) -> Result<tct::Tree> {
        let position = decode_stored_position(
            self.nonverifiable_get_raw(state_key::tree::incremental_position().as_bytes())
                .await?,
        )?;
        let forgotten = decode_forgotten(
            self.nonverifiable_get_raw(state_key::tree::incremental_forgotten().as_bytes())
                .await?,
        )?;

        let mut commitments = tct::Tree::load(position, forgotten);
        let commitment_stream = self.nonverifiable_range_raw(
            Some(state_key::tree::incremental_commitment_prefix().as_bytes()),
            prefix_range(state_key::tree::incremental_commitment_prefix()),
        )?;
        futures::pin_mut!(commitment_stream);
        while let Some((key, bytes)) = commitment_stream.next().await.transpose()? {
            let (position, commitment) = decode_commitment_row(&key, bytes)?;
            commitments.insert(position, commitment);
        }
        drop(commitment_stream);

        let mut hashes = commitments.load_hashes();
        let hash_stream = self.nonverifiable_range_raw(
            Some(state_key::tree::incremental_hash_prefix().as_bytes()),
            prefix_range(state_key::tree::incremental_hash_prefix()),
        )?;
        futures::pin_mut!(hash_stream);
        while let Some((key, bytes)) = hash_stream.next().await.transpose()? {
            let (position, height, hash) = decode_hash_row(&key, bytes)?;
            hashes.insert(position, height, hash);
        }
        Ok(hashes.finish())
    }

    /// Fallibly fetch the state commitment tree, preferring the in-memory cache.
    async fn try_get_sct(&self) -> Result<tct::Tree> {
        if let Some(tree) = self.object_get(state_key::cache::cached_state_commitment_tree()) {
            return Ok(tree);
        }

        self.load_sct_from_nv().await
    }

    /// Fetch the next SCT insert position without loading the full tree when possible.
    async fn get_sct_position(&self) -> Result<Option<tct::Position>> {
        if let Some(tree) =
            self.object_get::<tct::Tree>(state_key::cache::cached_state_commitment_tree())
        {
            return Ok(tree.position());
        }

        Ok(decode_stored_position(
            self.nonverifiable_get_raw(state_key::tree::incremental_position().as_bytes())
                .await?,
        )?
        .into())
    }

    /// Fetch the state commitment tree from nonverifiable storage, preferring the cached tree if
    /// it exists.
    async fn get_sct(&self) -> tct::Tree {
        self.try_get_sct()
            .await
            .expect("able to load SCT from incremental NV storage")
    }

    /// Return the SCT root for the given height, if it exists.
    /// If the height is not found, return `None`.
    async fn get_anchor_by_height(&self, height: u64) -> Result<Option<tct::Root>> {
        self.get(&state_key::tree::anchor_by_height(height)).await
    }

    /// Verify that the SCT materialized in NV storage matches the committed root.
    async fn verify_committed_sct_root(&self) -> Result<()> {
        let Ok(height) = self.get_block_height().await else {
            return Ok(());
        };
        let Some(committed) = self.get_anchor_by_height(height).await? else {
            return Ok(());
        };
        let reconstructed = self.load_sct_from_nv().await?.root();
        ensure!(
            reconstructed == committed,
            "SCT root mismatch at height {height}: committed {committed}, NV {reconstructed}"
        );
        Ok(())
    }

    /// Return whether the specified nullifier has been spent.
    async fn is_nullifier_spent(&self, nullifier: Nullifier) -> Result<bool> {
        nullifier_tree::is_spent(self, nullifier).await
    }

    /// Check a batch through the direct spent-marker index without constructing proofs.
    async fn contains_nullifiers(&self, nullifiers: &[Nullifier]) -> Result<Vec<bool>> {
        nullifier_tree::contains_batch(self, nullifiers).await
    }

    /// Return the set of nullifiers that have been spent in the current block.
    fn pending_nullifiers(&self) -> im::Vector<Nullifier> {
        self.object_get(state_key::nullifier_set::pending_nullifiers())
            .unwrap_or_default()
    }
}

impl<T: StateRead + ?Sized> SctRead for T {}

#[async_trait]
/// Provides write access to the state commitment tree and related data.
pub trait SctManager: StateWrite {
    /// Write an SCT instance to nonverifiable storage and record
    /// the block and epoch roots in the JMT.
    ///
    /// # Panics
    /// If the epoch has not been set, or if a serialization failure occurs.
    async fn write_sct(
        &mut self,
        height: u64,
        sct: tct::Tree,
        block_root: block::Root,
        epoch_root: Option<epoch::Root>,
    ) {
        let sct_anchor = sct.root();
        let block_timestamp = self
            .get_current_block_timestamp()
            .await
            .map(|t| t.unix_timestamp())
            .unwrap_or(0);

        // Write the anchor as a key, so we can check claimed anchors...
        self.put_proto(state_key::tree::anchor_lookup(sct_anchor), height);
        // ... and as a value, so we can check SCT consistency.
        // TODO: can we move this out to NV storage?
        self.put(state_key::tree::anchor_by_height(height), sct_anchor);

        self.record_proto(event::anchor(height, sct_anchor, block_timestamp));
        self.record_proto(
            event::EventBlockRoot {
                height,
                root: block_root,
                timestamp_seconds: block_timestamp,
            }
            .to_proto(),
        );
        // Only record an epoch root event if we are ending the epoch.
        if let Some(epoch_root) = epoch_root {
            let index = self
                .get_current_epoch()
                .await
                .expect("epoch must be set")
                .index;
            self.record_proto(
                event::EventEpochRoot {
                    index,
                    root: epoch_root,
                    timestamp_seconds: block_timestamp,
                }
                .to_proto(),
            );
        }

        self.prune_sct_history(height).await;
        self.write_sct_cache(sct);
        self.persist_sct_cache().await;
    }

    /// Prune SCT anchors and height-indexed metadata outside the configured retention window.
    async fn prune_sct_history(&mut self, current_height: u64) {
        let retention = self
            .get_sct_params()
            .await
            .expect("SCT parameters must be set")
            .sct_anchor_retention_blocks;
        if let Some(expired_height) = current_height.checked_sub(retention.saturating_add(1)) {
            if let Ok(Some(expired_anchor)) = self.get_anchor_by_height(expired_height).await {
                self.delete(state_key::tree::anchor_by_height(expired_height));
                if self
                    .get_proto::<u64>(&state_key::tree::anchor_lookup(expired_anchor))
                    .await
                    .expect("able to read SCT anchor lookup")
                    == Some(expired_height)
                {
                    self.delete(state_key::tree::anchor_lookup(expired_anchor));
                }
            }

            self.delete(state_key::epoch_manager::epoch_by_height(expired_height));
            self.nonverifiable_delete(
                state_key::block_manager::block_timestamp(expired_height).into_bytes(),
            );
        }
    }

    /// Add a state commitment into the SCT, emitting an event recording its
    /// source, and return the insert position in the tree.
    async fn add_sct_commitment(
        &mut self,
        commitment: tct::StateCommitment,
        source: CommitmentSource,
    ) -> Result<tct::Position> {
        // Record in the SCT
        let mut tree = self.get_sct().await;
        ensure_block_capacity(&tree, 1)?;
        let position = tree.insert(tct::Witness::Forget, commitment)?;
        self.write_sct_cache(tree);

        // Record the commitment source in an event
        self.record_proto(event::commitment(commitment, position, source));

        Ok(position)
    }

    /// Build and append a commitment from the next SCT position using one tree load.
    async fn add_sct_commitment_from_position<T, F>(
        &mut self,
        source: CommitmentSource,
        build: F,
    ) -> Result<(tct::Position, T)>
    where
        T: Send,
        F: FnOnce(tct::Position) -> Result<(tct::StateCommitment, T)> + Send,
    {
        let mut tree = self.get_sct().await;
        ensure_block_capacity(&tree, 1)?;
        let expected_position = tree.position().expect("state commitment tree is not full");
        let (commitment, output) = build(expected_position)?;
        let position = tree.insert(tct::Witness::Forget, commitment)?;
        ensure!(
            position == expected_position,
            "SCT append position drifted: expected {expected_position:?}, got {position:?}"
        );
        self.write_sct_cache(tree);

        self.record_proto(event::commitment(commitment, position, source));

        Ok((position, output))
    }

    /// Add a state commitment into the SCT at a pre-reserved position, without emitting an
    /// `EventCommitment`. Used by the app-level deferred SCT staging path.
    async fn add_sct_commitment_at_position(
        &mut self,
        commitment: tct::StateCommitment,
        expected_position: tct::Position,
    ) -> Result<()> {
        let mut tree = self.get_sct().await;
        ensure_block_capacity(&tree, 1)?;
        let position = tree.insert(tct::Witness::Forget, commitment)?;
        ensure!(
            position == expected_position,
            "deferred SCT append position drifted: expected {expected_position:?}, got {position:?}"
        );
        self.write_sct_cache(tree);

        Ok(())
    }

    /// Add positioned state commitments into the SCT with one tree load.
    async fn add_sct_commitments_at_positions(
        &mut self,
        entries: Vec<(tct::Position, tct::StateCommitment)>,
    ) -> Result<()> {
        if entries.is_empty() {
            return Ok(());
        }

        let mut tree = self.get_sct().await;
        ensure_block_capacity(&tree, entries.len())?;
        for (expected_position, commitment) in entries {
            let position = tree.insert(tct::Witness::Forget, commitment)?;
            ensure!(
                position == expected_position,
                "deferred SCT append position drifted: expected {expected_position:?}, got {position:?}"
            );
        }
        self.write_sct_cache(tree);

        Ok(())
    }

    #[instrument(skip(self, source))]
    /// Record a nullifier as spent in the verifiable storage.
    async fn nullify(&mut self, nullifier: Nullifier, source: CommitmentSource) -> Result<()> {
        tracing::debug!("marking as spent");
        self.nullify_all(std::slice::from_ref(&nullifier), source)
            .await
    }

    #[instrument(skip(self, source, nullifiers))]
    /// Record a batch of nullifiers as spent in the verifiable storage.
    async fn nullify_all(
        &mut self,
        nullifiers: &[Nullifier],
        source: CommitmentSource,
    ) -> Result<()> {
        if nullifiers.is_empty() {
            return Ok(());
        }

        tracing::debug!(count = nullifiers.len(), "marking batch as spent");

        ensure!(
            source.id().is_some(),
            "nullifiers are only consumed by transactions"
        );
        nullifier_tree::insert_batch(self, nullifiers.iter().copied()).await?;

        // Record the nullifiers to be inserted into the compact block in one object-store rewrite.
        let mut pending_nullifiers = self.pending_nullifiers();
        pending_nullifiers.extend(nullifiers.iter().copied());
        self.object_put(
            state_key::nullifier_set::pending_nullifiers(),
            pending_nullifiers,
        );

        Ok(())
    }

    #[instrument(skip(self, entries))]
    /// Record a proposal-ordered batch of nullifiers as spent in verifiable storage.
    ///
    /// This method is intentionally blind to same-block conflicts. Proposal-order conflict
    /// resolution must happen before this batch is applied.
    async fn nullify_proposal_batch(
        &mut self,
        entries: &[(Nullifier, CommitmentSource)],
    ) -> Result<ProposalNullifierBatchProfile> {
        if entries.is_empty() {
            return Ok(ProposalNullifierBatchProfile::default());
        }

        tracing::debug!(
            count = entries.len(),
            "marking proposal nullifier batch as spent"
        );

        let mut profile = ProposalNullifierBatchProfile::default();

        let lookup_write_start = std::time::Instant::now();
        ensure!(
            entries.iter().all(|(_, source)| source.id().is_some()),
            "nullifiers are only consumed by transactions"
        );
        nullifier_tree::insert_batch(self, entries.iter().map(|(nullifier, _)| *nullifier)).await?;
        profile.lookup_write_ms = lookup_write_start.elapsed().as_secs_f64() * 1000.0;

        let pending_stage_start = std::time::Instant::now();
        let mut pending_nullifiers = self.pending_nullifiers();
        pending_nullifiers.extend(entries.iter().map(|(nullifier, _)| *nullifier));
        self.object_put(
            state_key::nullifier_set::pending_nullifiers(),
            pending_nullifiers,
        );
        profile.pending_stage_ms = pending_stage_start.elapsed().as_secs_f64() * 1000.0;

        Ok(profile)
    }

    /// Seal the current block in the SCT, and produce an epoch root if
    /// we are ending an epoch as well.
    ///
    /// # Panics
    /// This method panic if the block is full, or if a serialization failure occurs.
    async fn end_sct_block(
        &mut self,
        end_epoch: bool,
    ) -> Result<(block::Root, Option<epoch::Root>)> {
        let height = self.get_block_height().await?;

        let mut tree = self.get_sct().await;

        // Close the block in the SCT
        let block_root = tree
            .end_block()
            .expect("ending a block in the state commitment tree can never fail");

        // If the block ends an epoch, also close the epoch in the SCT
        let epoch_root = if end_epoch {
            let epoch_root = tree
                .end_epoch()
                .expect("ending an epoch in the state commitment tree can never fail");
            Some(epoch_root)
        } else {
            None
        };

        self.write_sct(height, tree, block_root, epoch_root).await;

        Ok((block_root, epoch_root))
    }

    // Set the state commitment tree in memory, but without committing to it in the nonverifiable
    // storage (very cheap).
    fn write_sct_cache(&mut self, tree: tct::Tree) {
        self.object_put(state_key::cache::cached_state_commitment_tree(), tree);
    }

    /// Persist the object-store SCT instance to nonverifiable storage.
    /// Note that this doesn't actually persist the SCT to disk, see the
    /// cndiarium documentation for more information.
    ///  
    /// # Panics
    /// This method panics if a serialization failure occurs.
    async fn persist_sct_cache(&mut self) {
        // If the cached tree is dirty, flush it to storage
        if let Some(tree) =
            self.object_get::<tct::Tree>(state_key::cache::cached_state_commitment_tree())
        {
            let mut storage = SctNvStorage::new(self);
            tree.to_async_writer(&mut storage)
                .await
                .expect("able to persist state commitment tree to incremental NV storage");
        }
    }
}

impl<T: StateWrite + ?Sized> SctManager for T {}

#[async_trait]
pub trait VerificationExt: StateRead {
    async fn check_claimed_anchor(&self, anchor: tct::Root) -> Result<()> {
        if anchor.is_empty() {
            return Ok(());
        }

        if let Some(anchor_height) = self
            .get_proto::<u64>(&state_key::tree::anchor_lookup(anchor))
            .await?
        {
            tracing::debug!(?anchor, ?anchor_height, "anchor is valid");
            Ok(())
        } else {
            Err(anyhow!(
                "provided anchor {} is not a valid SCT root",
                anchor
            ))
        }
    }

    async fn check_nullifier_unspent(&self, nullifier: Nullifier) -> Result<()> {
        if self.is_nullifier_spent(nullifier).await? {
            anyhow::bail!("nullifier {} was already spent", nullifier);
        }
        Ok(())
    }
}

impl<T: StateRead + ?Sized> VerificationExt for T {}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{
        component::{
            clock::{EpochManager, EpochRead},
            sct::StateWriteExt,
        },
        epoch::Epoch,
        params::SctParameters,
    };
    use cnidarium::TempStorage;
    use futures::StreamExt;
    use shieldd_sdk_proto::StateReadProto;
    use std::str::FromStr;

    async fn delete_nv_prefix<S>(state: &mut S, prefix: &[u8])
    where
        S: cnidarium::StateRead + cnidarium::StateWrite + ?Sized,
    {
        let mut keys = Vec::new();
        {
            let stream = state.nonverifiable_prefix_raw(prefix);
            futures::pin_mut!(stream);
            while let Some(entry) = stream.next().await {
                let (key, _) = entry.unwrap();
                keys.push(key);
            }
        }
        for key in keys {
            state.nonverifiable_delete(key);
        }
    }

    async fn write_test_anchor(
        state: &mut cnidarium::StateDelta<cnidarium::Snapshot>,
        height: u64,
        tree: &mut tct::Tree,
    ) -> tct::Root {
        state.put_block_timestamp(
            height,
            tendermint::Time::from_str("2026-01-01T00:00:00Z").unwrap(),
        );
        state.put_epoch_by_height(
            height,
            Epoch {
                index: 0,
                start_height: 0,
            },
        );
        let commitment = tct::StateCommitment::try_from([height as u8; 32]).unwrap();
        tree.insert(tct::Witness::Forget, commitment).unwrap();
        let block_root = tree.end_block().unwrap();
        let anchor = tree.root();
        state
            .write_sct(height, tree.clone(), block_root, None)
            .await;
        anchor
    }

    #[tokio::test]
    async fn claimed_anchor_liveness_matches_retention_boundary() {
        let storage = TempStorage::new().await.unwrap();
        let snapshot = storage.latest_snapshot();
        let mut state = cnidarium::StateDelta::new(snapshot);
        state.put_sct_params(SctParameters {
            epoch_duration: 10,
            sct_anchor_retention_blocks: 2,
        });

        let mut tree = tct::Tree::new();
        let anchor_0 = write_test_anchor(&mut state, 0, &mut tree).await;
        let anchor_1 = write_test_anchor(&mut state, 1, &mut tree).await;
        write_test_anchor(&mut state, 2, &mut tree).await;

        assert_eq!(state.get_anchor_by_height(0).await.unwrap(), Some(anchor_0));
        state
            .check_claimed_anchor(anchor_0)
            .await
            .expect("anchor remains live at the retention boundary");
        assert!(state.get_block_timestamp(0).await.is_ok());
        assert!(state.get_epoch_by_height(0).await.is_ok());

        write_test_anchor(&mut state, 3, &mut tree).await;

        assert_eq!(state.get_anchor_by_height(0).await.unwrap(), None);
        let error = state
            .check_claimed_anchor(anchor_0)
            .await
            .expect_err("anchor must be rejected immediately after retention");
        assert!(
            error.to_string().contains("not a valid SCT root"),
            "unexpected rejection reason: {error:#}"
        );
        assert!(state.get_block_timestamp(0).await.is_err());
        assert!(state.get_epoch_by_height(0).await.is_err());
        assert_eq!(state.get_anchor_by_height(1).await.unwrap(), Some(anchor_1));
        state
            .check_claimed_anchor(anchor_1)
            .await
            .expect("next retained anchor remains live");
        assert!(state.get_block_timestamp(1).await.is_ok());
        assert!(state.get_epoch_by_height(1).await.is_ok());
        assert_eq!(
            state
                .get_proto::<u64>(&state_key::tree::anchor_lookup(anchor_0))
                .await
                .unwrap(),
            None
        );
    }

    #[tokio::test]
    async fn sct_incremental_nv_persistence_roundtrips_without_full_blob() {
        let storage = TempStorage::new().await.unwrap();
        let snapshot = storage.latest_snapshot();
        let mut state = cnidarium::StateDelta::new(snapshot);
        state.put_sct_params(SctParameters {
            epoch_duration: 10,
            sct_anchor_retention_blocks: 100,
        });
        state.put_block_timestamp(
            1,
            tendermint::Time::from_str("2026-01-01T00:00:00Z").unwrap(),
        );
        state.put_epoch_by_height(
            1,
            Epoch {
                index: 0,
                start_height: 0,
            },
        );

        let mut reference = tct::Tree::new();
        for i in 1..=8u8 {
            reference
                .insert(
                    tct::Witness::Keep,
                    tct::StateCommitment::try_from([i; 32]).unwrap(),
                )
                .unwrap();
        }
        let block_root = reference.end_block().unwrap();
        let expected_root = reference.root();

        state
            .write_sct(1, reference.clone(), block_root, None)
            .await;

        let loaded = state.get_sct().await;
        assert_eq!(loaded.root(), expected_root);

        let mut count = 0usize;
        let stream = state
            .nonverifiable_range_raw(
                Some(state_key::tree::incremental_prefix().as_bytes()),
                Vec::new()..,
            )
            .unwrap();
        futures::pin_mut!(stream);
        while let Some(entry) = stream.next().await {
            entry.unwrap();
            count += 1;
        }
        assert!(count > 0, "incremental SCT storage wrote no keys");
        assert!(
            count < 128,
            "incremental SCT storage wrote too many keys for one small block: {count}"
        );
    }

    #[tokio::test]
    async fn sct_committed_root_check_fails_on_missing_nv_state() {
        let storage = TempStorage::new().await.unwrap();
        let snapshot = storage.latest_snapshot();
        let mut state = cnidarium::StateDelta::new(snapshot);
        state.put_sct_params(SctParameters {
            epoch_duration: 10,
            sct_anchor_retention_blocks: 100,
        });
        state.put_block_height(1);

        let mut tree = tct::Tree::new();
        write_test_anchor(&mut state, 1, &mut tree).await;
        state.verify_committed_sct_root().await.unwrap();

        delete_nv_prefix(&mut state, state_key::tree::incremental_prefix().as_bytes()).await;

        let err = state
            .verify_committed_sct_root()
            .await
            .expect_err("missing SCT NV state should fail root verification");
        assert!(err.to_string().contains("SCT root mismatch"));
    }

    #[test]
    fn sct_capacity_is_checked_before_block_mutation() {
        let position = tct::Position::from((SCT_BLOCK_COMMITMENT_CAPACITY - 2) as u64);
        let tree = tct::Tree::load(
            StoredPosition::Position(position),
            tct::Forgotten::default(),
        )
        .load_hashes()
        .finish();

        assert_eq!(ensure_block_capacity(&tree, 2), Ok(()));
        assert_eq!(
            ensure_block_capacity(&tree, 3),
            Err(SctCapacityError::Block {
                requested: 3,
                remaining: 2,
            })
        );
    }

    #[tokio::test]
    async fn sct_nv_storage_skips_recalculable_hashes() {
        let storage = TempStorage::new().await.unwrap();
        let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
        let position = tct::Position::from(7u64);
        let key = state_key::tree::incremental_hash(position, 0);

        let mut writer = SctNvStorage::new(&mut state);
        writer
            .add_hash(position, 0, Hash::zero(), false)
            .await
            .unwrap();
        assert!(state
            .nonverifiable_get_raw(key.as_bytes())
            .await
            .unwrap()
            .is_none());

        let mut writer = SctNvStorage::new(&mut state);
        writer
            .add_hash(position, 0, Hash::zero(), true)
            .await
            .unwrap();
        assert!(state
            .nonverifiable_get_raw(key.as_bytes())
            .await
            .unwrap()
            .is_some());
    }

    #[tokio::test]
    async fn sct_delete_range_deletes_only_materialized_rows() {
        let storage = TempStorage::new().await.unwrap();
        let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
        let inside = tct::Position::from(7u64);
        let outside = tct::Position::from(9u64);

        let mut writer = SctNvStorage::new(&mut state);
        writer
            .add_hash(inside, 0, Hash::zero(), true)
            .await
            .unwrap();
        writer
            .add_hash(outside, 0, Hash::zero(), true)
            .await
            .unwrap();
        writer
            .add_commitment(inside, tct::StateCommitment(decaf377::Fq::from(7u64)))
            .await
            .unwrap();
        writer
            .add_commitment(outside, tct::StateCommitment(decaf377::Fq::from(9u64)))
            .await
            .unwrap();
        writer
            .delete_range(1, inside..tct::Position::from(8u64))
            .await
            .unwrap();

        assert!(state
            .nonverifiable_get_raw(state_key::tree::incremental_hash(inside, 0).as_bytes(),)
            .await
            .unwrap()
            .is_none());
        assert!(state
            .nonverifiable_get_raw(state_key::tree::incremental_hash(outside, 0).as_bytes(),)
            .await
            .unwrap()
            .is_some());
        assert!(state
            .nonverifiable_get_raw(state_key::tree::incremental_commitment(inside).as_bytes(),)
            .await
            .unwrap()
            .is_none());
        assert!(state
            .nonverifiable_get_raw(state_key::tree::incremental_commitment(outside).as_bytes(),)
            .await
            .unwrap()
            .is_some());
    }
}
