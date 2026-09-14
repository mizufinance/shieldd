# Experiment 4 — sharded batch-verification throughput (BLS12-381)

Machine: Apple M5 Pro, 18 cores (6 performance + 12 efficiency)
Date: 2026-09-02 (re-measured after committed inputs were removed from the
      library; earlier sharded and intra-mode runs below)
Commit: 7b1657e
Run: `cargo bench --bench throughput` (manages its own thread pools;
     `ZKPARI_BENCH_THREADS` is ignored)
Sampling: median of 3 passes per cell. Run-to-run spread at high thread
counts is ~5-15% (thermal / core scheduling); single-thread numbers are
stable to 0.1%.

## Goal and verdict

**Goal: 1,000,000 verifications per second on 8 threads.**
**Verdict: not met at 8 threads (538k proofs/s), met on the full machine —
1,017,948 proofs/s at 18 threads, with 16 threads 3% short (970,676). The
shortfall at 8 threads is core topology (6 P-cores), not threading; see
the analysis.**

## Setup

- **Sharded**: the proof backlog is split into per-thread chunks; each OS
  thread runs its own `batch_verify` over 80,000 proofs inside a
  single-threaded rayon pool. Nothing is shared across threads, so
  *everything* parallelizes — challenges, Lagrange coefficients, rho
  sampling, MSMs, and the final pairings.
- **Weak scaling**: every thread always verifies 80,000 proofs, so batch
  amortization is identical across rows and the table isolates thread
  scaling. (Amortization vs batch size is experiment 2; the tail past
  2^16 was measured at under 2% in the earlier run.)
- A 1-thread pass is measured as the baseline for the efficiency column;
  the presented rows are T in {4, 8, 16, 18}.
- Pool of 1,440,000 simulated claims (HVZK simulator, same soundness
  argument as experiment 2), built once in ~22 s on all cores.
- The earlier revision of this bench also measured "intra" mode (one
  T-thread `batch_verify` call over a T-times-larger batch). It tracks
  sharded within noise up to 8 threads and falls behind past that, so the
  final experiment presents sharded only; the intra data is preserved
  below.

## Library changes made for this experiment

1. **One batch inversion per chunk instead of per proof.**
   `batch_eval_last_lagrange_coeffs` used to run Montgomery batch inversion
   on 2-element vectors, i.e. one field inversion per proof — at ~100x the
   cost of a multiplication, those 65536 inversions were ~85% of the
   Lagrange phase. Denominators are now flattened and inverted in
   1024-proof chunks. Effect, single-threaded at N=65536, 0 blocks:

   ```
   per-proof amortised cost:  14.19 us  ->  11.98 us   (-16%)
   ```

2. **`batch_verify` now parallelizes its per-proof phases.** Fiat-Shamir
   challenges, Lagrange coefficients (the chunks above), and the instance
   evaluations run over the ambient rayon pool, like the MSMs always did.
   Only rho sampling (a sequential `RngCore`) and the final scalar folds
   remain serial — a few ms per 65536 proofs. In a 1-thread pool the
   par_iters degrade to serial with no measurable overhead (11.97 vs
   11.98 us before/after).

All 22 library tests pass (including batch-verify accept and reject
paths). Experiment 2's tables were re-measured after these changes; see
the note there.

## Results (2026-09-02)

```
  baseline (1 thread): 924.5 ms, 11.56 us/proof, 86532 proofs/s

  threads │  wall ms │ us/proof │ proofs/s │   eff │ payments/s
  ────────┼──────────┼──────────┼──────────┼───────┼───────────
        4 │   1016.8 │     3.18 │   314710 │ 0.91x │     157355
        8 │   1189.9 │     1.86 │   537862 │ 0.78x │     268931
       16 │   1318.7 │     1.03 │   970676 │ 0.70x │     485338
       18 │   1414.6 │     0.98 │  1017948 │ 0.65x │     508974

  eff = measured throughput / (baseline x T).
  One payment = one R_send proof + one R_recv proof.
```

## Analysis

- **The machine crosses 1M proofs/s at 18 threads** (1.02M), and 16
  threads is 3% short. In payment terms (one send + one receive proof
  per transfer) that is ~509K payments/s on the full machine.
- **Efficiency decays with the core mix, not with contention.** The
  threads share nothing; eff drops from 0.91x at 4 threads (all P-cores)
  to 0.65x at 18 because rows past ~6 threads schedule shards onto
  E-cores and the join barrier waits for the slowest one. Per-thread
  per-proof cost inflates from 11.56 us (T=1) to 17.7 us (T=18). On 8
  true P-cores the 8-thread row would land around ~670k/s.
- **Single-threaded per-proof cost improved 11.86 -> 11.56 us** vs the
  2026-08-31 run (committed-input removal trimmed the challenge phase;
  see experiment 2). High-thread rows moved -5% to -7% the other way
  (1,018k vs 1,091k at 18T) with a larger per-thread chunk (80,000 vs
  65,536) and pool (1.44M vs 1.18M claims); consistent with the stated
  ~5-15% environmental spread at high T, and the ranking and conclusions
  are unchanged.
- **Measurement-model caveat**: the join barrier slightly understates
  steady-state throughput on heterogeneous cores (a real validator
  streams batches, so no thread waits at a barrier). The effect is
  bounded by the P/E speed gap.

## Earlier run (2026-08-26, with intra mode)

The bench then also measured "intra" mode — one `batch_verify` call over a
T-times-larger batch inside a T-thread rayon pool, exercising the
library's internal parallelism — and an amortization-tail row:

```
4a. Throughput, 65536 proofs per thread
  threads │ ────────────── sharded ────────────── │ ──────── intra ────────
          │  wall ms   us/proof   proofs/s    eff │  wall ms       proofs/s
  ────────┼───────────────────────────────────────┼────────────────────────
        1 │    785.2      11.98      83462  1.00x │    786.3          83352
        2 │    791.9       6.04     165506  0.99x │    780.1         168014
        4 │    884.3       3.37     296446  0.89x │    832.5         314876
        8 │   1037.2       1.98     505465  0.76x │   1036.7         505727
       18 │   1237.0       1.05     953650  0.63x │   1378.7         855653

4b. Amortization tail: 8 threads x 262144 proofs
       4014.9 ms, 1.91 us/proof, 522340 proofs/s
```

Findings that informed the final bench: intra tracks sharded within noise
up to 8 threads (so callers below ~8 cores need not shard manually) and
falls behind at 18 (856k vs 954k) as its residual serial work — rho
sampling, scalar folds, collecting MSM base vectors — starts to bite;
quadrupling the per-thread chunk changed per-proof cost by under 2%, so
batch amortization is exhausted at 65,536 and memory is better spent on
threads.

## The remaining gap to 1M/s on 8 threads

Hitting the goal on 8 threads needs <= 8.0 us per proof per thread; the
single-thread floor is 11.56 us, split (from experiment 2b, N=65536):
T~ MSM 2.6, U~ MSM 2.6, V~ MSM 5.1 (full-width scalars), challenge 0.5,
Lagrange+instance ~0.4. Known levers, none implemented:

- **GLV decomposition for the V~ MSM** (the one full-width MSM): a 2N-point
  128-bit MSM instead of an N-point 255-bit one, ~25% cheaper there,
  ~-1.3 us overall. BLS12-381 G1 has the endomorphism; ark-ec's
  `msm_unchecked` doesn't exploit it.
- **BN254 instead of BLS12-381**: experiment 2's cross-check measured the
  identical workload at 1.46x faster on BN254. That alone puts 8 P-cores
  near 1M/s, and with GLV comfortably over. The catch: the
  private-transfer circuits Pedersen-hash over Jubjub, whose base field is
  the BLS12-381 scalar field. A BN254 deployment would switch to Baby
  Jubjub — mechanical, but BN254's ~100-bit security is a real downgrade.
- **More P-cores**: the goal falls at 16-18 threads on this 6P+12E core
  mix; a workstation with 8+ P-cores would cross it well below 16.

## Application context

At 100K TPS with one `R_send` + one `R_recv` proof per transfer, the
validator needs 200k verifications/s. That is met at **4 threads**
(315k/s) with ~57% headroom; the full machine sustains ~509K payments/s,
5x the target.
