# Experiment 2 — batch vs individual verification (BLS12-381)

Machine: Apple M5 Pro, 18 cores
Date: 2026-09-02 (first run 2026-08-24; re-measured 2026-08-26 after the
      batch-verify optimizations, and again 2026-09-02 after committed
      inputs were removed from the library — plain ZK-Pari)
Commit: 7b1657e
Profile: `cargo bench --bench batch_verify` (release)
Threads: **single-threaded** (the default). Set `ZKPARI_BENCH_THREADS=0` for
         all cores, or `=N` for N.
Circuit:  2^12 SR1CS constraints (batch cost is independent of circuit size).
Sampling: mean over a >=150 ms budget loop.

## Results (2026-09-02, `cargo bench --bench batch_verify`)

Committed inputs are gone, so the blocks dimension of the earlier grids
collapsed: every proof is 2 G1 + 1 F and individual verification is 3
pairings.

```
Per-proof cost of individual verification (3 pairings): 711.6 us

2a. Amortised batch cost per proof: us (speedup vs individual)
          N │    wall ms │     us/proof │  speedup
  ──────────┼────────────┼──────────────┼─────────
          1 │        0.7 │       696.38 │     1.0x
        256 │        7.5 │        29.35 │    24.2x
       4096 │       63.9 │        15.59 │    45.6x
      65536 │      734.5 │        11.21 │    63.5x

2b. Where the time goes at N=65536 (ms)
  Phases are re-executed against the public API — the library carries no
  instrumentation — and their total is checked against `batch_verify`.
  challenge │ lagrange │ instance │   T~ MSM │   U~ MSM │   V~ MSM │ pairing │    sum │ measured
  ──────────┼──────────┼──────────┼──────────┼──────────┼──────────┼─────────┼────────┼─────────
       33.8 │     21.4 │      2.2 │    169.8 │    170.3 │    331.1 │    0.58 │  729.2 │    734.5
```

The three MSMs are ~92% of the total; the challenge phase (one seeded-
transcript clone + absorb per proof) is most of the rest. Relative to the
2026-08-26 zero-block row, per-proof cost improved 12.31 -> 11.21 us
(-9%), largely the challenge phase (54.7 -> 33.8 ms): with committed
inputs gone, challenge derivation no longer absorbs the per-proof `C_ci`
commitments.

## 2026-08-26 update (historical)

Two library changes made for experiment 4 moved these numbers and the
tables below were re-measured:

1. `batch_eval_last_lagrange_coeffs` now runs Montgomery batch inversion
   once per 1024-proof chunk instead of once per proof, collapsing the
   Lagrange phase from ~166 ms to ~22 ms at N=65536.
2. `batch_verify`'s per-proof phases (challenges, Lagrange, instance) are
   now rayon-parallel. Irrelevant here — this experiment is single-threaded
   and the par_iters degrade to serial at no measurable cost — but noted
   for provenance. Multi-threaded scaling lives in experiment 4.

Headline effect at 0 blocks, N=65536: **14.19 -> 12.31 us/proof (-13%)**.

## Cross-check against the batch-pari reference

The [batch-pari benchmark](https://github.com/guruvamsi-policharla/zk-pari/pull/1)
reports, on an M5 MacBook Pro with `RAYON_NUM_THREADS=1` and **BN254**:
individual 584.5 us/proof, batch 644.5 ms at N=65536 = **9.83 us/proof**, 59.4x.

This cross-check was run at commit 822027b, *before* the Lagrange
optimization, with this implementation reduced to the same three G1 MSMs
(0 committed-input blocks) on both curves:

```
ZK-Pari, 0 committed blocks, N=65536, single-threaded, pre-optimization
  BN254        individual    432.5 us/proof   batch(N=65536)     641.2 ms  =   9.78 us/proof   speedup  44.2x
  BLS12-381    individual    735.4 us/proof   batch(N=65536)     939.0 ms  =  14.33 us/proof   speedup  51.3x
```

On the same curve and same algorithm the numbers matched: **641.2 ms vs the
reference's 644.5 ms** (0.5% apart), 9.78 vs 9.83 us/proof. There was no gap
to explain. BLS12-381 costs 1.46x more than BN254 for identical work, which
is the whole difference. (Post-optimization this implementation is ~13%
faster than that baseline; the reference still ran the per-proof-inversion
variant.)

Two things worth noting for write-up:

- Our *individual* verification is faster than the reference's (432.5 vs 584.5
  us on BN254). That makes our **speedup ratio lower** while the absolute
  per-proof cost is the same. Speedup-over-individual flatters a slow
  baseline; quote absolute us/proof as the primary figure.
- The reference sets `delta_1 = 1` (its note on Fig 6 step 4), dropping a term
  from the final multi-pairing. We keep delta_1 random and add a per-block
  delta_j, so at >0 blocks we are structurally doing more pairing work.

## Methodology: simulated proof pool

Timing 65536 proofs per block count would be dominated by *proving*, so the
pool is built with `ZkPari::simulate` (documented for verifier benchmarking and
load generation).

This is sound without needing to be checked empirically. The scheme is
statistically honest-verifier zero knowledge, so simulated and real proofs are
drawn from distributions at statistical distance at most `1/(q - m)` — around
`2^-255` here — and verification performs the same value-independent sequence
of MSMs and pairings over either. Their verification costs are identical by
construction, not by coincidence.

(An earlier version of this bench measured a real batch against a simulated one
on every run. It reported differences of 0.0%, -0.1%, and -0.3% across runs,
i.e. exactly the predicted result, and was removed as redundant.)

A genuine proof is still generated and verified once, so the keys under
test are exercised by real proving.

## Earlier results (2026-08-26, committed-input build)

These tables predate the removal of committed inputs; `blocks` swept the
number of committed-input blocks, each adding one pairing to individual
verification and one N-term MSM (`C~`) to the batch. The 0-block rows are
the direct ancestors of the current results above.

```
Per-proof cost of individual verification
  blocks │ pairings │ verify us
  ───────┼──────────┼──────────
       0 │        3 │     732.2
       1 │        4 │     946.2
       2 │        5 │     999.6
       4 │        7 │    1169.5
       8 │       11 │    1601.3
      16 │       19 │    2460.5
      32 │       35 │    4477.5
      64 │       67 │    7656.0

2a. Amortised batch cost per proof: us (speedup vs individual)
  blocks │              N=1            N=256           N=4096          N=65536
  ───────┼────────────────────────────────────────────────────────────────────
       0 │    718.45 (1.0x)    30.12 (24.3x)    16.33 (44.8x)    12.31 (59.5x)
       1 │    809.86 (1.2x)    37.08 (25.5x)    20.14 (47.0x)    14.72 (64.3x)
       2 │    962.91 (1.0x)    44.39 (22.5x)    24.20 (41.3x)    17.53 (57.0x)
       4 │   1130.29 (1.0x)    58.47 (20.0x)    32.01 (36.5x)    23.25 (50.3x)
       8 │   1551.82 (1.0x)    86.86 (18.4x)    47.41 (33.8x)    34.49 (46.4x)
      16 │   2400.10 (1.0x)   143.31 (17.2x)    78.48 (31.4x)    57.12 (43.1x)
      32 │   4404.04 (1.0x)   275.41 (16.3x)   150.73 (29.7x)   109.03 (41.1x)
      64 │   7598.59 (1.0x)   482.98 (15.9x)   266.30 (28.8x)   193.99 (39.5x)

2b. Where the time goes at N=65536 (ms)
  Phases are re-executed against the public API — the library carries no
  instrumentation — and their total is checked against `batch_verify`.
  blocks │ challenge │ lagrange │ instance │   C~ MSM │   T~ MSM │   U~ MSM │   V~ MSM │ pairing │    sum │ measured
  ───────┼───────────┼──────────┼──────────┼──────────┼──────────┼──────────┼──────────┼─────────┼────────┼─────────
       0 │      54.7 │     23.5 │      2.7 │      0.0 │    176.9 │    176.4 │    344.4 │    0.60 │  779.2 │    806.5
       1 │      72.0 │     21.9 │      2.6 │    176.9 │    176.0 │    175.9 │    343.5 │    0.68 │  969.5 │    964.8
       2 │      81.4 │     21.9 │      2.6 │    357.8 │    176.9 │    178.3 │    344.0 │    0.87 │ 1163.8 │   1148.7
       4 │     110.8 │     21.9 │      2.6 │    706.8 │    175.4 │    176.1 │    342.0 │    1.07 │ 1536.7 │   1523.8
       8 │     161.2 │     21.8 │      2.6 │   1409.2 │    174.4 │    174.3 │    340.1 │    1.45 │ 2284.9 │   2260.2
      16 │     269.9 │     21.5 │      2.6 │   2821.6 │    173.5 │    174.2 │    338.9 │    2.32 │ 3804.6 │   3743.7
      32 │     569.9 │     22.8 │      2.9 │   5966.8 │    179.7 │    179.6 │    349.8 │    4.37 │ 7275.8 │   7145.3
      64 │     931.9 │     21.6 │      2.5 │  11265.8 │    173.6 │    173.5 │    340.6 │    7.52 │ 12917.1 │  12713.3

  C~ MSM is the only column that scales with the block count: one
  MSM over all N proofs per committed-input block. T~/U~ are the same
  MSM over T and U; V~ is the same again but with full-width scalars
  (rho_k * r^(k) rather than the 128-bit rho_k). The final pairing
  product is a fixed per-batch cost, which is what amortises away.
  After the Lagrange fix the MSMs are ~90% of the 0-block total; the
  challenge phase (Fiat-Shamir transcript per proof) is most of the rest.
```
