# SnarkPack Verification & Testing Plan

The verification layers and the remaining work to complete the hardening phase.
This is the consolidated companion to `security.md` (layer order and status) and
`formal-handoff.md` (the typed evidence ledger).

The design is layered defense: no single layer proves the system; each catches a
different bug class. But the layers are not a free-floating ladder — each one
exists to defend our implementation's fidelity to a specific **source of truth**.
This plan is organized by those sources: first the mental model of what each
source is and the relationship it imposes, then a fidelity map, then the layers
grouped under the source each one guards.

End-to-end formal verification is out of scope (Scope Lock, 2026-06-01).
Algebraic soundness is a standing assumption — the SnarkPack paper and the
Filecoin (Bellperson v0.21.0) implementation are assumed sound — and is
exhaustively cross-checked over its bounded transcript-shape domain, not proved,
by Layer 9.

## The mental model: four sources of truth

Our implementation is not a refinement of a single upstream. It sits at the
meeting point of three external sources plus our own original work, and each
relationship is a different kind of obligation, verified differently.

```
   SnarkPack/RIPP PAPER    ──gives──▶  the algebra (equations + soundness argument)
   arkworks ark-ip-proofs  ──gives──▶  the code lineage we vendored and run
   Filecoin Bellperson v2  ──gives──▶  the Fiat-Shamir bug-class discipline
   Penumbra-original       ──gives──▶  curve, statement binding, FS bytes, padding, wrapper
            │
            └───────────────────────▶  OUR IMPLEMENTATION (src/ipp + statement.rs + backend.rs)
```

**Source 1 — the paper (the algebra).** Gives the cryptography itself: the
GIPA/TIPA/KZG/PPE equations, the folding schedule, and the soundness argument.
The relationship is *refinement under assumption*: we do not re-prove SnarkPack
soundness (it is a standing assumption from the paper); our obligation is that
our code faithfully refines the paper's equations and round structure.

**Source 2 — arkworks `ark-ip-proofs` (the code we run).** Gives the concrete
implementation we vendored at `src/ipp/ip_proofs`, swapped to BLS12-377, with its
Fiat-Shamir replaced by ours. The relationship is *shared lineage as a
liability*: this is the SnarkPack v1 lineage, so any check that also runs arkworks
code shares its algebraic bugs (common mode). Only oracles that do **not** share
the lineage can catch that class.

**Source 3 — Filecoin Bellperson v2 (the discipline).** Gives the audited fix for
the v1 Fiat-Shamir omission/reordering bugs — the transcript discipline (bind
everything, fixed order, domain-separated). The relationship is *discipline
reference only*: not code, not bytes (different curve, stack, and binding). We
borrow the principle and write our own bytes. No cross-curve byte equivalence to
Filecoin is claimed.

**Source 4 — Penumbra-original (no upstream).** The parts with no external
reference: BLS12-377, the statement binding (version, curve, backend,
`ProofFamilyId`, SRS, VK, counts, padding, public inputs), the hand-rolled
SHA-256 Fiat-Shamir bytes, the repeat-final padding rule, the wrapper framing, and
app-bundle integration. We own these outright, so they carry the most
verification weight and are the part under formal proof rather than tests alone.

## Fidelity map

| Source of truth | Fidelity obligation | Primary guard | Backstop | Honest gap |
|---|---|---|---|---|
| Paper algebra | code refines the equations | refinement map + abstract-trace (Layer 4) | differential oracle (3), Lean (9) | soundness *assumed*, not proved |
| arkworks lineage | no common-mode algebraic bug | reference path (Layer 2) | Lean (9) | both are evidence, not proof |
| Filecoin v2 discipline | FS binds all inputs, in order | mutation matrices (Layer 6) | filecoin-shape (7) | reconciled in `filecoin-divergence-findings.md` |
| Penumbra-original | injective / canonical / byte-stable | F* boundary proofs (Layer 1) | byte baselines (5), mutation (6), fuzz (8) | extracted target set only |

Three mechanisms are cross-cutting and not tied to one source: byte-equivalence
(Layer 5) locks reference-vs-optimized so the optimization loop cannot drift the
protocol; the DoS-asymmetry gates (Layer 10) bound adversarial cost; the
assumption register (Layer 11) types every fact so the proven-vs-assumed line
stays honest and cannot silently widen.

## Part A — The verification layers, grouped by the source they defend

Layer numbers are stable (other docs cite them); they are presented here in
source groups, not numeric order. Each layer keeps its original What / Why /
State / Implementation content.

### Source 1: the SnarkPack/RIPP paper — the algebra

Obligation: the code must faithfully refine the paper's equations and round
schedule. Soundness itself is assumed (Part B); these layers check that what we
compute *is* the paper's algorithm, at the equation/trace level. The refinement
map `ripp-refinement.md` is the per-symbol review backbone; the layers below are
its executable evidence.

#### 3. Differential oracle tests (integration-level soundness/completeness)

- What: the aggregate's accept/reject must agree with per-proof Groth16 verify and
  with legacy batch verify across all parity families and counts
  (`snarkpack_matches_single_and_batch_groth16_oracles`,
  `snarkpack_property_matches_legacy_batch_oracle`).
- Why: catches the aggregate accepting what the underlying Groth16 would reject
  (soundness) or rejecting valid proofs (completeness) at the integration seam.
- State: implemented.
- Limitation: both sides share the arkworks lineage, so a shared algebraic bug
  passes both. That gap is Layer 9's job (Source 2).

#### 4. Trace instrumentation + trace equivalence

- What: production and reference emit structured `TraceEvent`s through the
  dependency-free `proof-aggregation-trace-schema` crate; the schema policy table
  must match the Spec Row Index in `ripp-spec.md`, and instrumentation must not
  re-decide levels from call shape (`production_and_reference_traces_match_declared_levels`).
- Why: verifies the two paths perform the same sequence/structure of transcript
  operations, not just the same final answer. The structural spine the byte
  baseline and mutation matrices hang off.
- State: implemented.

### Source 2: the arkworks `ark-ip-proofs` lineage — the code we run

Obligation: no common-mode algebraic bug. This is the SnarkPack v1 lineage, so
every behavioral layer that runs arkworks code (Layers 3–6) shares its bugs and
cannot catch them. The two layers below are the *only* independent oracles — one
written from public APIs, one derived from the paper — and exist precisely to
falsify the shared-bug class.

#### 2. Independent reference path (a second implementation)

- What: a dev-only, non-published crate `proof-aggregation-reference` re-implements
  the slow prover/verifier (aggregate/TIPA/GIPA/KZG/verifier-SRS codecs) from
  scratch using only public APIs; an invariant gate forbids importing production
  `src/ipp` internals, `ark-ip-proofs`, or `ark-inner-products`. Runs 3-way
  parity: production-prover/reference-verifier, reference-prover/production-verifier,
  reference/reference.
- Why: an independently written second implementation catches common-mode bugs a
  test sharing the production code would miss. The Rust-level independent oracle.
- State: implemented; feeds Layers 3-6.

#### 9. Lean differential conformance

- What: an independent, hand-built Lean model of the transcript + folding
  discipline (FS label sequence, challenge derivation, GIPA/TIPA fold order,
  padding), derived from `ripp-spec.md` and the paper — not transliterated from the
  Rust, or it is circular — compiled to an executable oracle and differentially
  tested against the Rust. Pairing/field arithmetic stays abstract and `assumed`.
- Why: the only independent algebraic/transcript oracle. Every other behavioral
  layer (3-6) shares the arkworks lineage, so a bug in the equations themselves
  passes all of them; Lean is derived from the paper/Filecoin discipline, so it can
  falsify that shared-bug class. This strengthens, but does not remove, the
  standing algebraic-soundness assumption.
- State: implemented as evidence, not proof. The dev-only
  `proof-aggregation-lean-conformance` crate compiles the hand-written Lean model
  to an executable oracle, runs Rust-vs-Lean structural trace tests, and exposes
  `just snarkpack-lean-conformance`.
- Implementation: `SnarkpackOracle.lean` emits spec-row keyed event shapes; Rust
  fixtures compare public trace-schema event shapes against them. The transcript
  shape is fully determined by `padded_count = next power of two of the real
  count` (the only count-dependent part is the GIPA round count = log₂), so the
  domain of distinct shapes is **finite and small** — one per power of two up to
  the SRS max (2¹⁵ = 16 shapes) × 4 families. It is therefore **exhaustively
  enumerated, not fuzzed**: the always-on smoke test covers round depths 0..=5
  plus padding representatives, and `lean_oracle_matches_all_shapes_to_max`
  (release-gated, `#[ignore]`) covers every shape up to the SRS max. This is
  certainty over the bounded shape domain — superseding the earlier
  coverage-guided `lean_conformance` fuzz target, which sampled a domain small
  enough to enumerate outright. It remains bounded (≤ 2¹⁵) and structural
  (algebra abstract), so it is still evidence, not a soundness proof.

### Source 3: Filecoin Bellperson v2 — the Fiat-Shamir discipline

Obligation: our hand-rolled Fiat-Shamir must bind every input, in fixed order,
domain-separated — i.e. not reopen a v2 bug class on our own bytes. Layer 6
executes the bug classes; Layer 7 pins the discipline to the audited reference.
(Layer 6's input-mutant half also serves Source 4.)

#### 6. Mutation matrices (the threat model, executed)

- What: an input-mutant matrix mutates each binding field (VK digest, public-input
  value, public-input order, padding, counts, SRS id) and asserts the verifier
  rejects; a verifier-mutant matrix builds deliberately broken verifiers that
  omit/reorder challenge inputs and asserts they reject valid proofs (each
  Fiat-Shamir step is load-bearing). Coverage assertions force both matrices to
  cover every Penumbra byte-trace row (`mutation_matrices_cover_penumbra_byte_trace_rows`).
- Why: directly targets the SnarkPack v2 bug classes — a field that looks bound but
  is not, and a transcript step that does not matter. The most threat-model-aligned
  layer.
- State: implemented.

#### 7. Filecoin-shape static check

- What: `scripts/check-snarkpack-filecoin-shape.sh` clones pinned Bellperson
  v0.21.0 and greps the prover/verifier/transcript source to confirm the transcript
  labels, ordering, V2 branch, and domain/nonce binding we modeled on still exist.
- Why: pins our claimed Fiat-Shamir discipline to the audited reference and fails
  if that reference drifts.
- State: implemented, but review-grade and static — it never executes Bellperson
  or compares behavior. Layer 9 is its executable upgrade.

### Source 4: Penumbra-original — the parts with no upstream

Obligation: the statement binding, hand-rolled Fiat-Shamir bytes, padding rule,
and wrapper framing must be injective, canonical, and byte-stable. We own these
outright, so they carry the heaviest evidence: the only layer that mechanically
*proves* (not tests) over the shipping bytes lives here.

#### 1. Boundary formal verification (hax → F*)

- What: extracts the executed Rust at the implementation boundary — statement
  encoder (`statement.rs`), SRS/VK digest preimage builders, wrapper framing and
  cap checks, count/arity validation, padding canonicality, typed preflight gate,
  family routing, and Fiat-Shamir challenge preimage — into F* and mechanically
  proves statement-encoding injectivity (distinct statements ⇒ distinct transcript
  preimage), digest/preimage reductions (a digest collision reduces to a SHA-256
  collision after injective preimage framing), padding canonicality, wrapper
  cap completeness, preflight gate ordering, family-route totality/injectivity,
  and bounded non-malleability.
- Why: the load-bearing binding property — a malicious proposer must not craft
  two different statements that hash to the same challenge. It is a proof over
  the real byte-producing code, so it cannot drift from what ships.
- State: complete for the current extracted target set. Statement-encoding
  injectivity, digest reduction, SRS/VK preimage binding, padding canonicality,
  wrapper cap completeness, preflight gate ordering, family-route
  totality/injectivity, and challenge-preimage injectivity are mechanically
  proved in the F* artifact set.
- Implementation: hax extraction → F* lemmas under
  `crates/crypto/proof-aggregation/formal/snarkpack/fstar/`, gated by
  `just snarkpack-formal`, content-stamped by the invariants gate.

#### 5. Byte-equivalence golden baselines

- What: two committed, version-tagged golden artifacts — an aggregate-proof byte
  baseline (`aggregate_bytes_match_committed_baseline`) and a PenumbraByte
  transcript-trace baseline (`penumbra_byte_trace_matches_committed_baseline`).
  Both regenerate deterministically from fixed `(family, count, seed)` vectors and
  fail on any drift; each version tag must equal `AGGREGATE_PROTOCOL_VERSION`.
- Why: makes silently changing the wire/transcript bytes impossible — "preserve
  bytes vs version the protocol" becomes a mechanical gate. This locks the
  optimization loop and any refactor.
- State: implemented.
- Scope: byte equivalence is Penumbra-reference vs Penumbra-optimized only. There
  is deliberately no cross-curve byte equivalence to Filecoin — BLS12-381 vs
  BLS12-377 makes it impossible. This is why we do not "test against Filecoin"
  directly. (This layer is cross-cutting: it also locks reference-vs-optimized for
  the whole stack, not only the Source 4 bytes.)

#### 8. Fuzzing (malformed-input robustness)

- What: stable proptests (in-gate smoke) plus cargo-fuzz/libFuzzer targets in the
  non-published `proof-aggregation-fuzz` crate over every byte boundary — wrapper
  decode, preflight, aggregate-proof deserialize, sidecar decode, bundle shape,
  proposal validation. Invariant: valid-accept or bounded-error; never panic,
  never unbounded allocation, never expensive work before cheap shape checks.
- Why: catches malformed-input handling bugs, panics, and DoS-via-malformed-bytes.
  The proposer is adversarial and submits arbitrary bytes.
- State: minimized corpora are committed for all six original byte-boundary
  targets plus the Layer 9 conformance target. The smoke gate seeds from the
  corpus through a temporary copy, and the 2026-06-01 coverage-guided baseline is
  recorded in `docs/snarkpack/fuzz-corpus-baseline.md`.
- Finding closed: proposal validation previously generated full default SRS-id
  material before rejecting malformed SRS ids; the regression
  `aggregate_bundle_verification_rejects_bad_srs_id_before_srs_setup` and
  checked-in `DEFAULT_DEV_SRS_ID` keep those rejects cheap.

### Cross-cutting layers (not tied to one source)

#### 10. Performance / DoS-asymmetry gates

- What: fixed CI latency thresholds (p50/p95/p99 under realistic mixed proposals)
  plus valid-vs-invalid-path benchmarks proving a malformed/adversarial aggregate
  is rejected cheaply with bounded verifier work.
- Why: turns the "reject cheaply before expensive work" invariant into an enforced
  gate — closes the algorithmic-DoS asymmetry.
- State: implemented as a release-mode CI gate. `bench-thresholds.md` records the
  GitHub Actions `ubuntu-24.04` baseline and thresholds.
- Implementation: `just snarkpack-dos-gate` runs
  `snarkpack_dos_gate_valid_and_adversarial_paths_hold_thresholds`, covering
  malformed wrapper, wrong-family, wrong-public-input, oversized, valid, and
  mixed-proposal paths. The `snarkpack-formal` workflow runs the gate.

#### 11. Assumption register — governance

- What: the evidence ledger in `formal-handoff.md`: every fact is typed
  `proved / refined / composed / assumed / open`; each `assumed` row needs a
  recorded postcondition + removal path; coverage is invariant-gated.
- Why: not a test — it makes "what is proven vs assumed" auditable and honest and
  prevents an assumption from silently widening.
- State: 19 proved / 1 refined / 6 composed / 13 assumed / 0 open, matching
  `formal-handoff.md`.
- Left: no ledger rows remain open; further work is evidence strengthening
  outside the completion gate.


## Part B — What we deliberately do not verify (standing assumptions)

Locked 2026-06-01: SnarkPack/RIPP/Groth16 algebraic soundness (assumed from the
paper + Filecoin implementation), arkworks field/group/pairing/MSM correctness,
SHA-256 collision/preimage resistance, the random-oracle model for Fiat-Shamir,
BLS12-377 group laws, and hax semantic preservation. End-to-end FV is out of
scope. Layer 9 is the only one that cross-checks the algebraic/transcript
assumption (exhaustively over its bounded shape domain); the rest are
external-audit-or-replace.

## Part C — Current state and remaining work

Scope is locked. What each layer enforces today:

| Item | Layer | Detail |
|---|---|---|
| Prose reconciled with the ledger | 1, 11 | Statement injectivity, digest reduction, SRS/VK preimage binding, wrapper cap completeness, preflight gate ordering, family routing, padding canonicality, and challenge-preimage injectivity are `proved`; the ledger has no `open` rows. |
| Clean-image formal CI + arkworks boundary property tests | 1, 11 | The `snarkpack-formal` workflow uses pinned hax/F*/Z3 versions and the arkworks/decaf377 boundary tests are named in the assumption register. |
| RIPP-mapping review (`ripp-refinement.md`) | 1, 11 | Every scoped symbol is `refined` with code line and spec-row evidence. |
| DoS-asymmetry + perf gate | 10 | `just snarkpack-dos-gate` enforces fixed size, latency, and cheap-rejection thresholds in CI. |
| Assumption register | 11 | The 13 `assumed` rows each have a postcondition and removal path; rows naming backend tests cite implemented tests. |
| Fuzz corpus | 8 | Minimized corpora committed for each target; smoke seeds from the corpus; baseline and finding triage recorded in `fuzz-corpus-baseline.md`. Non-blocking evidence. |
| Lean differential conformance | 9 | Independent executable oracle: a hand-derived Lean transcript/folding model differentially tested against the Rust by exhaustive enumeration of the finite shape domain (powers of two to the SRS max), not fuzzing. Non-blocking evidence. |

**Remaining — final manual review:** a timeboxed review of spec, adaptation
register, reference path, F* proof index, test/fuzz evidence, and assumptions.
Touches all layers.

## Sequencing

The completion path is evidence maintenance, not new proof: statement-encoding
injectivity is already present in `StatementEncodingProofs.fst` and the dependent
digest, SRS/VK preimage, wrapper, preflight, family-routing, padding, and
challenge rows are closed in `formal-handoff.md`. Keep the RIPP refinement map
exact, keep the DoS gate in CI, keep assumption rows narrow, and keep the formal
workflow reproducible from pinned tools.

The standing algebraic-soundness assumption remains, backed (non-blocking) by the
paper-derived Lean conformance oracle that exhaustively enumerates the finite
transcript-shape domain, plus coverage-guided byte-boundary fuzzing. No formal
rows remain open; the Filecoin divergence review is recorded in
`filecoin-divergence-findings.md`.

## Completion definition

- All implementation-boundary rows in `formal-handoff.md` are `proved`;
  RIPP-mapping rows `refined`/`proved-equivalent`/`assumed`; adaptation rows
  coverage-checked; composition rows `composed`.
- No `open` rows remain; statement-encoding injectivity, digest reduction,
  SRS/VK preimage binding, wrapper cap completeness, preflight gate ordering,
  family routing, padding canonicality, and bounded non-malleability proved.
- No raw verifier bypass remains.
- Benchmark/DoS thresholds hold in CI after proof-driven refactors.
- Every assumption reviewed and narrowly scoped.

Layer 9 (Lean differential) is not in the completion gate — it strengthens the
standing algebraic-soundness assumption but the phase completes without it.
