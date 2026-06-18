# Handoff: Expand Picus under-constraint coverage to all soundness-critical gadgets

## Goal

Picus currently checks only 3 gadgets (`gadget-poseidon2`, `gadget-nullifier`,
`gadget-imt-gap`). Expand coverage to the full soundness-critical gadget set
(decaf377 group-law, scalar/key-derivation, net-balance, higher Poseidon, quad
paths). Whole-circuit Picus stays `undischarged-by-design` (SMT capacity) — do
NOT touch that. Semantics policy is unchanged: a Picus `safe` verdict is
under-constraint *evidence*, not a semantic proof.

## DONE (verified locally)

1. **`tools/gnark/cmd/gnarkctl/main.go` — `compileCircuit()`**: added `case`
   lines for the 13 gadgets that were registered in `gadgetCircuit()` but missing
   from the compile switch (it previously stopped at `gadget-bool-select`):
   `gadget-quad-path-24`, `gadget-decaf-assert-equivalent`,
   `gadget-decaf-compress-to-field`, `gadget-decaf-encode-to-curve`,
   `gadget-decaf-edwards-add/double/neg`, `gadget-ivk-mod-r`,
   `gadget-scalar-mul-le-251`, `gadget-scalar-mul-le-128`, `gadget-rvk`,
   `gadget-dtk`, `gadget-net-balance-commitment`.
   - `go build ./...` passes.
   - Verified all 19 gadgets compile + export `.sr1cs`. Constraint counts:
     poseidon-hash4=356, hash6=436, hash7=476, quad-path-24=8906, iszero=3,
     canonical-fq-bits=1090, bool-select=3, decaf-assert-equivalent=3,
     compress-to-field=2214, encode-to-curve=1132, edwards-add=8, edwards-double=7,
     edwards-neg=2, ivk-mod-r=1403, scalar-mul-le-251=3612, scalar-mul-le-128=1789,
     rvk=1814, dtk=7498, net-balance-commitment=9187.

2. **`scripts/circuit-constraint-check.sh`**: expanded the default `gadgets=(...)`
   array (was the 3-gadget set) to the full set, grouped by family with comments.
   `bash -n` passes. Verdict logic untouched (`safe` / `underconstrained` hard-fail
   / `undischarged` recorded-non-fatal).

## REMAINING

### A. sr1cs fidelity test (open decision — see note)
The Picus `.sr1cs` serializer `artifacts.WriteConstraintSystem`
(`tools/gnark/internal/artifacts/artifacts.go:135-210`) has **NO fidelity test**.
The existing `tools/gnark/internal/circuits/gadgets_axe_fidelity_test.go` only
guards the *axe-json* path (`BuildAxeR1CS`) for 4 gadgets — a different serializer.

**Recommended:** add a parametrized fidelity test for the Picus path: compile each
gadget, solve a valid assignment to get witness `W`, parse the written `.sr1cs`,
and assert `A(W)·B(W) == C(W)` for every constraint. This is the higher-value
guard for *this* work (it covers the exact bytes Picus consumes).

`.sr1cs` format (from `WriteConstraintSystem` / `writePicusLinearExpression`):
```
(prime-number <field>)
(in <wire>)            ; wires [nbPublic, nbPublic+nbSecret)
(out <wire>)           ; wires [1, nbPublic)
(constraint [<L>] [<R>] [<O>])   ; one per R1CS row
                                 ; each [..] is space-sep (coeff wireID) terms
                                 ; constant terms use wireID 0
```
The witness vector `W` is obtained exactly as in the axe fidelity test
(`assertAxeExportMatchesSolvedWitness`, axe test lines 84-142): `frontend.Compile`
→ `frontend.NewWitness` → `ccs.Solve` → `solRaw.(*cs.R1CSSolution).W`.

**Valid assignments already exist** in
`tools/gnark/internal/circuits/decaf_gadgets_test.go` — reuse them, do NOT
fabricate witnesses (decaf gadgets need real curve points / sqrt-ratio witnesses):
- `IvkModRGadget` — test at line ~146 (`IvkModQ/QuotientA/IvkReduced`)
- `CompressToFieldGadget` — line ~178 (`X/Y/WasSquare/SqrtRatio/Out`)
- `EncodeToCurveGadget` — line ~241
- `ScalarMulLE251Gadget` / `ScalarMulLE128Gadget` — line ~319 (`BaseX/BaseY/Scalar/OutX/OutY`)
- `DecafRvkGadget` — line ~405 (`AkX/AkY/Randomizer/OutX/OutY`)
- `DecafDtkGadget` — line ~498
- `NetBalanceCommitmentGadget` — line ~685
- Poseidon hash1/4/6/7: use `primitives.Poseidon377HashN Native` like the axe test.
- decaf edwards add/double/neg, assert-equivalent: build points via the same
  native helpers the parity tests use.

Simplest structure: factor each valid assignment into a small builder, collect
`[]struct{blank, assignment frontend.Circuit}`, and loop one assertion over both
the axe path (extend existing) and a new `assertPicusExportMatchesSolvedWitness`.

**Decision needed:** confirm whether to (a) add the sr1cs fidelity test (recommended),
(b) only extend the existing axe-json test to the new gadgets, or (c) both. I was
mid-investigation on this when handing off.

### B. Run Picus + record verdicts
- Picus is likely NOT installed locally (CI clones Veridise/Picus HEAD at runtime).
  If a local build exists, run `PICUS_BIN=<path> bash scripts/circuit-constraint-check.sh`.
  Otherwise the real verdicts come from the nightly `provers` job.
- Expect heavy gadgets to possibly time out → `undischarged` (honest, non-fatal):
  `dtk` (7498), `net-balance-commitment` (9187), `quad-path-24` (8906),
  `imt-gap` (5568), `scalar-mul-le-251` (3612). Per-gadget cap is
  `PICUS_TOTAL_TIMEOUT_SECONDS` (default 600).
- **Any `underconstrained` verdict is a real bug — stop and surface it.**
- The script regenerates + stamps
  `crates/core/component/shielded-pool/formal/circuit-constraint-report.txt`(+`.sha256`).

### C. Docs
- `docs/soundness/constraint-system-assurance.md`: update covered-gadget list (the
  "next decomposition targets" line ~57 + Picus status lines ~67-77); list any
  `undischarged` (timeout) gadgets honestly.
- `docs/soundness/fv-hardening-roadmap.md:20`: update the Picus row
  ("poseidon2, nullifier, imt-gap") to the expanded coverage.
- `crates/core/component/shielded-pool/formal/toolchain.toml`: leave
  `picus_status = under-constraint-evidence-only` and `scope = decomposed-gadget-only`
  unchanged — coverage broadens, policy semantics do not.

### D. Verification gate before done
- `cd tools/gnark && go build ./... && go test ./internal/circuits/ -run Fidelity`.
- `bash scripts/check-soundness-invariants.sh` → green.
- Report regenerated + `.sha256` re-stamped; docs match actual verdicts.

## Risks / notes
- **CI budget:** `provers` job is `timeout-minutes: 90`; ~28 gadgets, several
  heavy, may overrun. Consider per-gadget timeouts or expected-undischarged
  carve-outs. Measure first.
- **Encryption/DLEQ gadget:** no standalone DLEQ gadget struct exists; the DLEQ
  relation is built from the decaf group-law + scalar gadgets now covered. If a
  dedicated DLEQ gadget is wanted, record as follow-up — its soundness is already
  mechanized in `lean-dleq` (DLEQ-FS-KNOWLEDGE-SOUNDNESS). Do not invent one.
- **No Picus version pin** (CI clones HEAD) — reproducibility risk; flag only,
  out of scope unless asked.
- This is on branch `dev`; nothing committed yet.

## Unrelated parked work (do not bundle)
There are uncommitted Tamarin changes from the prior task (compliance-active.spthy
verified + wired into `scripts/compliance-symbolic.sh`, two re-stamped artifacts).
Keep that as a separate commit from the Picus work.
