import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.RvkFixedBaseLadderChoiceFree

/-! Composable choice-free semantics for deployed fixed-base RVK state traces. -/

namespace Shieldd.GnarkFormal.RvkFixedRunChoiceFree

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Bool (toZMod)
open Shieldd.GnarkFormal.ScalarMulBridge (scalarMulFromBits)
open Shieldd.GnarkFormal.RvkFixedBaseConstantsChoiceFree (C)
open Shieldd.GnarkFormal.RvkFixedBaseLadderChoiceFree (FixedStepRel fixedLadder)
open Shieldd.GnarkFormal.EdwardsBridge (Point onCurve addSpec)

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order)]

/-- Accumulator after the fixed generator's bit-zero rung. -/
def seedAcc (bit : EdwardsBridge.F) : Point :=
  ⟨(C 0).x * bit, 1 + ((C 0).y - 1) * bit⟩

private theorem identity_addSpec (p : Point) : addSpec ⟨0, 1⟩ p p := by
  simp only [addSpec, EdwardsBridge.a, EdwardsBridge.d, GatesDef.div_unchecked]
  constructor <;> left <;> constructor
  · norm_num
  · ring
  · norm_num
  · ring

/-- The deployed bit-zero seed is the first fixed-base step. -/
theorem seedStepRel (bit : Bool) :
    FixedStepRel 0 (toZMod bit) ⟨0, 1⟩ (seedAcc (toZMod bit)) := by
  cases bit
  · refine ⟨C 0, identity_addSpec (C 0), ?_, ?_⟩
    · change GatesDef.select (0 : EdwardsBridge.F) (C 0).x 0 (seedAcc 0).x
      unfold GatesDef.select GatesDef.is_bool
      constructor
      · ring
      · simp only [seedAcc]
        ring
    · change GatesDef.select (0 : EdwardsBridge.F) (C 0).y 1 (seedAcc 0).y
      unfold GatesDef.select GatesDef.is_bool
      constructor
      · ring
      · simp only [seedAcc]
        ring
  · refine ⟨C 0, identity_addSpec (C 0), ?_, ?_⟩
    · change GatesDef.select (1 : EdwardsBridge.F) (C 0).x 0 (seedAcc 1).x
      unfold GatesDef.select GatesDef.is_bool
      constructor
      · ring
      · simp only [seedAcc]
        ring
    · change GatesDef.select (1 : EdwardsBridge.F) (C 0).y 1 (seedAcc 1).y
      unfold GatesDef.select GatesDef.is_bool
      constructor
      · ring
      · simp only [seedAcc]
        ring

/-- A point-indexed deployed trace produces the corresponding continuation ladder. -/
theorem trace_to_fixedLadder {n : ℕ} (bits : List.Vector Bool n) (acc : ℕ → Point)
    (hstep : ∀ i, i < n → onCurve (acc i) →
      FixedStepRel i (toZMod bits[i]!) (acc i) (acc (i + 1))) :
    ∀ fuel bitIndex,
      bitIndex + fuel = n →
      onCurve (acc bitIndex) →
      fixedLadder (bits.map toZMod)
        (fun v => v[0]! = (acc n).x ∧ v[1]! = (acc n).y)
        fuel bitIndex (acc bitIndex) := by
  intro fuel
  induction fuel with
  | zero =>
      intro bitIndex hend _
      have hi : bitIndex = n := by omega
      subst bitIndex
      rw [fixedLadder]
      constructor
      · change (acc n).x = (acc n).x
        rfl
      · change (acc n).y = (acc n).y
        rfl
  | succ fuel ih =>
      intro bitIndex hend hacc
      have hlt : bitIndex < n := by omega
      have hbit :
          ((bits.map toZMod)[bitIndex]! : EdwardsBridge.F) = toZMod bits[bitIndex]! := by
        rw [getElem!_pos (bits.map toZMod) bitIndex hlt,
          getElem!_pos bits bitIndex hlt, List.Vector.getElem_map]
      have hrel := hstep bitIndex hlt hacc
      have hnext :=
        (RvkFixedBaseLadderChoiceFree.fixedStep_semantic bitIndex bits[bitIndex]!
          (acc bitIndex) (acc (bitIndex + 1)) hacc hrel).2
      rw [fixedLadder]
      refine ⟨acc (bitIndex + 1), ?_, ?_⟩
      · rwa [hbit]
      · exact ih (bitIndex + 1) (by omega) hnext

/-- The final deployed trace point is the little-endian fixed-base scalar model. -/
theorem trace_final_semantic {n : ℕ} (bits : List.Vector Bool n) (acc : ℕ → Point)
    (hstep : ∀ i, i < n → onCurve (acc i) →
      FixedStepRel i (toZMod bits[i]!) (acc i) (acc (i + 1)))
    (hacc0 : onCurve (acc 0)) :
    acc n = scalarMulFromBits bits n 0 (acc 0) (C 0) ∧ onCurve (acc n) := by
  have hladder := trace_to_fixedLadder bits acc hstep n 0 (by omega) hacc0
  obtain ⟨hmodelOn, hx, hy⟩ :=
    RvkFixedBaseLadderChoiceFree.fixedLadder_final_coords bits (acc n).x (acc n).y
      n 0 (acc 0) (by omega) hacc0 hladder
  have heq : scalarMulFromBits bits n 0 (acc 0) (C 0) = acc n := by
    cases hm : scalarMulFromBits bits n 0 (acc 0) (C 0) with
    | mk mx my =>
      cases ha : acc n with
      | mk ax ay =>
        simp only [hm, ha] at hx hy
        simp only [hx, hy]
  refine ⟨heq.symm, ?_⟩
  rwa [heq] at hmodelOn

end Shieldd.GnarkFormal.RvkFixedRunChoiceFree
