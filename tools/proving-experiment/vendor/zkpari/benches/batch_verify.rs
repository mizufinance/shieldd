//! Experiment 2 — batch verification vs individual verification (BLS12-381).
//!
//! 2a: amortised cost per proof against batch size, each cell annotated with
//!     its speedup over verifying one at a time. Total wall clock
//!     (per-proof * N) is not printed separately.
//! 2b: a phase breakdown at the largest batch, showing where the time goes.
//!
//! Batch verification replaces N independent 3-pairing checks with a single
//! one, by taking a random linear combination with 128-bit coefficients. The
//! fixed cost of that one pairing product amortises away as N grows, leaving
//! per-proof cost dominated by the MSMs.
//!
//! **Proof pool.** Timing N = 65536 proofs would be dominated by *proving*,
//! not verifying, so the pool is built with `ZkPari::simulate`, which the
//! library documents for exactly this (verifier benchmarking and load
//! generation). This is sound for free: the scheme is statistically
//! honest-verifier zero knowledge, so simulated and real proofs are drawn from
//! distributions at statistical distance at most `1/(q - m)`, and verification
//! performs the same value-independent sequence of MSMs and pairings over
//! either. A genuine proof is still generated and verified once, so the keys
//! under test are exercised by real proving.
//!
//! Batch-verification cost is independent of circuit size, so the circuit is
//! held small and fixed.
//!
//! Threads: single-threaded by default. Set `ZKPARI_BENCH_THREADS=0` for all
//! cores, or `=N` for N.
//!
//! Run with: cargo bench --bench batch_verify

mod common;

use ark_ec::pairing::Pairing;
use ark_ec::VariableBaseMSM;
use ark_ff::{Field, PrimeField, Zero};
use ark_std::rand::{rngs::StdRng, SeedableRng};
use common::*;
use std::io::Write;
use zkpari::utils::msm_bigint_wnaf;
use zkpari::{Proof, Trapdoor, VerifyingKey, ZkPari};

/// Per-phase costs of one batch verification, in microseconds.
///
/// The library itself carries no instrumentation — `batch_verify` is plain
/// production code — so this bench re-executes the same phases against the
/// public API and times each. [`phase_breakdown`] asserts its total against a
/// real `batch_verify` call, which catches the reconstruction drifting away
/// from what the library actually does.
#[derive(Default, Clone, Copy)]
struct Phases {
    challenge: f64,
    lagrange: f64,
    instance: f64,
    t_msm: f64,
    u_msm: f64,
    v_msm: f64,
    pairing: f64,
}

impl Phases {
    fn total(&self) -> f64 {
        self.challenge
            + self.lagrange
            + self.instance
            + self.t_msm
            + self.u_msm
            + self.v_msm
            + self.pairing
    }
}

/// Time each phase of batch verification, mirroring `ZkPari::batch_verify`.
fn phase_breakdown(pool: &[Claim], vk: &VerifyingKey<E>, batch_ms: f64) -> Phases {
    use ark_std::rand::RngCore;
    fn ms(f: impl FnMut()) -> f64 {
        time_ms(120, 20, f)
    }

    let n = pool.len();
    let mut rng = StdRng::seed_from_u64(7);

    // Values later phases consume, computed once outside the timing loops.
    let challenges: Vec<Fr> = pool.iter().map(|(p, x)| fs_challenge(vk, x, p)).collect();
    // 128-bit, exactly as `batch_verify` samples them. Using full-width
    // scalars here would inflate every MSM phase by ~2x, since ark-ec's MSM
    // skips the all-zero high windows that 128-bit values leave empty.
    let rhos: Vec<Fr> = (0..n)
        .map(|_| {
            let mut b = [0u8; 16];
            rng.fill_bytes(&mut b);
            Fr::from_le_bytes_mod_order(&b)
        })
        .collect();
    let t_bases: Vec<_> = pool.iter().map(|(p, _)| p.t_g).collect();
    let u_bases: Vec<_> = pool.iter().map(|(p, _)| p.u_g).collect();
    let instance_size = vk.succinct_index.instance_len;
    let start_ind = vk.succinct_index.num_constraints - instance_size;
    let lagrange_args = (&vk.domain, &challenges, start_ind, instance_size);
    let coeffs = ZkPari::<E>::batch_eval_last_lagrange_coeffs::<Fr>(
        lagrange_args.0,
        lagrange_args.1,
        lagrange_args.2,
        lagrange_args.3,
    )
    .expect("no challenge lands in the domain");

    // The final multi-pairing has 3 terms; the G1 side's exact values do not
    // affect its cost, only the term count.
    let g1 = [
        t_bases[0],
        u_bases[0],
        msm_bigint_wnaf::<G1>(
            &[u_bases[0], vk.alpha_g, vk.beta_g],
            &[Fr::ONE.into(), Fr::ONE.into(), Fr::ONE.into()],
        )
        .into(),
    ];
    let g2 = [
        vk.delta_h_prep.clone(),
        vk.tau_h_prep.clone(),
        vk.h_prep.clone(),
    ];

    let phases = Phases {
        challenge: ms(|| {
            let c: Vec<Fr> = pool.iter().map(|(p, x)| fs_challenge(vk, x, p)).collect();
            let _ = std::hint::black_box(c);
        }),
        lagrange: ms(|| {
            let _ = std::hint::black_box(ZkPari::<E>::batch_eval_last_lagrange_coeffs::<Fr>(
                lagrange_args.0,
                lagrange_args.1,
                lagrange_args.2,
                lagrange_args.3,
            ));
        }),
        instance: ms(|| {
            let mut v_rs = Vec::with_capacity(n);
            for ((proof, x), lc) in pool.iter().zip(&coeffs) {
                let x_a = lc
                    .iter()
                    .zip(core::iter::once(Fr::ONE).chain(x.iter().copied()))
                    .fold(Fr::zero(), |acc, (l, v)| acc + *l * v);
                v_rs.push((x_a + proof.v_a).square());
            }
            let _ = std::hint::black_box(v_rs);
        }),
        t_msm: ms(|| {
            let _ = std::hint::black_box(msm(&t_bases, &rhos));
        }),
        u_msm: ms(|| {
            let _ = std::hint::black_box(msm(&u_bases, &rhos));
        }),
        v_msm: ms(|| {
            let rho_r: Vec<Fr> = rhos.iter().zip(&challenges).map(|(a, b)| *a * *b).collect();
            let _ = std::hint::black_box(msm(&u_bases, &rho_r));
        }),
        pairing: ms(|| {
            let _ = std::hint::black_box(E::multi_pairing(g1, g2.clone()));
        }),
    };

    // Guard against this reconstruction drifting from `batch_verify`.
    let ratio = phases.total() / batch_ms;
    assert!(
        (0.8..1.25).contains(&ratio),
        "phase breakdown sums to {:.1} ms but batch_verify took {batch_ms:.1} ms \
         (ratio {ratio:.2}) — the reconstruction no longer mirrors the library",
        phases.total()
    );
    phases
}

/// Fiat-Shamir challenge, exactly as verification derives it: clone the
/// transcript the key seeded with itself, then absorb the per-proof material.
fn fs_challenge(vk: &VerifyingKey<E>, x: &[Fr], p: &Proof<E>) -> Fr {
    let mut t = vk.transcript().clone();
    t.append_serializable_element(b"input", &x.to_vec());
    t.append_serializable_element(b"comm", &p.t_g);
    t.get_and_append_challenge(b"zeta")
}

const PROOF_COUNTS: &[usize] = &[1, 256, 4096, 65536];

/// Circuit size is irrelevant to batch verification; keep it small so the
/// real-proof cross-check stays cheap.
const LOG2_CONSTRAINTS: u32 = 12;

type Claim = (Proof<E>, Vec<Fr>);
type G1 = <E as Pairing>::G1;

/// `msm_unchecked` over G1, spelled once.
fn msm(bases: &[<E as Pairing>::G1Affine], scalars: &[Fr]) -> G1 {
    <G1 as VariableBaseMSM>::msm_unchecked(bases, scalars)
}

/// One simulated claim with a fresh public input, so every proof in the pool
/// has its own Fiat-Shamir challenge.
fn simulated_claim(vk: &VerifyingKey<E>, td: &Trapdoor<E>, rng: &mut StdRng) -> Claim {
    use ark_std::UniformRand;
    let x = vec![Fr::rand(rng)];
    let proof = ZkPari::<E>::simulate(td, vk, &x, rng);
    (proof, x)
}

fn main() {
    in_bench_pool(run);
}

fn run() {
    let max_proofs = *PROOF_COUNTS.last().unwrap();

    println!("╔══════════════════════════════════════════════════════════════════════╗");
    println!("║  2. ZK-Pari batch vs individual verification — BLS12-381             ║");
    println!("╚══════════════════════════════════════════════════════════════════════╝");
    println!();
    println!("Threads: {}.", thread_label());
    println!("Circuit fixed at 2^{LOG2_CONSTRAINTS} SR1CS constraints (batch cost does not depend on it).");
    println!("Pool built with the HVZK simulator: statistically indistinguishable");
    println!("from real proofs, so verification cost is identical by construction.");
    println!();

    eprint!("keygen ...");
    std::io::stderr().flush().ok();
    let mut rng = StdRng::seed_from_u64(20_260_824);
    let circuit = SquareChain::for_log2_constraints(LOG2_CONSTRAINTS, 3);
    let (pk, vk, td) = ZkPari::<E>::keygen_with_trapdoor(circuit, &mut rng);

    // Sanity: a genuine proof of this circuit verifies under these keys.
    let real = ZkPari::<E>::prove(circuit, &pk, &mut rng).expect("proving failed");
    assert!(
        ZkPari::<E>::verify(&real, &vk, &circuit.public_input()),
        "real proof failed to verify"
    );

    eprint!(" simulating {max_proofs} ...");
    std::io::stderr().flush().ok();
    let pool: Vec<Claim> = (0..max_proofs)
        .map(|_| simulated_claim(&vk, &td, &mut rng))
        .collect();
    assert!(
        ZkPari::<E>::batch_verify(&pool, &vk, &mut rng),
        "simulated pool failed to batch-verify"
    );

    eprint!(" timing ...");
    std::io::stderr().flush().ok();
    let (p0, x0) = &pool[0];
    let single_us = 1000.0
        * time_ms(150, 2000, || {
            std::hint::black_box(ZkPari::<E>::verify(p0, &vk, x0));
        });
    let batch_ms: Vec<f64> = PROOF_COUNTS
        .iter()
        .map(|&n| {
            time_ms(150, 200, || {
                assert!(ZkPari::<E>::batch_verify(&pool[..n], &vk, &mut rng));
            })
        })
        .collect();

    let full_batch_ms = *batch_ms.last().unwrap();
    let phases = phase_breakdown(&pool, &vk, full_batch_ms);
    eprintln!(" done");

    println!("\nPer-proof cost of individual verification (3 pairings): {single_us:.1} us");

    println!("\n2a. Amortised batch cost per proof: us (speedup vs individual)");
    println!("  {:>9} │ {:>10} │ {:>12} │ {:>8}", "N", "wall ms", "us/proof", "speedup");
    println!("  ──────────┼────────────┼──────────────┼─────────");
    for (&ms, &n) in batch_ms.iter().zip(PROOF_COUNTS) {
        let per_proof = ms * 1000.0 / n as f64;
        println!(
            "  {n:>9} │ {ms:>10.1} │ {per_proof:>12.2} │ {:>7.1}x",
            single_us / per_proof
        );
    }

    println!("\n2b. Where the time goes at N={max_proofs} (ms)");
    println!("  Phases are re-executed against the public API — the library carries no");
    println!("  instrumentation — and their total is checked against `batch_verify`.");
    println!("  challenge │ lagrange │ instance │   T~ MSM │   U~ MSM │   V~ MSM │ pairing │    sum │ measured");
    println!("  ──────────┼──────────┼──────────┼──────────┼──────────┼──────────┼─────────┼────────┼─────────");
    println!(
        "  {:>9.1} │ {:>8.1} │ {:>8.1} │ {:>8.1} │ {:>8.1} │ {:>8.1} │ {:>7.2} │ {:>6.1} │ {:>8.1}",
        phases.challenge,
        phases.lagrange,
        phases.instance,
        phases.t_msm,
        phases.u_msm,
        phases.v_msm,
        phases.pairing,
        phases.total(),
        full_batch_ms,
    );
    println!();
    println!("  T~/U~ are the same MSM over T and U; V~ is the same again but with");
    println!("  full-width scalars (rho_k * zeta^(k) rather than the 128-bit rho_k).");
    println!("  The final pairing product is a fixed per-batch cost, which is what");
    println!("  amortises away.");
    println!();
}
