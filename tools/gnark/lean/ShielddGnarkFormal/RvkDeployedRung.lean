import ShielddGnarkFormal.ScalarMulBridge
import ShielddGnarkFormal.EdwardsCompleteness
import ShielddGnarkFormal.ChoiceFreeZMod

/-! # Deployed-native per-rung bridge for rvk

The deployed `.sr1cs` rvk slice is compiled from `compliance.ScalarMulLE`
(`tools/gnark/internal/compliance/dleq.go`), whose loop body is

```
sum    := curve.Add(result, current)               -- gnark native twisted Edwards add
result := { Select(bit, sum.X, result.X), Select(bit, sum.Y, result.Y) }
current := curve.Double(current)                   -- gnark native twisted Edwards double
```

Native `curve.Add`/`curve.Double` (`gnark/std/algebra/native/twistededwards/point.go`)
emit their two coordinates through `DivUnchecked`. In the **deployed** R1CS each
`DivUnchecked(num, den, out)` leaves only the bilinear constraint `out·den = num`
(the quotient hint is witness-side, not a row). So the raw deployed rung gives the
*bare* equalities, which are strictly weaker than the extracted circuit's
`Gates.div_unchecked` obligation: `div_unchecked num den out` additionally needs
`den ≠ 0`.

`den ≠ 0` is exactly Edwards completeness for on-curve points
(`EdwardsBridge.add_den_plus_ne` / `add_den_minus_ne`, and the doubling
denominators). This module discharges the gap once: given the bare deployed rows
of a single rung **and** the on-curve invariants for the incoming `acc`/`cur`, it
produces the existing `ScalarMulBridge.StepRel`. That `StepRel` then feeds the
already-proven ladder semantics (`stepRel_semantic`), which re-establishes the
on-curve invariant for the outgoing state, so the invariant threads through the
ladder without ever touching the mirror circuit.

The hypotheses are stated in the exact `addSpec`/`doubleSpec` normal form so the
generated per-rung certificate (one `linear_combination` over each deployed row)
plugs straight in. -/

namespace Shieldd.GnarkFormal.RvkDeployedRung

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)
open Bool (toZMod)

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafEdwardsDouble.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafEdwardsNeg.Order) := ‹_›

open EdwardsBridge (Point a d onCurve addSpec doubleSpec
  add_den_plus_ne add_den_minus_ne)

/-- The doubling denominator `w + a·v = y² - x²` is non-zero for on-curve points.
Mirrors the `hd1` derivation inside `doubleSpec_eq`, exposed standalone so the
deployed doubling row can be promoted to `div_unchecked`. -/
theorem double_den_x_ne (p : Point) (hp : onCurve p) :
    p.y * p.y + p.x * p.x * a ≠ 0 := by
  have hself := add_den_plus_ne p p hp hp
  have ha := EdwardsBridge.a_eq
  have hp' : -(p.x * p.x) + p.y * p.y = 1 + d * (p.x * p.x) * (p.y * p.y) := hp
  intro h0
  apply hself
  linear_combination -hp' + h0 - p.x * p.x * ha

/-- The second doubling denominator `2 - (w + a·v)` is non-zero on the curve. -/
theorem double_den_y_ne (p : Point) (hp : onCurve p) :
    2 - (p.y * p.y + p.x * p.x * a) ≠ 0 := by
  have hself := add_den_minus_ne p p hp hp
  have ha := EdwardsBridge.a_eq
  have hp' : -(p.x * p.x) + p.y * p.y = 1 + d * (p.x * p.x) * (p.y * p.y) := hp
  intro h0
  apply hself
  linear_combination hp' + h0 + p.x * p.x * ha

/-- **Keystone.** The bare deployed rows of one ladder rung, together with the
on-curve invariants for the incoming `acc`/`cur`, imply the extracted
`StepRel`. Each `div_unchecked` is obtained from its bilinear row by the
completeness `den ≠ 0` (left disjunct). The two `Select` rows and the booleanity
row give the accumulator update.

Row layout (matching `compliance.ScalarMulLE`'s native add/select/double):
* `hAddX`/`hAddY` — the two `curve.Add(acc, cur)` div rows, normal form;
* `hbit`         — booleanity of the bit;
* `hSelX`/`hSelY`— the two `Select(bit, sum, acc)` rows;
* `hDblX`/`hDblY`— the two `curve.Double(cur)` div rows. -/
theorem deployedRung_stepRel
    (bit : F) (acc cur sum acc' cur' : Point)
    (hacc : onCurve acc) (hcur : onCurve cur)
    (hAddX : sum.x * (1 + d * (cur.y * acc.x) * (cur.x * acc.y))
        = cur.y * acc.x + cur.x * acc.y)
    (hAddY : sum.y * (1 - d * (cur.y * acc.x) * (cur.x * acc.y))
        = a * (cur.y * acc.x) - cur.x * acc.y
          + (acc.y - acc.x * a) * (cur.x + cur.y))
    (hbit : (1 - bit) * bit = 0)
    (hSelX : acc'.x = acc.x - bit * (acc.x - sum.x))
    (hSelY : acc'.y = acc.y - bit * (acc.y - sum.y))
    (hDblX : cur'.x * (cur.y * cur.y + cur.x * cur.x * a) = 2 * (cur.x * cur.y))
    (hDblY : cur'.y * (2 - (cur.y * cur.y + cur.x * cur.x * a))
        = cur.y * cur.y - cur.x * cur.x * a) :
    StepRel bit acc cur acc' cur' := by
  refine ⟨sum, ?_, ?_, ?_, ?_⟩
  · -- addSpec acc cur sum
    refine ⟨Or.inl ⟨add_den_plus_ne acc cur hacc hcur, ?_⟩,
            Or.inl ⟨add_den_minus_ne acc cur hacc hcur, ?_⟩⟩
    · linear_combination hAddX
    · linear_combination hAddY
  · -- select bit sum.x acc.x acc'.x
    exact ⟨hbit, by linear_combination hSelX⟩
  · -- select bit sum.y acc.y acc'.y
    exact ⟨hbit, by linear_combination hSelY⟩
  · -- doubleSpec cur cur'
    refine ⟨Or.inl ⟨double_den_x_ne cur hcur, ?_⟩,
            Or.inl ⟨double_den_y_ne cur hcur, ?_⟩⟩
    · linear_combination hDblX
    · linear_combination hDblY

/-! ### Deployed ladder and its on-curve-threaded semantics

`depLadderRaw` is the deployed analog of `RvkBridge.rvkLadderK`: each rung fires an
abstract *raw-row* relation `Q` (giving the outgoing `acc'`/`cur'` explicitly,
matching the bare deployed rows) instead of the extracted `scalarMulStep` CPS
gadget. `depLadderRaw_final_semantic` mirrors `rvkLadderK_final_semantic` but
threads the on-curve invariant explicitly so each rung can invoke
`deployedRung_stepRel` (which needs incoming on-curve to discharge the division
denominators) and then `stepRel_semantic` (which re-establishes on-curve for the
outgoing state). One fuel induction, no unrolling. -/

/-- Deployed ladder: a raw per-rung relation `Q bit acc cur acc' cur'` threaded
through the bounded point state. -/
def depLadderRaw {n : ℕ}
    (Q : F → EdwardsBridge.Point → EdwardsBridge.Point →
        EdwardsBridge.Point → EdwardsBridge.Point → Prop)
    (bits : List.Vector F n) (k : List.Vector F 4 → Prop) :
    ℕ → ℕ → EdwardsBridge.Point → EdwardsBridge.Point → Prop
  | 0, _, acc, cur => k vec![acc.x, acc.y, cur.x, cur.y]
  | fuel + 1, bitIndex, acc, cur =>
      ∃ acc' cur',
        Q bits[bitIndex]! acc cur acc' cur' ∧
        depLadderRaw Q bits k fuel (bitIndex + 1) acc' cur'

/-- Deployed ladder semantics. Given a per-rung certificate `hstep` that every
deployed raw rung implies `StepRel` (under the incoming on-curve invariants), the
whole deployed ladder computes the same `scalarMulFromBits` model and stays on the
curve. The on-curve invariant is threaded through the induction, so the deployed
slice never touches the extracted mirror circuit. -/
theorem depLadderRaw_final_semantic {n : ℕ}
    (Q : F → EdwardsBridge.Point → EdwardsBridge.Point →
        EdwardsBridge.Point → EdwardsBridge.Point → Prop)
    (bits : List.Vector Bool n) (k : List.Vector F 4 → Prop)
    (hstep : ∀ (bit : Bool) (acc cur acc' cur' : EdwardsBridge.Point),
        onCurve acc → onCurve cur →
        Q (toZMod bit) acc cur acc' cur' →
        StepRel (toZMod bit) acc cur acc' cur') :
    ∀ fuel bitIndex acc cur,
      bitIndex + fuel ≤ n →
      onCurve acc → onCurve cur →
      depLadderRaw Q (bits.map toZMod) k fuel bitIndex acc cur →
        onCurve (scalarMulFromBits bits fuel bitIndex acc cur) ∧
        ∃ z w, k vec![
          (scalarMulFromBits bits fuel bitIndex acc cur).x,
          (scalarMulFromBits bits fuel bitIndex acc cur).y, z, w] := by
  intro fuel
  induction fuel with
  | zero =>
    intro bitIndex acc cur _ hacc _ h
    have hk : k vec![acc.x, acc.y, cur.x, cur.y] := by
      simpa [depLadderRaw] using h
    exact ⟨hacc, cur.x, cur.y, hk⟩
  | succ fuel ih =>
    intro bitIndex acc cur hbound hacc hcur h
    rw [depLadderRaw] at h
    rcases h with ⟨acc', cur', hQ, htail⟩
    have hlt : bitIndex < n := by omega
    have hbit :
        ((bits.map toZMod)[bitIndex]! : F) = toZMod bits[bitIndex]! := by
      rw [getElem!_pos (bits.map toZMod) bitIndex hlt,
        getElem!_pos bits bitIndex hlt, List.Vector.getElem_map]
    rw [hbit] at hQ
    have hrel := hstep bits[bitIndex]! acc cur acc' cur' hacc hcur hQ
    have hsem := stepRel_semantic bits[bitIndex]! acc cur acc' cur' hrel hacc hcur
    rcases hsem with ⟨hacc', hcur', haccOn, hcurOn⟩
    have htailSem := ih (bitIndex + 1) acc' cur' (by omega) haccOn hcurOn htail
    simpa [scalarMulFromBits, hacc', hcur'] using htailSem

/-- The deployed **final RVK addition** (`acc + ak`, native `curve.Add`). Its two
bare div rows, with both operands on the curve, give the `addSpec` that the
existing `addSpec_eq`/`rvk` composition consumes — so the native tail is not left
bridged by the randomized parity test either. -/
theorem deployedTail_addSpec
    (akX akY outX outY : F) (p : EdwardsBridge.Point)
    (hak : onCurve ⟨akX, akY⟩) (hp : onCurve p)
    (hTX : outX * (1 + d * (p.y * akX) * (p.x * akY)) = p.y * akX + p.x * akY)
    (hTY : outY * (1 - d * (p.y * akX) * (p.x * akY))
        = a * (p.y * akX) - p.x * akY + (akY - akX * a) * (p.x + p.y)) :
    addSpec ⟨akX, akY⟩ p ⟨outX, outY⟩ := by
  refine ⟨Or.inl ⟨add_den_plus_ne ⟨akX, akY⟩ p hak hp, ?_⟩,
          Or.inl ⟨add_den_minus_ne ⟨akX, akY⟩ p hak hp, ?_⟩⟩
  · linear_combination hTX
  · linear_combination hTY

/-- Closing glue for the rvk native tail: an `addSpec` between two on-curve
operands lands on the curve. Composes `onCurve(ladderResult)` (from the
fixed-base ladder) with the tail's `addSpec ⟨akX,akY⟩ ladderResult ⟨rvkX,rvkY⟩`
to certify `onCurve ⟨rvkX,rvkY⟩`. -/
theorem addSpec_onCurve {p q r : EdwardsBridge.Point}
    (hp : onCurve p) (hq : onCurve q) (h : addSpec p q r) : onCurve r := by
  rw [EdwardsBridge.addSpec_eq p q r hp hq h]
  exact EdwardsBridge.add_onCurve p q hp hq

end Shieldd.GnarkFormal.RvkDeployedRung
