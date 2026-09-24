use std::fmt::Display;
use std::sync::Arc;

use hash_hasher::HashedMap;
#[cfg(feature = "parallel")]
use rayon::prelude::*;
use serde::{Deserialize, Serialize};
use shieldd_sdk_crypto::Fq;
use shieldd_sdk_proto::{shieldd::crypto::tct::v1 as pb, DomainType};

use crate::error::block::*;
use crate::{prelude::*, Witness};

#[cfg(feature = "parallel")]
const FINALIZED_ROOT_PARALLEL_THRESHOLD: usize = 64;

/// Build the finalized root of an ordered all-`Forget` commitment block.
///
/// This path retains no witnesses and rejects inputs beyond one block's capacity.
pub fn finalized_forget_root(commitments: &[StateCommitment]) -> Result<Root, InsertError> {
    if commitments.len() > u16::MAX as usize + 1 {
        return Err(InsertError);
    }

    #[cfg(feature = "parallel")]
    let mut level = if commitments.len() >= FINALIZED_ROOT_PARALLEL_THRESHOLD {
        commitments
            .par_iter()
            .copied()
            .map(Hash::of)
            .collect::<Vec<_>>()
    } else {
        commitments.iter().copied().map(Hash::of).collect()
    };
    #[cfg(not(feature = "parallel"))]
    let mut level = commitments
        .iter()
        .copied()
        .map(Hash::of)
        .collect::<Vec<_>>();
    for height in 1..=8 {
        #[cfg(feature = "parallel")]
        {
            level = if level.len() >= FINALIZED_ROOT_PARALLEL_THRESHOLD {
                level
                    .par_chunks(4)
                    .map(|chunk| {
                        let mut children = [Hash::one(); 4];
                        children[..chunk.len()].copy_from_slice(chunk);
                        Hash::node(height, children[0], children[1], children[2], children[3])
                    })
                    .collect()
            } else {
                hash_level(&level, height)
            };
        }
        #[cfg(not(feature = "parallel"))]
        {
            level = hash_level(&level, height);
        }
    }
    Ok(Root(level.first().copied().unwrap_or_else(Hash::one)))
}

fn hash_level(level: &[Hash], height: u8) -> Vec<Hash> {
    level
        .chunks(4)
        .map(|chunk| {
            let mut children = [Hash::one(); 4];
            children[..chunk.len()].copy_from_slice(chunk);
            Hash::node(height, children[0], children[1], children[2], children[3])
        })
        .collect()
}

/// A sparse merkle tree to witness up to 65,536 individual [`crate::StateCommitment`]s.
///
/// This is one block in an [`epoch`](crate::builder::epoch), which is one epoch in a [`Tree`].
#[derive(Derivative, Debug, Clone, Serialize, Deserialize)]
pub struct Builder {
    index: HashedMap<StateCommitment, index::within::Block>,
    inner: Arc<frontier::Top<Item>>,
}

impl Default for Builder {
    fn default() -> Self {
        Self {
            index: HashedMap::default(),
            inner: Arc::new(frontier::Top::new(frontier::TrackForgotten::No)),
        }
    }
}

/// A finalized block builder, ready to be inserted into an [`epoch::Builder`](super::Builder) or a
/// [`Tree`].
#[derive(Derivative, Debug, Clone, Serialize, Deserialize)]
pub struct Finalized {
    pub(in super::super) index: HashedMap<StateCommitment, index::within::Block>,
    pub(in super::super) inner: Insert<complete::Top<complete::Item>>,
}

impl Default for Finalized {
    fn default() -> Self {
        Builder::default().finalize()
    }
}

impl Finalized {
    /// Get the root hash of this finalized block.
    ///
    /// Internal hashing is performed lazily to prevent unnecessary intermediary hashes from being
    /// computed, so the first hash returned after a long sequence of insertions may take more time
    /// than subsequent calls.
    ///
    /// Computed hashes are cached so that subsequent calls without further modification are very
    /// fast.
    pub fn root(&self) -> Root {
        Root(self.inner.hash())
    }
}

impl From<Root> for Finalized {
    fn from(root: Root) -> Self {
        Self {
            index: HashedMap::default(),
            inner: Insert::Hash(root.0),
        }
    }
}

impl From<Builder> for Finalized {
    fn from(mut builder: Builder) -> Self {
        builder.finalize()
    }
}

/// The root hash of a block.
#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Serialize, Deserialize)]
#[serde(try_from = "pb::MerkleRoot", into = "pb::MerkleRoot")]
#[cfg_attr(any(test, feature = "arbitrary"), derive(proptest_derive::Arbitrary))]
pub struct Root(pub Hash);

impl Root {
    /// Check if this is the root of an empty finalized block.
    pub fn is_empty_finalized(&self) -> bool {
        self.0 == Hash::one()
    }

    /// Check if this is the root of an empty unfinalized block.
    pub fn is_empty_unfinalized(&self) -> bool {
        self.0 == Hash::zero()
    }
}

impl From<Root> for Fq {
    fn from(root: Root) -> Self {
        root.0.into()
    }
}

impl TryFrom<pb::MerkleRoot> for Root {
    type Error = RootDecodeError;

    fn try_from(root: pb::MerkleRoot) -> Result<Root, Self::Error> {
        let bytes: [u8; 32] = (&root.inner[..]).try_into().map_err(|_| RootDecodeError)?;
        let inner = shieldd_sdk_crypto::encoding::field(&bytes).map_err(|_| RootDecodeError)?;
        Ok(Root(Hash::new(inner)))
    }
}

impl From<Root> for pb::MerkleRoot {
    fn from(root: Root) -> Self {
        Self {
            inner: Fq::from(root.0).to_bytes().to_vec(),
        }
    }
}

impl DomainType for Root {
    type Proto = pb::MerkleRoot;
}

impl Display for Root {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "{}", hex::encode(Fq::from(self.0).to_bytes()))
    }
}

impl Builder {
    /// Create a new empty [`block::Builder`](Builder).
    pub fn new() -> Self {
        Self::default()
    }

    /// Add a new [`crate::StateCommitment`] to this [`block::Builder`](Builder).
    ///
    /// # Errors
    ///
    /// Returns [`InsertError`] if the block is full.
    pub fn insert(
        &mut self,
        witness: Witness,
        commitment: StateCommitment,
    ) -> Result<(), InsertError> {
        let item = match witness {
            Witness::Keep => commitment.into(),
            Witness::Forget => Hash::of(commitment).into(),
        };

        // Get the position of the insertion, if it would succeed
        let position = u16::try_from(self.inner.position().ok_or(InsertError)?)
            .expect("position of block is never greater than `u16::MAX`")
            .into();

        // Insert the commitment into the inner tree
        Arc::make_mut(&mut self.inner)
            .insert(item)
            .expect("inserting a commitment must succeed when block has a position");

        // Keep track of the position of this just-inserted commitment in the index, if it was
        // slated to be kept
        if let Witness::Keep = witness {
            if let Some(replaced) = self.index.insert(commitment, position) {
                // This case is handled for completeness, but should not happen in
                // practice because commitments should be unique
                let forgotten = Arc::make_mut(&mut self.inner).forget(replaced);
                debug_assert!(forgotten);
            }
        }

        Ok(())
    }

    /// Get the root hash of this block builder.
    ///
    /// Note that this root hash will differ from the root hash of the finalized block.
    pub fn root(&self) -> Root {
        Root(self.inner.hash())
    }

    /// Finalize this block builder returning a finalized block and resetting the underlying builder
    /// to the initial empty state.
    pub fn finalize(&mut self) -> Finalized {
        let this = std::mem::take(self);

        // This avoids cloning the arc when we have the only reference to it
        let inner = Arc::try_unwrap(this.inner).unwrap_or_else(|arc| (*arc).clone());

        let inner = inner.finalize();
        let index = this.index;
        Finalized { index, inner }
    }
}

#[cfg(test)]
mod test {
    use super::*;

    static_assertions::assert_impl_all!(InsertError: Sync, Send);

    #[test]
    fn finalized_forget_root_matches_builder_boundaries() -> Result<(), Box<dyn std::error::Error>>
    {
        for size in [0, 1, 3, 4, 5, 63, 64, 65, 255, 256, 257, 1_000, 4_096] {
            let commitments = (0..size)
                .map(|value| StateCommitment(Fq::from(value as u64 + 1)))
                .collect::<Vec<_>>();
            let mut builder = Builder::new();
            for commitment in &commitments {
                builder.insert(Witness::Forget, *commitment)?;
            }
            assert_eq!(
                finalized_forget_root(&commitments)?,
                builder.finalize().root()
            );
        }

        let oversized = vec![StateCommitment(Fq::from(1u64)); 65_537];
        assert_eq!(finalized_forget_root(&oversized), Err(InsertError));
        Ok(())
    }
}

/// One positional inclusion path in a finalized block, ordered from leaf to root.
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub struct LeafProof {
    /// Actual index within the SCT block.
    pub position: u16,
    /// Canonical payload commitment at this position.
    pub commitment: StateCommitment,
    /// The other three children at each of the eight levels.
    pub siblings: [[[u8; 32]; 3]; 8],
}

/// Bounded historical block tree used to construct selective synchronization proofs.
#[derive(Clone, Debug)]
pub struct ProofTree {
    levels: Vec<Vec<Hash>>,
    commitments: Vec<StateCommitment>,
}
impl ProofTree {
    /// Reconstruct the finalized block using its canonical commitment order and padding.
    pub fn new(commitments: Vec<StateCommitment>, expected: Root) -> anyhow::Result<Self> {
        anyhow::ensure!(commitments.len() <= 65536, "SCT block capacity exceeded");
        let mut levels: Vec<Vec<Hash>> = vec![commitments.iter().copied().map(Hash::of).collect()];
        for height in 1..=8 {
            levels.push(hash_level(&levels[height as usize - 1], height));
        }
        let root = levels[8].first().copied().unwrap_or_else(Hash::one);
        anyhow::ensure!(
            root == expected.0,
            "historical block commitments disagree with root"
        );
        Ok(Self {
            levels,
            commitments,
        })
    }
    /// Heap payload retained by this cache entry.
    pub fn cached_bytes(&self) -> usize {
        self.commitments.capacity() * std::mem::size_of::<StateCommitment>()
            + self
                .levels
                .iter()
                .map(|v| v.capacity() * std::mem::size_of::<Hash>())
                .sum::<usize>()
    }
    /// Produce one path without touching unrelated ciphertexts.
    pub fn proof(&self, position: u16) -> anyhow::Result<LeafProof> {
        let commitment = *self
            .commitments
            .get(position as usize)
            .ok_or_else(|| anyhow::anyhow!("payload position outside historical block"))?;
        let mut siblings = [[[0; 32]; 3]; 8];
        let mut index = position as usize;
        for (height, path) in siblings.iter_mut().enumerate() {
            let mut slot = 0;
            for child in 0..4 {
                if child == index % 4 {
                    continue;
                }
                let hash = self.levels[height]
                    .get(index / 4 * 4 + child)
                    .copied()
                    .unwrap_or_else(Hash::one);
                path[slot] = Fq::from(hash).to_bytes();
                slot += 1;
            }
            index /= 4;
        }
        Ok(LeafProof {
            position,
            commitment,
            siblings,
        })
    }
}

impl Finalized {
    /// Construct a sparse block only after validating paths, padding and every shared node.
    /// `expected` must ultimately be bound to the host's independently supplied SCT root.
    pub fn checked_sparse(
        expected: Root,
        count: u32,
        proofs: &[LeafProof],
    ) -> anyhow::Result<Self> {
        use std::collections::{BTreeMap, BTreeSet};
        anyhow::ensure!(count <= 65536, "SCT block capacity exceeded");
        if count == 0 {
            anyhow::ensure!(
                proofs.is_empty() && expected.is_empty_finalized(),
                "invalid empty SCT block"
            );
        }
        let mut nodes = BTreeMap::<(u8, u64), Hash>::new();
        let mut positions = BTreeSet::new();
        let mut insert = |height: u8, index: u64, hash: Hash| -> anyhow::Result<()> {
            anyhow::ensure!(
                (index << (2 * height as u32)) < count as u64 || hash == Hash::one(),
                "invalid finalized padding"
            );
            if let Some(previous) = nodes.insert((height, index), hash) {
                anyhow::ensure!(previous == hash, "inconsistent shared SCT node");
            }
            Ok(())
        };
        for proof in proofs {
            anyhow::ensure!(
                (proof.position as u32) < count && positions.insert(proof.position),
                "duplicate or out-of-range SCT position"
            );
            let mut index = proof.position as u64;
            let mut hash = Hash::of(proof.commitment);
            insert(0, index, hash)?;
            for (height, path) in proof.siblings.iter().enumerate() {
                let mut children = [hash; 4];
                let mut slot = 0;
                for child in 0..4 {
                    if child == index % 4 {
                        continue;
                    }
                    let field = shieldd_sdk_crypto::encoding::field(&path[slot])
                        .map_err(|_| anyhow::anyhow!("noncanonical SCT sibling"))?;
                    let sibling = Hash::new(field);
                    children[child as usize] = sibling;
                    insert(height as u8, index / 4 * 4 + child, sibling)?;
                    slot += 1;
                }
                hash = Hash::node(
                    height as u8 + 1,
                    children[0],
                    children[1],
                    children[2],
                    children[3],
                );
                index /= 4;
                insert(height as u8 + 1, index, hash)?;
            }
            anyhow::ensure!(hash == expected.0, "sparse block path root mismatch");
        }
        let mut inner: Insert<complete::Top<complete::Item>> = Insert::Hash(expected.0);
        let mut index = HashedMap::default();
        for proof in proofs {
            inner = Insert::Keep(
                complete::Top::uninitialized_out_of_order_insert_commitment_owned(
                    inner,
                    proof.position as u64,
                    proof.commitment,
                ),
            );
            index.insert(proof.commitment, index::within::Block::from(proof.position));
        }
        if let Insert::Keep(tree) = &mut inner {
            for ((height, index), hash) in nodes {
                tree.unchecked_set_hash(index << (2 * height as u32), height, hash);
            }
            tree.finish_initialize();
        }
        let block = Self { index, inner };
        anyhow::ensure!(
            block.root() == expected,
            "sparse block construction changed root"
        );
        Ok(block)
    }
}

#[cfg(test)]
mod sparse_tests {
    use super::*;
    #[test]
    fn checked_sparse_preserves_witnesses_across_blocks_and_rejects_forged_paths(
    ) -> anyhow::Result<()> {
        let commitments = (1..=17u64)
            .map(|value| StateCommitment(Fq::from(value)))
            .collect::<Vec<_>>();
        let mut full = Builder::default();
        for commitment in &commitments {
            full.insert(Witness::Keep, *commitment)?;
        }
        let full = full.finalize();
        let proofs = ProofTree::new(commitments.clone(), full.root())?;
        let selected = [proofs.proof(0)?, proofs.proof(5)?, proofs.proof(16)?];
        let sparse = Finalized::checked_sparse(full.root(), 17, &selected)?;
        let mut a = crate::Tree::new();
        let mut b = crate::Tree::new();
        a.insert_block(full.clone())?;
        b.insert_block(sparse)?;
        for position in [0, 5, 16] {
            assert_eq!(
                a.witness(commitments[position]),
                b.witness(commitments[position])
            );
        }
        a.insert_block(Root(Hash::one()))?;
        b.insert_block(Root(Hash::one()))?;
        a.end_epoch()?;
        b.end_epoch()?;
        assert_eq!(a.root(), b.root());
        for position in [0, 5, 16] {
            assert_eq!(
                a.witness(commitments[position]),
                b.witness(commitments[position])
            );
        }
        let mut bad = selected.clone();
        bad[1].siblings[0][0] = Fq::from(99u64).to_bytes();
        assert!(Finalized::checked_sparse(full.root(), 17, &bad).is_err());
        assert!(Finalized::checked_sparse(full.root(), 16, &selected).is_err());
        assert!(Finalized::checked_sparse(
            full.root(),
            17,
            &[selected[0].clone(), selected[0].clone()]
        )
        .is_err());
        assert!(Finalized::checked_sparse(full.root(), 0, &[]).is_err());
        Ok(())
    }
}
