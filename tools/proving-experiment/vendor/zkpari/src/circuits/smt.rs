//! Sparse Merkle tree (Dahlberg–Pulls–Peeters style) for the per-account
//! nullifier sets, keyed by receipt position, with the *insertion proof
//! verified in-circuit*.
//!
//! The nullifier of a receipt is its position `pid` in the receipt log, so
//! the nullifier set is a set of positions and the tree is a fixed-depth
//! binary tree over the whole position space: depth `l` = bits of `pid`,
//! leaf `pid` holds `1` iff that receipt has been claimed, every other leaf
//! is `0`, and an empty subtree of height `h` has a fixed default digest
//! `defaults[h]` (`defaults[0] = 0`, `defaults[h+1] = H(defaults[h],
//! defaults[h])`), so the tree is never materialized — only the nodes on
//! claimed paths are stored.
//!
//! Inserting `pid` is proven by the `l` siblings on `pid`'s path alone.
//! `VerifyInsert(root, pid, pi_mt) = root'` recomputes the root twice along
//! that path: with leaf `0` (must equal `root` — the receipt was *not* yet
//! claimed) and with leaf `1` (yields `root'`). That is `2l` node hashes,
//! no comparisons, no leaf encoding, and no predecessor logic: the
//! non-membership argument is the first chain itself. Depth is fixed by the
//! position space, not by per-account activity.
//!
//! The in-circuit check [`enforce_smt_insert`] is the paper's
//! `SMT.VerifyInsert(root_null, pid, pi_MT) = root_null'` moved inside the
//! SNARK: the ledger only compares `root_null` against the committed root
//! and swaps in `root_null'` — no per-transaction hashing and no `pi_MT` on
//! the wire. Pruning (dropping already-claimed subtrees the wallet no longer
//! needs to open) is a wallet-local policy invisible to the ledger and the
//! circuit; the formal protocol simply keeps the whole tree.

use std::collections::HashMap;

use ark_ff::{One, Zero};
use ark_r1cs_std::boolean::Boolean;
use ark_r1cs_std::eq::EqGadget;
use ark_r1cs_std::fields::fp::FpVar;
use ark_r1cs_std::fields::FieldVar;
use ark_relations::gr1cs::SynthesisError;

use super::hasher::{hash, HashCfg, DOM_NODE};
use super::merkle::compute_root_with_bits;
use super::Fr;

/// Everything the prover needs to witness one insertion: the position and
/// its sibling path (`pi_MT`), plus the two roots it transitions between.
#[derive(Clone, Debug)]
pub struct SmtInsertion {
    pub old_root: Fr,
    pub new_root: Fr,
    /// The inserted position (the nullifier itself).
    pub pid: u64,
    /// Sibling digests on `pid`'s path, leaf level first; length = depth.
    pub siblings: Vec<Fr>,
}

impl SmtInsertion {
    pub fn depth(&self) -> usize {
        self.siblings.len()
    }

    /// Transient stand-in for two-phase circuit construction; replaced by
    /// `attach_*_insertion` before the circuit is ever synthesized.
    pub fn placeholder() -> Self {
        Self::disabled(0)
    }

    /// An all-zero path of the given depth for branch-disabled witnesses
    /// (the receive-side insertion in an R_op send): the gadget's root
    /// equalities are gated off there, so any siblings do.
    pub fn disabled(depth: usize) -> Self {
        Self {
            old_root: Fr::zero(),
            new_root: Fr::zero(),
            pid: 0,
            siblings: vec![Fr::zero(); depth],
        }
    }
}

/// The default digest table: `defaults[h]` is the root of an empty
/// (all-unclaimed) subtree of height `h`. Precomputed once per depth; the
/// circuit never touches it because the prover supplies the siblings.
pub fn default_digests(cfg: &HashCfg, depth: usize) -> Vec<Fr> {
    let mut defaults = Vec::with_capacity(depth + 1);
    defaults.push(Fr::zero());
    for h in 0..depth {
        let d = defaults[h];
        defaults.push(hash(cfg, DOM_NODE, &[d, d]));
    }
    defaults
}

/// Sparse Merkle tree over the `2^depth` position space, storing only the
/// nodes on claimed paths.
pub struct SparseMerkleTree {
    cfg: HashCfg,
    pub depth: usize,
    /// `(height, index) -> digest` for every node on a claimed path.
    nodes: HashMap<(usize, u64), Fr>,
    defaults: Vec<Fr>,
}

impl SparseMerkleTree {
    pub fn new(cfg: &HashCfg, depth: usize) -> Self {
        assert!(depth <= 64, "positions are u64");
        Self {
            cfg: cfg.clone(),
            depth,
            nodes: HashMap::new(),
            defaults: default_digests(cfg, depth),
        }
    }

    fn node(&self, height: usize, index: u64) -> Fr {
        *self
            .nodes
            .get(&(height, index))
            .unwrap_or(&self.defaults[height])
    }

    pub fn root(&self) -> Fr {
        self.node(self.depth, 0)
    }

    /// Whether `pid` has been claimed.
    pub fn contains(&self, pid: u64) -> bool {
        self.node(0, pid).is_one()
    }

    fn check_pid(&self, pid: u64) {
        assert!(
            self.depth == 64 || pid < (1u64 << self.depth),
            "position {pid} exceeds the tree's {}-bit position space",
            self.depth
        );
    }

    /// Sibling digests on `pid`'s path, leaf level first.
    pub fn siblings(&self, pid: u64) -> Vec<Fr> {
        self.check_pid(pid);
        (0..self.depth)
            .map(|h| self.node(h, (pid >> h) ^ 1))
            .collect()
    }

    /// Mark `pid` as claimed (it must not be already) and return the
    /// witness for the in-circuit insertion proof.
    pub fn insert(&mut self, pid: u64) -> SmtInsertion {
        self.check_pid(pid);
        assert!(!self.contains(pid), "position {pid} already claimed");
        let old_root = self.root();
        let siblings = self.siblings(pid);

        let mut node = Fr::one();
        self.nodes.insert((0, pid), node);
        for (h, sib) in siblings.iter().enumerate() {
            let index = pid >> h;
            node = if index & 1 == 1 {
                hash(&self.cfg, DOM_NODE, &[*sib, node])
            } else {
                hash(&self.cfg, DOM_NODE, &[node, *sib])
            };
            self.nodes.insert((h + 1, index >> 1), node);
        }

        SmtInsertion {
            old_root,
            new_root: self.root(),
            pid,
            siblings,
        }
    }
}

/// Native `VerifyInsert`: the root with leaf `pid` = 0 and the root with
/// leaf `pid` = 1, along the same siblings (for sanity checks).
pub fn roots_from_siblings(cfg: &HashCfg, pid: u64, siblings: &[Fr]) -> (Fr, Fr) {
    let up = |leaf: Fr| {
        let mut node = leaf;
        for (h, sib) in siblings.iter().enumerate() {
            node = if (pid >> h) & 1 == 1 {
                hash(cfg, DOM_NODE, &[*sib, node])
            } else {
                hash(cfg, DOM_NODE, &[node, *sib])
            };
        }
        node
    };
    (up(Fr::zero()), up(Fr::one()))
}

/// Enforce that claiming the position whose little-endian bits are
/// `pid_bits` transitions the sparse Merkle tree from `root_old` to
/// `root_new` — but only when `enforce` is true.
///
/// This is `SMT.VerifyInsert(root_old, pid, pi_mt) = root_new` in-circuit:
/// the same allocated `siblings` are hashed up twice, once under leaf `0`
/// (the position was unclaimed under `root_old`) and once under leaf `1`
/// (yielding `root_new`). `pid_bits.len()` is the tree depth; callers that
/// witness fewer position bits than the depth pad with constant-false bits,
/// which pins the high bits of the position to zero.
///
/// Both root equalities are gated on `enforce` (R_op's send branch disables
/// them); nothing else in the gadget constrains the witness, so a disabled
/// branch may supply any siblings at all.
pub fn enforce_smt_insert(
    cfg: &HashCfg,
    pid_bits: &[Boolean<Fr>],
    siblings: &[FpVar<Fr>],
    root_old: &FpVar<Fr>,
    root_new: &FpVar<Fr>,
    enforce: &Boolean<Fr>,
) -> Result<(), SynthesisError> {
    assert_eq!(
        pid_bits.len(),
        siblings.len(),
        "SMT depth must equal the number of position bits"
    );
    compute_root_with_bits(cfg, &FpVar::zero(), siblings, pid_bits)?
        .conditional_enforce_equal(root_old, enforce)?;
    compute_root_with_bits(cfg, &FpVar::one(), siblings, pid_bits)?
        .conditional_enforce_equal(root_new, enforce)?;
    Ok(())
}
