# SnarkPack Verification

How we check that the design in [design.md](design.md) is faithfully and securely
implemented.

## How to read this

Verification is layered defense: no single check proves the system; each catches
a different bug class. The doc is organized in three categories, and each
category is laid out the same way: **what must hold**, then **the tools that
verify it**.

- **Algebra** — the RIPP/GIPA/TIPA/KZG equations + folding schedule. Soundness is
  *assumed* (paper + Filecoin); the tools verify our code refines it.
- **Transcript** — what must be Fiat-Shamir-bound, and in what order. The "must
  hold" set comes from the paper, not the code; the tools verify our bytes bind
  exactly that.
- **Cross-cutting** — gates that protect the whole stack (DoS, assumption
  ledger, optimization byte-lock).

Each check keeps a stable ID (`ALG-M*` / `TXN-M*` for the "what must hold"
references, `ALG-I*` / `TXN-I*` for the tools, `X*` for cross-cutting).

**Standing assumption:** SnarkPack/RIPP/Groth16 algebraic soundness is assumed
from the paper + Filecoin; end-to-end formal verification is out of scope. See
[Standing assumptions](#standing-assumptions).

---

## Algebra

### What must hold

The RIPP/GIPA/TIPA/KZG equations and folding schedule. Soundness of the algebra
itself is *assumed* (paper + Filecoin, see [Standing
assumptions](#standing-assumptions)); these references pin down which algorithm
our code must refine, and the tools below verify it does.

#### ALG-M1 — Local algorithm spec (`ripp-spec.md`)
- **What:** the Shieldd-local, row-indexed spec of GIPA/TIPA/SSM and the Groth16
  adapter, checked against Filecoin v2 transcript bug classes.
- **Why:** the reference every implementation check and the trace-schema policy
  table compare against. Without it, "matches the algorithm" is unanchored.
- **State:** drafted; the trace-schema policy table is gate-checked to match its
  Spec Row Index.
- **Fixture:** [ripp-spec.md](../../crates/crypto/proof-aggregation/formal/snarkpack/ripp-spec.md).

#### ALG-M2 — Refinement map (`ripp-refinement.md`)
- **What:** per-symbol audit mapping every scoped RIPP/GIPA/TIPA Rust symbol to a
  spec row, classified by deviation class with file:line evidence; bijective with
  `ripp-refinement-scope.txt`.
- **Why:** turns "the code refines the paper" into a reviewed, coverage-checked
  per-symbol claim rather than a hand-wave.
- **State:** every scoped symbol `refined` with evidence; no `open` rows.
- **Fixture:** [ripp-refinement.md](../../crates/crypto/proof-aggregation/formal/snarkpack/ripp-refinement.md).

### Tools that verify the code matches

The hard problem here is the **shared-lineage common-mode bug**: most behavioral
checks run arkworks-descended code on both sides, so a bug in the equations
themselves passes them all. Only the independent oracles (ALG-I2, ALG-I4) can
falsify that class.

#### ALG-I1 — Differential oracle agreement
- **What:** the aggregate's accept/reject must agree with per-proof Groth16 verify
  and with legacy batch verify across all parity families and counts
  (`snarkpack_matches_single_and_batch_groth16_oracles`,
  `snarkpack_property_matches_legacy_batch_oracle`).
- **Why:** catches the aggregate accepting what Groth16 rejects (soundness) or
  rejecting valid proofs (completeness) at the integration seam.
- **State:** implemented. *Limit:* both sides share the arkworks lineage — a
  shared algebraic bug passes both (that gap is ALG-I4's job).

#### ALG-I2 — Independent reference path
- **What:** a dev-only, non-published crate `proof-aggregation-reference`
  re-implements the slow prover/verifier from scratch using only public APIs; a
  gate forbids importing production `src/ipp`, `ark-ip-proofs`, or
  `ark-inner-products`. Runs 3-way parity (prod-prover/ref-verifier,
  ref-prover/prod-verifier, ref/ref).
- **Why:** an independently written second implementation catches common-mode bugs
  a same-code test would miss. The Rust-level independent oracle.
- **State:** implemented; feeds ALG-I1, ALG-I3, TXN-I2, TXN-I3.

#### ALG-I3 — Trace instrumentation + equivalence
- **What:** production and reference emit structured `TraceEvent`s through the
  dependency-free `proof-aggregation-trace-schema` crate; its policy table must
  match the ALG-M1 Spec Row Index, and instrumentation must not re-decide levels
  from call shape (`production_and_reference_traces_match_declared_levels`).
- **Why:** verifies the two paths perform the same *sequence/structure* of
  transcript operations, not just the same final answer — the spine the byte
  baselines and mutation matrices hang off.
- **State:** implemented.

#### ALG-I4 — Lean differential conformance
- **What:** an independent, hand-built Lean model of the transcript + folding
  discipline (FS label sequence, challenge derivation, GIPA/TIPA fold order,
  padding), derived from `ripp-spec.md` and the paper — **not** transliterated
  from the Rust — compiled to an executable oracle and differentially tested
  against the Rust. Pairing/field arithmetic stays abstract and `assumed`.
- **Why:** the only independent algebraic/transcript oracle. Because the transcript
  shape is fully determined by `padded_count` (a power of two ≤ 2¹⁵), the domain
  is finite and **exhaustively enumerated**, not sampled — certainty over the
  bounded shape domain.
- **State:** implemented as evidence, not proof, in
  `proof-aggregation-lean-conformance`. Always-on smoke covers round depths 0..=5;
  `lean_oracle_matches_all_shapes_to_max` (release-gated) covers every shape to the
  SRS max. Strengthens, does not remove, the standing algebraic-soundness
  assumption. Run: `just snarkpack-lean-conformance`.

---

## Transcript

### What must hold

What the Fiat-Shamir transcript *must* bind, and in what order. The reference set
comes from the paper's security proof, not from the Rust (deriving it from the
code would be circular). This is the explicit oracle TXN-I2/TXN-I3 check against.

#### TXN-M1 — Filecoin v2 discipline + adaptation register
- **What:** the audited Filecoin Bellperson v2 transcript discipline — bind every
  input, fixed order, domain-separated — borrowed as a *principle* (not bytes;
  different curve and stack). Every intentional Filecoin→Shieldd difference is
  recorded in the adaptation register, bijective with `adaptation-scope.txt`.
- **Why:** our hand-rolled Fiat-Shamir must not reopen a v2 omission/reordering
  bug class on our own bytes.
- **State:** register coverage-checked; behavioral review recorded in
  [filecoin-divergence-findings.md](../../crates/crypto/proof-aggregation/formal/snarkpack/filecoin-divergence-findings.md).
- **Fixture:** [adaptation-register.md](../../crates/crypto/proof-aggregation/formal/snarkpack/adaptation-register.md).

#### TXN-M2 — Transcript completeness reference set
The per-stage set of inputs that **must** be hashed before each challenge. The
implementation's hashed set is a code fact (checked by TXN-I3); whether that set
is *sufficient* is a review judgement recorded here.

**Common framing (every stage)** — `challenge_preimage`
([`challenge.rs:131`](../../crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs)):
`domain‖len-prefixed stage label‖challenge_context[32]‖u64_le(nonce)‖messages`.
The 32-byte context is `SHA256` over the statement digest — it binds the
**statement only** (version, family, SRS id, VK digest, padded public inputs), not
the proof commitments / inner products / randomizer; those are bound (or not) by
the stage `messages`.

Stages on the Groth16 path:

| Stage | Bound inputs (in order) | Why this set is sufficient |
|---|---|---|
| `aggregate.randomizer` | `com_a`, `com_b`, `com_c` `[GT]` | exactly the grind-sensitive set; `ip_ab`/`Z_C` don't exist yet |
| `tipp-mipp.x0` | `r[Fr]`, `com_a[GT]`, `com_b[GT]`, `com_c[GT]`, `ip_ab[GT]`, `agg_c[G1]` | paper `x0 = Hash(r, hcom, Z_AB, Z_C)` binding, with `hcom` represented by the three AFGHO commitments already bound into `r` |
| `tipp-mipp.gipa.round` | `prior_challenge[Fr]`, `L.ab.{com_a,com_b,com_t}`, `L.c.{com_a,com_t}`, `R.ab.{…}`, `R.c.{…}` | one shared challenge folds the AB pairing relation and C multiexponentiation relation |
| `tipp-mipp.final-bridge` | `last_gipa_challenge[Fr]`, `final_ck.{v,w}`, `final_messages.{A,B,C}` | Bellperson-v2-style `gipa-extra-link` before KZG |
| `tipp-mipp.kzg` | `final_bridge[Fr]`, `final_ck.{v,w}` | one KZG challenge opens shared `v` once and `w` once |

The reference set follows the SnarkPack paper / Bellperson v2 combined TIPP/MIPP
proof shape: a single GIPA recursion seeded by `x0`, with the AB pairing relation
and the C multiexponentiation relation sharing one transcript. The reference
oracle includes verifier mutants for omitting `x0`, for omitting the final
bridge, and for failing the combined-round cross-binding; all must reject valid
proofs.

Library-generic labels can still exist for non-aggregation callers, but they are
not part of the Shieldd aggregate transcript reference set. The coverage
assertion fails if the Groth16 aggregation path routes through a generic or split
label instead of the `tipp-mipp.*` stages above.

#### TXN-M3 — Statement binding & padding soundness
The aggregate statement is the root of trust the transcript hangs off. Two
soundness claims must hold about *what it commits to*, independent of the byte
mechanics that TXN-I1 proves.

**Padding soundness (incl. the one-real-proof case).** A verifying aggregate
proves "all `padded_count` slots verify under the family VK." The statement
binds `real_count` into the digest, and the padded slots beyond `real_count` are
forced — *before* verification — to be exact copies of the last real slot
(repeat-final), with `padded_count` a power of two and `real_count ≤ padded_count`
([`statement.rs:415-557`](../../crates/crypto/proof-aggregation/src/statement.rs)).
Therefore:
- A padded slot cannot smuggle an invalid proof: it is equality-checked against a
  real slot, so it contributes no new relation, only a duplicated valid one.
- An invalid real proof cannot hide: the real slots are a subset of the verified
  `padded_count` set.
- The **one-real-proof** aggregate (`real_count = 1`, padded up to a power of two
  with copies of that one proof) is sound by the same argument — it is just
  "verify one proof." This is why Shieldd safely permits it where Filecoin's
  `< 2` rejection is a production *policy*, not a missing security fix.

**Verifying-key allowlisting.** The verifier never trusts a VK carried in the
bundle. The consensus boundary maps a closed `ProofFamilyId` enum to a compiled-in
`&'static PreparedVerifyingKey`
([`app/mod.rs:156-164`](../../crates/core/app/src/app/mod.rs)), and preflight
checks `statement.vk_digest() == digest(canonical_pvk)` before any backend work
([`preflight.rs:160-161`](../../crates/crypto/proof-aggregation/src/preflight.rs)).
The inner numeric `family_id` carried in `Consolidate`/`Split`/`ShieldedIcs20Withdrawal`
bodies is attacker-controlled, and the registry lookups it feeds (`spec()`,
`proof_verification_key()`) **panic** on an unknown id. That panic is unreachable
because the wire→domain conversion validates the id against the registry
(`proto.family_id.try_into()?`) before the body is constructed; an unknown id is
rejected at deserialization with a graceful error, so a malicious proposer cannot
reach the panic (a consensus-halt) or substitute an attacker VK.
- **Why:** statement binding is the assumption every transcript proof rests on; if
  padding could smuggle a proof or the VK weren't pinned, no amount of transcript
  injectivity would save soundness.
- **State:** padding divergence rejected by `statement_rejects_noncanonical_repeat_final_padding`,
  one-real-proof accepted by `statement_accepts_single_real_proof`
  (`proof-aggregation`); unknown `family_id` rejected at the wire boundary by
  `unknown_family_id_is_rejected_at_wire_boundary` per family (`shielded-pool`).
  Padding canonicality and family-route totality are additionally *proved* in F\*
  (TXN-I1).

### Tools that verify our bytes do exactly that

Our **bytes** must bind exactly the reference set above, injectively and stably.
We own these bytes outright, so they carry the heaviest evidence — including the
only checks that mechanically *prove* (not test) over the shipping bytes.

#### TXN-I1 — Boundary formal verification (hax → F*)
- **What:** extracts the executed Rust at the implementation boundary (statement
  encoder, SRS/VK digest preimage builders, wrapper framing/cap, count/arity
  validation, padding canonicality, preflight gate, family routing, FS challenge
  preimage) into F* and mechanically proves statement-encoding **injectivity**
  (distinct statements ⇒ distinct preimage), digest reduction (a digest collision
  reduces to a SHA-256 collision), padding canonicality, wrapper cap completeness,
  preflight ordering, family-route totality/injectivity, and bounded
  non-malleability.
- **Why:** the load-bearing binding property — a malicious proposer must not craft
  two statements that hash to the same challenge. A proof over the real
  byte-producing code, so it cannot drift from what ships.
- **State:** complete for the current extracted target set; no `open` rows.
  Artifacts under
  [`formal/snarkpack/fstar/`](../../crates/crypto/proof-aggregation/formal/snarkpack/fstar);
  gated by `just snarkpack-formal`, content-stamped by the invariants gate.

#### TXN-I2 — Mutation matrices
- **What:** an **input-mutant** matrix mutates each binding field (VK digest,
  public-input value/order, padding, counts, SRS id) and asserts the verifier
  rejects; a **verifier-mutant** matrix builds verifiers that omit/reorder
  challenge inputs and asserts they reject valid proofs. Coverage assertions force
  both matrices to cover every Shieldd byte-trace row.
- **Why:** directly executes the SnarkPack v2 bug classes — a field that looks
  bound but isn't, and a transcript step that doesn't matter. Every *traced* input
  is proven load-bearing.
- **State:** implemented. *Limit:* can only test traced inputs; the current
  Groth16 path traces the adopted `x0`, combined round, final bridge, and KZG
  challenge rows.

#### TXN-I3 — Transcript completeness structural assertion
- **What:** `transcript_completeness_*` tests in `proof-aggregation-reference`
  capture the real prover preimage per stage and assert its framed structure
  matches the TXN-M2 observed set, in order; a coverage assertion forces every
  on-path stage to have a model entry.
- **Why:** TXN-I2 proves every traced input matters; this names the reference set
  so omissions are explicit — the structural side of the v1/Frozen-Heart class.
- **State:** implemented as `composed`. Checks the hashed set against the adopted
  TXN-M2 reference table, including the combined `x0` seed and final bridge.

#### TXN-I4 — Byte-equivalence golden baselines
- **What:** two committed, version-tagged golden artifacts — an aggregate-proof
  byte baseline (`aggregate_bytes_match_committed_baseline`) and a ShielddByte
  transcript-trace baseline (`shieldd_byte_trace_matches_committed_baseline`).
  Both regenerate deterministically from fixed `(family, count, seed)` vectors and
  fail on any drift; each version tag must equal `AGGREGATE_PROTOCOL_VERSION`.
- **Why:** makes silently changing wire/transcript bytes impossible — "preserve
  bytes vs version the protocol" becomes a mechanical gate (the optimization
  byte-lock, X3).
- **State:** implemented. *Scope:* Shieldd-reference vs Shieldd-optimized only —
  no cross-curve byte equivalence to Filecoin (BLS12-381 vs BLS12-377).

#### TXN-I5 — Filecoin-shape static check
- **What:** `scripts/check-snarkpack-filecoin-shape.sh` clones pinned Bellperson
  v0.21.0 and greps the prover/verifier/transcript source to confirm the labels,
  ordering, V2 branch, and domain/nonce binding we modeled on still exist.
- **Why:** pins our claimed FS discipline to the audited reference and fails if it
  drifts.
- **State:** implemented, but review-grade and static — it never executes
  Bellperson or compares behavior. ALG-I4 is its executable upgrade.

#### TXN-I6 — Fuzzing
- **What:** stable proptests (in-gate smoke) plus cargo-fuzz/libFuzzer targets in
  the non-published `proof-aggregation-fuzz` crate over every byte boundary —
  wrapper decode, preflight, aggregate-proof deserialize, sidecar decode, bundle
  shape, proposal validation. Invariant: valid-accept or bounded-error; never
  panic, never unbounded allocation, never expensive work before cheap shape
  checks.
- **Why:** the proposer is adversarial and submits arbitrary bytes.
- **State:** minimized corpora committed for all targets; smoke seeds from a
  temporary copy. Baseline + triage in the crate's
  [fuzz-corpus-baseline.md](../../crates/crypto/proof-aggregation-fuzz/fuzz-corpus-baseline.md).
  Proposal validation rejects bad SRS ids before building default SRS material;
  `aggregate_bundle_verification_rejects_bad_srs_id_before_srs_setup` + checked-in
  `DEFAULT_DEV_SRS_ID` keep those rejects cheap.

---

## Cross-cutting

Not tied to one domain; they protect the whole stack.

### X1 — Performance / DoS-asymmetry gates
- **What:** fixed CI latency thresholds (p50/p95/p99 under mixed proposals) plus
  valid-vs-adversarial-path benchmarks proving a malformed aggregate is rejected
  cheaply with bounded verifier work.
- **Why:** turns "reject cheaply before expensive work" into an enforced gate —
  closes the algorithmic-DoS asymmetry.
- **State:** release-mode CI gate. `just snarkpack-dos-gate` runs
  `snarkpack_dos_gate_valid_and_adversarial_paths_hold_thresholds`. Thresholds in
  the bench crate's [bench-thresholds.md](../../crates/bench/bench-thresholds.md).

### X2 — Assumption register (ledger governance)
- **What:** the typed evidence ledger in `formal-handoff.md`: every fact is
  `proved / refined / composed / assumed / open`; each `assumed` row needs a
  recorded postcondition + removal path; coverage is invariant-gated.
- **Why:** not a test — it makes "proven vs assumed" auditable and prevents an
  assumption from silently widening.
- **State:** 19 proved / 1 refined / 6 composed / 13 assumed / 0 open.
- **Fixture:** [formal-handoff.md](../../crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md).

### X3 — Optimization byte-lock
- **What:** any optimization must preserve the Shieldd byte trace (TXN-I4
  baselines) or explicitly version the protocol — never silently change transcript
  bytes. Category 1/2/3 rule in [design.md](design.md#optimization-byte-lock).
- **Why:** the optimization loop and refactors cannot drift the protocol.
- **State:** enforced by the TXN-I4 baselines + `AGGREGATE_PROTOCOL_VERSION`.
  Full process: [optimization-playbook.md](../../crates/crypto/proof-aggregation/optimization-playbook.md).

---

## Standing assumptions

Deliberately **not** verified here:
SnarkPack/RIPP/Groth16 algebraic soundness (assumed from the paper + Filecoin),
arkworks field/group/pairing/MSM correctness, SHA-256 collision/preimage
resistance, the random-oracle model for Fiat-Shamir, BLS12-377 group laws, and
hax semantic preservation. End-to-end FV is out of scope. ALG-I4 is the only check
that cross-checks the algebraic/transcript assumption (exhaustively over its
bounded shape domain); the rest are external-audit-or-replace. Each assumption is
typed with a postcondition and removal path in X2's ledger.

## Completion state

Scope is locked; the completion path is evidence maintenance, not new proof.

- All implementation-boundary rows in `formal-handoff.md` are `proved`;
  RIPP-mapping rows `refined`; no `open` rows remain.
- Statement-encoding injectivity, digest reduction, SRS/VK preimage binding,
  wrapper cap completeness, preflight ordering, family routing, padding
  canonicality, and challenge-preimage injectivity are mechanically proved.
- No raw verifier bypass remains; DoS/perf thresholds hold in CI after refactors;
  every assumption is narrowly scoped.
