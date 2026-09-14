//! The paper's operation-hiding relation R_op (§"Hiding the operation
//! type"), as an R1CS gadget circuit: a witness-selected OR of the send and
//! receive branches over one shared statement, so an observer cannot tell
//! which operation a transaction performs.
//!
//! Statement (public inputs, in the paper's order):
//!   x = (A, com, com', rho, root_rho)
//! Witness:
//!   w = (op, w_op)  with  op in {send, receive} and
//!   w_send    = (b, root_null, r, r', r'', v, Rec)
//!   w_receive = (b, root_null, root_null', r, r', r''',
//!                rho_in, pid, pi_mmr, pi_mt, v, Sen, r'')
//!
//! Relation (op = send, with Sen = A):
//!   com  = Com_acct(b, root_null; r)
//!   com' = Com_acct(b - v, root_null; r')
//!   rho  = Com_rec(v, Sen, Rec, 1; r'')
//!   0 <= v <= b and b, v, b - v in [0, 2^64)
//!
//! Relation (op = receive, with Rec = A):
//!   com    = Com_acct(b, root_null; r)
//!   com'   = Com_acct(b + v, root_null'; r')
//!   rho_in = Com_rec(v, Sen, Rec, 1; r'')
//!   rho    = Com_rec(0, 0, 0, 0; r''')            [the published dummy]
//!   mmr.Verify(root_rho, rho_in, pid, pi_mmr) = 1
//!   SMT.VerifyInsert(root_null, pid, pi_mt) = root_null'
//!   v >= 0 and b, v, b + v in [0, 2^64)
//!
//! Receipts gain a trailing *type* slot: a send commits its real receipt
//! with type 1, a receive publishes a dummy fixed to type 0 and may only
//! consume receipts of type 1 — so dummies are unspendable and the receipt
//! MMR grows by exactly one leaf per operation either way.
//!
//! Circuit-wise the two branches share every gadget: a boolean selector
//! `op` muxes the balance delta, the committed nullifier roots, and the
//! published receipt's preimage, and gates the receive-only equalities (the
//! MMR root check and the SMT insertion's two root checks) via conditional
//! enforcement. Both branches therefore pay the same constraint count —
//! roughly R_recv plus one extra receipt hash — which is exactly the point:
//! cost, like everything else, is operation-independent.
//!
//! A send witness fills the receive-only slots with anything of the right
//! shape: the SMT gadget has no ungated constraints, so an all-zero sibling
//! path ([`SmtInsertion::disabled`]) and an all-zero MMR path both do.

use ark_r1cs_std::alloc::AllocVar;
use ark_r1cs_std::boolean::Boolean;
use ark_r1cs_std::eq::EqGadget;
use ark_r1cs_std::fields::fp::FpVar;
use ark_r1cs_std::fields::FieldVar;
use ark_r1cs_std::select::CondSelectGadget;
use ark_relations::gr1cs::{ConstraintSynthesizer, ConstraintSystemRef, SynthesisError};

use super::hasher::{hash, hash_var, HashCfg, DOM_ACCT, DOM_REC};
use super::merkle::{alloc_siblings, compute_root_with_bits, MerklePath, MerkleTree};
use super::smt::{enforce_smt_insert, SmtInsertion, SparseMerkleTree};
use super::{alloc_position_bits, enforce_range_64, Fr};

#[derive(Clone)]
pub struct OpCircuit {
    pub cfg: HashCfg,
    /// The branch selector `op` (witness): true = send, false = receive.
    pub is_send: bool,
    /// Acting account identifier A (public): the sender on a send, the
    /// receiver on a receive.
    pub acct: Fr,
    /// Current balance.
    pub b: u64,
    /// Amount (debited on send, credited on receive).
    pub v: u64,
    /// Opening randomness: old account, new account.
    pub r: Fr,
    pub r_new: Fr,
    /// Send: the sender's nullifier-tree root, unchanged across the send.
    /// Receive: ignored — the roots come from `null_insert`.
    pub root_null: Fr,
    /// Send: the receiver Rec (hidden in the published receipt).
    /// Receive: the sender Sen (hidden in the consumed receipt).
    pub counterparty: Fr,
    /// Real-receipt randomness r'' (published on send, consumed on receive).
    pub r_receipt: Fr,
    /// Dummy-receipt randomness r''' (receive only; ignored on send).
    pub r_dummy: Fr,
    /// Revealed receipt-tree anchor root_rho (public; constrained only on
    /// receive, but part of every statement so the ledger's root-history
    /// check is operation-independent too).
    pub root: Fr,
    /// Consumed receipt's MMR position (the nullifier) and path (receive;
    /// on send, zero bits and an all-zero path of the right depth).
    pub pos: u64,
    pub path: MerklePath,
    /// Nullifier-tree insertion witness. Real on receive; on send, an
    /// all-zero path of the right depth (branch-disabled, see
    /// [`Self::attach_dummy_insertion`]).
    pub null_insert: SmtInsertion,
}

impl OpCircuit {
    /// A satisfiable receive-branch instance of the given depths, for
    /// keygen and constraint counting (both branches share one circuit, so
    /// either would do).
    pub fn blank(cfg: &HashCfg, receipt_depth: usize, null_depth: usize) -> Self {
        let mut receipt_tree = MerkleTree::new(cfg, receipt_depth);
        let mut null_tree = SparseMerkleTree::new(cfg, null_depth);
        let mut blank = Self {
            cfg: cfg.clone(),
            is_send: false,
            acct: Fr::from(0u64),
            b: 0,
            v: 1,
            r: Fr::from(0u64),
            r_new: Fr::from(0u64),
            root_null: Fr::from(0u64),
            counterparty: Fr::from(0u64),
            r_receipt: Fr::from(0u64),
            r_dummy: Fr::from(0u64),
            root: Fr::from(0u64),
            pos: 0,
            path: MerklePath {
                siblings: vec![],
                index_bits: vec![],
            },
            null_insert: SmtInsertion::placeholder(),
        };
        blank.pos = receipt_tree.append(blank.receipt_in()) as u64;
        blank.root = receipt_tree.root();
        blank.path = receipt_tree.path(blank.pos as usize);
        blank.attach_nullifier_insertion(&mut null_tree);
        blank
    }

    /// Receive: mark the consumed receipt's position as claimed in the
    /// receiver's tree (mutating the receiver-side state) and attach the
    /// insertion witness. Requires `pos` to be final.
    pub fn attach_nullifier_insertion(&mut self, null_tree: &mut SparseMerkleTree) {
        self.null_insert = null_tree.insert(self.pos);
    }

    /// Send: attach a branch-disabled insertion witness of the nullifier
    /// tree's depth. The insert's root equalities are gated off in the send
    /// branch and nothing else in the gadget constrains the path.
    pub fn attach_dummy_insertion(&mut self, null_depth: usize) {
        self.null_insert = SmtInsertion::disabled(null_depth);
    }

    /// The nullifier root inside `com` (send: unchanged root; receive: the
    /// pre-insert root).
    fn root_null_old(&self) -> Fr {
        if self.is_send {
            self.root_null
        } else {
            self.null_insert.old_root
        }
    }

    /// The nullifier root inside `com'` (send: unchanged root; receive: the
    /// post-insert root).
    fn root_null_after(&self) -> Fr {
        if self.is_send {
            self.root_null
        } else {
            self.null_insert.new_root
        }
    }

    fn b_new(&self) -> u64 {
        if self.is_send {
            self.b.wrapping_sub(self.v)
        } else {
            self.b.wrapping_add(self.v)
        }
    }

    pub fn com(&self) -> Fr {
        hash(
            &self.cfg,
            DOM_ACCT,
            &[Fr::from(self.b), self.root_null_old(), self.r],
        )
    }

    pub fn com_new(&self) -> Fr {
        hash(
            &self.cfg,
            DOM_ACCT,
            &[Fr::from(self.b_new()), self.root_null_after(), self.r_new],
        )
    }

    /// The receipt published on the ledger: the real typed receipt on a
    /// send, the fixed-format dummy on a receive.
    pub fn receipt_out(&self) -> Fr {
        if self.is_send {
            hash(
                &self.cfg,
                DOM_REC,
                &[
                    Fr::from(self.v),
                    self.acct,
                    self.counterparty,
                    Fr::from(1u64),
                    self.r_receipt,
                ],
            )
        } else {
            hash(
                &self.cfg,
                DOM_REC,
                &[
                    Fr::from(0u64),
                    Fr::from(0u64),
                    Fr::from(0u64),
                    Fr::from(0u64),
                    self.r_dummy,
                ],
            )
        }
    }

    /// The consumed receipt rho_in (receive branch): a *type-1* receipt
    /// addressed to the acting account.
    pub fn receipt_in(&self) -> Fr {
        hash(
            &self.cfg,
            DOM_REC,
            &[
                Fr::from(self.v),
                self.counterparty,
                self.acct,
                Fr::from(1u64),
                self.r_receipt,
            ],
        )
    }

    /// The statement, in the order the circuit allocates its inputs.
    pub fn public_input(&self) -> Vec<Fr> {
        vec![
            self.acct,
            self.com(),
            self.com_new(),
            self.receipt_out(),
            self.root,
        ]
    }
}

impl ConstraintSynthesizer<Fr> for OpCircuit {
    fn generate_constraints(self, cs: ConstraintSystemRef<Fr>) -> Result<(), SynthesisError> {
        // Statement, allocated first, in the paper's order:
        // (A, com, com', rho, root_rho).
        let acct = FpVar::new_input(cs.clone(), || Ok(self.acct))?;
        let com = FpVar::new_input(cs.clone(), || Ok(self.com()))?;
        let com_new = FpVar::new_input(cs.clone(), || Ok(self.com_new()))?;
        let receipt_pub = FpVar::new_input(cs.clone(), || Ok(self.receipt_out()))?;
        let root = FpVar::new_input(cs.clone(), || Ok(self.root))?;

        // The branch selector and its complement.
        let is_send = Boolean::new_witness(cs.clone(), || Ok(self.is_send))?;
        let is_recv = !&is_send;

        // Common witness.
        let b = FpVar::new_witness(cs.clone(), || Ok(Fr::from(self.b)))?;
        let r = FpVar::new_witness(cs.clone(), || Ok(self.r))?;
        let r_new = FpVar::new_witness(cs.clone(), || Ok(self.r_new))?;
        let r_receipt = FpVar::new_witness(cs.clone(), || Ok(self.r_receipt))?;
        let r_dummy = FpVar::new_witness(cs.clone(), || Ok(self.r_dummy))?;
        let v = FpVar::new_witness(cs.clone(), || Ok(Fr::from(self.v)))?;
        let counterparty = FpVar::new_witness(cs.clone(), || Ok(self.counterparty))?;
        let root_null_old = FpVar::new_witness(cs.clone(), || Ok(self.root_null_old()))?;
        let root_null_after = FpVar::new_witness(cs.clone(), || Ok(self.root_null_after()))?;

        // The position: one witnessed bit per receipt-tree level,
        // zero-padded to the nullifier tree's depth. The low bits drive the
        // MMR path ordering; all of them select the SMT path.
        let receipt_depth = self.path.siblings.len();
        let null_depth = self.null_insert.depth();
        let pid_bits = alloc_position_bits(cs.clone(), self.pos, receipt_depth, null_depth)?;

        // com = Com_acct(b, root_null; r) — both branches.
        hash_var(
            &self.cfg,
            DOM_ACCT,
            &[b.clone(), root_null_old.clone(), r],
        )?
        .enforce_equal(&com)?;

        // b' = b - v (send) or b + v (receive); a send must leave the
        // nullifier root unchanged.
        let v_signed = FpVar::conditionally_select(&is_send, &v.negate()?, &v)?;
        let b_new = &b + &v_signed;
        root_null_after.conditional_enforce_equal(&root_null_old, &is_send)?;

        // com' = Com_acct(b', root_null'; r') — both branches.
        hash_var(
            &self.cfg,
            DOM_ACCT,
            &[b_new.clone(), root_null_after.clone(), r_new],
        )?
        .enforce_equal(&com_new)?;

        // The published receipt: (v, A, Rec, 1; r'') on a send, the dummy
        // (0, 0, 0, 0; r''') on a receive. One hash over muxed preimage.
        let zero = FpVar::zero();
        let type_pub = FpVar::from(is_send.clone());
        let v_pub = FpVar::conditionally_select(&is_send, &v, &zero)?;
        let sen_pub = FpVar::conditionally_select(&is_send, &acct, &zero)?;
        let rec_pub = FpVar::conditionally_select(&is_send, &counterparty, &zero)?;
        let rand_pub = FpVar::conditionally_select(&is_send, &r_receipt, &r_dummy)?;
        hash_var(
            &self.cfg,
            DOM_REC,
            &[v_pub, sen_pub, rec_pub, type_pub, rand_pub],
        )?
        .enforce_equal(&receipt_pub)?;

        // The consumed receipt rho_in = Com_rec(v, Sen, A, 1; r''): only a
        // *type-1* (real) receipt can be consumed, so dummies are
        // unspendable.
        let receipt_in = hash_var(
            &self.cfg,
            DOM_REC,
            &[
                v.clone(),
                counterparty,
                acct,
                FpVar::one(),
                r_receipt,
            ],
        )?;

        // mmr.Verify(root_rho, rho_in, pid, pi_mmr) = 1 — receive only.
        let siblings = alloc_siblings(cs.clone(), &self.path.siblings)?;
        compute_root_with_bits(&self.cfg, &receipt_in, &siblings, &pid_bits[..receipt_depth])?
            .conditional_enforce_equal(&root, &is_recv)?;

        // SMT.VerifyInsert(root_null, pid, pi_mt) = root_null' — both root
        // equalities gated on the receive branch.
        let null_siblings = alloc_siblings(cs.clone(), &self.null_insert.siblings)?;
        enforce_smt_insert(
            &self.cfg,
            &pid_bits,
            &null_siblings,
            &root_null_old,
            &root_null_after,
            &is_recv,
        )?;

        // b, v, b' in B = [0, 2^64): on a send the b - v range check gives
        // 0 <= v <= b; on a receive the b + v range check rules out
        // overflow. v = 0 is allowed in both branches.
        enforce_range_64(cs.clone(), &b, self.b)?;
        enforce_range_64(cs.clone(), &v, self.v)?;
        enforce_range_64(cs, &b_new, self.b_new())?;

        Ok(())
    }
}
