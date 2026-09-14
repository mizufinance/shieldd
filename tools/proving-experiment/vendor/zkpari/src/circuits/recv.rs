//! The paper's receive relation R_recv, as an R1CS gadget circuit.
//!
//! Statement (public inputs, in the paper's order):
//!   x_r = (R, com, com', root_rho)
//! Witness:
//!   w_r = (b, root_null, root_null', r, r', rho, pid, pi_mmr, pi_mt,
//!          v, S, r'')
//! Constraints:
//!   com  = Com_acct(b, root_null; r)
//!   com' = Com_acct(b + v, root_null'; r')
//!   rho  = Com_rec(v, S, R; r'')
//!   mmr.Verify(root_rho, rho, pid, pi_mmr) = 1
//!   SMT.VerifyInsert(root_null, pid, pi_mt) = root_null'
//!   v >= 0   and   b, v, b + v in [0, 2^64)
//!
//! The nullifier *is* the receipt's position `pid` (`pos` in this code):
//! there is no PRF and no per-account key. Nullifiers are never published —
//! they live only inside the receiver's committed sparse Merkle tree and
//! inside proofs — so pseudorandomness would buy nothing; soundness relies
//! only on positions being unique, which the MMR opening already binds.
//! Both tree roots are witnesses: they live inside the account commitment,
//! so the account's entire public state is one commitment and neither the
//! position nor a tree root appears on the wire. Positions are unique, so
//! distinct receipts get distinct nullifiers and no send can block a
//! pending payment (the Faerie-Gold hedge), while the leaf-`0` chain of the
//! SMT insertion makes a double-receive unwitnessable.
//!
//! The membership path's left/right ordering is driven by the bits of the
//! witnessed `pos` (allocated once), and the *same* bits select the SMT
//! path — so the position the MMR opening binds and the position the
//! nullifier tree records are the same integer, and a proof for the right
//! receipt at a wrong position cannot exist. The SMT's depth is the width
//! of the position space (fixed for the system's lifetime) and may exceed
//! the receipt-tree depth; the extra high bits are constant zero.
//!
//! The one remaining native check: `root_rho` is a *revealed anchor* — the
//! receiver computes pi_mmr from the public receipt log against a recent
//! root, and the ledger checks `root_rho` against its retained root history
//! (the W most recent roots) natively.

use ark_r1cs_std::alloc::AllocVar;
use ark_r1cs_std::boolean::Boolean;
use ark_r1cs_std::eq::EqGadget;
use ark_r1cs_std::fields::fp::FpVar;
use ark_relations::gr1cs::{ConstraintSynthesizer, ConstraintSystemRef, SynthesisError};

use super::hasher::{hash, hash_var, HashCfg, DOM_ACCT, DOM_REC};
use super::merkle::{alloc_siblings, compute_root_with_bits, MerklePath, MerkleTree};
use super::smt::{enforce_smt_insert, SmtInsertion, SparseMerkleTree};
use super::{alloc_position_bits, enforce_range_64, Fr};

#[derive(Clone)]
pub struct RecvCircuit {
    pub cfg: HashCfg,
    /// Acting receiver identifier (public).
    pub rec: Fr,
    /// Revealed anchor of the receipt tree (public; checked against the
    /// ledger's root history natively).
    pub root: Fr,
    /// Current balance.
    pub b: u64,
    /// Received amount.
    pub v: u64,
    /// Opening randomness: old account, new account, receipt.
    pub r: Fr,
    pub r_new: Fr,
    pub r_receipt: Fr,
    /// Sender identifier inside the receipt.
    pub sen: Fr,
    /// Position of the receipt in the MMR (witness) — the paper's `pid`,
    /// which is also the nullifier.
    pub pos: u64,
    /// Membership path of the receipt under `root`; its length is the
    /// receipt-tree depth and is fixed at keygen time. Only the siblings
    /// are used — the ordering comes from the bits of `pos`.
    pub path: MerklePath,
    /// Witness for marking `pos` claimed in the receiver's nullifier tree;
    /// fixes that tree's depth and carries (root_null, root_null').
    pub null_insert: SmtInsertion,
}

impl RecvCircuit {
    /// A satisfiable instance of the given depths, for keygen and
    /// constraint counting.
    pub fn blank(cfg: &HashCfg, receipt_depth: usize, null_depth: usize) -> Self {
        let mut receipt_tree = MerkleTree::new(cfg, receipt_depth);
        let mut null_tree = SparseMerkleTree::new(cfg, null_depth);
        let mut blank = Self {
            cfg: cfg.clone(),
            rec: Fr::from(0u64),
            root: Fr::from(0u64),
            b: 0,
            v: 1,
            r: Fr::from(0u64),
            r_new: Fr::from(0u64),
            r_receipt: Fr::from(0u64),
            sen: Fr::from(0u64),
            pos: 0,
            path: MerklePath {
                siblings: vec![],
                index_bits: vec![],
            },
            null_insert: SmtInsertion::placeholder(),
        };
        blank.pos = receipt_tree.append(blank.receipt()) as u64;
        blank.root = receipt_tree.root();
        blank.path = receipt_tree.path(blank.pos as usize);
        blank.attach_nullifier_insertion(&mut null_tree);
        blank
    }

    /// Mark the receipt's position as claimed in the receiver's nullifier
    /// tree (mutating the receiver-side state) and attach the insertion
    /// witness. Requires `pos` to be final.
    pub fn attach_nullifier_insertion(&mut self, null_tree: &mut SparseMerkleTree) {
        self.null_insert = null_tree.insert(self.pos);
    }

    pub fn com(&self) -> Fr {
        hash(
            &self.cfg,
            DOM_ACCT,
            &[Fr::from(self.b), self.null_insert.old_root, self.r],
        )
    }

    pub fn com_new(&self) -> Fr {
        let b_new = Fr::from(self.b) + Fr::from(self.v);
        hash(
            &self.cfg,
            DOM_ACCT,
            &[b_new, self.null_insert.new_root, self.r_new],
        )
    }

    /// The receipt rho this proof consumes (must sit under `root` at `pos`).
    pub fn receipt(&self) -> Fr {
        hash(
            &self.cfg,
            DOM_REC,
            &[Fr::from(self.v), self.sen, self.rec, self.r_receipt],
        )
    }

    /// The statement, in the order the circuit allocates its inputs.
    pub fn public_input(&self) -> Vec<Fr> {
        vec![self.rec, self.com(), self.com_new(), self.root]
    }
}

impl ConstraintSynthesizer<Fr> for RecvCircuit {
    fn generate_constraints(self, cs: ConstraintSystemRef<Fr>) -> Result<(), SynthesisError> {
        // Statement, allocated first, in the paper's order:
        // (R, com, com', root_rho). Both tree roots are witnesses, bound
        // inside the account commitments.
        let rec = FpVar::new_input(cs.clone(), || Ok(self.rec))?;
        let com = FpVar::new_input(cs.clone(), || Ok(self.com()))?;
        let com_new = FpVar::new_input(cs.clone(), || Ok(self.com_new()))?;
        let root = FpVar::new_input(cs.clone(), || Ok(self.root))?;

        // Witness: (b, root_null, root_null', r, r', ..., v, S, r'').
        let b = FpVar::new_witness(cs.clone(), || Ok(Fr::from(self.b)))?;
        let root_null = FpVar::new_witness(cs.clone(), || Ok(self.null_insert.old_root))?;
        let root_null_new = FpVar::new_witness(cs.clone(), || Ok(self.null_insert.new_root))?;
        let r = FpVar::new_witness(cs.clone(), || Ok(self.r))?;
        let r_new = FpVar::new_witness(cs.clone(), || Ok(self.r_new))?;
        let r_receipt = FpVar::new_witness(cs.clone(), || Ok(self.r_receipt))?;
        let sen = FpVar::new_witness(cs.clone(), || Ok(self.sen))?;
        let v = FpVar::new_witness(cs.clone(), || Ok(Fr::from(self.v)))?;

        // The position: one witnessed bit per receipt-tree level (so pos in
        // [0, 2^depth) by construction), zero-padded to the nullifier
        // tree's depth. The low bits drive the MMR path ordering; all of
        // them select the SMT path.
        let receipt_depth = self.path.siblings.len();
        let null_depth = self.null_insert.depth();
        let pid_bits = alloc_position_bits(cs.clone(), self.pos, receipt_depth, null_depth)?;

        // com = Com_acct(b, root_null; r)
        hash_var(&self.cfg, DOM_ACCT, &[b.clone(), root_null.clone(), r])?.enforce_equal(&com)?;

        // com' = Com_acct(b + v, root_null'; r') — credited balance, updated
        // nullifier-tree root.
        let b_new = &b + &v;
        hash_var(
            &self.cfg,
            DOM_ACCT,
            &[b_new.clone(), root_null_new.clone(), r_new],
        )?
        .enforce_equal(&com_new)?;

        // rho = Com_rec(v, S, R; r'')
        let receipt = hash_var(&self.cfg, DOM_REC, &[v.clone(), sen, rec, r_receipt])?;

        // mmr.Verify(root_rho, rho, pid, pi_mmr) = 1, ordered by pos bits.
        let siblings = alloc_siblings(cs.clone(), &self.path.siblings)?;
        compute_root_with_bits(&self.cfg, &receipt, &siblings, &pid_bits[..receipt_depth])?
            .enforce_equal(&root)?;

        // SMT.VerifyInsert(root_null, pid, pi_mt) = root_null': the position
        // was unclaimed under root_null (leaf-0 chain) and is claimed under
        // root_null' (leaf-1 chain), verified in-circuit — no double-receive
        // can be witnessed.
        let null_siblings = alloc_siblings(cs.clone(), &self.null_insert.siblings)?;
        enforce_smt_insert(
            &self.cfg,
            &pid_bits,
            &null_siblings,
            &root_null,
            &root_null_new,
            &Boolean::TRUE,
        )?;

        // v >= 0 and b, v, b + v in B = [0, 2^64): the b + v range check
        // rules out overflow past the balance domain. v = 0 is allowed,
        // matching the paper's relation.
        enforce_range_64(cs.clone(), &b, self.b)?;
        enforce_range_64(cs.clone(), &v, self.v)?;
        enforce_range_64(cs, &b_new, self.b.wrapping_add(self.v))?;

        Ok(())
    }
}
