//! Shared scaffolding for the ZK-Pari micro-benchmarks (BLS12-381 only).
//!
//! This module is compiled independently into each bench target, and each one
//! uses a different subset of it, so unused-item warnings here are expected.
#![allow(dead_code)]

use ark_bls12_381::Bls12_381;
use ark_ec::pairing::Pairing;
use ark_ff::Field;
use ark_relations::gr1cs::predicate::polynomial_constraint::SR1CS_PREDICATE_LABEL;
use ark_relations::gr1cs::predicate::PredicateConstraintSystem;
use ark_relations::gr1cs::{
    ConstraintSynthesizer, ConstraintSystemRef, SynthesisError, R1CS_PREDICATE_LABEL,
};
use ark_relations::lc;
use std::time::Instant;

pub type E = Bls12_381;
pub type Fr = <E as Pairing>::ScalarField;

/// A squaring chain in *native* SR1CS: `w_0 = seed`, then `w_i = w_{i-1}^2`.
///
/// Native SR1CS matters for benchmarking: it skips the R1CS-to-SR1CS
/// conversion, so the constraint count is exactly what we ask for and the
/// evaluation domain size is predictable. Every constraint is a one-term
/// linear combination on each side, so the measurement reflects the proof
/// system rather than linear-combination bookkeeping.
///
/// The chain's final value is the single public input, so `instance_len` is
/// always 2 (`[1, w_n]`) and instance outlining always appends exactly 2 rows.
#[derive(Clone, Copy)]
pub struct SquareChain {
    /// Number of squaring constraints (before instance outlining).
    pub chain_len: usize,
    pub seed: u64,
}

impl SquareChain {
    /// Chain length that yields exactly `2^log2_constraints` SR1CS constraints:
    /// `chain_len` squarings, one output-binding row, and the 2 rows instance
    /// outlining appends.
    pub fn for_log2_constraints(log2_constraints: u32, seed: u64) -> Self {
        Self {
            chain_len: (1usize << log2_constraints) - 3,
            seed,
        }
    }

    /// The public input: the chain's final value `seed^(2^chain_len)`.
    pub fn public_input<F: Field>(&self) -> Vec<F> {
        let mut v = F::from(self.seed + 2);
        for _ in 0..self.chain_len {
            v = v.square();
        }
        vec![v]
    }
}

impl<F: Field> ConstraintSynthesizer<F> for SquareChain {
    fn generate_constraints(self, cs: ConstraintSystemRef<F>) -> Result<(), SynthesisError> {
        cs.remove_predicate(R1CS_PREDICATE_LABEL);
        let _ = cs.register_predicate(
            SR1CS_PREDICATE_LABEL,
            PredicateConstraintSystem::new_sr1cs_predicate()
                .map_err(|_| SynthesisError::Unsatisfiable)?,
        );

        let mut val = F::from(self.seed + 2);
        let mut prev = cs.new_witness_variable(|| Ok(val))?;

        for _ in 1..=self.chain_len {
            val = val.square();
            let next = cs.new_witness_variable(|| Ok(val))?;
            // (w_{i-1})^2 = w_i
            cs.enforce_sr1cs_constraint(|| lc!() + prev, || lc!() + next)?;
            prev = next;
        }

        // Bind the chain's final value to the public input.
        //
        // Both sides are written as *multi-term* linear combinations on
        // purpose. ark-relations 0.6.0 returns a coefficient-1 single-variable
        // LC as the bare `Variable` instead of interning it in `lc_map`, and
        // instance outlining only rewrites variables it finds in `lc_map`. So
        // a constraint side written as exactly `lc!() + out` keeps a live
        // instance column after outlining, which keygen now rejects (see the
        // `unoutlined_instance_column_*` tests). `lc!() + prev - prev` is also
        // a zero RHS that dodges the empty-LC -> symbolic_lc(0) aliasing
        // pitfall.
        let out = cs.new_input_variable(|| Ok(val))?;
        cs.enforce_sr1cs_constraint(|| lc!() + out - prev, || lc!() + prev - prev)?;

        Ok(())
    }
}

/// Threads the benchmarks run on. Single-threaded by default, so numbers are
/// a property of the algorithm rather than of the machine's core count.
///
/// Override with `ZKPARI_BENCH_THREADS=<n>`; `0` means "all cores".
pub fn bench_threads() -> usize {
    std::env::var("ZKPARI_BENCH_THREADS")
        .ok()
        .and_then(|v| v.parse().ok())
        .unwrap_or(1)
}

/// Run `body` inside a rayon pool sized by [`bench_threads`].
///
/// `install` also governs the parallel iterators inside arkworks, so this pins
/// the whole measurement — including key generation, proving, and the MSMs
/// inside verification — to the chosen thread count.
pub fn in_bench_pool<T: Send>(body: impl FnOnce() -> T + Send) -> T {
    let pool = rayon::ThreadPoolBuilder::new()
        .num_threads(bench_threads())
        .build()
        .expect("failed to build the benchmark thread pool");
    pool.install(body)
}

/// Human-readable description of the thread setting, for bench headers.
pub fn thread_label() -> String {
    match bench_threads() {
        0 => format!("all cores ({})", rayon::current_num_threads()),
        1 => "single-threaded".to_string(),
        n => format!("{n} threads"),
    }
}

/// Run `f` repeatedly for at least `min_ms` (or `max_reps` times), returning
/// the mean milliseconds per call.
pub fn time_ms(min_ms: u128, max_reps: usize, mut f: impl FnMut()) -> f64 {
    f(); // warm up
    let start = Instant::now();
    let mut reps = 0usize;
    loop {
        f();
        reps += 1;
        if start.elapsed().as_millis() >= min_ms || reps >= max_reps {
            break;
        }
    }
    start.elapsed().as_secs_f64() * 1000.0 / reps as f64
}

/// Median of `f` over `iters` runs, in milliseconds.
pub fn median_ms(iters: usize, mut f: impl FnMut()) -> f64 {
    let mut samples: Vec<f64> = (0..iters)
        .map(|_| {
            let start = Instant::now();
            f();
            start.elapsed().as_secs_f64() * 1000.0
        })
        .collect();
    samples.sort_by(|a, b| a.partial_cmp(b).unwrap());
    samples[samples.len() / 2]
}

/// Compressed serialized size of a value, as `CanonicalSerialize` writes it.
///
/// For a proof this is exactly its elements, `2 G1 + 1 F` = 128 bytes on
/// BLS12-381 — there is no length prefix or framing overhead.
pub fn compressed_size<T: ark_serialize::CanonicalSerialize>(v: &T) -> usize {
    let mut buf = Vec::new();
    v.serialize_compressed(&mut buf).unwrap();
    buf.len()
}
