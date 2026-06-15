# Decaf377 gadget FV — state and closure plan (detailed)

Branch `protocol-soundness`. Verified 2026-06-11: `go test ./...` (tools/gnark),
`lake build`, and `scripts/check-lean-circuit-fv.sh` all pass;
`consolidate2x1_circuit_sound` depends only on `[propext, Classical.choice,
Quot.sound]`.

Working-tree state (uncommitted): P1 is complete and gated (EdwardsCompleteness
wired into the root module, inventory + artifact stamps updated, gate green).
P2 steps 1–2 (Go mirror gadget, parity test, gnarkctl registration, Lean
extraction) are done; the extracted files are NOT yet imported by the root
module, so `lake build` and the gate still pass unchanged. Resume at P2 step 3.

This document is the work order for closing the remaining decaf FV holes.
Follow it literally. Every phase ends with the gate green (see "After every
phase" below). Do not skip the gate. Do not use `native_decide` anywhere.

## Repo map (the only files you will touch)

| Path | Role |
|---|---|
| `tools/gnark/lean/ShielddGnarkFormal/Decaf377Assumptions.lean` | decaf boundary used by the compose model: `Point`, `add`, `double`, `neg`, `scalarMulLE`, `encodeToCurveModel` (placeholder), RVK/DTK/net-balance circuit predicates. Hash pinned in whole-circuit artifact. |
| `tools/gnark/lean/ShielddGnarkFormal/EdwardsBridge.lean` | extracted Edwards add/double/neg relational specs (`div_unchecked` form) + soundness vs extracted circuits |
| `tools/gnark/lean/ShielddGnarkFormal/EdwardsCompleteness.lean` | **DONE (P1)** — denominators nonzero, relational→functional bridge, on-curve closure. Read this file first; copy its patterns. |
| `tools/gnark/lean/ShielddGnarkFormal/CompressToFieldBridge.lean` | the model file for "non-residue + kernel decide + literal bridging" patterns |
| `tools/gnark/lean/ShielddGnarkFormal/IvkModRBridge.lean` | the model file for "folded recursion over a ladder" (`ltcRec` pattern) |
| `tools/gnark/lean/ShielddGnarkFormal/Extracted/*.lean` | machine-extracted circuits; never hand-edit |
| `tools/gnark/internal/circuits/gadgets_constraint.go` + `decaf_gadgets*.go` | Go gadget mirrors used for extraction; parity tests in `decaf_gadgets_test.go` |
| `tools/gnark/lean/consolidate2x1-decaf-fv-inventory.txt` | source of truth for what is proved vs open; hash pinned in whole-circuit artifact |
| `crates/core/component/shielded-pool/formal/consolidate2x1-whole-circuit-lean-artifact.txt` (+`.sha256`) | whole-circuit artifact; stamps must match current sources |
| `tools/gnark/lean/imt-gap-lean-artifact.txt` (+`.sha256`) | B1 artifact; pins `root_source_sha256` too |
| `scripts/check-lean-circuit-fv.sh` | the gate. Read it before editing any pinned file to see exactly which hashes it checks. |

## Proved (constraint-level, against extracted circuits)

- **AssertEquivalent** — cross-ratio `p.x·q.y = q.x·p.y`
  (`Decaf377Assumptions.decaf377_assertEquivalent_sound`). Gadget does NOT
  assert on-curve.
- **CompressToField** — `CompressToFieldBridge.lean`: ζ non-residue by Euler
  criterion (`powModAux` + `decide +kernel`), canonical parity `absF`, full
  `circuit_sound` to the compress relation.
- **IVK mod-r** — `IvkModRBridge.lean`: exact Euclidean decomposition.
- **Edwards add / double / neg** — `EdwardsBridge.lean`: relational
  (`div_unchecked`) specs proven against extracted mirrors.
- **P1 (NEW, complete)** — `EdwardsCompleteness.lean`, namespace
  `Shieldd.GnarkFormal.EdwardsBridge`. Inventory of what you may now use:
  - `d_not_square : ¬ IsSquare d`, `a_eq : a = -1`, `d_ne_zero`,
    `two_ne_zero'`, `i_sq : iLit * iLit = -1`, `i_ne_zero`,
    `natLit_ne_zero (k : ℕ) : k ≠ 0 → k < Order → ((k:ℕ):F) ≠ 0`.
  - `onCurve (p : Point) : Prop := -(p.x*p.x) + p.y*p.y = 1 + d*(p.x*p.x)*(p.y*p.y)`.
  - `add_den_plus_ne`, `add_den_minus_ne` : for on-curve `p q`,
    `1 ± d*(q.y*p.x)*(q.x*p.y) ≠ 0` (Bernstein–Lange `completeness_core`).
  - `addF`, `doubleF`, `negF` : the `⁻¹` functional forms. They are textually
    the same formulas as `Decaf377Assumptions.add/double/neg` (different
    `Point` structure — see P2 step 0).
  - `addSpec_eq : addSpec p q out → onCurve p → onCurve q → out = addF p q`,
    `doubleSpec_eq`, `negSpec_eq` (negSpec needs no on-curve hypothesis).
  - Closure: `identity_onCurve`, `neg_onCurve`, `add_onCurve`,
    `double_eq_addF_self`, `double_onCurve`.

## Honest holes (recorded in the inventory, `closure_claim: partial`)

`NetBalanceCommitmentCircuit` is a **definitional model** (`Circuit := Spec`,
trivial theorem): no kernel axioms, but Go-circuit ↔ Lean-model fidelity is
unverified. (RVK/DTK were closed in P3 and now bind extracted circuits.) `encodeToCurveModel ⟨r, r²+1⟩` is a placeholder, not the decaf map.
`EncodeToCurveBridge.Relation` is the extracted constraint set only (tautology
bridge, explicitly documented). **The clean axiom report must not be cited as
full decaf closure** — the inventory file is the source of truth.

## After every phase (mandatory, in this order)

1. `cd tools/gnark && go test ./...` (only if you touched Go).
2. `cd tools/gnark/lean && lake build` — read the output; "Build completed
   successfully" required.
3. Update `tools/gnark/lean/consolidate2x1-decaf-fv-inventory.txt`: move the
   closed item from `open:` to `proved:` with a one-line description.
4. Re-stamp artifacts. The gate pins, among others:
   - whole-circuit artifact: `decaf_assumptions_source_sha256`,
     `decaf_fv_inventory_sha256`, `root_source_sha256`,
     `gadget_labels_source_sha256` (gadgets_constraint.go),
     `gnarkctl_source_sha256`, `go_define_source_sha256`.
   - B1 artifact (`imt-gap-lean-artifact.txt`): `root_source_sha256`.
   For each file you changed, compute `shasum -a 256 <file>` and replace the
   corresponding `key: <hex>` line in the artifact txt; then recompute the
   artifact's own hash and overwrite the sibling `.sha256` file with that hex
   plus a trailing newline. (The `.sha256` file content is
   `sha256(artifact.txt)`.)
5. `bash scripts/check-lean-circuit-fv.sh` from repo root. It must end with
   `lean circuit fv ok: sha256:…`. If it fails on a stamp, the error names the
   key — fix that stamp, don't guess.

## Closure plan (ordered)

### P2. ScalarMulLE bridge (keystone)

Goal: prove that the gnark scalar-mul ladder computes
`Decaf377Assumptions.scalarMulLE nBits base scalar` for `nBits = 251` and
`nBits = 128`.

**Steps 1–2 are DONE (Go mirror + extraction, in working tree, uncommitted):**

- `tools/gnark/internal/circuits/scalar_mul_gadgets.go` — `scalarMulStep`
  extractor gadget (one rung: `sum = addMirror(acc, cur)`,
  `acc' = select(bit, sum, acc)` per coordinate, `cur' = doubleMirror(cur)`,
  returns `[accX', accY', curX', curY']`), `scalarMulLEMirror` driver
  (`api.ToBinary(scalar, n)` then n rungs, acc starts `(0,1)`, cur starts
  base), wrapper circuits `ScalarMulLE251Gadget` / `ScalarMulLE128Gadget`
  (inputs BaseX/BaseY/Scalar public, OutX/OutY witness, output asserted equal
  to final acc).
- `TestScalarMulLEGadgetParity` in `decaf_gadgets_test.go` — passes: in-circuit
  parity against `compliance.ScalarMulLE` (shipped `curve.Add/Double` vs
  mirror in one constraint system), plus accept-native-scalar-mul and
  reject-wrong-output probes for both widths. Run it with
  `cd tools/gnark && go test ./internal/circuits/ -run TestScalarMulLEGadgetParity -count=1`.
- Labels `gadget-scalar-mul-le-251` / `gadget-scalar-mul-le-128` registered in
  `cmd/gnarkctl/main.go` `gadgetCircuit` (NOTE: `gnarkctl_source_sha256` is
  pinned in the whole-circuit artifact — re-stamp at gate time).
- Extracted: `lean/ShielddGnarkFormal/Extracted/ScalarMulLE251.lean` (303
  lines) and `ScalarMulLE128.lean` (180 lines). NOT yet imported in
  `ShielddGnarkFormal.lean` — add both imports when the bridge file lands
  (root hash re-stamp needed in BOTH artifacts).

**Extracted shape (read `Extracted/ScalarMulLE128.lean` lines 15–47 first).**
One shared def per rung:

```
def scalarMulStep (Bit AccX AccY CurX CurY : F) (k : List.Vector F 4 → Prop) : Prop :=
  ∃gate_0 … -- a-mul, add-formula gates (a = the q−1 literal, d = 3021)
  ∃gate_14, Gates.div_unchecked gate_8 gate_9 gate_14 ∧    -- sum.x
  ∃gate_15, Gates.div_unchecked gate_12 gate_13 gate_15 ∧  -- sum.y
  ∃gate_16, Gates.select Bit gate_14 AccX gate_16 ∧        -- acc'.x
  ∃gate_17, Gates.select Bit gate_15 AccY gate_17 ∧        -- acc'.y
  ∃gate_26, Gates.div_unchecked gate_21 gate_24 gate_26 ∧  -- dbl.x
  ∃gate_27, Gates.div_unchecked gate_23 gate_25 gate_27 ∧  -- dbl.y
  k vec![gate_16, gate_17, gate_26, gate_27]
```

and the circuit is `Gates.to_binary Scalar n gate_0` followed by n
unrolled CPS calls `scalarMulStep gate_0[i] gate_i[0] gate_i[1] gate_i[2]
gate_i[3] fun gate_{i+1} => …`, ending in `Gates.eq gate_n[0] OutX ∧
Gates.eq gate_n[1] OutY ∧ True`. The add/double gate lists inside
`scalarMulStep` are exactly the `EdwardsBridge.addSpec`/`doubleSpec` formulas
(compare them gate-by-gate against `EdwardsBridge.lean` before proving; the
sub gates use `a = 8444…9040`, i.e. `a_eq : a = -1` applies).

**Step 3 — Lean ladder proof (THE remaining P2 work).** New file
`ShielddGnarkFormal/ScalarMulBridge.lean`, namespace
`Shieldd.GnarkFormal.ScalarMulBridge`. Copy the architecture of
`CanonicalFqBitsBridge.lean` — it solved the identical problem (253 unrolled
CPS rungs → recursive form → induction). Sub-steps, in order:

1. **Point-type bridge.** `EdwardsBridge.Point` and
   `Decaf377Assumptions.Point` are distinct structures over the same `F`:

   ```lean
   def toA (p : EdwardsBridge.Point) : Decaf377Assumptions.Point := ⟨p.x, p.y⟩
   ```

   Prove `toA (addF p q) = Decaf377Assumptions.add (toA p) (toA q)` by
   `simp only [addF, Decaf377Assumptions.add, curveD, d]` then `rfl` (the
   formulas are identical; `curveD` and `d` are both the literal 3021 but
   different defs — unfold both). Same for `doubleF`/`double`, `negF`/`neg`,
   and `onCurve` transport if needed.
2. **Rung lemma (uncps).** Mirror `reducedStepOne_uncps`: prove a `@[simp]`
   lemma that rewrites `scalarMulStep Bit ax ay cx cy k` into
   `∃ out, RungRel Bit ⟨ax,ay⟩ ⟨cx,cy⟩ out ∧ k out` where `RungRel` is stated
   via `EdwardsBridge.addSpec`/`doubleSpec` + the select gates. Key move:
   the existentially bound gate equations inside `scalarMulStep` ARE the
   `addSpec`/`doubleSpec` bodies — `simp only [scalarMulStep, addSpec,
   doubleSpec, GatesDef.select, …]` plus `exists`-shuffling. If direct iff is
   painful, prove one direction only (`scalarMulStep … k → ∃ acc' cur',
   stepRel … ∧ k vec![acc'.x, acc'.y, cur'.x, cur'.y]`) — that is all the
   soundness theorem needs.
3. **Semantic rung lemma.** From `RungRel bit acc cur out`, `onCurve acc`,
   `onCurve cur`, `is_bool bit` derive:
   `out.acc = (if bit = 1 then addF acc cur else acc)`, `out.cur = doubleF cur`,
   `onCurve out.acc`, `onCurve out.cur`. Tools: `addSpec_eq`, `doubleSpec_eq`,
   `add_onCurve`, `double_onCurve` (all in `EdwardsCompleteness.lean`); for
   the select, `Gates.select b i1 i2 out` unfolds to `is_bool b ∧
   out = i2 - b*(i2-i1)`; `rcases hbool with h|h <;> subst h <;> ring_nf`
   gives the two branches. CRITICAL: the select picks `i1 = sum` when
   `b = 1` — check the ProvenZk orientation (`out = i2 - b*(i2-i1)`: b=0 →
   i2 = AccX (no-add), b=1 → i1 = sum). Match against
   `Decaf377Assumptions.select (testBit) sum result`.
4. **Recursive chain.** Define (mirroring `chainK`):

   ```lean
   def ladderK (bits : List.Vector F n) (k : List.Vector F 4 → Prop) :
       ℕ → EdwardsBridge.Point → EdwardsBridge.Point → Prop
   ```

   counter-form recursion peeling rung 0 upward (note: unlike
   canonical-fq-bits which peels MSB-first, this ladder is LSB-first — the
   recursion goes `i = 0, 1, …, n−1`, so recurse on an increasing index with
   fuel, exactly like `Decaf377Assumptions.scalarMulLEFrom` does:
   `(fuel+1, bitIndex) → (fuel, bitIndex+1)`). Prove
   `circuit … ↔ ∃ bits, Gates.to_binary Scalar n bits ∧ ladderK bits k …`
   the same way as `canonicalFqBitsGadget_eq_chainK`:
   `unfold circuit; simp (config := { maxSteps := 10000000 }) only
   [scalarMulStep_uncps]; rfl`. If `rfl` times out on 251 rungs, raise
   maxSteps / use `decide`-free `Iff.rfl` after `show`; the 253-rung
   precedent worked, so this should too.
5. **Induction.** Prove by induction on fuel (mirror `chainK_imp_fieldChain`):
   if `onCurve acc`, `onCurve cur`, and `ladderK bits k fuel acc cur`, and
   each `bits[i] = toZMod (boolBit i)`, then `k` fires on
   `scalarMulLEFrom scalar fuel bitIndex (toA acc) (toA cur)` translated back,
   with on-curve maintained. Use step 3's semantic lemma per rung. Bit values:
   `to_binary` gives `is_vector_binary bits ∧ recover_binary_zmod' bits = Scalar`;
   ProvenZk has the Bool-vector extraction used in `CanonicalFqBitsBridge`
   (`∃ x : List.Vector Bool n, bits = x.map toZMod`, see its `to_binary`
   handling around `canonicalFqBitsGadget_canonical`). Then
   `bits[i] = 1 ↔ scalar.val.testBit i` needs `2^n < Order` for exact ℕ
   recovery: Fact-free zone facts
   `theorem pow251_lt : 2 ^ 251 < Order := by decide +kernel` (and a 2^128
   version); reuse `Fin.ofBitsLE`/`binary_nat` lemmas from
   `CanonicalFqBitsBridge`/ProvenZk rather than reproving.
6. **Final theorems** (one per width):

   ```lean
   theorem scalarMulLE251_sound
       (baseX baseY scalar outX outY : F)
       (hbase : EdwardsBridge.onCurve ⟨baseX, baseY⟩)
       (h : Extracted.ScalarMulLE251.circuit baseX baseY scalar outX outY) :
       Decaf377Assumptions.Point.mk outX outY
         = Decaf377Assumptions.scalarMulLE 251 ⟨baseX, baseY⟩ scalar
   theorem scalarMulLE251_onCurve … : EdwardsBridge.onCurve ⟨outX, outY⟩
   ```

   Instantiate the induction at `acc = ⟨0,1⟩` (`identity_onCurve`),
   `cur = base` (`hbase`), fuel = n, bitIndex = 0; the trailing
   `Gates.eq gate_n[0] OutX` pins the output.
7. **Order of work:** get the 128 version through end-to-end first (faster
   elaboration), then instantiate 251. Factor everything width-generic except
   the two `circuit_eq_ladderK` unrolling lemmas and the two final theorems.
8. **Wire-up:** add the two `Extracted.ScalarMulLE*` imports +
   `ShielddGnarkFormal.ScalarMulBridge` to `ShielddGnarkFormal.lean`; gate
   checklist (above).

### P3. RVK and DTK composition — DONE

Completed: `RvkBridge.lean` / `DtkBridge.lean` prove the extracted DecafRvk
and DecafDtk circuits against the `rvk`/`dtk` specs; `Decaf377Assumptions`
predicates now bind the extracted circuits; `Consolidate2x1.lean` threads
on-curve facts (ak from the DTK constraint, divGen from the compress
constraint). DTK proof is segmented (`dtkSeg0..14`) per the ≤60-gate rule —
a monolithic walk did not terminate. ivk provenance spec strengthening
remains open (see `codex-handoff-decaf-remaining.md`, which now tracks all
remaining work).

Original plan follows for reference.

Go: RVK = `ScalarMulLE(generator, randomizer, 251)` then `add(ak, [r]B)`.
DTK = `CompressToField(ak)` → `Poseidon2(nk, akCompressed)` → `IvkModR` →
`ScalarMulLE(divGen, ivkReduced, 251)`.

1. Add Go mirrors `gadget-rvk`, `gadget-dtk` in `internal/circuits`
   composing the already-mirrored sub-gadgets (reuse the mirror sub-circuits,
   don't re-implement). Parity tests against the production
   `compliance.RandomizedVerificationKey` / `DiversifiedTransmissionKey`.
2. Extract both (same `export-lean` command pattern; namespaces
   `…Extracted.DecafRvk`, `…Extracted.DecafDtk`). Import in root, re-stamp.
3. In `Decaf377Assumptions.lean`, **replace** the definitional predicates:
   `RandomizedVerificationKeyCircuit` becomes the extracted circuit predicate
   (wrapped to take `Point`s), and the soundness theorem becomes a real proof:
   compose `scalarMulLE251_sound` + `addSpec_eq` + on-curve threading
   (generator on-curve: prove `onCurve ⟨genX, genY⟩` by `decide +kernel` on the
   ℕ form in a Fact-free zone, or by `norm_num`-free `exact_mod_cast`
   arithmetic — the robust route is a pure-ℕ kernel decide of the curve
   equation mod Order, then cast, mirroring `d_pow_half_nat`/`d_pow_half`).
   `ak` on-curve: the Go circuit asserts ak on-curve via CompressToField —
   thread that hypothesis from the compress bridge.
4. Same for DTK: the spec must now pin `ivkReduced` to the
   Poseidon2/IvkModR chain (current model ignores `nk`/`ak` — fix the spec,
   then update `Consolidate2x1.lean` call sites if the spec signature grows).
5. Delete the old definitional predicates entirely (no aliases). Update the
   axiom allowlist expectations in `scripts/check-lean-circuit-fv.sh` only if
   axiom names change — there should be **no axioms** at all after this phase
   for RVK/DTK.

### P4. EncodeToCurve semantics

Same treatment as CompressToField, in reverse:

1. Write the mathematical relation in a new
   `ShielddGnarkFormal/EncodeToCurveSemantics.lean`: for input `r`, the decaf
   map computes `ζr²`, num/den, isqrt with the 4-case witness, sign twiddle,
   parity normalization, affine division, and asserts on-curve. The extracted
   relation already exists (`EncodeToCurveBridge.Relation`); prove
   `circuit_sound : Relation … → SemanticRelation r out`.
2. Determinism: `SemanticRelation r out₁ → SemanticRelation r out₂ → out₁ = out₂`.
   Reuses `zeta_not_square` from `CompressToFieldBridge` (square-root
   uniqueness up to sign + parity normalization pins the sign).
3. `noncomputable def encodeToCurve (r : F) : Point := Classical.choose …`
   with `relation_out_eq : SemanticRelation r out → out = encodeToCurve r`,
   plus `encodeToCurve_onCurve`.
4. Replace `encodeToCurveModel` in `Decaf377Assumptions.lean` with
   `encodeToCurve` everywhere it is referenced (grep for it); **delete**
   `encodeToCurveModel`. `Consolidate2x1.lean` will need its uses updated;
   the whole-circuit proof should only thread hypotheses, so changes are
   mechanical.

### P5. Net balance commitment composition

Extract a mirror of `computeTransferNetBalanceCommitment`: Poseidon1 (bridge
exists) → EncodeToCurve (P4) → 4×128-bit ladders (P2) + 251-bit blinding
ladder + neg + adds (P1). Compose exactly as in P3: Go mirror + parity test →
extract → prove against `netBalanceCommit` → replace the definitional
`NetBalanceCommitmentCircuit`. On-curve side conditions: encodeToCurve output
on-curve from P4; `valueBlindingGenerator` on-curve by the same kernel-decide
route as `generator`.

### P6. On-curve audit of AssertEquivalent call sites

Cross-ratio = coset equality only for on-curve operands. Audit Go
(`note_reshape_circuit.go` + `compliance` package): `rkClaimed` and
transmission keys flow through `CompressToField` (asserts on-curve
internally) — covered. `claimedBalanceCommitment` is only cross-ratio'd
against the computed point and only the **computed** one is compressed —
check whether the claimed point gets an explicit `curve.AssertIsOnCurve` in
Go. If not, add it in Go, regenerate proving artifacts as the repo's gnark
workflow requires, and mirror the constraint in the Lean model
(`Consolidate2x1.lean` spend/output circuit Props + wiring transcript if a
new traced call appears — the transcript diff gate will catch mismatches).

### P7. Final closure

Set `closure_claim: full` in the inventory only when the `open:` list is
empty. Update `docs/soundness/constraint-system-assurance.md` and
`docs/soundness/soundness-handoff.md` to reflect full decaf closure. Run the
full gate one last time.

## Proof gotchas (hard-won — read ALL of these before writing any Lean)

### Kernel decides and literals

- `decide` on Order-sized facts: always `decide +kernel`; `native_decide` is
  forbidden by the gate (no allowlisted axioms at all).
- **Fact-capture trap (cost: hours).** Any `F`-literal written inside a
  section with `variable [Fact (Nat.Prime Order)]` captures the instance as a
  def argument (ZMod's `OfNat` synthesizes `NeZero` from it). Then `decide` on
  goals mentioning that def fails with *"expected type must not contain free
  variables"*. Rule: put every kernel-decided fact in a **Fact-free zone**
  before the `variable` line — either pure-ℕ statements
  (`powModAux Order 253 dNat (Order/2) = Order - 1`) or `F`-literals defined
  there (`def iLit : F := …` works without the Fact because plain numerals
  don't need NeZero). Derive the in-section versions by casting:
  `simp only [d, dNat]; exact_mod_cast rfl` (see `d_natCast` in
  EdwardsCompleteness.lean) and `a_eq` via `Nat.cast_sub` + `ZMod.natCast_self`.
- **Stack overflow trap (cost: hours).** `norm_cast`/`push_cast` on goals
  containing `(2 : F) = ((2:ℕ):F)`-style coercions crashed the whole
  elaborator with `Stack overflow detected. Aborting.` — no line number. Fix:
  `rw [← Nat.cast_ofNat (R := F) (n := 2)]` instead of norm_cast (see
  `two_ne_zero'`). If you hit a silent stack overflow, bisect by commenting
  out declarations; suspect norm_cast/push_cast on numeral coercions first.
- Don't make `Order` a reducible `abbrev` in proof files —
  `open …Extracted.DecafEdwardsAdd (Order)` instead; reducibility lets
  `ring`/`push_cast` unfold `Order/2` into a 2^252-digit numeral.
- Nonzero numerals: `natLit_ne_zero` + `decide +kernel` for `k < Order`.
  `one_ne_zero`'s implicit type argument is named `α`: write
  `one_ne_zero (α := F)`, NOT `(F := F)` (invalid-argument-name error).

### linear_combination

- `linear_combination` checks `goal_lhs − goal_rhs − Σ cᵢ·(hᵢ_lhs − hᵢ_rhs) ≡ 0`
  by `ring`, treating field atoms (including `⁻¹` terms) as opaque.
- **It silently drops def-wrapped Props.** Passing `hp : onCurve p` produces
  only a warning *"this constant has no effect"* and a ring failure. Always
  unfold first: `have hp' : -(p.x*p.x) + p.y*p.y = 1 + d*(p.x*p.x)*(p.y*p.y) := hp`
  and use `hp'`.
- Certificate workflow: derive the cofactors by hand or sympy, verify
  **exactly** (`sp.expand(EA - comb) == 0`) in `/tmp/svenv/bin/python` (venv
  with sympy; recreate with `python3 -m venv /tmp/svenv && /tmp/svenv/bin/pip
  install sympy` if missing) **before** transcribing to Lean. `sp.reduced`
  with naive generator ordering gives nonzero residuals — decompose by hand.
- Sign iteration: if `ring` fails, Lean prints the residual. If the residual
  is exactly the negation of a hypothesis combination, flip the certificate
  sign (`linear_combination -hA`). Two iterations max; if still failing the
  certificate is wrong — go back to sympy.
- Do NOT use `set x := … with hdef` + `rw [hdef]` inside certificate proofs —
  pattern-matching fails ("did not find instance of the pattern"). Write full
  inline expressions, however long.
- After `field_simp` closes the goal, a trailing `ring` may error
  `no goals to be solved` — drop it.
- `eq_mul_inv_iff_mul_eq₀ (hc : c ≠ 0) : a = b * c⁻¹ ↔ a * c = b` is the
  workhorse for relational→`⁻¹` conversions.
- In `double_eq_addF_self`-style proofs, rewrite denominators in dependency
  order (the second denominator may mention the first's rewrite target).
- Point equality finish: `have hsplit : out = ⟨out.x, out.y⟩ := rfl;
  rw [hsplit, hx, hy]` or `simp only [Point.mk.injEq]; constructor <;> ring`.

### Environment / instances

- Section `variable [Fact (Nat.Prime Order)]` + defeq Order copies across
  extracted namespaces need explicit forwarding:
  `instance : Fact (Nat.Prime …OtherNamespace.Order) := ‹_›`.
- `set_option maxRecDepth 100000` and `set_option maxHeartbeats 1000000` at
  the top of heavy proof files.
- ProvenZk gate semantics: `neg a = a * (-1)`;
  `select b i1 i2 out := is_bool b ∧ out = i2 - b*(i2-i1)`;
  `inv a out := a ≠ 0 ∧ out*a = 1`;
  `div_unchecked a b out := (b ≠ 0 ∧ out*b = a) ∨ (a = 0 ∧ b = 0 ∧ out = 0)`;
  `to_binary` = recovery + binariness, NOT canonicity.
- omega: no atom products, `%`/`/` by numerals only — use
  `Nat.add_mul_mod_self_right`, `Nat.add_mul_div_right`, explicit case splits.
- Whnf timeouts on 253-vectors: `simp only` with targeted getElem lemmas
  (`List.Vector.getElem_def'`, `get_map`, `get_zero`), never bare `simp`.

### Shell / build

- Wrong-cwd `lake env lean` prints "file not found" and **exits 0** — always
  prefix with `cd tools/gnark/lean &&` in the same command and read the
  output text, not the exit code.
- zsh: bare `=====` echoes and unmatched globs (`rm -f Tmp*`) abort compound
  commands mid-pipeline, leaving you in the wrong cwd for the next step.
  Quote separators, use `rm -f Tmp* 2>/dev/null || true` style.
- Typecheck a single file fast:
  `cd tools/gnark/lean && lake env lean ShielddGnarkFormal/<File>.lean`
  (builds nothing else; the file's imports must already be built by a prior
  `lake build`).
- Extraction: `go run ./cmd/gnarkctl export-lean --circuit gadget-<name>
  --namespace Shieldd.GnarkFormal.Extracted.<Name> --out lean/...` from
  `tools/gnark`; hints unsupported — mirrors take hint outputs as witnesses,
  with Go parity tests (`decaf_gadgets_test.go` pattern: accept valid, accept
  negated sqrt witness, reject wrong output).

## Verification commands

```sh
cd tools/gnark && go test ./...
cd tools/gnark/lean && lake build
bash scripts/check-lean-circuit-fv.sh   # from repo root, must end "lean circuit fv ok"
```
