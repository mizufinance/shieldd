# Full-Verification Plan: consolidate2x1 + SnarkPack

Long-term plan to bring **one circuit (consolidate2x1)** and **SnarkPack
aggregation** to "fully verified": every soundness-relevant property either
mechanically proved or an explicitly audited assumption with an owner and a
removal path — then keep that guarantee while optimizing.

This document is an operating handbook: a model (or engineer) picking up any
phase should be able to execute it from this file plus the pointed-to
artifacts, without re-deriving strategy. Read the **Operating rules** section
before touching anything.

Related:
`crates/core/component/compliance/formal/assumption-ledger.md` (the ledger),
`crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md`
(SnarkPack evidence ledger).

## 1. The verification stacks — ZK circuits and SnarkPack

Two verified objects with different shapes, so two stacks. The **ZK-circuit
stack (L0–L5)** verifies one circuit family from crypto assumptions up to the
deployed `.sr1cs` and its prover/verifier. The **SnarkPack stack (SL0–SL4)**
verifies the aggregation layer that consumes finished per-circuit Groth16
proofs. They meet at exactly one boundary: the **aggregation seam** (the
per-circuit statement/VK handed to the aggregator), verified by the S5
conformance tests and tracked as SL1r. Within each stack a property is only
"verified" when every layer under it is either proved or an audited ledger
row; layers never promote each other (promotion rules in Section 8).

Assumption placement rule: **all "we believe the math" content lives in the
assumptions layer (L0 / SL0)** as ledger rows. Every other layer is a
verification target — its residual gaps are holes with removal paths, not
standing assumptions.

### 1a. ZK-circuit stack (L0–L5)

| # | Layer | Question | How verified | Reference failure |
| --- | --- | --- | --- | --- |
| L0 | Assumptions (crypto + parameters) | Are the primitives what we idealize them as? Poseidon RO/CR + parameter provenance, decaf377 prime-order group, BLS12-377 pairing hardness, Groth16/AGM-class assumptions, SRS/ceremony provenance | Audit + ledger rows (`CC-ASSUME-*`, `ZK-ASSUME-*` crypto rows); parameter-provenance review (H4 memo) | wrong Poseidon security margin for this field |
| L1 | Protocol / statement completeness | Does the *statement* the circuit proves imply protocol security? Is every necessary object bound (note→nullifier, anchor, value balance)? | Alloy (ledger state machines + statement sufficiency), Tamarin (multi-party flows), human statement review | a sound proof of an insufficient statement |
| L2 | No under-constraint | Is each gadget's constraint system deterministic — no free wire, no missing constraint? | Picus + finite-field cvc5 (leaf decomposition, `picus-leaf-decomposition` pattern), fail-closed battery | halo2 2024/25-style library under-constraint |
| L3 | Gadget semantics | Do the extracted gadget constraints imply the gadget spec? | Lean (`*Bridge.lean` `circuit_sound` theorems) | constraints satisfiable by wrong outputs |
| L4 | Compiled artifact | Do the *actual compiled `.sr1cs` rows* imply the whole-circuit statement? | Lean deployed raw-row proofs (`inst*_bound` → capstone → `Statement.lean`) + `shieldd-constraint-coverage` partition gate | compile-time specialization diverging from proved gadget |
| L5 | Proving-stack code (FV target, not an assumption bucket) | Do the prover/verifier implementations correctly realize the scheme? gnark backend, Groth16 verify path, key derivation plumbing | Today: pinned versions, advisory monitoring, VK↔`.sr1cs` derivation gate, prover round-trip. Target: §8a verifier FV program (L5a–L5e) shrinks this to the L0 pairing/q-type rows | backend soundness CVE (GHSA-q3hw-3gm4-w5cr) |

L5 is a list of **FV targets with interim mitigations**, not assumptions: the
irreducible "the math is hard" content (pairing hardness, AGM, SRS) belongs
to L0 rows, and §8a's end state is that L5 reduces to exactly those rows plus
the unverified pairing primitive (L5e, an explicit non-goal).

**How the layer boundaries are verified (ZK stack):**
- **L0→all**: every proof above is conditional on the L0 rows; the ledger
  gate (`check-soundness-invariants.sh`) enforces row discipline; H4-style
  provenance memos discharge parameter rows.
- **L1↔L4**: the statement-seam test binds the Rust statement bytes to the
  Lean `Statement.lean` projection; Alloy models are hand-transcribed
  (named `MODEL-ASSUME-*` rows + seam tests).
- **L2↔L3/L4**: Picus verdicts are pinned to the exact `.sr1cs` the Lean
  extractor consumes (input fingerprints in each `.picus.txt`, wiring cert,
  `TestPicusExportFidelityAllGadgets`).
- **L3↔L4**: for `consolidate2x1` there is no boundary to trust — L4 proofs
  are extracted from the deployed rows themselves (segment identity closed).
  For `transfer` the boundary is the Go emitter's trace labels (named gap,
  `ZK-ASSUME-GNARK-FRONTEND-BACKEND`).
- **L4↔L5**: `check-vk-derivation.sh` pins the deployed proving/verifying
  keys to the exact pinned `.sr1cs`; manifest hash pins fail closed on drift.

**Holes left per layer (ZK stack, IDs from §3):** L0: H4, H-b, D2 · L1: H8,
H-c, D4 · L2: none open for consolidate2x1 (clean re-stamp in flight,
handoff Q2) · L3/L4: H-a, F-ext (transfer compliance classes, ics20,
split1xN; transfer segment identity) · L5: V1 (§8a program) · cross-cutting:
D1 (turnstile), D3 (privacy axis).

### 1b. SnarkPack stack (SL0–SL4)

The aggregator is verified against a different question set — it consumes
already-proved Groth16 proofs, so it has no circuit/constraint layers; its
risk concentrates in scheme soundness and implementation conformance.

| # | Layer | Question | How verified | Holes left |
| --- | --- | --- | --- | --- |
| SL0 | Assumptions | Pairing hardness, q-type/KZG assumptions, SRS provenance for the aggregation SRS | Ledger rows in `formal-handoff.md`; `check-snarkpack-invariants.sh` row discipline | D2 (ceremony row, shared with L0) |
| SL1 | Aggregate statement sufficiency | Does accepting one aggregate imply each per-circuit statement? (arity, statement hashing, VK binding) | S5 conformance tests: VK-arity=1 + statement-parity + VK-hash pinning (proved-by-test) | SL1r: Lean-side and F*-side statement models not yet mechanically the same statement |
| SL2 | Scheme soundness (RIPP/TIPP/MIPP + KZG final-ck) | Does the aggregated equation imply each Groth16 equation? | Accepted on lineage evidence (S1 human decision 2026-07-06: Filecoin Bellperson v0.21.0 lineage + paper review + `ripp-refinement.md`), rowed with removal path | SL2r: not mechanized; removal path = §8a L5b Lean proof |
| SL3 | Mechanization surface (F*) | Do the F* models match the adapted code where rows demand it? | Existing F* developments + completion rules; frozen category-3 surface (no new extraction) | guarded — completion rules enforced by gate, no new F* scope |
| SL4 | Implementation conformance | Does the shipping Rust (`verify_family_aggregate`) match the model? | Conformance/differential tests (`just snarkpack-lean-conformance`, shape gate `check-snarkpack-filecoin-shape.sh`) + adaptation register | §8a L5d: verified reference model + byte-differential gate not yet built |

**How the layer boundaries are verified (SnarkPack stack):** SL0→above:
ledger-row conditionality, same discipline gate. SL1↔ZK-stack: the
aggregation seam — per-circuit statement hash and VK identity pinned by the
S5 tests (this is the *only* inter-stack boundary; nothing else in either
stack may assume facts from the other). SL2↔SL4: the Stage 9 Lean
differential conformance gate ties the accepted-equation shape to the
implementation. SL3↔SL4: adaptation register + divergence findings doc pin
the F* model to the adapted Rust.

**Direction not covered by either stack:** L2–L4 and SL1–SL2 are
**soundness-only** (constraints/equations ⇒ spec). **Completeness** (honest
witness always satisfies; no honest-user funds bricked) is covered by prover
round-trip tests, not proofs — keep it a named test obligation, not an
accident.

**Boundary fidelity (cross-cutting).** No tool checks that
another tool's model matches the real artifact: the Alloy facts are
hand-transcribed from the circuit/handler, the F* statement model is separate
from the Lean one, the deployed artifact is separate from the manifest pin.
Every such seam must be a **named ledger row** (`MODEL-ASSUME-*` class) plus
the strongest cheap mechanical pin available (seam/conformance test, hash
pin). Unnamed seams are findings. The composition across layers and tools is
stated once, in `docs/soundness/assurance-case.md` — the tree of protocol
claims where every edge is a stamped artifact, a ledger row, or an explicit
TODO. Keep it current per its maintenance rule.

**Tooling policy.** Tools are routed per assumption type
and each must earn its seat: Lean (semantics, L3/L4), Picus (determinism, L2),
Alloy (statement sufficiency, L1), tests (completeness + parity). Tamarin is
retained ONLY for the compliance detection flow (hole H-c) — if that surface
stays assumption-rowed, drop Tamarin. No new hax extraction: statement/model
seams use differential tests, not F* extraction; F* remains only where
SnarkPack rows already exist.

## 2. Current state (verify via the named gate; never re-derive from this doc)

History and how each result landed: `reference/history.md`. Per-assumption
authority: the ledgers. This table is only the map of what is standing and
which gate proves it is still standing.

| Surface | State | Verifying gate |
| --- | --- | --- |
| consolidate2x1 L4/L3 | Deployed obligations + capstone + Statement binding proven against the raw `.sr1cs` | `check-constraint-coverage.sh --require-full-deployed consolidate2x1` (from `tools/gnark/lean`) |
| consolidate2x1 L2 | All probed gadgets deterministic (leaf decomposition) | Picus battery + `TestPicusExportFidelityAllGadgets` + wiring cert/input fingerprints |
| consolidate2x1 L1 | Statement-sufficiency + ledger state-machine models in scope | `compliance-alloy.sh` |
| transfer | Whole-circuit sound theorem + deployed bridges; compliance gadget surface rowed (see H-a) | coverage gate (transfer) + stamped axiom artifacts |
| L0/L5 | Named ledger rows only, none `open` | `check-soundness-invariants.sh` (ledger discipline) |
| SnarkPack | SL0 rowed · SL1 proved (conformance tests) · SL2 rowed (S1 accepted, removal path = L5b) · SL3 guarded (F* rows + completion rules) · SL4 rowed + tests | `check-snarkpack-invariants.sh`, `check-snarkpack-filecoin-shape.sh`, conformance tests |
| Optimize-safely loop | Orchestrated, fail-closed, deletion-aware | `scripts/fv-opt-loop.sh` (diff/gates) + manifest-pin tripwire in CI |
| Release binding | Proof↔artifact identity at release tags | `docs/soundness/release-checklist.md` + CI tiers (per-PR invariants/pin tripwire; nightly Picus; cloud full Lean) |

## 3. Holes left

Everything not in this section and not an `assumed` ledger row is proved and
gate-pinned. Each hole has a next action and an owner; the §8 backlog table
carries the ones not yet scheduled. IDs are stable for cross-reference.

| ID | Layer | Hole | Next action | Owner |
| --- | --- | --- | --- | --- |
| H4 | L0 | Poseidon parameter provenance for this field (`CC-ASSUME-POSEIDON-PARAM-PROVENANCE`) | Memo drafted at `reference/poseidon-parameter-provenance.md`; human acceptance as the row's discharge evidence | frontier/human |
| H8 | L1 | Alloy small-scope bound (`MODEL-ASSUME-BOUNDED-SCOPE`) | Light models raised (scope 10 / wider ints, gate-restamped); remaining: the two statement-sufficiency models — raise per-sig bounds or record accepted | frontier |
| H-a | L3/L4 | 8 `ZK-ASSUME-TRANSFER-DEPLOYED-*` compliance gadget classes unproved | Deployed-bridge fan-out with existing machinery; executor-drivable once per-class exemplar exists | executor |
| H-b | L0/L1 | Poseidon-encryption security property unstated/unproved | VCVio game-based proof or a precisely-stated assumption row — the danger is the unstated property | frontier |
| H-c | L1 | Multi-party detection flow + ACP↔Orbis committee binding (the one REQUIRED Tamarin deliverable) | Tamarin model; if the surface stays rowed, drop Tamarin | frontier |
| SL1r | L1/L4 | Aggregate↔per-circuit statement: Lean-side and F*-side models not yet mechanically the same statement | Cross-tool statement-parity artifact (extends S5 conformance) | executor |
| SL2r | L5 | RIPP/TIPP soundness accepted on lineage evidence (S1), not mechanized | §8a L5b: Lean proof that the aggregated equation implies each Groth16 equation | human-gated |
| V1 | L5 | Groth16 scheme + verifier implementation trusted by row (BCTV14/halo2 class) | §8a program L5a/L5c/L5d; VK↔`.sr1cs` pinning first (executor Q4) | mixed, see §8a |
| D1 | protocol | No runtime supply accounting (Zcash turnstile lesson): unknown bugs stay undetectable | Feasibility decision — converts every residual row into a detectable failure | human |
| D2 | L5 | Production SRS/ceremony provenance has no ledger row | Add the row when the ceremony is scheduled | human |
| D3 | direction | Privacy/ZK axis has zero mechanized coverage and no regression gate (all proofs are soundness-direction) | Scoping decision: verification program or explicit accepted-risk row | human |
| D4 | L1 | Native statement construction (Rust chain-state → statement) covered by seam/parity tests only | Verified reference builder + byte-differential gate | frontier |
| F-ext | L3/L4 | ics20 whole-circuit proof; split1xN family proofs (retire per-family `ZK-ASSUME-DECAF377-*`) | Same deployed-bridge pattern; executor fan-out after transfer H-a | executor |

## 4. Next steps — two queues

### FV queue (in order)
1. **In flight:** T1-a closure (seg52 rebuild → manifest flip → gate battery
   → results row), then the clean Picus re-stamp. Tracked in
   `EXECUTOR-HANDOFF.md` Q1/Q2.
2. **VK↔`.sr1cs` derivation pinning** (V1 first step; executor Q4).
3. **H4 + H8 memos** — documents and ledger updates, not proofs.
4. **H-a fan-out** — frontier builds one compliance-class exemplar, executor
   applies across the 8 classes.
5. **§8a verifier program** — L5d conformance gate, then L5a (Groth16 AGM),
   then L5c (FS transcript); L5b behind the S1 removal path.
6. **H-c Tamarin model**, then **F-ext** (ics20, split1xN).
7. **Human decisions pending, any time:** D1 turnstile, D3 privacy axis, §8a
   sequencing sign-off. MC1 was resolved on 2026-07-08: consolidate is
   intentionally compliance-exempt because it cannot change ownership.

### Optimization queue
Governed by `docs/soundness/optimization-playbook.md` (§2 ranked candidates,
§4 execution order, §5 results ledger) and driven through
`scripts/fv-opt-loop.sh` — every attempt is diff-contained, gate-verified,
and recorded. Executor order (handoff Q3): T1-d single-DTK (inventory done,
coset argument confirmed) → TC-1 → T1-h → F-1 census completion. T2/T3 and
all SnarkPack §8 candidates wait for frontier design or human sign-off.

## 5. The optimize-safely loop (end state)

Circuit optimization is safe iff every gate below fails closed
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
reopens the L1 statement-sufficiency artifacts (Alloy models + seam tests)
and — via S4 — the SnarkPack dependent rows.

## 6. Delegation map (frontier model vs. executor models)

Intended split: frontier model does planning + pattern design + first working
exemplar (~25% of volume); executor models (opus/codex-class) do the fan-out
(~75%). The gates fail closed, so executor mistakes surface as red gates, not
silent unsoundness. Per task, the frontier model writes a handoff brief:
exact scope, the pattern file to copy, the gates that must pass, and an
explicit do-not-touch list.

| Work | Owner | Why |
| --- | --- | --- |
| Applying a proven pattern across segments (H-a fan-out, F-ext); parity/conformance tests (SL1r, D5); VK↔`.sr1cs` pinning (V1 step 1); the §4 optimization queue (T1-class, `optimization-playbook.md`); maintaining the Alloy models against `reference/phase-c-alloy-statement-sufficiency-spec.md` | executor | enumerable, pattern-following, gate-verified |
| New proof *shapes* (playbook T2: windowed/GLV ladders; §8a L5a/L5c; H-b, H-c, D4); crypto-judgment audits (H4, H8); promoting any `draft — pending frontier review` doc to a ledger row | frontier (or human review) | novel proof design; Lean-performance trap density; vacuous-theorem risk |
| L5b RIPP mechanization (SL2r removal path); playbook T3 (protocol-visible changes); D1/D3 decisions; any change to gate/manifest/ledger *semantics* | human decision | research-scale; redefines what "verified" means |

**Post-frontier operation.** When no frontier session is available, the
executor drives the plan directly: pick the highest open item in the §4
queues whose owner row above says executor, with `EXECUTOR-HANDOFF.md` as
the concrete task list. Everything in the
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
2. **Lean resource discipline** (see `tools/gnark/lean/AGENTS.md`, incident log): one `lake`
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
5. **Scope discipline**: audit items (H4, H8) produce documents, not proofs;
   decision points (D1, D3, SL2r) stop for human sign-off; everything else executes
   without asking. If the same error hits twice, research 3–5 fixes before
   the third attempt (executor models: hand back instead, per Section 6).
6. **Verification bar** (from the roadmap): lake green, `#print axioms`
   clean modulo named residuals, artifacts SHA-stamped, gates in CI.

## 8. Beyond current scope — threat-review backlog and promotion rules

### Promotion rules (canonical statement)
- A property row reaches `proved` only when a stamped artifact proves the
  exact property scope the row cites.
- Gadget proofs, Picus reports, differential tests, and symbolic proofs are
  evidence for their own layer; they never promote another layer by
  implication.
- Assumptions retire only when a new artifact proves the same obligation over
  the shipping code or a strictly stronger boundary.
- Every heavy prover artifact has a reproducible command and a SHA-256 stamp
  checked by CI.

### Verification bar (per scheduled item)
Lean: lake green, `#print axioms` clean beyond named residuals, no
`sorry`/`admit`/`axiom`. Artifacts stamped (source + artifact sha256) and
wired into CI. Every retired/added ledger row has a status and removal path.

### Open backlog (P0 first; not yet scheduled in the §4 queues)
| Item | What | Layer/tool |
| --- | --- | --- |
| ACP↔Orbis multi-party model | The one REQUIRED Tamarin deliverable (= hole H-c): committee/consensus flow binding accepted statements across parties | L1, Tamarin |
| ics20 withdrawal whole-circuit proof | Same deployed-bridge pattern as consolidate2x1/transfer (supply/denom-trace invariants exist) | L3/L4, Lean |
| split1xN family proofs | Extend the artifact pattern; retires remaining `ZK-ASSUME-DECAF377-*` per family | L3/L4, Lean |
| Turnstile feasibility | Decide on Zcash-style runtime supply accounting as a backstop (Zcash June-2026 Orchard incident) | protocol, human |
| ACL2/Axe independent R1CS checks | Optional independent regression layer for high-risk gadgets; never promotes | L2 |
| Statement/aggregation seam unification | One statement across Rust bytes, Lean, F* (extends S5/SL1) | L1/L4 |
| VK↔`.sr1cs` derivation pinning | Mechanical check that the deployed proving/verifying keys derive from the exact pinned `.sr1cs` — closes the `ZK-ASSUME-GNARK-FRONTEND-BACKEND` plumbing half (the "proved the model, trusted the plumbing" shape); executor-class | L5, gate |
| Verifier FV program (L5a–d) | See §8a — mechanize the accept path above the pairing primitive | L5, Lean/F* |
| Privacy-axis scoping decision | Everything proved today is soundness-direction; the ZK/leakage direction (witness independence, encryption usage, ss derivation — gnark GHSA-9xcg class) has no mechanized coverage and no regression gate. Decide: scope a verification program, or record an explicit accepted-risk row. Even "accepted risk" beats the current unexamined state | direction, human |
| Native statement construction | The Rust that builds the statement from chain state is seam/parity-tested (S4/S5, Alloy H2) but not proved; a field-ordering bug there is invisible to circuit-layer FV. Candidate: verified reference builder + byte-differential test promoted to a gate | L1, Rust/F* |

### §8a. Verifier FV program (motivation: `reference/external-incidents-coverage.md`)
Goal: shrink L5 from "the whole verifier stack is correct" to "the BLS12-377
pairing primitive is correct + q-type assumptions hold" — the same boundary
Zcash's Tachyon program targets. Staged, each independently valuable:
- **L5a — Groth16 scheme soundness (AGM), Lean.** The pairing-equation check
  implies knowledge soundness; port the Bailey–Miller-style AGM
  formalization shape rather than inventing it. Retires the BCTV14-class
  risk row.
- **L5b — SnarkPack/RIPP (TIPP/MIPP + KZG final-ck) soundness, Lean.** The RIPP
  mechanization; gated by S1.
- **L5c — Fiat-Shamir transcript reduction, Lean/VCVio.** Same shape as the
  existing DLEQ FS proof, over the SnarkPack transcript (category-3 surface
  stays frozen; the proof is *about* it, not a change *to* it).
- **L5d — implementation conformance.** Verified reference model of
  `verify_family_aggregate` + Groth16 verify; byte-level differential tests
  against the Rust promoted to a gate (extends the F*/S5 seams).
- **L5e — floor (explicit non-goal).** Pairing/Miller-loop/field arithmetic
  stays an assumption row + differential tests; fiat-crypto-style verified
  field arithmetic only if ever justified.
Ordering: L5d and the VK-pinning backlog row first (cheap, executor-class,
close the plumbing); L5a/L5c next (proof work with precedent); L5b behind S1.
