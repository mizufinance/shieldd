# Experiment 1a — prover cost vs circuit size (BLS12-381)

Machine: Apple M5 Pro, 18 cores
Date: 2026-09-02 (first run 2026-08-24; re-measured after committed inputs
      were removed from the library — plain ZK-Pari)
Commit: 7b1657e
Profile: `cargo bench` (release)
Threads: **single-threaded** (the default). Benches pin themselves to a
         1-thread rayon pool, which also governs arkworks' internal
         parallel iterators. Set `ZKPARI_BENCH_THREADS=0` for all cores,
         or `=N` for N.
Sampling: prove = median of 3; verify = mean over a >=100 ms budget loop;
          keygen = a single sample, so its scaling column carries noise.
Proof size: `proof B` is the compressed encoding, exactly the proof's
          elements 2 G1 + 1 F = 128 B (no length prefix or framing).

Experiment 1b (verifier cost vs committed-input blocks) is obsolete:
committed inputs no longer exist in the library.

## Results (`cargo bench --bench prover`)

```
  size │ constraints │  domain │  keygen ms │   prove ms │ prove ns/cons │ verify us │ proof B
  ─────┼─────────────┼─────────┼────────────┼────────────┼───────────────┼───────────┼────────
  2^10 │        1024 │    1024 │       51.4 │       46.7 │       45603.6 │     728.8 │    128
  2^12 │        4096 │    4096 │      171.3 │      146.7 │       35810.9 │     701.1 │    128
  2^14 │       16384 │   16384 │      545.0 │      504.5 │       30793.6 │     717.3 │    128
  2^16 │       65536 │   65536 │     2053.8 │     1761.8 │       26882.4 │     728.0 │    128
  2^18 │      262144 │  262144 │     7660.7 │     6024.9 │       22983.1 │     699.6 │    128
  2^20 │     1048576 │ 1048576 │    30048.7 │    22334.4 │       21299.7 │     735.0 │    128

  Scaling factor per 4x circuit size (ideal linear = 4.00x)
  step          │ keygen │  prove
  ──────────────┼────────┼───────
  2^10 -> 2^12  │  3.33x │  3.14x
  2^12 -> 2^14  │  3.18x │  3.44x
  2^14 -> 2^16  │  3.77x │  3.49x
  2^16 -> 2^18  │  3.73x │  3.42x
  2^18 -> 2^20  │  3.92x │  3.71x
```

## Reading the numbers

- Proving is O(m log m) FFTs plus O(m) MSM work; the sub-linear scaling
  steps (3.1-3.7x per 4x size) reflect fixed costs amortizing away, with
  the log factor visible in the `ns/constraint` column still falling at
  2^20.
- Verification (~0.7 ms, 3 pairings) and proof size (128 B) are flat and
  independent of circuit size, which is the point of the scheme.
- Relative to the 2026-08-24 run (one committed-input block): prove times
  moved by -3% to -5% (one fewer per-block MSM plus normal run-to-run
  variance), verification dropped ~15% (one fewer pairing: 3 instead
  of 4), and proofs shrank from 176 B to 128 B.
- `prove` includes circuit synthesis (constraint generation and witness
  assignment), which the library does not separate out; for this squaring
  chain that is trivial arithmetic.
