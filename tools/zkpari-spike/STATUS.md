# Spike execution status — 2026-09-13

**Stopped by user approval at the completed one-worker checkpoint.**
Both 4,096-proof corpora and all 1,680 one-worker measurements are preserved in
`cache/99228210a891ffa23aeb`. The runner received SIGINT after the final one-worker
first proof, during two-worker initialization. The runner, its workers and its
`caffeinate` process exited. No unrelated process was terminated.
Automation `complete-shieldd-proof-spike` is **PAUSED**.

| Completed measurement | Groth16 / SnarkPack | ZK-Pari |
| --- | ---: | ---: |
| Warm proving, six scenarios × 30 | 180 | 180 |
| Individual verification, six scenarios × 30 | 180 | 180 |
| Batch cells, fifteen counts × 30 | 450 | 450 |
| Fresh-process first proofs, six scenarios × 5 | 30 | 30 |

No two-worker measurement samples were collected. The original full matrix is
therefore incomplete; this is a completed one-worker checkpoint, not completion
of the original plan. `stopped.json` records exact sample IDs, artifact and corpus
hashes, the last saved sample, and verified process/automation disposition.

## Established with real Transfer proofs

- BLS12-377 works with the pinned ZK-Pari implementation and the imported
  Shieldd Transfer relation. No alternate curve or toy performance circuit was used.
- The original relation has 163,396 constraints and 150,904 wires, including
  the constant and single public statement hash. Conversion produces 326,795
  Square-R1CS constraints. Domains are 262,144 for Groth16 and 524,288 for
  ZK-Pari, whose multiplication FFT domain reaches 1,048,576.
- Full assignments and real proofs passed for all six positive scenarios.
  Wrong statement/key, malformed proof, invalid batch item and incorrect wire
  mapping checks passed in the completed feasibility/correctness runs.
- The final verifier-only workers accepted genuine proofs from all six scenarios
  and valid batches of 1, 2, 3 and 6 proofs. Their negative suites passed.
  The baseline padding parity test passed at every requested count through 4,096.
- Individual compressed proofs are 192 bytes for Groth16 and 128 for ZK-Pari.
  Development ZK-Pari proving keys are approximately 110 MiB compressed;
  the pinned Groth16 proving key is approximately 40 MiB.

The existing over-limit accumulator fixture is deliberately invalid. It remains
a negative test. A separate valid disclosure witness is generated in the cache
using the existing builder and an independent seed; it shares the disclosure
branch with the flagged fixture. Bundled fixtures and circuits are unchanged.

## Preliminary observations, not benchmark conclusions

One completed correctness run observed approximately 1.85–1.87 seconds per
complete Groth16 request and 9.19–9.37 seconds per complete ZK-Pari request with
two threads. The candidate included approximately 2.2–2.3 seconds of development
bridge validation. These observations lack the planned balanced 30-sample design.
They do not establish a speedup, reliable tail latency, phone acceptability or TPS.

Checked loading of the candidate's large proving key also took substantial time;
the runner records that separately and includes it in fresh-process first proofs.
Verification-only workers load no proving key, circuit or Go solver.

## Verification completed

- Go helper tests: full solved assignment, constant/public ordering, five bundled
  positive fixtures, invalid accumulator rejection and altered statement rejection.
- Rust adapter tests: checked scalar decoding and invalid wire-index rejection.
- Baseline adapter test: statement-only padding agrees with the shipping
  preparation path for all 15 requested counts.
- Python runner tests: ten tests covering cache corruption, duplicate proof
  bytes, interrupted sample appends, backend ordering, bootstrap statistics,
  aggregate-verifier payloads, competing-process detection and transient versus
  sustained CPU load. The transient UI false alarm was reproduced before fixing it.
- Existing release checks: canonical deployed keys, proof-key registry,
  SnarkPack preflight, production SRS registry and padding invariants.
- Optimized candidate and baseline binaries built successfully.

The production ignored real-prover test suite was **not** run; the spike itself
generated and checked real proofs. No formal verification tools or evidence were
added to this repository.

## Disposition and next experiment

The user approved ending this campaign and sharing the
[new proving-time experiment](../../docs/research/zkpari-proving-experiment.md).
It compares current Groth16, optimized current gnark/BLS12-377 ZK-Pari, and the
full native Commonware/BLS12-381 stack, desktop first and then physical phones.
The user subsequently authorized the new experiment, which is in progress in
`tools/proving-experiment`. This stopped campaign remains preserved.

The existing report remains partial. Its plotting path fails for an unmeasured
profile and needs a reporting-only fix before a complete checkpoint plot set can
be exported. A possible resource-monitor worker-registration race is also noted
in the recovery records for later testing. These do not alter the preserved
proofs or completed raw samples. Keep this cache intact when developing the new
experiment and use a new source identity.

Shutdown verification checked artifact/binary hashes, both corpus hashes and
the exact expected set of 1,680 unique sample IDs. No additional proof generation,
cryptographic verification suite or formal checks ran during shutdown.
See [README.md](README.md) for timing boundaries and output locations.
