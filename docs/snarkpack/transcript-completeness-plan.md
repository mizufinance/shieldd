# Plan: Transcript Completeness Manifest (Codex)

Detailed execution plan for making the Fiat-Shamir transcript-completeness
property explicit and mechanically checkable. This is the **lightweight** option:
a reviewed manifest plus per-stage preimage assertions, cross-linked to the
existing Lean oracle. It is **not** a mechanization of cryptographic soundness.

## Objective

Convert "did we bind everything the soundness proof requires" from an implicit
property scattered across `ripp-spec.md`, the refinement map, and the Lean model
into one explicit, reviewed **transcript-completeness manifest**, and assert the
actual hashed preimage at each Fiat-Shamir challenge matches it.

## Why this exists (and why it is not overkill)

Transcript completeness is **structural, not statistical**. FS *soundness given a
complete transcript* is the probabilistic ROM assumption we accept. But whether a
value is actually hashed into a challenge is binary: if a required value is
omitted, forgery succeeds with probability ≈ 1 (the prover sees the challenge and
grinds the unbound value), not negligibly. SnarkPack v1 / Frozen Heart were
probability-1 breaks from exactly this. An omission passes every honest-input test,
which is why it needs an explicit check rather than reliance on the test suite.

Filecoin did **not** verify completeness — they shipped the v1 omission, an audit
caught it, and v2 patched it. The industry baseline is review-plus-audit. This
plan keeps that baseline but makes it falsifiable and cheap to re-check.

This is deliberately scoped as **low-priority hardening**, because two layers
already cover most of the gap:

- the **verifier-mutant mutation matrix** proves every *traced* input is
  load-bearing (omit/reorder any one ⇒ reject), and
- the **Lean oracle** (Layer 9), derived independently from the paper, diverges if
  the Rust omits a value Lean binds.

The only residual gap is "a value that *should* be traced but isn't." The manifest
names that set so the existing checks have an explicit target. Full mechanical FV
of completeness (deriving the required set from a mechanized soundness proof) is
Tier 3 and explicitly out of scope.

## What "completeness" can and cannot establish

The reference set — what *must* be bound — comes from the paper's security proof,
not the code. No theorem over the Rust alone can produce it. So this plan
**reduces** trust from "no engineer ever forgot a binding" (unfalsifiable) to
"trust one explicit, reviewed manifest, cross-checked by an independently derived
Lean model, with a test that fails on any preimage mismatch." The residual trust
(manifest faithfully transcribes the paper) is reducible by the two independent
derivations but not eliminable without Tier-3 work.

## Existing pieces to build on

- `challenge.rs` emits every challenge **preimage as a `TraceEvent`** (stage label,
  nonce, preimage bytes) via the trace sinks.
- `ripp-spec.md` Fiat-Shamir + GIPA/TIPA sections already describe required inputs
  per stage informally; stage labels are stable
  (`aggregate.randomizer`, `tipa.ab.gipa.round`, `tipa.ab.kzg`, `tipa.c.gipa.round`,
  `tipa.c.kzg`, generic variants).
- Layer 9 Lean oracle (`proof-aggregation-lean-conformance`) and the
  trace-schema crate already do structural Rust-vs-Lean comparison.

## Scope

In scope: each Fiat-Shamir challenge stage in `src/ipp/ip_proofs` (randomizer,
GIPA rounds, KZG openings, SSM). The manifest, a preimage-structure assertion, and
cross-linking to Lean.

Out of scope: any change to the transcript bytes or protocol; the ROM/soundness
parameter (128-bit challenge) justification (track separately if wanted);
Tier-3 soundness mechanization.

## Tasks

### Task 1 — Author the completeness manifest

1. From the paper and `ripp-spec.md` (not from the Rust — deriving it from the code
   would be circular), enumerate for each challenge stage the exact ordered set of
   messages the soundness argument requires bound: domain, stage label, statement
   context, nonce, and the specific prior protocol messages (commitments, round
   L/R values, prior challenge state).
2. Write `docs/snarkpack/transcript-completeness-manifest.md`: one section per
   stage label, each listing required inputs in order, with a paper/`ripp-spec.md`
   citation per input and the rationale ("why omitting this enables a grind").
3. Have the manifest reviewed as a security artifact (reviewer + date), under the
   same rule as the adaptation register: it is a claim about required bindings, not
   settled by tests.

### Task 2 — Assert the actual preimage matches the manifest

1. Add a test (in the proof-aggregation test surface or reference crate) that, for
   each stage, captures the real `challenge_preimage` via the existing trace sink
   on a representative aggregation and asserts its framed structure contains exactly
   the manifest's inputs, in order.
2. The assertion must read the manifest's required-input list as the oracle, so a
   future code change that drops an input fails the test. Keep arithmetic abstract;
   this checks *structure/presence*, not values.
3. Cover every stage label; add a coverage assertion that no stage is unchecked
   (mirror the existing `mutation_matrices_cover_penumbra_byte_trace_rows` pattern).

### Task 3 — Cross-link the Lean oracle

1. Confirm the Lean model's per-stage bound inputs match the manifest; where Lean
   already encodes the required set, reference it from the manifest so the two
   independent derivations are explicitly tied.
2. Note any stage where Lean abstracts an input the manifest requires, so the
   residual trust surface is visible.

### Task 4 — Wire into the plan and gates

1. Add a "Fiat-Shamir transcript completeness" note to `verification-plan.md`
   (Source 3 / Source 4 boundary) pointing at the manifest and the assertion, and
   stating the explicit limit (structural, reference set external).
2. Ensure the new test runs in the standard test gate; if cheap enough, include it
   in `just snarkpack-invariants` coverage or the formal workflow.

## Deliverables

- `docs/snarkpack/transcript-completeness-manifest.md` (new): per-stage required
  bindings with citations, rationale, reviewer/date.
- A per-stage preimage-structure assertion test with full stage coverage.
- Cross-links between the manifest and the Lean oracle.
- `verification-plan.md` note describing the property and its explicit limit.

## Acceptance criteria

- Every challenge stage has a manifest section and a passing structure assertion.
- The assertion fails if any required input is removed from a preimage (verify by
  a temporary local mutation, then revert).
- The manifest derives required inputs from the paper/spec, with citations — not
  from the Rust.
- The plan states plainly that this is structural completeness with an external
  reference set, not a soundness proof.

## Constraints

- Per `CLAUDE.md`: no transcript/byte/protocol change — this observes and asserts
  existing behavior. If authoring the manifest reveals a *genuine* missing binding,
  stop and escalate; that is a protocol decision, not a silent fix.
- Keep the assertion structural (presence/order). Do not turn it into a value-level
  or algebraic check — that is Tier 2/3 and out of scope.
- Treat priority as low: this hardens an area already covered by the mutation
  matrix and Lean oracle; it is insurance and explicitness, not a blocking gap.
