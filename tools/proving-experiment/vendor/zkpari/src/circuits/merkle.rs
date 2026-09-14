//! Fixed-depth Merkle tree over receipts (hash backend from [`super::hasher`]),
//! standing in for the receipt MMR of the paper.
//!
//! The ledger appends each receipt `rho` as a leaf; empty positions hold the
//! zero leaf. Depth is a parameter (the paper's MMR peaks are absorbed into a
//! single fixed-depth root here, which upper-bounds the in-circuit cost: a
//! real MMR membership path is at most `depth` hashes).

use ark_r1cs_std::alloc::AllocVar;
use ark_r1cs_std::boolean::Boolean;
use ark_r1cs_std::fields::fp::FpVar;
use ark_r1cs_std::select::CondSelectGadget;
use ark_relations::gr1cs::{ConstraintSystemRef, SynthesisError};

use super::hasher::{hash, hash_var, HashCfg, DOM_NODE};
use super::Fr;

/// Authentication path: sibling hashes from the leaf level up, and the
/// leaf-index bit per level (`true` = current node is the *right* child).
#[derive(Clone, Debug)]
pub struct MerklePath {
    pub siblings: Vec<Fr>,
    pub index_bits: Vec<bool>,
}

impl MerklePath {
    /// An all-zero path of the given depth (for branch-disabled witnesses,
    /// e.g. the receive-side path in an R_op send).
    pub fn empty(depth: usize) -> Self {
        Self {
            siblings: vec![Fr::from(0u64); depth],
            index_bits: vec![false; depth],
        }
    }
}

/// Append-only fixed-depth Merkle tree. Keeps every level in memory, which
/// is fine for test/benchmark-sized leaf counts: level `j` holds
/// `ceil(num_leaves / 2^j)` nodes and everything to the right is the
/// all-zero subtree `zeros[j]`.
pub struct MerkleTree {
    cfg: HashCfg,
    pub depth: usize,
    /// `levels[0]` = leaves, ..., `levels[depth]` = root (if any leaf exists).
    levels: Vec<Vec<Fr>>,
    /// `zeros[j]` = root of the all-zero subtree of height `j`.
    zeros: Vec<Fr>,
}

impl MerkleTree {
    pub fn new(cfg: &HashCfg, depth: usize) -> Self {
        let mut zeros = Vec::with_capacity(depth + 1);
        zeros.push(Fr::from(0u64));
        for j in 0..depth {
            let z = zeros[j];
            zeros.push(hash(cfg, DOM_NODE, &[z, z]));
        }
        Self {
            cfg: cfg.clone(),
            depth,
            levels: vec![Vec::new(); depth + 1],
            zeros,
        }
    }

    pub fn num_leaves(&self) -> usize {
        self.levels[0].len()
    }

    /// Append a leaf and rebuild the (sparse) upper levels.
    pub fn append(&mut self, leaf: Fr) -> usize {
        let index = self.levels[0].len();
        assert!(index < 1usize << self.depth.min(63), "tree is full");
        self.levels[0].push(leaf);
        for j in 0..self.depth {
            let next: Vec<Fr> = self.levels[j]
                .chunks(2)
                .map(|pair| {
                    let left = pair[0];
                    let right = if pair.len() == 2 {
                        pair[1]
                    } else {
                        self.zeros[j]
                    };
                    hash(&self.cfg, DOM_NODE, &[left, right])
                })
                .collect();
            self.levels[j + 1] = next;
        }
        index
    }

    pub fn root(&self) -> Fr {
        *self.levels[self.depth]
            .first()
            .unwrap_or(&self.zeros[self.depth])
    }

    /// Authentication path for the leaf at `index`.
    pub fn path(&self, index: usize) -> MerklePath {
        assert!(index < self.num_leaves(), "no leaf at index {index}");
        let mut siblings = Vec::with_capacity(self.depth);
        let mut index_bits = Vec::with_capacity(self.depth);
        for j in 0..self.depth {
            let pos = index >> j;
            let sib_pos = pos ^ 1;
            let sib = *self.levels[j].get(sib_pos).unwrap_or(&self.zeros[j]);
            siblings.push(sib);
            index_bits.push(pos & 1 == 1);
        }
        MerklePath {
            siblings,
            index_bits,
        }
    }
}

/// Native root recomputation from a leaf and its path (for sanity checks).
pub fn root_from_path(cfg: &HashCfg, leaf: Fr, path: &MerklePath) -> Fr {
    let mut node = leaf;
    for (sib, is_right) in path.siblings.iter().zip(&path.index_bits) {
        let (l, r) = if *is_right {
            (*sib, node)
        } else {
            (node, *sib)
        };
        node = hash(cfg, DOM_NODE, &[l, r]);
    }
    node
}

/// Hash `leaf` up `siblings` with the left/right ordering dictated by
/// externally supplied `bits` (little-endian leaf index). The bits come from
/// the witnessed position, so the membership proof *binds* that position;
/// the same bits select the path in the nullifier tree ([`super::smt`]).
///
/// Costs one node hash plus two conditional selects per level.
pub fn compute_root_with_bits(
    cfg: &HashCfg,
    leaf: &FpVar<Fr>,
    siblings: &[FpVar<Fr>],
    bits: &[Boolean<Fr>],
) -> Result<FpVar<Fr>, SynthesisError> {
    let mut node = leaf.clone();
    for (sib, is_right) in siblings.iter().zip(bits) {
        let left = FpVar::conditionally_select(is_right, sib, &node)?;
        let right = FpVar::conditionally_select(is_right, &node, sib)?;
        node = hash_var(cfg, DOM_NODE, &[left, right])?;
    }
    Ok(node)
}

/// Allocate only a path's siblings as witnesses (the ordering bits are
/// supplied separately, e.g. from a position decomposition).
pub fn alloc_siblings(
    cs: ConstraintSystemRef<Fr>,
    siblings: &[Fr],
) -> Result<Vec<FpVar<Fr>>, SynthesisError> {
    siblings
        .iter()
        .map(|s| FpVar::new_witness(cs.clone(), || Ok(*s)))
        .collect()
}
