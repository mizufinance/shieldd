# Optimization playbook — consolidate2x1 + SnarkPack (Phase G)

**Status:** frontier-authored. This is the concrete instantiation of the
optimize-safely loop (full-verification-plan §5): where the constraints are,
which reductions are worth trying, what each one costs in re-verification, and
the order that keeps the FV envelope intact. Every candidate below goes through
the §5 loop verbatim — recompile → manifest diff → re-extract → re-prove flipped
segments → all gates green — and only then commits.

## 1. Where the constraints are (measured)

`consolidate2x1-constraint-coverage-report.json`, 57,969 rows total:

| Rows | Share | ×Inst | Gadget |
| --- | --- | --- | --- |
| 18,987 | 32% | 3 | `gadget-dtk` (variable-base ladder + 2 canonicity blocks each) |
| 18,030 | 31% | 2 | `gadget-quad-path-24` (24-level Poseidon Merkle path) |
|  8,601 | 15% | 1 | `gadget-net-balance-commitment2` (2-in-2-out ladder gadget) |
|  6,276 | 11% | 6 | `gadget-decaf-compress-to-field` |
|  3,624 |  6% | 2 | `gadget-rvk` (150-bit fixed-base ladder) |
|  2,380 |  4% | — | poseidon hash6/hash7, nullifier, assert-equivalent, glue |

Inside each DTK instance the two canonicity blocks (253 bit rows + 252
comparison rows + flag thread, ×2) are ~1.5–2k rows — roughly **a quarter to a
third of the DTK mass is canonicity checking**, repeated per instance.

## 2. Ranked candidates — circuit

Ranked by (savings × pattern-reuse) / re-verification cost. Tiers: **T1** =
relation changes that existing Lean generators/substrates already cover
(executor-safe through the loop); **T2** = new gadget shapes needing a new
proof pattern (frontier/human design first); **T3** = protocol-visible changes
(reopen Phase C + SnarkPack S4; human sign-off).

### T1-a. Eliminate the constant seed ladder in net-balance (~1 ladder, ~1–2%)
**Corrected 2026-07-06 (executor Task 10).** The original T1-a ("specialize
2-in-2-out → 2-in-1-out, drop the dummy-output ladder") rested on a false
premise: consolidate2x1's net-balance is **already 2-in-1-out**.
`NewConsolidateCircuit` sets `nOut:1`
(`tools/gnark/internal/circuits/note_reshape_circuit.go:38-40`), so
`computeTransferNetBalanceCommitment` receives a 1-element `outputAmounts` slice
and lays down exactly one negated-output ladder — there is no dummy second
output. The `gadget-net-balance-commitment2` label on seg52 is nominal only
(`wiring_transcript.go:333-334` maps the op string unconditionally); the
single-output `NetBalanceCommitmentGadget` (`decaf_gadgets.go:135`) already *is*
the consolidate shape. The "[53353,53693] / dummy second output slot" phrasing
mis-read the executor's Task 1 note, which was about *statement* wiring naming,
not a net-balance dummy ladder.

The real latent waste is the **constant seed ladder**
`ScalarMulLE(api, curve, valueGenerator, 0, 128)`
(`transfer_circuit.go:212`): a 128-bit ladder over the literal scalar `0`,
whose value is the additive identity. `sum` starts at identity and every real
term is added on top, so the seed can be dropped by initializing `sum` from the
first accumulated term instead. Ladder inventory today: seed(0) + in0 + in1 +
out0 + blinding = 5; after = 4.
- **Blast radius (must inventory before touching Go).**
  `computeTransferNetBalanceCommitment` is SHARED by consolidate2x1
  (`note_reshape_circuit.go:130`), transfer (`transfer_circuit.go:932`), and
  ics20 withdrawal (`shielded_ics20_withdrawal_circuit.go:81`). Removing the seed
  there flips the net-balance segment in all three circuits, and — because the
  segment relation hash is over raw wire-indexed `.sr1cs` strings — every
  segment allocated after the seed in each circuit shifts too. The §4 pilot must
  first enumerate the exact flipped-segment set across all three circuits and
  confirm each is regenerable by `gen_nb_slice.py` or an existing substrate
  before any Go edit; if any flipped *proven* segment needs a NEW proof shape,
  this becomes T2-class and stops for design.
  - Alternative that keeps containment: a consolidate-only
    `computeConsolidateNetBalanceCommitment` avoids flipping transfer/ics20, but
    duplicates the function — a design call (fan-out vs. containment), not an
    executor default.
- Re-verify: touched net-balance segs regenerate via `gen_nb_slice.py`
  (StructuredLC + canon substrates apply — the gadget stays a fixed-base ladder;
  it just loses one identity-seed ladder). Statement UNCHANGED.
- Risk: low *arithmetically* (dropping an identity term), but the shared-function
  blast radius makes the re-verification wider than a single segment. Confirm the
  seed term is purely dead (contributes only identity, pinned by a parity/unit
  test) as step 1 of the loop.

### T1-b. Deduplicate canonicity blocks across DTK instances (~2–4k rows, 3–7%)
Three DTK instances each canonicalize their scalar inputs. Check (Go source +
wire-role JSON) whether any canonicalized element is the *same wire* in ≥2
instances (e.g. a shared ivk). If so, hoist one canon block and share its bits.
- Re-verify: touched DTK segs regenerate via `gen_dtk_slice.py`; the canon
  substrate (`canonicalFqBitsGadget_of_components`) is input-agnostic. Glue
  wiring changes → wiring ledger re-check.
- Risk: low-moderate (wire plumbing, no new proof shapes). Verify first that
  the shared element really is byte-identical semantics, not two decompositions
  of different values — if different values, this candidate is void.

### T1-c. Compress-to-field consolidation (~1–2k rows, 2–3%)
6 instances at ~1k each. Check whether any compression output is unused by the
statement or recomputed (the inventory says compressed lanes feed the hash; if
any instance compresses a point whose compressed form is never consumed —
e.g. an intermediate only needed as a curve point — delete it).
- Re-verify: compress bridge pattern is landed and per-instance; deletions only
  shrink the manifest.

### T2-a. Windowed fixed-base ladders (rvk, net-balance; ~30–60% of those
gadgets, i.e. 4–7k rows total)
4-bit windowing turns 150/253 double-and-add rungs into ~38/64 table-lookup
adds. Large savings but a **new relation shape**: lookup-style selection rows
replace the per-bit rungs, so the existing ladder substrates
(StructuredLC stride runs, step-cert chains) do not apply as-is.
- Requires: new Lean substrate (windowed-select semantics + a new fuel-recursive
  chain lemma) designed and exemplar-proven before any fan-out. Do NOT attempt
  executor-first. Park until a frontier session (or accept as future work).

### T2-b. Variable-base DTK ladder improvements (GLV / windowing) (up to
~6–9k rows, 10–15%)
Biggest single prize, same caveat as T2-a but harder (variable-base tables are
in-circuit). Frontier-design only. Note gnark upstream may already have a
cheaper `ScalarMul` variant — check gnark's std library at the pinned version
first; adopting an upstream audited gadget is cheaper to justify than a novel
one, but still a new relation shape for Lean.

### T3-a. Merkle arity change (quad-path-24 → wider arity) (up to ~9k rows, 15%)
Halving levels via arity-4 Poseidon (or one wider hash per level) attacks the
31% Merkle mass, but changes the tree shape = state-machine + anchor semantics
+ every client — protocol change, reopens Phase C, needs human sign-off and a
migration story. Record as future work; do not start from this playbook.

### Do-not-touch list
- Poseidon round counts / MDS parameters (crypto margin, provenance memo H4).
- The 128-bit amount decomposition (exactness is a proved property row).
- Statement field set or order (reopens Phase C + S4 + seam tests; only with
  human sign-off, and then T3 process).

## 2b. Leeway map — which open holes restrict this loop (and which don't)

The loop's safety comes from fail-closed gates, not from a small assumption
ledger: `relation_sha256_hex` pins the raw `.sr1cs`, so a T1 change un-proves
exactly the touched segments. Consequently the irreducible crypto assumptions
(Poseidon-RO, decaf prime order, DLEQ truncation, gnark backend) consume no
optimization leeway — closing them is research-scale and never widens this
envelope. T2 is blocked on new Lean proof shapes, not assumptions.

Holes that DO restrict the loop, in the order they pay back:

1. **Remove the filecoin lineage (S1 → mechanize).** Until S1 is closed, §3
   keeps SnarkPack config-only. The removal path is to FV the inherited
   algebra outright — mechanize the RIPP refinement (TIPP/MIPP), the KZG
   commitment openings, and the aggregation transcript — so SnarkPack
   soundness rests on our own proofs rather than filecoin-lineage provenance
   (`crates/crypto/proof-aggregation/formal/snarkpack/ripp-refinement.md`,
   `filecoin-divergence-findings.md`). This is the single biggest leeway
   unlock: algebra/transcript/pairing-count optimizations go from forbidden
   to T2-class with a mechanized artifact backing each change, and every
   divergence-from-filecoin finding stops being a standing risk. Human
   green-light required to start (plan §6 owner row: F1), but it should be
   treated as the priority hole, not an optional branch.
2. **Alloy↔statement seam gate.** The Alloy models are hand-maintained against
   `reference/phase-c-alloy-statement-sufficiency-spec.md`; nothing mechanical
   ties the Alloy signature to the circuit's public-input list. Irrelevant for
   T1 (statement unchanged, gate-asserted), but a conformance test pinning the
   Alloy sig fields to the statement fields (fail-closed on drift) makes T3
   Phase-C reopens auditable instead of human-only.
3. **gnark frontend segment identity.** The one named trust gap *inside* the
   loop's own trust path: pins hash compiled `.sr1cs`, while Define-wiring →
   compiled-segment identity is only partially covered. Hardening it raises
   confidence in every loop run — worth more to this loop than any crypto
   assumption.

Spend hole-closing budget in that order, and only when T2/T3 or SnarkPack
algebra work is actually on the table; none of it blocks the T1 loop.

## 3. SnarkPack — until S1 is decided

S1 (mechanize vs. accept RIPP soundness) is an open human decision; until then
SnarkPack optimization is **configuration-level only**:
- Aggregation batch-size tuning and precomputed VK preparation are fair game —
  they do not touch the proof system's algebra. Keep the S5 conformance tests
  (`statement_parity`, VK-hash hardening) green; they pin exactly what config
  changes could silently break (arity, artifact bytes).
- Anything touching the IPP/KZG algebra, transcript, or pairing count waits for
  S1. The preferred S1 outcome is the §2b item-1 removal path (mechanize the
  RIPP/TIPP/MIPP refinement and KZG openings, dropping the filecoin-lineage
  assumption); "accept with audit" is the fallback, and then those items become
  T2-class with the audit note as the verification artifact.

The detailed SnarkPack loop (category-1/2/3 rule, byte/trace baselines,
bench discipline, transcript do-not-touch list) is
`crates/crypto/proof-aggregation/optimization-playbook.md` — it governs any
change inside that crate. `fv-opt-loop.sh gates` runs
`check-snarkpack-invariants.sh` + `check-snarkpack-filecoin-shape.sh`
automatically whenever the crate differs from the merge base.

## 4. The pilot run (recommended first execution)

Run T1-a (net-balance specialization) end-to-end as the loop's shakedown:
1. Baseline: record `nb_constraints`, prover wall time, proof size.
2. Go change + recompile; `export-manifest`; confirm ONLY seg52-family segments
   flip in the manifest diff (if anything else flips, stop — the change leaked).
3. Re-extract, regenerate seg52 contracts/adapters, rebuild narrowest targets,
   flip verdicts back with green bridges.
4. Full gate battery: coverage (--require-full-deployed), soundness invariants,
   Picus probe on the new gadget, parity/range tests, capstone rebuild,
   prover round-trip (completeness!), statement-seam test.
5. Record before/after in this doc; commit.

A pilot that completes in ≤2 sessions proves the loop is executor-drivable;
after that, T1-b and T1-c are the queue, and T2/T3 wait for design capacity.

## 5. Results ledger — what each optimization actually bought

One row per landed optimization. Rows and prover time come from measurement
(coverage report JSON + actual prover bench), never inferred. A candidate whose
measured win is negligible gets recorded too — knowing a lever doesn't pay is
part of the map. `scripts/fv-opt-loop.sh gates --record-out` emits the raw
record; distill it into a row here on commit.

| Opt | Landed | Rows before → after (Δ) | Prover wall time before → after | Proof size | Segments flipped | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| T1-a seed-ladder elimination | pending gate battery | 57,969 → 57,329 (−640, −1.1%) | TBD (bench with `gnarkctl replay --mode prove`) | unchanged (Groth16) | seg52 family | shared fn: also flips transfer/ics20 net-balance segs |

## 6. Measurement discipline

- Constraint counts from the coverage report JSON (source of truth), not gnark
  logs.
- Prover-side wins must be measured (bench the actual prover), not inferred
  from row counts — Groth16 proving cost tracks nb_constraints roughly but
  witness-generation effects matter.
- Every optimization commit carries: rows before/after, segments flipped,
  gates run, and the manifest diff summary.
