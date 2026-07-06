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

### T1-a. Specialize net-balance 2-in-2-out → 2-in-1-out (~2–3k rows, ~4–5%)
`gadget-net-balance-commitment2` is a generic 2-in-2-out gadget; consolidate2x1
has one output (the executor's Task 1 finding: output lanes [53353,53693] are
the only consumed pair; the second output slot is dummy/negated filler). Emit a
specialized 2-in-1-out variant in Go, dropping the dummy-output ladder work.
- Re-verify: seg52 relation hash flips → regenerate via `gen_nb_slice.py`
  (StructuredLC + canon substrates all apply — the gadget stays a fixed-base
  ladder + canon block, just narrower). Statement UNCHANGED (same compressed
  output lanes).
- Risk: low. This is the recommended **pilot** for the whole loop (§4).

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

## 3. SnarkPack — until S1 is decided

S1 (mechanize vs. accept RIPP soundness) is an open human decision; until then
SnarkPack optimization is **configuration-level only**:
- Aggregation batch-size tuning and precomputed VK preparation are fair game —
  they do not touch the proof system's algebra. Keep the S5 conformance tests
  (`statement_parity`, VK-hash hardening) green; they pin exactly what config
  changes could silently break (arity, artifact bytes).
- Anything touching the IPP/KZG algebra, transcript, or pairing count waits for
  S1. If S1 lands "accept with audit", those become T2-class items with the
  audit note as the verification artifact.

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

## 5. Measurement discipline

- Constraint counts from the coverage report JSON (source of truth), not gnark
  logs.
- Prover-side wins must be measured (bench the actual prover), not inferred
  from row counts — Groth16 proving cost tracks nb_constraints roughly but
  witness-generation effects matter.
- Every optimization commit carries: rows before/after, segments flipped,
  gates run, and the manifest diff summary.
