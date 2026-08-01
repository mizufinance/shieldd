# SnarkPack Optimization Playbook

Use this file to optimize the shipping SnarkPack implementation without
silently changing its verified protocol. The generated
[`operation-reduction-register.md`](formal/snarkpack/operation-reduction-register.md)
is the authoritative candidate inventory. This playbook is the implementation
and measurement loop; it does not duplicate that inventory.

The current conditional Rust → SnarkPack v1 → `Ipp.Goal` theorem is the semantic
baseline. Deployment SRS provenance remains a separate assumption and is not an
optimization task.

## Start here

1. Profile the production aggregate or verify path at a representative proof
   count.
2. Select or add one candidate in the operation register.
3. Classify the change before coding.
4. Record the expected operation-vector change and affected proof graph.
5. Implement the smallest production change and an equivalence oracle when one
   is useful.
6. Measure work reduction with one Rayon thread, then measure the intended
   deployment regimes.
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

The first optimization task should normally be measurement conformance: confirm
the profile and counters for the chosen production path. The current register
marks full backend cost conformance open. An unmeasured symbolic opportunity is
not yet a performance result.

Good exact-computation investigations include:

- shared GIPA GT multi-exponentiation (`E1`);
- exact pairing-term regrouping (`E2`);
- exact MSM coefficient regrouping (`E3`);
- streaming KZG coefficient construction (`E4`); and
- elimination of a demonstrated duplicate arithmetic site (`E5`).

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
`crates/bench/benches/vanilla/snarkpack.rs`. It measures aggregate and verify for
counts `1, 2, 4, 8, 64` using deterministic corpus inputs.

Measure the work floor first:

```sh
RAYON_NUM_THREADS=1 cargo bench -p shieldd-sdk-bench --bench snarkpack -- \
  "snarkpack verify"
```

Use the aggregate filter when optimizing the prover. Record Criterion estimates
and uncertainty, the commit, toolchain, CPU, thread count, proof family, count,
and whether the corpus was already present.

For a production-path A/B, either compare two commits or use the existing
compile-time `bench-baseline` seam when it already covers the changed site:

```sh
RAYON_NUM_THREADS=1 cargo bench -p shieldd-sdk-bench --bench snarkpack \
  --features shieldd-sdk-proof-aggregation/bench-baseline -- \
  "snarkpack verify"
```

Add a new `bench-baseline` branch only when it will be an active equivalence or
A/B oracle. Delete it after the comparison if it no longer pays for its code
surface. Never add a runtime protocol branch for benchmarking.

After a work-floor win, measure the regimes that matter:

- latency: one aggregate with the available thread pool;
- throughput: enough concurrent aggregates to saturate the machine, with low
  per-aggregate thread demand; and
- hybrid: bounded intra-aggregate parallelism with concurrent aggregates.

Do not hardcode a production core count before deployment hardware is known.
Rayon may help or regress depending on contention and problem size, so measure
instead of claiming that a scheduling change is inherently faster. Record every
introduced threshold or chunk size as a named tunable beside its benchmark
rationale.

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
