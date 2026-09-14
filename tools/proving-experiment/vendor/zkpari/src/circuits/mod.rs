//! The private-payment circuits from the paper (R_send, R_recv, R_op) and
//! their hash/Merkle building blocks, instantiated over BLS12-381.
//!
//! Every hash goes through [`hasher`], a single collision-resistant hash in
//! one of two interchangeable instantiations — Pedersen over Jubjub or
//! Poseidon — used for Merkle nodes and commitments alike. There is no PRF:
//! a receipt's nullifier is its position in the receipt log.
//!
//! Account commitments `Com_acct(b, root_null; r)` are hash values opened
//! in-circuit as public inputs, so a proof is the bare `2 G1 + 1 F` and
//! verification is 3 pairings.
//!
//! R_send ([`send`]) is hash-light: three commitment openings and range
//! checks, nothing else. All tree work lives in R_recv ([`recv`]): the
//! receipt's MMR opening at a witnessed position, and the insertion of that
//! position into the receiver's *user-maintained* sparse Merkle tree of
//! claimed positions ([`smt`]). The tree root lives *inside* the account
//! commitment, so an account's entire public state is one commitment; the
//! insertion proof `pi_mt` is verified **in-circuit** rather than natively,
//! and the ledger just compare-and-swaps the commitment. R_op ([`op`]) is
//! the paper's operation-hiding relation: a witness-selected OR of the send
//! and receive branches over the shared statement `(A, com, com', rho,
//! root_rho)`, so an observer cannot tell sends from receives.
//!
//! What stays native: the ledger's root-history check on the revealed
//! receipt anchor (root_rho in the W most recent roots) and registration
//! (R_reg proves knowledge of the account signing key and opens
//! `Com_acct(Init[A], root_empty; r_A)`, outside the SNARK here).

pub mod hasher;
pub mod merkle;
pub mod op;
pub mod recv;
pub mod send;
pub mod smt;

#[cfg(test)]
mod tests;

use ark_r1cs_std::alloc::AllocVar;
use ark_r1cs_std::boolean::Boolean;
use ark_r1cs_std::eq::EqGadget;
use ark_r1cs_std::fields::fp::FpVar;
use ark_relations::gr1cs::{ConstraintSystemRef, SynthesisError};

/// The scalar field the circuits are written over (BLS12-381; the Pedersen
/// hash lives on Jubjub, whose base field this is, and Poseidon runs
/// natively in it).
pub type Fr = ark_bls12_381::Fr;

/// Enforce `var` in [0, 2^64) by allocating its 64 bits (from the native
/// `value`) and constraining their recomposition to equal `var`.
/// 64 boolean constraints + 1 packing constraint.
pub fn enforce_range_64(
    cs: ConstraintSystemRef<Fr>,
    var: &FpVar<Fr>,
    value: u64,
) -> Result<(), SynthesisError> {
    let bits = (0..64)
        .map(|i| Boolean::new_witness(cs.clone(), || Ok((value >> i) & 1 == 1)))
        .collect::<Result<Vec<_>, _>>()?;
    Boolean::le_bits_to_fp(&bits)?.enforce_equal(var)
}

/// Allocate the little-endian bits of a receipt position: `receipt_depth`
/// witnessed bits (so `pos` in [0, 2^receipt_depth) by construction, and
/// the same bits drive the MMR path ordering), padded with constant-false
/// bits up to `null_depth`, the width of the nullifier tree's position
/// space. The padding pins the high bits to zero, so the position the MMR
/// opening binds and the position the nullifier tree records are the same
/// integer.
pub fn alloc_position_bits(
    cs: ConstraintSystemRef<Fr>,
    pos: u64,
    receipt_depth: usize,
    null_depth: usize,
) -> Result<Vec<Boolean<Fr>>, SynthesisError> {
    assert!(
        null_depth >= receipt_depth,
        "nullifier tree ({null_depth} bits) must cover the receipt log ({receipt_depth} bits)"
    );
    let mut bits = (0..receipt_depth)
        .map(|i| Boolean::new_witness(cs.clone(), || Ok((pos >> i) & 1 == 1)))
        .collect::<Result<Vec<_>, _>>()?;
    bits.resize(null_depth, Boolean::FALSE);
    Ok(bits)
}
