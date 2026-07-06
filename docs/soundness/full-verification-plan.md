# Full-Verification Plan: consolidate2x1 + SnarkPack

Long-term plan to bring **one circuit (consolidate2x1)** and **SnarkPack
aggregation** to "fully verified": every soundness-relevant property either
mechanically proved or an explicitly audited assumption with an owner and a
removal path — then keep that guarantee while optimizing.

This document is an operating handbook: a model (or engineer) picking up any
phase should be able to execute it from this file plus the pointed-to
artifacts, without re-deriving strategy. Read the **Operating rules** section
before touching anything.

Related: `fv-hardening-roadmap.md` (threat-driven focus areas),
`crates/core/component/compliance/formal/assumption-ledger.md` (the ledger),
`crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md`
(SnarkPack evidence ledger).

## 1. The verification stack — six layers

Each layer has one question, one primary tool, and one failure mode it
catches. A property is only "verified" when every layer under it is either
proved or an audited ledger row. Layers do not promote each other
(promotion rules in `fv-hardening-roadmap.md` apply).

| # | Layer | Question | Primary tool | Reference failure |
| --- | --- | --- | --- | --- |
| L0 | Cryptographic assumptions | Are the primitives what we idealize them as? (Poseidon RO/CR, decaf377 group, pairing/Groth16) | Audit + ledger rows; parameter-provenance review | wrong Poseidon security margin for this field |
| L1 | Protocol / statement completeness | Does the *statement* the circuit proves imply protocol security? Is every necessary object bound (note→nullifier, anchor, value balance)? | Alloy (ledger state machines), Tamarin (multi-party flows), human statement review | a sound proof of an insufficient statement |
| L2 | No under-constraint | Is each gadget's constraint system deterministic — no free wire, no missing constraint? | Picus (leaf decomposition, `picus-leaf-decomposition` pattern) | halo2 2024/25-style library under-constraint |
| L3 | Gadget semantics | Do the extracted gadget constraints imply the gadget spec? | Lean (`*Bridge.lean` `circuit_sound` theorems) | constraints satisfiable by wrong outputs |
| L4 | Compiled artifact | Do the *actual compiled `.sr1cs` rows* imply the whole-circuit statement? | Lean deployed bridges + `shieldd-constraint-coverage` partition gate + capstone composition theorem | compile-time specialization diverging from proved gadget |
| L5 | Proving stack | Prover/verifier/aggregator code and backend crypto: Groth16, gnark backend, SnarkPack/RIPP, arkworks | Named assumption rows + pinned versions + advisory monitoring; F* only where rows already exist (SnarkPack) — no new proof tooling at this layer | backend soundness CVE (GHSA-q3hw-3gm4-w5cr) |

Mapping from the original 4-layer sketch: sketch-1 = L1, sketch-2 = L2,
sketch-3 = L3, sketch-4 = L4. L0 and L5 are the additions — L0 because every
Lean/Tamarin result is conditional on it, and L5 because a verified circuit
proved by a broken prover/aggregator is not a verified system. One more
direction the sketch misses: L2–L4 are **soundness-only** (constraints ⇒
spec). **Completeness** (honest witness always satisfies; no honest-user
funds bricked) is covered by prover round-trip tests, not proofs — keep it a
named test obligation, not an accident.

**Boundary fidelity (cross-cutting, decided 2026-07-06).** No tool checks that
another tool's model matches the real artifact: the Alloy facts are
hand-transcribed from the circuit/handler, the F* statement model is separate
from the Lean one, the deployed artifact is separate from the manifest pin.
Every such seam must be a **named ledger row** (`MODEL-ASSUME-*` class) plus
the strongest cheap mechanical pin available (seam/conformance test, hash
pin). Unnamed seams are findings. The composition across layers and tools is
stated once, in `docs/soundness/assurance-case.md` — the tree of protocol
claims where every edge is a stamped artifact, a ledger row, or an explicit
TODO. Keep it current per its maintenance rule.

**Tooling policy (decided 2026-07-06).** Tools are routed per assumption type
and each must earn its seat: Lean (semantics, L3/L4), Picus (determinism, L2),
Alloy (statement sufficiency, L1), tests (completeness + parity). Tamarin is
retained ONLY for the compliance detection flow (Phase H) — if that surface
stays assumption-rowed, drop Tamarin. No new hax extraction: for the H3 seam,
use the differential-test option, not F* extraction; F* remains only where
SnarkPack rows already exist.

## 2. Current state — consolidate2x1

What is DONE (do not redo; verify via the named gate):

- **L4 partition + identity**: 49/49 deployed obligations discharged, all 17
  classes proven against the raw `.sr1cs` bytes (commit `96db22bd9`).
  Gate: `scripts/check-constraint-coverage.sh consolidate2x1` **run from
  `tools/gnark/lean`**. The old "gadget-identity gap" in
  `ZK-ASSUME-GNARK-FRONTEND-BACKEND` is closed *for this circuit*: deployed
  bridges prove the inlined/partially-evaluated rows directly.
- **L3**: per-gadget `*Bridge.lean` + whole-circuit `circuit_sound` theorems.
- **L2**: all Picus-probed gadgets `safe` via leaf decomposition; `.sr1cs`
  fidelity test `TestPicusExportFidelityAllGadgets` green.
- **L1 (partial)**: Alloy models pass (double-spend, value conservation,
  nullifier lifecycle, ICS-20 supply); two-torsion/decaf quotient issues
  fixed in Lean (`edwards-commgroup` retraction).
- **L0/L5**: named ledger rows, all with rationale + removal path; none
  `open`.

### Hole inventory (each gets an ID; phases below reference them)

| ID | Layer | Hole | Severity |
| --- | --- | --- | --- |
| H1 | L4 | **Capstone composition theorem missing**: 49 per-segment `deployedSpecN` theorems exist, but no single Lean theorem composes them into "any satisfying assignment of the full 57,969-row `.sr1cs` satisfies the consolidate2x1 statement". Inter-segment wiring (shared wires between segments) is currently only the coverage checker's partition, not a proof. | HIGH |
| H2 | L1 | **Statement-sufficiency review not mechanized**: no artifact says the consolidate2x1 statement (as a list of public-input bindings) is *sufficient* for protocol soundness. Alloy models assume the statement; nothing derives the needed statement from the protocol and diffs it against the circuit's. | HIGH |
| H3 | L4/L1 | **Statement seam**: Rust statement-byte serialization ↔ circuit public-input wire order/encoding parity is tested, not proved (`statement.hash` binding proven in-circuit; the Rust-side byte layout is the trusted half). | MED |
| H4 | L0 | Poseidon parameter provenance for this field (`CC-ASSUME-POSEIDON-PARAM-PROVENANCE`, roadmap Focus 5a) — audit deliverable, not proof. | MED |
| H5 | L3/L4 | In-circuit ↔ Rust parity for key/nullifier/compression derivations (roadmap Focus 4a) — tests `CC-ASSUME-DECAF377-ENCODING` instead of assuming it. | MED |
| H6 | L2 | Amount range bound is a side effect of `ScalarMulLE(…,128)`, not an explicit range gadget + width regression test (roadmap Focus 4b). | MED |
| H7 | L2 | Picus verdict composition is manual: leaves are `safe`, the composition argument is prose. Write it down as a checked artifact (per-leaf manifest + composition note), or accept as an audited row. | LOW |
| H8 | L1 | Alloy small-scope hypothesis (`scope 6`): properties hold in-scope only. Acceptable if auditied; raise scope or add an inductive argument for supply-critical properties. | LOW |
| H9 | infra | Canon-chain modules peak ~22 GB; `Specs.lean` edits trigger a ~14 h full adapter-forest rebuild. Not a soundness hole, but it blocks the optimize loop (Section 5) and ics20. | HIGH (velocity) |

## 3. Current state — SnarkPack

Evidence ledger: `formal-handoff.md` (F* rows over hax-extracted Rust; no
`open` rows). The **final implementation claim is a composition claim, not a
mechanized SnarkPack/RIPP soundness theorem** — that is the honest gap.

| ID | Layer | Hole | Severity |
| --- | --- | --- | --- |
| S1 | L5 | **No mechanized RIPP/TIPP/MIPP soundness theorem.** DECIDED 2026-07-06 (human): **accept for now** on Filecoin-lineage + paper review evidence, as a named `assumed` ledger row with an explicit removal path. The removal path is NOT re-proving the IPP paper: it is mechanizing in Lean that the aggregated verification equation implies each per-proof Groth16 verification equation under the pairing assumptions — a bounded, statement-shaped target. Roadmap item, not current work. | decided (row pending, Task 14) |
| S2 | L5 | Groth16 verification inside aggregation + pairing/KZG crypto: named assumption, stays assumed (matches roadmap policy). | audited |
| S3 | L5 | arkworks + hax + F* toolchain trust rows: audited, pinned (`toolchain.toml`), stamp-checked by `just snarkpack-invariants`. | audited |
| S4 | L4/L5 | Transcript/statement seam: statement-encoding injectivity `proved` (`lemma_encode_statement_injective`); challenge/padding/wrapper rows depend on it — any change to statement encoding **reopens all dependent rows** (completion rule in the handoff doc). | guarded |
| S5 | L1 | The aggregated statement's binding to the per-proof circuit statements (does accepting an aggregate imply each underlying statement?) is composed from F* rows + Rust types; confirm the Lean-side statement model and the F*-side model are the *same* statement (cross-tool statement-parity check, like Tamarin `ProofSound` in Focus 1). | MED |

### SnarkPack layer table (added 2026-07-06)

SnarkPack previously had scattered S-rows instead of the circuit side's layer
discipline. Same structure, applied to the aggregation stack — a SnarkPack
property is "verified" only when every SL under it is proved or rowed:

| # | Layer | Question | Primary evidence | Status |
| --- | --- | --- | --- | --- |
| SL0 | Crypto assumptions | Pairing (BLS12-377), KZG/structured-reference-string assumptions | Ledger rows (S2 pattern) | rowed |
| SL1 | Statement parity | Does the aggregate statement equal the per-circuit statements? | S5 conformance tests: VK arity 1, statement parity, VK-hash hardening | proved (tests green) |
| SL2 | Aggregation soundness | Does an accepted aggregate imply each Groth16 check? | S1: accepted on Filecoin lineage (decision above); removal path = Lean mechanization of the verification equation | rowed (decided) |
| SL3 | Implementation seam | Does the Rust implementation compute the reviewed algorithm? | Existing F* rows over hax-extracted Rust (`formal-handoff.md`), statement-encoding injectivity (S4), completion rules | guarded |
| SL4 | Artifact identity | Are the deployed VKs/SRS the ones the rows were stamped against? | Pinned versions (S3), VK-hash tests; deployed-artifact check joins the release checklist (Task 17) | rowed + tests |

## 4. Phase plan

Order chosen so each phase unblocks the next and the velocity debt (H9) is
paid before the heavy proof work that depends on iteration speed. Every phase
ends with its **exit gate** green and the ledger updated — a phase without a
ledger diff or a stamped artifact is not done.

### Phase A — Capstone composition theorem (H1) [L4, Lean]
Goal: one theorem, roughly
`sr1cs_satisfying_assignment rho → Consolidate2x1Statement (publics rho)`,
composing the 49 `deployedSpecN` results plus the partition fact.
- Approach: the coverage checker already proves the partition is exact; lift
  the *wiring ledger* (which wires are shared across segment boundaries, and
  the public-input wire list) into a generated Lean structure, then compose
  segment specs by conjunction + shared-wire substitution. Do NOT attempt a
  monolithic 57,969-row walk (see Lean rules in `Agents.md`).
- Deliverable: `Deployed/Contracts/Consolidate2x1/Capstone.lean` + generator;
  new obligation row in the coverage manifest so the gate fails closed.
- Exit: `check-constraint-coverage.sh consolidate2x1` green with the capstone
  obligation; `#print axioms` clean modulo named L0 residuals.

### Phase B — Structural debt paydown (H9) [infra]
Goal: canon chains ≤ 8 GB peak; `Specs.lean` edit no longer rebuilds the
forest.
- Re-architect canonical-bit chains with the StructuredLC discipline
  (symbolic-peel + fuel induction; see `structuredlc-framework` pattern and
  `StructuredLC.lean`).
- Split `Specs.lean` per segment family so an edit invalidates only its
  family's adapters.
- Exit: full clean rebuild of the Consolidate2x1 tree < 4 h wall,
  peak RSS < 8 GB per module (measure with `scripts/lean-leaf-bench.sh`).

### Phase C — Statement sufficiency + seam (H2, H3) [L1, Alloy/Tamarin + F*/hax]
Goal: an artifact that says the statement is *enough*.
- Write the consolidate2x1 statement as a typed list of bindings (public
  input → protocol object). Extend the Alloy ledger model so the adversary
  may forge any proof whose *statement* holds — if no double-spend/supply
  violation appears, the statement is sufficient in-scope. Tamarin variant if
  multi-party interaction matters (it does for compliance, less here).
- Seam (H3): hax-extract the Rust statement serialization and prove byte-layout
  ↔ public-wire-order parity in F* (same pattern as SnarkPack statement
  encoding), or a differential test pinned by a parity gate if extraction is
  disproportionate.
- Exit: new ledger rows `ZK-PROP-C2X1-STATEMENT-SUFFICIENT` (alloy) and a
  seam row; both cited from the coverage report.

### Phase D — Parity + range hardening (H5, H6) [L2/L3, Rust/Go tests]
- Enumerate every in-circuit re-implementation of a Rust derivation
  (nullifier, keys, compression, commitment); one differential test each,
  wired into CI. Explicit range gadget or width regression test for amounts.
- Exit: `CC-ASSUME-DECAF377-ENCODING` evidence upgraded from "assumed" to
  "differentially tested per surface"; Focus 4b row added.

### Phase E — L0 audit closure (H4, H7, H8) [audit]
- Poseidon parameter-provenance memo (Focus 5a); Picus composition note as a
  checked artifact; Alloy scope review (raise scope for supply properties or
  record the bound). These are documents + ledger rows, not proofs — do not
  let a model turn them into proof projects.
- Exit: no ledger row without provenance evidence; allowlist still empty.

### Phase F — SnarkPack: decide S1, close S5 [L5]
- **F1 (decision, human-in-loop):** mechanize RIPP/TIPP soundness in
  Lean/VCVio (multi-quarter; forking-lemma machinery from the DLEQ proof is
  reusable) vs. accept as an audited assumption with the Filecoin-lineage
  review as evidence. Present costed options; do not start the proof without
  sign-off.
- **F2 (S5, independent of F1):** statement-parity check between the F*
  statement model and the circuit-side statement (Phase C's typed binding
  list) — one generated conformance test, same spirit as
  `snarkpack-lean-conformance.sh` oracle shapes.
- **F3:** re-verify the completion rules: any statement-encoding change since
  the stamp reopens dependent rows; re-stamp.
- Exit: S1 has a decision recorded in the ledger; S5 gate in CI.

### Phase G — Optimization loop enabled (Section 5)
Not a work phase; the end state. Enter only when A–D are green.

### Phase H — Compliance/ciphertext protocol (transfer surface) [added 2026-07-06]
The transfer compliance surface gets the same layer treatment as the value
surface; today it is 8 `functional-assumption` classes plus unstated
encryption/protocol questions. Three distinct sub-problems, three tools:
- **H-a (L3/L4, Lean):** prove the 8 `ZK-ASSUME-TRANSFER-DEPLOYED-*` gadget
  classes with the existing deployed-bridge machinery (dossier says
  threshold/ack/poseidon patterns are reusable; shared_secret is the hard
  canon-chain-class one). Executor-drivable per class once one exemplar exists.
- **H-b (L0/L1, game-based or row):** encryption security of the Poseidon
  encryption (what the ciphertexts must hide/bind). Either a VCVio game-based
  proof (DLEQ stack) or an explicit assumption row with the property stated
  precisely — the danger is the *unstated* property, not the assumption.
- **H-c (L1, Tamarin — its only remaining seat):** the multi-party detection
  flow (who can detect/decrypt what, under which key compromise). Model only
  if the protocol relies on it; otherwise row it and drop Tamarin entirely.
- Also owns: `MODEL-ASSUME-CONSOLIDATE-COMPLIANCE-EXEMPT` (human must confirm
  consolidate2x1's absent compliance surface is intended design).
- Exit: no compliance-surface edge in `assurance-case.md` left as TODO.

### Deployment / release binding [added 2026-07-06]
A release checklist (Task 17, `docs/soundness/release-checklist.md`) binds
proofs to shipped artifacts: deployed VK/`.sr1cs` hashes == the manifest pin
the capstone was proven at; gate battery green at the release tag; prover
round-trip on the release artifacts; assurance-case tree has no unexplained
TODO on shipped surfaces. CI enforces the cheap tier continuously (Task 16):
per-PR invariants gate + lint + Alloy + seam/parity tests + the manifest-pin
tripwire (recompile, assert `relation_sha256_hex` set unchanged — blocks
circuit changes that outrun their proofs); nightly Picus battery. The full
Lean forest stays out of CI; the pin tripwire is what makes that safe.

## 5. The optimize-safely loop (end state)

Once A–D land, circuit optimization is safe iff every gate below fails closed
on any drift. **The pins are the contract**: `relation_sha256_hex` hashes raw
`.sr1cs` constraint strings, so any compiled-constraint change flips the
manifest and un-proves exactly the touched segments.

Procedure for any circuit change:
1. Recompile; `gnarkctl export-manifest`; diff segment partition.
2. Re-run extractor (`shieldd-constraint-coverage`); regenerate contracts.
   Parity gates (StructuredLC, lt-chain) are inside generation and fail
   closed.
3. Segments whose `relation_sha256_hex` moved revert to `pending`; regenerate
   their adapters with the existing generators (`gen_scp_adapters.py`,
   `gen_dtk_slice.py`, …) and re-prove. Unchanged segments keep their proofs.
4. Re-run: coverage gate, Picus probes on touched gadgets, capstone rebuild,
   differential parity tests, prover round-trip (completeness).
5. Manifest flips back to proven only with green bridges; commit.

An optimization that changes the *statement* (public inputs) additionally
reopens Phase C artifacts and — via S4 — the SnarkPack dependent rows.

## 6. Delegation map (frontier model vs. executor models)

Intended split: frontier model does planning + pattern design + first working
exemplar (~25% of volume); executor models (opus/codex-class) do the fan-out
(~75%). The gates fail closed, so executor mistakes surface as red gates, not
silent unsoundness. Per task, the frontier model writes a handoff brief:
exact scope, the pattern file to copy, the gates that must pass, and an
explicit do-not-touch list.

| Work | Owner | Why |
| --- | --- | --- |
| Phase D tests; C seam (F*/hax or differential); F2/F3; Phase G re-prove loop; B Specs.lean split; applying a proven pattern across segments; C Alloy model **implementation** (frontier spec exists: `phase-c-alloy-statement-sufficiency-spec.md`); Phase G T1 optimizations (`optimization-playbook.md`) | executor | enumerable, pattern-following, gate-verified |
| New proof *shapes* (playbook T2: windowed/GLV ladders); E crypto-judgment audits (Poseidon provenance); promoting any `draft — pending frontier review` doc to a ledger row | frontier (or human review) | novel proof design; Lean-performance trap density; vacuous-theorem risk |
| F1 RIPP mechanization (if chosen); playbook T3 (protocol-visible changes); any change to gate/manifest/ledger *semantics* | human decision | research-scale; redefines what "verified" means |

**Post-frontier operation.** When no frontier session is available, the
executor drives the plan directly: pick the highest open item in phase order
(A→G) whose owner row above says executor, using the two frontier-authored
specs (`phase-c-alloy-statement-sufficiency-spec.md`,
`optimization-playbook.md` §4 pilot) as the queue. Everything in the
frontier/human rows is parked, not attempted. Escalation target becomes the
human: hand back with the exact log, per the hard rules below. A finding
(assertion counterexample, gate contradiction, unexplained drift) always
stops the line for human review — findings are never "fixed" by adjusting
the model or gate that produced them.

Executor hard rules (in addition to Section 7): never modify a gate, a
generator's parity assertion, the coverage manifest, or the assumption
ledger's meaning; if a gate is red twice for the same reason, stop and hand
back with the log — do not iterate past it.

## 7. Operating rules (for any model executing this plan)

These are hard constraints, learned from incidents; violating them has
crashed the machine or produced silent unsoundness.

1. **Never weaken a gate to make it pass.** If a check fails, the work is not
   done. Never flip a manifest verdict without the green bridge; never edit
   emitted `.lean` by hand (fix the generator; `Projection.lean`, `Specs.lean`,
   `Bounds.lean` are hand-authored and editable).
2. **Lean resource discipline** (see `Agents.md`, incident log): one `lake`
   at a time, `LEAN_NUM_THREADS=1`, narrowest target, bounded
   `maxHeartbeats`, RSS-guarded background builds, no `native_decide`.
   Debug in leaf probes (`scripts/lean-leaf-bench.sh`), never by rebuilding
   adapters.
3. **Proof style**: segment predicates with opaque continuations; fuel
   recursion + one induction lemma for repeated rungs; StructuredLC for wide
   LCs; symbolic peel, never unfold at literal counts.
4. **Ledger discipline**: every assumption has owner/rationale/evidence/
   removal-path/status. Evidence for one layer never promotes another.
   `functional_assumption_allowlist` stays empty unless a human approves.
5. **Scope discipline**: audit phases (E) produce documents, not proofs;
   decision points (F1) stop for human sign-off; everything else executes
   without asking. If the same error hits twice, research 3–5 fixes before
   the third attempt (executor models: hand back instead, per Section 6).
6. **Verification bar** (from the roadmap): lake green, `#print axioms`
   clean modulo named residuals, artifacts SHA-stamped, gates in CI.
