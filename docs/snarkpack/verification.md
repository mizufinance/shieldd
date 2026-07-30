# SnarkPack Verification

How we check that the design in [design.md](design.md) is faithfully and securely
implemented.

## How to read this

Verification is layered defense: no single check proves the system; each catches
a different bug class. The doc is organized in three categories, and each
category is laid out the same way: **what must hold**, then **the tools that
verify it**.

- **Algebra** — the RIPP/GIPA/TIPA/KZG equations + folding schedule. Lean proves
  a quantitative S1 theorem under named KZG false-opening, GIPA fork-knowledge,
  ROM, and query-bound assumptions. A fixed-call shipping-to-Goal source theorem
  is kernel-checked under exact boundary contracts, but the manifest
  `SHIPPING-TO-GOAL` claim remains open because production has not constructed
  all of those contracts or the adaptive SHA-256 coupling.
- **Transcript** — what must be Fiat-Shamir-bound, and in what order. The "must
  hold" set comes from the paper, not the code; the tools verify our bytes bind
  exactly that.
- **Cross-cutting** — gates that protect the whole stack (DoS, assumption
  ledger, optimization byte-lock).

Each check keeps a stable ID (`ALG-M*` / `TXN-M*` for the "what must hold"
references, `ALG-I*` / `TXN-I*` for the tools, `X*` for cross-cutting).

The authoritative claim status is
[`verification-manifest.json`](../../crates/crypto/proof-aggregation/formal/snarkpack/verification-manifest.json).
The [formal handoff](../../crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md)
is its generated human-readable view. An `open` row is a real gap and prevents
an end-to-end claim.

---

## Algebra

### What must hold

The RIPP/GIPA/TIPA/KZG equations and folding schedule are specified by
`Ipp.SnarkPackV1`. The publication S1 root
`Ipp.S1.invalid_goal_fork_bound_le_extraction_advantage` proves the explicit
quantitative fork implication under its named experiment-relative assumptions.
`Ipp.Goal` independently states exact ordered representation and validity.

### Tools that verify the code matches

The hard problem here is the **shared-lineage common-mode bug**: most behavioral
  checks run arkworks-descended code on both sides, so a bug in the equations
  themselves passes them all. The independent reference oracle (ALG-I2) can
falsify that class.

#### ALG-I1 — Differential oracle agreement
- **What:** the aggregate's accept/reject must agree with per-proof Groth16 verify
  and with legacy batch verify across all parity families and counts
  (`snarkpack_matches_single_and_batch_groth16_oracles`,
  `snarkpack_property_matches_legacy_batch_oracle`).
- **Why:** catches the aggregate accepting what Groth16 rejects (soundness) or
  rejecting valid proofs (completeness) at the integration seam.
- **State:** implemented. *Limit:* both sides share the arkworks lineage — a
  shared algebraic bug passes both. The import-isolated v1/Goal specifications,
  S1 proof, and S3 arithmetic theorems address parts of that gap; the reference
  remains a falsification oracle rather than the normative specification.

#### ALG-I2 — Independent reference path
- **What:** a dev-only, non-published crate `proof-aggregation-reference`
  re-implements the slow prover/verifier from scratch using only public APIs; a
  gate forbids importing production `src/ipp`, `ark-ip-proofs`, or
  `ark-inner-products`. Runs 3-way parity (prod-prover/ref-verifier,
  ref-prover/prod-verifier, ref/ref).
- **Why:** an independently written second implementation catches common-mode bugs
  a same-code test would miss. The Rust-level independent oracle.
- **State:** implemented as an independent acceptance/interoperability
  falsification oracle. It is not the normative specification and does not own
  the v1 byte or transcript fixtures.

#### ALG-I3 — Two-way acceptance interoperability
- **What:** `reference_verifier_accepts_production_prover` and
  `reference_prover_cross_verifies_with_production` exercise both directions
  through public proof bytes on the ordinary fixture. The ignored
  `slow_two_way_interop_band` exercises reference-produced proofs against both
  verifiers across every registered family and the declared count band.
- **Why:** acceptance parity across independently written implementations covers
  the public implementation boundary without making the reference crate the
  protocol specification.
- **State:** implemented. Production-owned byte and challenge-trace stability is
  checked separately by TXN-I4.

---

## Transcript

### What must hold

What the Fiat-Shamir transcript *must* bind, and in what order. The reference set
comes from the paper's security proof, not from the Rust (deriving it from the
code would be circular). This is the explicit oracle TXN-I2/TXN-I3 check against.

#### TXN-M2 — Transcript completeness reference set
The per-stage set of inputs that **must** be hashed before each challenge. The
implementation's hashed set is a code fact (checked by TXN-I3); whether that set
is *sufficient* is a review judgement recorded here.

**Common framing (every stage)** — `challenge_preimage`
([`challenge.rs`](../../crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs)):
`domain‖len-prefixed stage label‖challenge_context[32]‖u64_le(nonce)‖messages`.
The 32-byte context is exactly
`SHA256(CHALLENGE_CONTEXT_DOMAIN || statement_digest)`. The statement digest is
itself `SHA256(STATEMENT_DIGEST_DOMAIN || canonical_statement_bytes)`, and those
canonical bytes include the VK digest. Thus the context binds the **statement
only** (version, family, SRS id, VK digest, counts, padding rule, and ordered
padded public inputs), not the proof commitments, inner products, or randomizer;
those are bound by the stage `messages`.

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
and the C multiexponentiation relation sharing one transcript. The formal
`SnarkPackV1`/Fiat–Shamir specifications and typed serializer theorems are the
normative evidence for this structure; the Rust reference crate is only an
independent acceptance/interoperability oracle.

Library-generic labels can still exist for non-aggregation callers, but they are
not part of the Shieldd aggregate transcript reference set. The production trace
fixture records the exact on-path labels for its committed vectors; the general
claim that these are the right and complete stages comes from the formal v1
specification and composition obligations, not from a historical reference-crate
coverage test.

#### TXN-M3 — Statement binding & padding soundness
The aggregate statement is the root of trust the transcript hangs off. Two
soundness claims must hold about *what it commits to*, independent of the byte
mechanics that TXN-I1 proves.

**Padding soundness (incl. the one-real-proof case).** A verifying aggregate
proves "all `padded_count` slots verify under the family VK." The statement
binds `real_count` into the digest, and the padded slots beyond `real_count` are
forced — *before* verification — to be exact copies of the last real slot
(repeat-final), with `padded_count` a power of two and `real_count ≤ padded_count`
([`statement.rs`](../../crates/crypto/proof-aggregation/src/statement.rs)).
Therefore:
- A padded slot cannot smuggle an invalid proof: it is equality-checked against a
  real slot, so it contributes no new relation, only a duplicated valid one.
- An invalid real proof cannot hide: the real slots are a subset of the verified
  `padded_count` set.
- The **one-real-proof** aggregate has canonical `padded_count = 1`, so there are
  no synthetic padding slots; it is just "verify one proof." This is why Shieldd
  safely permits it where Filecoin's `< 2` rejection is a production *policy*,
  not a missing security fix.

**Verifying-key allowlisting.** The verifier never trusts a VK carried in the
bundle. The consensus boundary maps a closed `ProofFamilyId` enum to a compiled-in
`&'static PreparedVerifyingKey`
([`app/mod.rs`](../../crates/core/app/src/app/mod.rs)), and preflight
checks `statement.vk_digest() == digest(canonical_pvk)` before any backend work
([`preflight.rs`](../../crates/crypto/proof-aggregation/src/preflight.rs)).
The inner numeric `family_id` carried in `NoteReshape`/`ShieldedIcs20Withdrawal`
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
  (distinct statements imply distinct canonical preimages), digest reduction
  (equal digests of distinct canonical preimages produce a SHA-256 collision),
  padding canonicality, wrapper cap completeness, preflight ordering,
  family-route totality/injectivity, and bounded non-malleability. These byte
  theorems do not prove SHA-256 collision resistance.
- **Why:** the mechanically proved part rules out ambiguity before hashing. The
  remaining possibility that distinct canonical preimages share a digest is
  accounted for separately by `SHA256-SECURITY`.
- **State:** the F* theorem sources cover the current target set, but their
  source-digest-pinned checker rows are authoritative only after the exact
  `hax-fstar` lane passes. A changed source marks those rows `stale`; it is not
  permissible to restamp them from tests or inspection. Artifacts under
  [`formal/snarkpack/fstar/`](../../crates/crypto/proof-aggregation/formal/snarkpack/fstar);
  gated by `just snarkpack-formal`, content-stamped by the invariants gate.

#### TXN-I2 — Binding rejection regressions
- **What:** targeted production tests reject bad counts, row arity, padding, SRS
  identity, VK digest, wrapper digest, wrapper length, and family routing. The
  independent reference verifier additionally rejects an invalid public boundary
  and wrapper digest.
- **Why:** these executable checks pin important failure paths and catch accidental
  weakening at the Rust boundary.
- **State:** implemented as targeted regressions. They are not an exhaustive
  per-field mutation matrix and are not evidence that every transcript input is
  independently load-bearing.

#### TXN-I3 — Typed transcript framing proof
- **What:** `challenge_message_serialize_injective` proves strict canonical
  serialization for the randomizer, x0, GIPA-round, final-bridge, and KZG
  messages; `challenge_preimage_typed_injective` composes that with stage,
  context, and nonce framing. TXN-I1 connects the extraction-friendly Rust
  constructors to their F* byte contracts.
- **Why:** this makes collisions between distinct typed transcript points reduce
  to the explicitly named hash assumptions instead of relying on a test-only
  mutation catalogue.
- **State:** the serializer and ideal-game theorems are proved. Construction of
  the deployed production challenge trace and its adaptive game coupling remain
  open manifest claims.

#### TXN-I4 — Byte-equivalence golden baselines
- **What:** the production crate owns two committed, version-tagged golden
  artifacts: the aggregate-proof byte fixture and the ShielddByte
  challenge-trace fixture. The ordinary
  `v1_bytes_and_transcript_match_committed_baselines` test checks both. Its traced
  path also asserts that the test-instrumented prover emits the exact inner proof
  wrapped by the production call and that prover and verifier challenge records
  agree. Both fixtures regenerate deterministically from fixed
  `(family, count, seed)` vectors and fail on drift; each version tag must equal
  `AGGREGATE_PROTOCOL_VERSION`.
- **Why:** makes silently changing wire/transcript bytes impossible — "preserve
  bytes vs version the protocol" becomes a mechanical gate (the optimization
  byte-lock, X3).
- **State:** implemented. *Scope:* deterministic production v1 proof and
  transcript bytes only. The reference crate cross-verifies those public proof
  bytes but does not define or maintain either fixture; there is no cross-curve
  byte equivalence claim to Filecoin (BLS12-381 vs BLS12-377).

#### TXN-I5 — Fuzzing
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
- **What:** `verification-manifest.json` lists exact theorem roots,
  dependencies, statuses, assumptions, audit modules, and allowed kernel
  axioms. `formal-handoff.md` and the theorem dependency graph are generated
  from it.
- **Why:** not a test — it makes "proven vs assumed" auditable and prevents an
  assumption from silently widening.
- **State:** invariant-gated and intentionally remains red while the manifest
  contains any open claim or stale contract evidence. It currently records
  24 proved claims, 2 tested claims, and 13 open claims; the open claims are
  enumerated under [Completion state](#completion-state).
- **Fixture:** [verification-manifest.json](../../crates/crypto/proof-aggregation/formal/snarkpack/verification-manifest.json).

### X3 — Optimization byte-lock
- **What:** any optimization must preserve the Shieldd byte trace (TXN-I4
  baselines) or explicitly version the protocol — never silently change transcript
  bytes. Category 1/2/3 rule in [design.md](design.md#optimization-byte-lock).
- **Why:** the optimization loop and refactors cannot drift the protocol.
- **State:** enforced by the TXN-I4 baselines + `AGGREGATE_PROTOCOL_VERSION`.
  For an intentional byte change, bump `AGGREGATE_PROTOCOL_VERSION`, regenerate
  both TXN-I4 artifacts with their ignored regeneration tests, review the
  resulting proof and transcript bytes, and run the slow two-way reference
  interop lane. Full optimization process:
  [optimization-playbook.md](../../crates/crypto/proof-aggregation/optimization-playbook.md).

---

## Standing assumptions

The remaining assumptions are enumerated—not summarized away—in
`verification-manifest.json`. They include separate SHA-256 and Blake2b
advantages, the adversary query budget, experiment-relative KZG false-opening
and GIPA fork-knowledge bounds, translator preservation, exact VK/field/proof
and challenge-message serialization postconditions, and the live
`ARKWORKS-PROVER-CURVE-OPERATIONS` assumption. Its current status is `assumed`;
the boundary covers each
unextracted prover scalar multiplication, MSM, pairing, and KZG-opening kernel;
constructing the outer `ShippingProverContract` is still an open claim. Each
assumption has an owner, exact postcondition, evidence, and closure route. The
ideal byte-oracle-to-field-oracle reduction is proved in Lean with the exact
64-byte modular-reduction statistical-distance term; only its deployed execution
boundary remains open.

## Completion state

The campaign has a proved independent Goal projection, real-prefix semantics,
quantitative S1 contrapositive, aggregate layout/component-acceptance theorem
(`DECODER-LAYOUT-CONFORMANCE`), a concrete Arkworks accepted-adapter contract,
ideal fixed-input shipping-hash coupling, and kernel-checked conditional
composition. Concrete backend operation-count research is tracked separately
and is not accepted as a substitute for semantic FV closure.

It is **not** publication-level end-to-end FV. `SHIPPING-TO-GOAL` and
`FULL-ADAPTIVE-END-TO-END-FV` are both open. The manifest currently has these
13 gaps:

1. `KZG-LEAF-REDUCTION`
2. `GIPA-FORK-KNOWLEDGE-REDUCTION`
3. `SHIPPING-TO-GOAL`
4. `STATEMENT-PROJECTION-CONSTRUCTION`
5. `CANONICAL-STATEMENT-BINDING`
6. `SHIPPING-PROVER-REFINEMENT`
7. `RUST-CALL-CONSTRUCTION`
8. `DEPLOYED-HASH-TRACE-CONSTRUCTION`
9. `ADAPTIVE-SHARED-ORACLE-SKELETON`
10. `ADAPTIVE-SHA256-COUPLING`
11. `ADAPTIVE-ADVERSARY-COUPLING`
12. `BUNDLE-LEVEL-COMPOSITION`
13. `FULL-ADAPTIVE-END-TO-END-FV`

Stale F* or extraction evidence also keeps the closure gate red even when a
claim's source theorem is kernel-checked. The generated
[theorem graph](../../crates/crypto/proof-aggregation/formal/snarkpack/theorem-dependency-graph.md)
shows their dependency paths.

## CI execution policy

Pull requests first compute an exact SnarkPack impact plan. Changes outside the
declared SnarkPack boundary select no heavy lane, and changes with no Lean or
F* impact select no proof build. Extraction runs one declared graph per isolated
Blacksmith runner. Lean fingerprints each selected module with its transitive
imports, restores prior per-module attestations, and sends only stale modules to
one single-threaded `lake build` invocation. F* checks only the stale reverse
closure of its declared module DAG. Successful source-specific caches are
immutable, while failed work may populate only a lower-priority progress cache.

Generated Lean and F* checker evidence remain checked-in, source-fingerprinted
artifacts, but repository JSON is not itself a reusable CI success attestation
and cannot suppress a changed graph or proof module. Only immutable exact-key
attestations written after a checker succeeds may skip repeated work. A Lean
marker binds one module and all of its imports; extraction and F* markers bind
their exact source, recipe, toolchain, selected closure, and generated output
where applicable. Missing, stale, duplicate, unexpected, or unsafe identifiers
fail closed. Parity, Rust/reference, each ignored slow test, fuzz, and release
DoS use the same rule over their exact local Cargo dependency closure.
Scheduled and manually requested full verification bypass success records and
execute the suites again.

Full extraction, whole Lean audits, F*, fuzz, ignored slow interoperability, and
release DoS suites run in CI. Local work uses the bounded single-flight runner:
one process, one Lean thread or Cargo job, memory monitoring, a fixed timeout,
and no same-session retry after forced termination.
