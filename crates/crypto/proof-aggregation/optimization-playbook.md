# SnarkPack Optimization Playbook

Use this file to optimize the shipping SnarkPack implementation without
silently changing its verified protocol. The generated
[`operation-reduction-register.md`](formal/snarkpack/operation-reduction-register.md)
is the authoritative candidate inventory. This playbook is the implementation
and measurement loop; it does not duplicate that inventory.

The current conditional Rust → SnarkPack v1 → `Ipp.Goal` theorem is the semantic
baseline. Deployment SRS provenance remains a separate assumption and is not an
optimization task.

## Current protocol decision

Keep SnarkPack v1 for this optimization tranche. The review started above the
IPP implementation rather than assuming that IPP itself was the only target:

| Candidate | Published advantage | Decision for this branch |
| --- | --- | --- |
| [SnarkPack](https://eprint.iacr.org/2021/529) | Aggregates existing Groth16 proofs without their witnesses and preserves the deployed proof-production boundary. | Retain and reduce its exact arithmetic. |
| [Hadamard Product Arguments](https://eprint.iacr.org/2024/981) | Removes the aggregation-specific trusted setup under SXDH. | Not a throughput replacement: the reported prover time is comparable to SnarkPack and the verifier is slower. |
| [SnarkFold](https://eprint.iacr.org/2023/1946) | Constant-size proof and verifier through recursive folding. | Not a demonstrated 2× saturated-throughput win for this workload; it adds recursive-circuit proving and a different proof stack. |
| [FLIP](https://eprint.iacr.org/2024/1364) | Avoids generating all individual Groth16 proofs when one prover already owns every witness. | Different workload and setup: Shieldd aggregates already-produced proofs and does not give the aggregator their witnesses. |
| [Mira / SnarkStar](https://eprint.iacr.org/2024/2025) | Reports 5.8× faster proving than its state-of-the-art proof-aggregation baseline and constant-size proofs. | Worth a separate protocol spike, but not an in-place SnarkPack optimization: the available implementation describes itself as an academic proof of concept, and the published comparison is not an A/B against Shieldd's BLS12-377 SnarkPack path. Require a representative-corpus prototype before replacing the wire format, setup, verifier, and FV model. |

Mira is the only reviewed alternative whose published claim clears the 2×
screen. That makes it a credible follow-up experiment, not evidence that this
shipping path would gain 2×. No protocol replacement is made until the same
Shieldd corpus, curve, verifier boundary, and saturated workload demonstrate
that gain.

This tranche deliberately excludes transaction-bundle orchestration, Rayon
policy, thread counts, scheduling, and machine-specific kernels. Those are a
separate optimization session.

## Implemented exact reductions

The branch currently ships seven formally registered value-preserving
reductions before relying on timing measurements:

- Repeat-final padding is coalesced in the three initial Groth16 commitments.
  For padded length `n` and authenticated real length `m`, this removes exactly
  `3 * (n - m)` Miller-loop terms, with `(n - m)` G1 and `(n - m)` G2 additions
  used to form the shared suffix sums. The random-power `ipAb` commitment stays
  uncoalesced.
- The KZG quotient's structurally known trailing zero is omitted from both MSM
  calls. This removes exactly one G1 and one G2 MSM term per aggregate while the
  extraction witness retains the full polynomial shape.
- The four verifier GT commitment folds share one flattened scalar schedule,
  replacing four independent variable-base exponentiation traversals without
  changing challenge order.
- Every GIPA prover round shares normalization and preparation of repeated G1
  and G2 pairing operands while retaining four independent pairing results and
  the same failure order.
- BLS12-377 GT decoding uses the equivalent Frobenius/cyclotomic membership
  relation instead of generic exponentiation by the scalar-field order.
- The public-input projection streams one power recurrence through row folding
  and the terminal `r^k` value, eliminating exactly `k - 1` field
  multiplications on both the `r = 1` and `r != 1` paths.
  - BLS12-377 G1/G2 decoding uses the curve-specific endomorphism/Frobenius
    subgroup relations as sound fast filters, with generic scalar-order
    multiplication as the exact fallback. Canonical reserialization, full
    consumption, acceptance, and first-failure order remain strict.
- Shipping NoteReshape aggregation dispatches directly to the ordinary backend
  instead of collecting the full profiling timeline. The explicit profiled API
  remains available and a byte-parity test binds both paths.

The algebraic equalities and operation counts are proved in `Ipp.Optimization`,
`Ipp.Cost`, `Ipp.Bls12377GtMembership`, and
`Ipp.FastSubgroupValidation`. The generated operation register remains the
authoritative status of the Rust-refinement and cost-evidence frontier. E8's
standalone batch-inversion theorem remains a research result, but its production
integration was reverted because it did not preserve the extracted TIPP/MIPP
effect refinement.

## Count-48 milestone

Criterion was run under WSL on the same deterministic 48-proof corpus, with 10
samples, a 1-second warm-up, and a nominal 3-second measurement window. No
thread or machine policy was changed. Medians are end-to-end shipping calls:

| Family/path | Baseline | Optimized | Change |
| --- | ---: | ---: | ---: |
| Transfer aggregate | 756.85 ms | 559.39 ms | -26.09% |
| NoteReshape aggregate | 930.25 ms | 555.59 ms | -40.27% |
| ICS20 aggregate | 746.69 ms | 565.01 ms | -24.33% |
| Transfer verify | 149.97 ms | 71.545 ms | -51.96% |
| NoteReshape verify | 150.78 ms | 71.610 ms | -52.53% |
| ICS20 verify | 151.77 ms | 71.608 ms | -52.62% |

The NoteReshape total includes removal of production profiling overhead. A
focused before/after run on the already-optimized arithmetic measured that
dispatch fix alone at -37.44%. The aggregate arithmetic savings grow with the
padding gap; the GT decoding improvement is largely independent of proof count.
These timings are evidence for this milestone, not a replacement for the exact
operation-count proofs and not a 5,000-proof saturated-throughput claim.

## Start here

1. Profile the production aggregate or verify path at a representative proof
   count.
2. Select or add one candidate in the operation register.
3. Classify the change before coding.
4. Record the expected operation-vector change and affected proof graph.
5. Implement the smallest production change and an equivalence oracle when one
   is useful.
6. Confirm the proved work reduction, then measure a representative end-to-end
   A/B at the current runtime configuration.
7. Run the proof-impact and validation gates for the change class.
8. Land only a measured improvement or a materially simpler implementation.

Do not retain speculative abstractions, compatibility paths, or benchmark-only
twins after they stop serving an active A/B or equivalence purpose.

## Change classes

| Class | Examples | Required treatment |
| --- | --- | --- |
| Exact computation | MSM/fold fusion, coefficient streaming, exact pairing regrouping, fewer copies | Preserve values, errors, proof bytes, transcript bytes, and acceptance behavior. Re-establish the affected Rust refinement. |
| Scheduling or layout | Rayon scheduling, allocation, caching, prepared values | Preserve the same semantic execution. Measure both work-floor and saturated behavior; scheduling alone is not an operation-count reduction. |
| Wire encoding | Point compression or proof layout | Bump `AGGREGATE_PROTOCOL_VERSION`, regenerate fixtures, rerun two-way interoperability, and update the affected formal evidence. |
| Transcript | Labels, order, challenge preimages, nonce or field conversion | Treat as a new protocol, not an optimization of the verified protocol. Rebuild the Fiat–Shamir model and soundness composition. |
| Validation or acceptance | Batched subgroup checks, randomized equation checks, relaxed decoding | Supply an equivalence theorem or a new soundness theorem and explicit error term. Byte stability alone is insufficient. |
| Arithmetic backend | Field, curve, MSM, pairing, serialization, subgroup kernels | Supply a concrete refinement theorem or retain the exact affected Arkworks assumption. |
| SRS or deployment | Ceremony, registry, artifact loading | Track under `DEPLOYED-SRS-SOUNDNESS`; do not mix it into performance work. |

The protected transcript surface includes `encode_statement` in `statement.rs`,
the challenge context and preimage construction in `challenge.rs`, and the
family transcript digests in `transcript.rs`.

Passing byte fixtures is necessary for an exact-computation change, but it is
not a proof of validation or acceptance equivalence. A byte-stable verifier can
still accept more inputs.

## Choose work from evidence

Use both views:

- Top down: inspect `AggregateBuildBackendProfile` and
  `AggregateVerificationProfile` in `backend.rs`. Confirm the largest measured
  stage on the workload being optimized.
- Bottom up: inspect the generated operation register for an open exact-v1
  candidate with a precise target and theorem obligation.

Do not copy rankings or cost formulas into new planning files. Update
`operation-reduction-register.json`, validate the manifest, and regenerate the
register so one source remains authoritative.

Prefer an exact operation-count proof when a change removes work independently
of the machine. The current register still marks full backend cost conformance
open, so such a proof establishes a durable reduction but not a wall-clock
speedup. Use end-to-end A/B measurements at milestones instead of benchmarking
after every algebraic edit.

The completed exact-computation pass includes:

- shared GIPA GT multi-exponentiation (`E1`);
- exact pairing-term regrouping (`E2`);
- exact MSM coefficient regrouping (`E3`);
- streaming KZG coefficient construction (`E4`); and
- shared preparation of repeated GIPA pairing operands (`E5`);
- deterministic GT subgroup validation (`E7`);
- challenge batch inversion (`E8`);
- streamed public-input projection (`E9`);
- deterministic G1/G2 subgroup validation (`E10`); and
- the cross-group fold-schedule experiment (`E11`).

E1, E2, E3, E5, E7, E9, and E10 ship. E4, E6, E8, and E11 were researched
and rejected for the concrete performance or proof-integration reasons recorded
in the register; their useful standalone theorems remain negative-result
evidence without a second production path.

Randomized validation or equation batching (`P1`, `P2`) is security work. Keep
it out of the ordinary optimization loop until its error budget and theorem are
specified. Versioned candidates (`V2-*`) are separate protocol designs.

## Proof impact before implementation

Write down:

- the exact production call site;
- the operation-vector dimensions expected to decrease and any dimensions that
  may increase;
- proof and transcript byte impact;
- acceptance and failure behavior;
- the refinement theorem or assumption that must change; and
- representative proof counts and workload regime.

For Rust sources covered by modular extraction, inspect the affected graph set:

```sh
python3 crates/crypto/proof-aggregation/formal/lean-ipp/scripts/extractions.py \
  affected --base <git-ref>
```

Run only those modular proof lanes while iterating. A shared extractor,
normalizer, or source-inventory change can invalidate every graph; avoid such
changes unless the optimization genuinely needs them.

The reusable semantic targets are summarized in
[`optimization-vs-fv.md`](formal/snarkpack/optimization-vs-fv.md). Generated
handoff files are outputs: update their manifest or source evidence and
regenerate them rather than editing them directly.

## Measurement loop

The end-to-end Criterion benchmark is
`crates/crypto/proof-aggregation/benches/snarkpack.rs`. It measures aggregate
and verify for counts `1, 2, 4, 8, 48, 64` using deterministic corpus inputs.
Count 48 is an
intentional non-power-of-two case: it authenticates 48 real proofs in a padded
64-proof aggregate and exercises padding coalescing. Override the set without
editing code, including a 5,000-proof throughput corpus, with
`SNARKPACK_BENCH_COUNTS=48,5000`.

Run a matched optimized/baseline milestone:

```sh
SNARKPACK_BENCH_COUNTS=48 cargo bench -p shieldd-sdk-proof-aggregation \
  --bench snarkpack
```

Use the aggregate or verify filter when isolating one side. Record Criterion
estimates and uncertainty, the commit, toolchain, CPU, proof family, count, and
whether the corpus was already present.

For a production-path A/B, either compare two commits or use the existing
compile-time `bench-baseline` seam when it already covers the changed site:

```sh
SNARKPACK_BENCH_COUNTS=48 cargo bench -p shieldd-sdk-proof-aggregation \
  --bench snarkpack --features bench-baseline -- \
  "snarkpack verify"
```

Add a new `bench-baseline` branch only when it will be an active equivalence or
A/B oracle. Delete it after the comparison if it no longer pays for its code
surface. Never add a runtime protocol branch for benchmarking.

Do not change thread policy, scheduling, chunk thresholds, or machine-specific
kernels in this tranche. A later session will measure those independently so
their effects are not confounded with arithmetic work reduction.

A microbenchmark may diagnose a primitive, but only the end-to-end aggregate or
verify result is a shipping performance result. Reject noise and report
tradeoffs rather than summing non-independent per-change percentages.

## Implementation rules

For exact-computation changes:

1. Keep the public protocol and failure behavior unchanged.
2. Prefer a pure helper with a focused equality test when the equivalence is not
   already evident from the affected refinement theorem.
3. Cover empty/identity, zero, duplicate-base, smallest, largest supported, and
   both serial and parallel paths when relevant.
4. Keep the committed byte and transcript fixtures unchanged.
5. Update only the affected extraction/refinement evidence.

For wire changes:

1. Specify the new encoding and version before implementation.
2. Bump `AGGREGATE_PROTOCOL_VERSION`; do not assume a particular current
   numeric value in planning prose.
3. Regenerate the byte and trace fixtures through their ignored test helpers.
4. Update manifest evidence, regenerate derived handoffs, and rerun slow
   two-way interoperability.

For validation or acceptance changes, stop the performance loop until the new
acceptance relation, randomness source, query budget, and error term are
explicit. A target such as fewer final exponentiations does not justify an
unproved batching rule.

## Validation

Use the smallest focused tests while iterating, then run the gates implied by
the change:

```sh
cargo test -p shieldd-sdk-proof-aggregation --lib
cargo test -p shieldd-sdk-proof-aggregation-reference --lib
just snarkpack-invariants
cargo fmt --all -- --check
```

The production crate tests own deterministic aggregation, committed byte and
transcript fixtures, and the ordinary Groth16 oracle comparison. The reference
crate is an independent falsification and interoperability oracle, not the
protocol specification.

Before landing a semantic Rust optimization, also run:

- the affected modular extraction and Lean lanes;
- `just snarkpack-formal` when the formal boundary changed;
- `just snarkpack-slow` for wire, interoperability, or broad protocol work;
- `just snarkpack-fuzz-smoke` for parsing, shape, or decode changes; and
- `just snarkpack-dos-gate` for attacker-controlled size or latency paths.

Record which prover, release-gated, fuzz, and slow tests actually ran. Do not
infer a numerical security level from benchmark results or from the conditional
FV theorem.

## Landing rule

Land a performance change only when it has:

- an end-to-end improvement outside the measured uncertainty at representative
  counts, or a clearly simpler implementation with no material regression;
- unchanged protocol evidence or an explicit versioned protocol update;
- current affected formal evidence; and
- no obsolete baseline path, duplicated plan, or unexplained tunable.

Otherwise revert the experiment and keep only durable measurements or candidate
updates that improve the authoritative operation register.
