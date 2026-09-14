//! Experiment 4 — sharded batch-verification throughput (BLS12-381).
//!
//! Deployment model: a validator with a backlog of proofs shards it across T
//! OS threads, each batch-verifying its own chunk inside a single-threaded
//! rayon pool. This parallelizes *everything* — Fiat-Shamir challenges,
//! Lagrange coefficients, rho sampling, MSMs, and the final pairing —
//! because the threads share nothing.
//!
//! (An earlier revision also measured "intra" mode — one T-thread
//! `batch_verify` call over a T-times-larger batch. It tracks sharded within
//! noise up to 8 threads and falls behind past that as its residual serial
//! work bites; see benches/results/experiment-4.md. The final experiment
//! presents sharded only.)
//!
//! Weak scaling: every thread always gets the same CHUNK of proofs, so
//! batch-size amortization is identical across rows and the table isolates
//! thread scaling. Experiment 2 covers amortization vs batch size, and the
//! earlier revision showed the tail past 2^16 is under 2%.
//!
//! Circuit size is irrelevant to batch verification, so the circuit is small
//! and fixed.
//!
//! This bench manages its own thread pools; `ZKPARI_BENCH_THREADS` is ignored.
//!
//! Run with: cargo bench --bench throughput

mod common;

use ark_std::rand::{rngs::StdRng, SeedableRng};
use common::*;
use rayon::prelude::*;
use std::time::Instant;
use zkpari::{Proof, Trapdoor, VerifyingKey, ZkPari};

type Claim = (Proof<E>, Vec<Fr>);

/// Circuit size only affects keygen and the sanity proof, not batch cost.
const LOG2_CONSTRAINTS: u32 = 12;
/// Proofs per thread. Experiment 2 shows amortization is nearly flat past
/// this size (4096 -> 65536 gains 23%, 65536 -> 262144 under 2%).
const CHUNK: usize = 80000;
/// The rows presented in the final experiment.
const THREAD_COUNTS: &[usize] = &[4, 8, 16, 18];
/// Samples per cell; the median absorbs the cold first pass.
const ITERS: usize = 3;

/// One simulated claim with a fresh public input, so every proof has its own
/// Fiat-Shamir challenge.
fn simulated_claim(vk: &VerifyingKey<E>, td: &Trapdoor<E>, rng: &mut StdRng) -> Claim {
    use ark_std::UniformRand;
    let x = vec![Fr::rand(rng)];
    let proof = ZkPari::<E>::simulate(td, vk, &x, rng);
    (proof, x)
}

/// Verify `threads` disjoint chunks on `threads` OS threads, one
/// single-threaded rayon pool each. Panics if any chunk fails.
fn sharded_pass(
    claims: &[Claim],
    vk: &VerifyingKey<E>,
    pools: &[rayon::ThreadPool],
    chunk: usize,
    seed: u64,
) {
    std::thread::scope(|s| {
        let handles: Vec<_> = pools
            .iter()
            .enumerate()
            .map(|(i, pool)| {
                let slice = &claims[i * chunk..(i + 1) * chunk];
                s.spawn(move || {
                    let mut rng = StdRng::seed_from_u64(seed ^ (0xD1CE << 8 | i as u64));
                    pool.install(|| ZkPari::<E>::batch_verify(slice, vk, &mut rng))
                })
            })
            .collect();
        for h in handles {
            assert!(h.join().unwrap(), "a shard failed to batch-verify");
        }
    });
}

fn single_thread_pools(n: usize) -> Vec<rayon::ThreadPool> {
    (0..n)
        .map(|_| {
            rayon::ThreadPoolBuilder::new()
                .num_threads(1)
                .build()
                .expect("failed to build a 1-thread pool")
        })
        .collect()
}

struct Cell {
    wall_ms: f64,
    proofs: usize,
}

impl Cell {
    fn per_s(&self) -> f64 {
        self.proofs as f64 / (self.wall_ms / 1000.0)
    }
    fn us_per_proof(&self) -> f64 {
        self.wall_ms * 1000.0 / self.proofs as f64
    }
}

fn measure(claims: &[Claim], vk: &VerifyingKey<E>, threads: usize, seed: u64) -> Cell {
    let pools = single_thread_pools(threads);
    let wall_ms = median_ms(ITERS, || {
        sharded_pass(&claims[..threads * CHUNK], vk, &pools, CHUNK, seed);
    });
    Cell { wall_ms, proofs: threads * CHUNK }
}

fn main() {
    let max_threads = *THREAD_COUNTS.last().unwrap();
    let pool_size = max_threads * CHUNK;
    let cores = std::thread::available_parallelism()
        .map(|n| n.get())
        .unwrap_or(0);

    println!("╔══════════════════════════════════════════════════════════════════════╗");
    println!("║  4. ZK-Pari sharded batch-verification throughput — BLS12-381        ║");
    println!("╚══════════════════════════════════════════════════════════════════════╝");
    println!();
    println!("Sharded: T OS threads, each batch-verifying its own {CHUNK}-proof");
    println!("         chunk in a single-threaded rayon pool; nothing is shared.");
    println!("Weak scaling: {CHUNK} proofs per thread.");
    println!("Sampling: median of {ITERS} passes per cell.");
    if cores > 0 && cores < max_threads {
        println!("Note: machine reports {cores} hardware threads; the {max_threads}-thread row is oversubscribed.");
    }
    println!();

    let mut rng = StdRng::seed_from_u64(20_260_826);
    let circuit = SquareChain::for_log2_constraints(LOG2_CONSTRAINTS, 3);
    eprint!("keygen ...");
    let (pk, vk, td) = ZkPari::<E>::keygen_with_trapdoor(circuit, &mut rng);

    // Sanity: a genuine proof verifies under these keys.
    let real = ZkPari::<E>::prove(circuit, &pk, &mut rng).expect("proving failed");
    assert!(
        ZkPari::<E>::verify(&real, &vk, &circuit.public_input()),
        "real proof failed to verify"
    );

    eprint!(" simulating {pool_size} claims ...");
    let sim_start = Instant::now();
    let sim_pool = rayon::ThreadPoolBuilder::new()
        .build()
        .expect("failed to build the simulation pool");
    let claims: Vec<Claim> = sim_pool.install(|| {
        (0..pool_size)
            .into_par_iter()
            .map(|i| {
                let mut rng = StdRng::seed_from_u64(0x51_4D_00_00 + i as u64);
                simulated_claim(&vk, &td, &mut rng)
            })
            .collect()
    });
    drop(sim_pool);
    eprintln!(" done in {:.1}s", sim_start.elapsed().as_secs_f64());

    // Sanity: the pool batch-verifies at all.
    assert!(
        ZkPari::<E>::batch_verify(&claims[..CHUNK], &vk, &mut rng),
        "simulated pool failed to batch-verify"
    );

    // ---- Sweep ----
    // 1-thread reference for the scaling-efficiency column; not a table row.
    eprint!("baseline (1 thread) ...");
    let baseline = measure(&claims, &vk, 1, 3);
    eprintln!(" done");

    let mut cells: Vec<Cell> = Vec::new();
    for &t in THREAD_COUNTS {
        eprint!("threads = {t} ...");
        cells.push(measure(&claims, &vk, t, 7 + t as u64));
        eprintln!(" done");
    }

    // ---- Report ----
    println!(
        "\n  baseline (1 thread): {:.1} ms, {:.2} us/proof, {:.0} proofs/s",
        baseline.wall_ms,
        baseline.us_per_proof(),
        baseline.per_s()
    );
    println!();
    println!("  threads │  wall ms │ us/proof │ proofs/s │   eff │ payments/s");
    println!("  ────────┼──────────┼──────────┼──────────┼───────┼───────────");
    for (t, c) in THREAD_COUNTS.iter().zip(&cells) {
        println!(
            "  {t:>7} │ {:>8.1} │ {:>8.2} │ {:>8.0} │ {:>4.2}x │ {:>10.0}",
            c.wall_ms,
            c.us_per_proof(),
            c.per_s(),
            c.per_s() / (baseline.per_s() * *t as f64),
            c.per_s() / 2.0,
        );
    }
    println!();
    println!("  eff = measured throughput / (baseline x T).");
    println!("  One payment = one R_send proof + one R_recv proof.");
    println!();
}
