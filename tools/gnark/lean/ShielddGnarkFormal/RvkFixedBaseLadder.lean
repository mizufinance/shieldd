import ShielddGnarkFormal.RvkFixedBaseConstants
import ShielddGnarkFormal.ScalarMulBridge

/-! Fixed-base deployed RVK ladder semantics. -/

namespace Shieldd.GnarkFormal.RvkFixedBaseLadder

open Bool (toZMod)
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)
open Shieldd.GnarkFormal.EdwardsBridge (Point onCurve addSpec addF add_onCurve)
open Shieldd.GnarkFormal.RvkFixedBaseConstants (C C_onCurve C_succ)
open Shieldd.GnarkFormal.ScalarMulBridge (scalarMulFromBits)

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafEdwardsDouble.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.DecafEdwardsNeg.Order) := ‹_›

abbrev F := EdwardsBridge.F

/-- One folded RVK rung: add the materialized `C i`, then select by the bit. -/
def FixedStepRel (i : ℕ) (bit : F) (acc acc' : Point) : Prop :=
  ∃ sum,
    addSpec acc (C i) sum ∧
    GatesDef.select bit sum.x acc.x acc'.x ∧
    GatesDef.select bit sum.y acc.y acc'.y

private theorem select_bool_value (b : Bool) (t f out : F)
    (h : GatesDef.select (toZMod b : F) t f out) :
    out = if b then t else f := by
  dsimp [GatesDef.select] at h
  rcases h with ⟨_, hout⟩
  cases b <;> simp [Bool.toZMod_zero, Bool.toZMod_one] at hout ⊢ <;>
    linear_combination hout

theorem fixedStep_semantic (i : ℕ) (b : Bool) (acc acc' : Point)
    (hacc : onCurve acc) (h : FixedStepRel i (toZMod b) acc acc') :
    acc' = (if b then addF acc (C i) else acc) ∧ onCurve acc' := by
  rcases h with ⟨sum, hadd, hselX, hselY⟩
  have hsum : sum = addF acc (C i) :=
    EdwardsBridge.addSpec_eq acc (C i) sum hacc (C_onCurve i) hadd
  have hx := select_bool_value b sum.x acc.x acc'.x hselX
  have hy := select_bool_value b sum.y acc.y acc'.y hselY
  have hacc' : acc' = (if b then addF acc (C i) else acc) := by
    cases b
    · cases acc'
      simp only [Bool.false_eq_true, ↓reduceIte] at hx hy ⊢
      cases hx
      cases hy
      rfl
    · rw [hsum] at hx hy
      cases acc'
      cases hsumF : addF acc (C i)
      simp only [hsumF, ↓reduceIte] at hx hy ⊢
      cases hx
      cases hy
      rfl
  refine ⟨hacc', ?_⟩
  rw [hacc']
  cases b
  · exact hacc
  · exact add_onCurve acc (C i) hacc (C_onCurve i)

/-- Fuel-recursive deployed ladder with materialized constants and no current
point in the state: gnark folded its doublings into `C`. -/
def fixedLadder {n : ℕ} (bits : List.Vector F n) (k : List.Vector F 4 → Prop) :
    ℕ → ℕ → Point → Prop
  | 0, i, acc => k vec![acc.x, acc.y, (C i).x, (C i).y]
  | fuel + 1, i, acc =>
      ∃ acc', FixedStepRel i bits[i]! acc acc' ∧ fixedLadder bits k fuel (i + 1) acc'

/-- The fixed deployed ladder has the same accumulator semantics as the scalar
model. The induction follows fuel, so it never unrolls the 251 RVK rungs. -/
theorem fixedLadder_final_semantic {n : ℕ} (bits : List.Vector Bool n)
    (k : List.Vector F 4 → Prop) :
    ∀ fuel i acc,
      i + fuel ≤ n →
      onCurve acc →
      fixedLadder (bits.map toZMod) k fuel i acc →
        onCurve (scalarMulFromBits bits fuel i acc (C i)) ∧
        ∃ z w, k vec![
          (scalarMulFromBits bits fuel i acc (C i)).x,
          (scalarMulFromBits bits fuel i acc (C i)).y, z, w] := by
  intro fuel
  induction fuel with
  | zero =>
      intro i acc _ hacc h
      have hk : k vec![acc.x, acc.y, (C i).x, (C i).y] := by
        simpa [fixedLadder] using h
      exact ⟨hacc, (C i).x, (C i).y, by simpa [scalarMulFromBits] using hk⟩
  | succ fuel ih =>
      intro i acc hbound hacc h
      rw [fixedLadder] at h
      rcases h with ⟨acc', hstep, htail⟩
      have hlt : i < n := by omega
      have hbit : ((bits.map toZMod)[i]! : F) = toZMod bits[i]! := by
        rw [getElem!_pos (bits.map toZMod) i hlt,
          getElem!_pos bits i hlt, List.Vector.getElem_map]
      rw [hbit] at hstep
      have hacc' := fixedStep_semantic i bits[i]! acc acc' hacc hstep
      rcases hacc' with ⟨heq, haccOn⟩
      have htailSem := ih (i + 1) acc' (by omega) haccOn htail
      simpa [scalarMulFromBits, heq, C_succ] using htailSem

/-- Project the final ladder point's coordinates. Choosing the continuation `k`
to record the boundary coordinates lets the fuel induction carry them out to
`scalarMulFromBits`; the base discharges by `rfl` when the deployed wide-binder
final point is literally `⟨px, py⟩`. This is the H-seam projection: it binds the
abstract ladder point to the materialized tail wire form without unrolling. -/
theorem fixedLadder_final_coords {n : ℕ} (bits : List.Vector Bool n) (px py : F) :
    ∀ fuel i acc,
      i + fuel ≤ n →
      onCurve acc →
      fixedLadder (bits.map toZMod) (fun v => v[0]! = px ∧ v[1]! = py) fuel i acc →
        onCurve (scalarMulFromBits bits fuel i acc (C i)) ∧
        (scalarMulFromBits bits fuel i acc (C i)).x = px ∧
        (scalarMulFromBits bits fuel i acc (C i)).y = py := by
  intro fuel i acc hbound hacc h
  obtain ⟨hon, z, w, hk⟩ :=
    fixedLadder_final_semantic bits (fun v => v[0]! = px ∧ v[1]! = py)
      fuel i acc hbound hacc h
  refine ⟨hon, ?_, ?_⟩
  · simpa using hk.1
  · simpa using hk.2

end Shieldd.GnarkFormal.RvkFixedBaseLadder
