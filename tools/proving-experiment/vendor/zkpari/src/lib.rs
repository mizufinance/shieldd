//! ZK-Pari: Pari with vanishing-polynomial masks, a zero-knowledge SNARK for
//! Square R1CS.
//!
//! This implements the masked variant of
//! [Pari](https://eprint.iacr.org/2024/1245.pdf):
//!
//! - The Square R1CS columns are interpolated over a domain `H`, and the
//!   basis is extended with two vanishing directions `h(X) * v_H(X)` with
//!   `h(X) = eta_1 + eta_2 * X` masking the A-side, giving the
//!   honest-verifier simulator independent randomness at the verifier
//!   challenge and at the SRS trapdoor.
//! - A single Glock-style opening proof batches the A-side and B-side
//!   openings, so a proof is `2 G1 + 1 F` — 128 bytes compressed on
//!   BLS12-381.
//!
//! The scheme is statistically honest-verifier zero-knowledge with simulation
//! distance at most `1 / (|F| - |H|)`.
//!
//! Verification checks the 3-pairing equation
//!
//! ```text
//! e(T, delta H) = e(U, tau H - zeta H) e(v_a alpha G + v_R beta G, H)
//! ```
//!
//! with `v_R = (v_a + x_A(zeta))^2 - x_B(zeta)` computed by the verifier
//! (`x_B = 0` after SR1CS instance outlining).
//!
//! # Circuits
//!
//! Any arkworks [`ConstraintSynthesizer`] works: circuits that natively
//! register the SR1CS predicate are used as-is, plain R1CS circuits are
//! converted by `ark_relations::sr1cs::Sr1csAdapter`. [`ZkPari::keygen`]
//! digests the constraint matrices into the verifying key (the paper's
//! `HashIdx`), so challenges — and hence proofs — are bound to the exact
//! circuit.
//!
//! With the `circuits` feature, the crate additionally ships the private
//! payment circuits from the accompanying paper (see [`circuits`]).

use ark_ec::pairing::Pairing;

pub use ark_relations::gr1cs::{ConstraintSynthesizer, ConstraintSystemRef};
use ark_std::marker::PhantomData;

mod batch_verify;
mod circuit;
#[cfg(feature = "circuits")]
pub mod circuits;
pub mod data_structures;
mod generator;
mod prover;
mod prepared;
pub use prepared::{PreparedProver, ProvingProfile};
mod simulator;
pub mod utils;
mod verifier;

#[cfg(test)]
mod test;

pub use data_structures::{Proof, ProvingKey, SuccinctIndex, Trapdoor, VerifyingKey};

/// The ZK-Pari SNARK.
pub struct ZkPari<E: Pairing> {
    _p: PhantomData<E>,
}

impl<E: Pairing> ZkPari<E> {
    /// Transcript domain separator.
    pub const SNARK_NAME: &'static [u8] = b"ZK-Pari";
}
