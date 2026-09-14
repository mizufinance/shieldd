//! Experiment 1a — prover cost against circuit size (BLS12-381).
//!
//! Sweeps a native-SR1CS squaring chain over powers of two and reports
//! key generation, proving, and verification cost. The circuit is chosen so
//! the constraint count lands *exactly* on a power of two, which makes the
//! evaluation domain (and hence every FFT and MSM length) exactly `m`:
//! `chain_len` squarings + 1 output-binding row + 2 instance-outlining rows.
//!
//! Reading the numbers:
//!   - Proving is O(m log m) FFTs plus O(m) MSM work; the `ns/constraint`
//!     column exposes how much of the growth is the log factor.
//!   - Verification and proof size are independent of `m` — both are flat
//!     down the table, which is the point of the scheme. `proof B` is the
//!     compressed encoding, exactly the proof's elements `2 G1 + 1 F`.
//!   - `prove` includes circuit synthesis (constraint generation and witness
//!     assignment), which the library does not separate out. For this chain
//!     circuit synthesis is trivial arithmetic, so the column is dominated by
//!     the cryptographic work.
//!
//! Threads: single-threaded by default. Set `ZKPARI_BENCH_THREADS=0` for all
//! cores, or `=N` for N.
//!
//! Run with: cargo bench --bench prover

mod common;

use ark_std::rand::{rngs::StdRng, SeedableRng};
use common::*;
use zkpari::ZkPari;

/// log2 of the SR1CS constraint count. 2^20 needs ~2.5 GB peak RSS; going
/// beyond that is memory-bound rather than time-bound on a laptop.
const LOG2_SIZES: &[u32] = &[10, 12, 14, 16, 18, 20];

/// Proving iterations to take the median over; large circuits get fewer.
fn iters_for(log2: u32) -> usize {
    match log2 {
        0..=14 => 3,
        15..=18 => 3,
        _ => 3,
    }
}

struct Row {
    log2: u32,
    constraints: usize,
    domain: usize,
    keygen_ms: f64,
    prove_ms: f64,
    verify_us: f64,
    proof_bytes: usize,
}

fn main() {
    in_bench_pool(run);
}

fn run() {
    println!("╔══════════════════════════════════════════════════════════════════════╗");
    println!("║  1a. ZK-Pari prover cost vs circuit size — BLS12-381                 ║");
    println!("╚══════════════════════════════════════════════════════════════════════╝");
    println!();
    println!("Threads: {}.", thread_label());
    println!("Circuit: native-SR1CS squaring chain, w_i = w_{{i-1}}^2, final value");
    println!("         bound to the single public input. Constraint count is exact");
    println!("         (= domain size).");
    println!();

    let mut rows = Vec::new();

    for &log2 in LOG2_SIZES {
        let circuit = SquareChain::for_log2_constraints(log2, 3);
        let public_input = circuit.public_input();
        let iters = iters_for(log2);

        eprint!("  2^{log2:<2} keygen ...");
        let mut rng = StdRng::seed_from_u64(20_260_824 + u64::from(log2));
        let mut keys = None;
        let keygen_ms = median_ms(1, || {
            keys = Some(ZkPari::<E>::keygen(circuit, &mut rng));
        });
        let (pk, vk) = keys.unwrap();

        eprint!(" prove x{iters} ...");
        let mut proof = None;
        let prove_ms = median_ms(iters, || {
            proof = Some(ZkPari::<E>::prove(circuit, &pk, &mut rng).expect("proving failed"));
        });
        let proof = proof.unwrap();
        assert!(
            ZkPari::<E>::verify(&proof, &vk, &public_input),
            "sanity verification failed at 2^{log2}"
        );

        eprint!(" verify ...");
        let verify_us = 1000.0
            * time_ms(100, 500, || {
                std::hint::black_box(ZkPari::<E>::verify(&proof, &vk, &public_input));
            });
        eprintln!(" done");

        rows.push(Row {
            log2,
            constraints: vk.succinct_index.num_constraints,
            domain: vk.domain.size as usize,
            keygen_ms,
            prove_ms,
            verify_us,
            proof_bytes: compressed_size(&proof),
        });
    }

    println!();
    println!("  size │ constraints │  domain │  keygen ms │   prove ms │ prove ns/cons │ verify us │ proof B");
    println!("  ─────┼─────────────┼─────────┼────────────┼────────────┼───────────────┼───────────┼────────");
    for r in &rows {
        println!(
            "  2^{:<2} │ {:>11} │ {:>7} │ {:>10.1} │ {:>10.1} │ {:>13.1} │ {:>9.1} │ {:>6}",
            r.log2,
            r.constraints,
            r.domain,
            r.keygen_ms,
            r.prove_ms,
            r.prove_ms * 1e6 / r.constraints as f64,
            r.verify_us,
            r.proof_bytes,
        );
    }

    println!();
    println!("  Scaling factor per 4x circuit size (ideal linear = 4.00x)");
    println!("  step          │ keygen │  prove");
    println!("  ──────────────┼────────┼───────");
    for w in rows.windows(2) {
        let (a, b) = (&w[0], &w[1]);
        println!(
            "  2^{:<2} -> 2^{:<2}  │ {:>5.2}x │ {:>5.2}x",
            a.log2,
            b.log2,
            b.keygen_ms / a.keygen_ms,
            b.prove_ms / a.prove_ms,
        );
    }
    println!();
}
