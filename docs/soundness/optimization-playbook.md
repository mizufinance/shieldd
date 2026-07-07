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

### T1-d. Compute DTK once, not per note (~−12–13k rows, ~21%) — 2026-07-07 audit
Largest confirmed redundancy in the deployed circuit.
`verifyNoteReshapeSpend` and `verifyNoteReshapeOutput` each call
`DiversifiedTransmissionKey` (the full ~6.3k-row 253-bit variable-base ladder
plus the whole IVK derivation), so consolidate2x1 pays the DTK mass 3×. But the
circuit *already asserts* every note's `div_gen ≡ shared.div_gen` and
`transmission ≡ shared.transmission` (note_reshape_circuit.go:274/276/342/344),
and DTK inputs `nk/ak/ivk` are circuit-globals. So: compute DTK **once** from
`sharedDivGen` in `Define`, assert it ≡ `sharedTransmission`, and let the
per-note equivalence asserts carry the binding — delete the 2 redundant
instances.
- Soundness argument to pin before coding: decaf equivalence is the 2-torsion
  coset; scalar-mul commutes with the coset, so DTK of an equivalent
  representative is equivalent — the per-note `AssertEquivalent` chain closes
  the same relation. Frontier should confirm this in the statement-binding
  inventory before the Go change.
- FV impact: whole DTK segment families *disappear* from the manifest (row
  deletions, not flips). `fv-opt-loop.sh diff` treats unexpected
  deletions as red — the allowlist mechanism needs a deletion clause for this
  candidate. Coverage gate shrinks; remaining single DTK instance keeps its
  existing proofs (input wire changes only → glue/wiring re-check).
- Subsumes most of T1-b (the duplicated canon blocks live inside the deleted
  instances) and makes T2-b one-third as valuable.

### T1-e. Hoist the IVK derivation out of `DiversifiedTransmissionKey` — 2026-07-07 audit
Subsumed by T1-d; standalone fallback if T1-d's equivalence argument stalls.
`IncomingViewingKey` (CompressToField(ak) + Poseidon2 + `IVKModRDecomposition`
with a 253-bit ToBinary and two `LessThanConstant253`) is recomputed
identically per DTK call (spend_auth_shared.go:115) — nk, ak, ivkReduced,
quotientA are all shared wires. Hoist once into `Define`, pass `ivk` in.
Save ≈2 × (compress ~1k + Poseidon2 + range blocks) ≈ 3–4k rows.

### T1-f. Compress `div_gen` once (~−2k rows) — 2026-07-07 audit
Sharpens T1-c with a concrete site: `div_gen_fq` is computed per spend/output
(note_reshape_circuit.go:197/296) for the note commitment, but every note's
`div_gen` is asserted decaf-equivalent to `shared.div_gen`, and decaf
compress-to-field is coset-invariant — equivalent representatives compress to
the *same* Fq element. Compress `sharedDivGen` once in `Define`, reuse the
wire. 3 instances → 1. Same manifest-deletion caveat as T1-d, smaller.

### T1-g. Redundant per-note transmission on-curve checks (small) — 2026-07-07 audit
`assertDecafPointOnCurve(transmission)` runs per note (lines 270/338) *and*
on `sharedTransmission` in `Define` (line 81), with equivalence asserted
between them. If `AssertEquivalent`'s relation already forces membership given
one on-curve side (check decaf377-go gnark internals), the per-note checks are
deletable. Hundreds of rows at most — bundle with T1-d, not standalone.

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

### T2-c. Swap `ScalarMulLE` for a 2-bit windowed ladder (gadget-level, all
ladders; ~25–35% of every ladder) — 2026-07-07 audit
`ScalarMulLE` (compliance/dleq.go:50) is the textbook 1-bit double-and-add:
per bit = 1 unified Edwards add + 2 `Select` + 1 double + 1 bit row. gnark's
own `std/algebra/native/twistededwards.Curve.ScalarMul` at our pinned version
processes 2 bits per iteration with `Lookup2`, halving the add/select count;
`DoubleBaseScalarMul` (Straus shared doubling) is already used in DLEQ but
nowhere else. Adopting the upstream audited gadget is the cheapest-to-justify
version of T2-a/T2-b (audited upstream, but still a new relation shape for the
ladder Lean substrates — frontier design first). Applies to every ladder in
both circuits: DTK, rvk, net-balance, and all 14+ compliance ladders below.

### T1-h. `ToBinary` duplication sweep (~250–1,500 rows per circuit) — 2026-07-07 audit
gnark does not CSE hint-based decompositions, so repeated `api.ToBinary` on
the *same wire* pays full bit rows + boolean constraints each time. Confirmed
duplicates: (a) ivk — decomposed in `IVKModRDecomposition`
(spend_auth_shared.go:87) and again inside `ScalarMulLE` for the DTK ladder,
per DTK instance; (b) transfer: esk decomposed 3× per
`DeriveSharedSecretsSpend` call (one per ladder, 4 calls); (c) transfer:
receiver amount decomposed in `ThresholdFlag`'s `fieldLessThan`
(threshold.go:35) and again in the net-balance `ScalarMulLE(amount, 128)`.
Fix: decompose once, thread bits (the ladder gadgets need a bits-in variant).
Executor-safe shape (wire plumbing), but touches ladder gadget signatures.

## 2t. Transfer-only candidates — the compliance surface (2026-07-07 audit)

The transfer circuit is consolidate plus the compliance add-on:
4 `DeriveSharedSecretsSpend` tiers, 4 `VerifyDLEQ` calls, 2
`DeriveACKFromLeafD`, 5 Poseidon-encryption checks, threshold flag, address
bit-packing. Measure per-gadget mass with `profile_test.go` before ranking —
but the redundancies below are structural, read straight from the source.

### TC-1. Select the base, not the product, in `DeriveSharedSecretsSpend`
(~3 full 251-bit ladders, likely the single largest transfer win)
spend_shared.go:37–42 computes **both** `esk·ack` and `esk·dkPub` (two full
variable-base ladders) and then `Select`s one result. Three of the four call
sites (sender_ext, output_core, output_ext —
transfer_circuit.go:688/700/712) discard everything except the selected
point. For those, select the *base point* first
(`Select(isFlagged, dkPub, ack)`) and run **one** ladder. The sender_core
call keeps both (it consumes `ssDetection = esk·dkPub` unconditionally).
Saves 3 × (~2.5k) ≈ 7–8k rows. Relation shape unchanged (same ladder gadget,
one fewer instance) — T1-class through the loop, manifest rows deleted.

### TC-2. EPK recomputation: confirm the fixed-base doubles fold
`computedEPK = ScalarMulLE(G, esk, 251)` per tier (spend_shared.go:34, 4×).
G is a compile-time constant, so `curve.Double(current)` should
constant-fold (T1-a's −640 = 5 rows/bit datapoint suggests it does), leaving
~5 rows/bit. Verify in the wire-role JSON; if the doubles are materializing,
constant-folding them is free money (4 × ~1.3k). Longer term this is the
prime T2-a windowed-constant-table site.

### TC-3. Move DLEQ verification out of the circuit entirely (T3-class,
protocol decision, ~4 × two double-base 251-bit ladders ≈ 10–15k rows)
High-level "should we even do this here" item. `VerifyDLEQ` runs two
`DoubleBaseScalarMul` per tier over `(publishedC, publishedS, epk, ack, S)`.
If every DLEQ input is already bound in the statement (epk/c/s lanes are —
check ack/S lanes in the transfer binding inventory), the chain can verify
the four DLEQs **natively** (microseconds) instead of paying ~an eighth of
the circuit for them, exactly like the auth signatures are verified natively
(`verify_auth_sigs`). Changes the statement/handler split → Phase C + S4 +
human sign-off; record, don't start.

### TC-4. ACK ladders and `AddressPlaintextFQs` bit-packing (small)
`DeriveACKFromLeafD` = one 251-bit variable-base ladder ×2 (sender,
receiver) — inherent unless T2-c lands. `AddressPlaintextFQsFromCompressed`
(address_encryption.go:11–13) does two 256-bit `ToBinary` just to repack
field elements into byte-aligned plaintext limbs — check whether the
Poseidon-encryption plaintext layout could take the Fq lanes directly
(protocol-adjacent: changes ciphertext layout → category-2-equivalent for
the compliance wire format).

### TC-5. Poseidon is already near-R1CS-optimal — don't chase it
The in-circuit cost is S-boxes only (MDS/linear layers are free in R1CS);
alpha=17 (5 muls/S-box) is forced by gcd(α, q−1)=1 on BLS12-377 Fq. The
"optimized Poseidon" (Neptune-style sparse partial-round matrices) speeds up
*witness generation*, not constraint count — worth doing off-circuit only if
prover profiling shows witness-gen hot. Fewer/narrower hashes is the only
in-circuit lever, and the hash widths already match their input arities.
- Poseidon round counts / MDS parameters (crypto margin, provenance memo H4).
- The 128-bit amount decomposition (exactness is a proved property row).
- Statement field set or order (reopens Phase C + S4 + seam tests; only with
  human sign-off, and then T3 process).

## 2x. Frontier-lens findings (2026-07-07) — lower bounds, hints, forensics

Four lenses beyond redundancy-reading: rows-vs-information floor,
verify-don't-compute, security-margin arbitrage, mechanical forensics.

### TC-6. Borrow-witness comparison in `ThresholdFlag` (~130 rows, transfer)
`fieldLessThan` (threshold.go:34) decomposes **both** operands (2 × 128 bits)
and runs a bit comparator. Verify-don't-compute form: witness boolean `flag`,
decompose only `d = a − b + flag·2¹²⁸` to 128 bits — `flag` is forced iff
`a < b`, sound given both operands independently range-bound (amount is via
net-balance; pin the leaf threshold's 128-bit bound once). One decomposition
instead of two. Small but the pattern generalizes to any var-vs-var compare.

### M-1. Merkle is ≥94% Poseidon S-box floor — do not micro-optimize
Measured 9,015 rows / 24 levels = 375/level vs the width-5 permutation's
S-box floor ≈ 355 (S-boxes are the only R1CS cost; linear/MDS layers are
free). The 4-child select network is ~20 rows/level of the gap (and
`isIndex0/1/2` are linear in `isIndex3 = bit0·bit1` — 3 of the 4 indicator
muls at tct_path.go:45–48 are deletable, but that is noise). The only real
levers are arity (T3-a) or a cheaper permutation (protocol change). Anything
else here is wasted effort — recorded to stop future audits re-mining it.

### E-1. Edwards add is near-floor; superoptimization only via Picus
decaf377's curve is complete Edwards, and gnark's affine add with witnessed
inverses is already the ~6–7-mul optimal form; projective/extended
coordinates cost *more* R1CS muls (inversions are hints, not muls, so the
classic "defer inversions" trick buys nothing here). Slack per add ≤ 1–2
muls. If ever chased: formula changes that drop completeness must go through
Picus per-leaf determinism + a new exceptional-case argument — research-grade,
not loop-grade.

### S-1. Short-exponent esk (T3-research, crypto decision, up to ~28% of the
12 transfer DH ladders)
The rvk randomizer already runs at 150 bits — a deliberate security-margin
trade. The same argument under the short-exponent DL/DH assumption (SEDL)
would shrink the four compliance tiers' 251-bit `esk` ladders to ~180 bits.
Changes what the ciphertexts' semantic-security reduction assumes →
assumption-ledger row + human crypto sign-off; the constraint win is
mechanical afterwards. Record, don't start.

### F-1. Constraint forensics as a loop phase (`fv-opt-loop.sh census`) — tooling
Both audit passes found waste by eye (duplicate `ToBinary`, dead ladder
outputs). Mechanize it against the compiled `.sr1cs` + wire-role JSON via the
existing Rust parser: report (a) syntactically identical constraint rows =
CSE misses (catches every T1-h instance and future regressions), (b)
constraints outside the transitive fan-in of any assertion or public input =
dead cones (catches TC-1-style discarded outputs), (c) per-gadget rows vs
S-box/mul floor (auto-refreshes the M-1-style table). Read-only, no gate
semantics — executor-buildable; turns "audit for waste" from a frontier
session into a standing red flag in the loop.

### Anti-candidate: statement-hash repartition
Moving the in-circuit statement Poseidon out to native (statement fields as
individual public inputs) trades ~one hash for per-input verifier MSM terms
*and breaks the SnarkPack arity-1 statement design* (S5 conformance, MIPP
public-input fold). Rejected on design grounds; recorded so it isn't
re-derived.

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
   treated as the priority hole, not an optional branch. Proposed proof-unit
   decomposition and the decisions the green-light must settle:
   `crates/crypto/proof-aggregation/formal/snarkpack/s1-mechanization-scope.md`.
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

The loop is mechanized in `scripts/fv-opt-loop.sh` (fail-closed; sequences
existing gates, never edits verdicts/stamps). Per attempt:
1. Baseline: record `nb_constraints`, prover wall time, proof size.
2. Go change, then `scripts/fv-opt-loop.sh diff --circuit <c> --allow-flips
   <segs>`: recompiles, re-extracts, asserts the flipped-segment set is
   contained in the allowlist and every flip has a known Lean regeneration
   family (unknown family = T2-class, red, stop before anything lands).
3. Regenerate the flipped segments' contracts/adapters (generator printed by
   the diff phase), rebuild narrowest Lean targets under the AGENTS.md resource
   rules, flip verdicts back with green bridges, re-stamp per the fv-playbook
   stamping workflow.
4. `scripts/fv-opt-loop.sh gates --circuit <c> --lean --prove --record-out
   <file>`: coverage (--require-full-deployed), soundness invariants, SnarkPack
   gates when that crate moved, parity/range tests, statement-seam test,
   prover round-trip (completeness!).
5. Distill the emitted record into a §5 results-ledger row; commit.

A pilot that completes in ≤2 sessions proves the loop is executor-drivable;
after that, the queue is **T1-d first** (largest confirmed win, needs the
frontier equivalence sign-off + a deletion clause in the loop's allowlist),
then T1-f, with T1-e as the fallback if T1-d stalls; T2/T3 wait for design
capacity. Transfer-side, TC-1 (base-select in `DeriveSharedSecretsSpend`)
leads §2t. The 2026-07-07 SnarkPack deep audit added candidates 2–4 to
`crates/crypto/proof-aggregation/optimization-playbook.md` §8 (GT fold
deferral, cyclotomic-exp audit, GT wire compression) and recorded the
bellperson/paper lineage cross-check there.

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
