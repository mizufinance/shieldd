import ShielddGnarkFormal.Protocol.Transfer.Concrete
import Mathlib.Tactic.LinearCombination

/-!
Bridges for the transfer comparator and conditional selector rows.

Circuit predicates expose the recovered row-level equations. Protocol
predicates use the independent fixed-shape Transfer definitions.
-/

namespace Shieldd.GnarkFormal.ThresholdRegulatedBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev F := Protocol.Common.F
abbrev Point := Protocol.Common.Point F

def BooleanCircuit (value : F) : Prop :=
  value * (1 - value) = 0

def BooleanSpec (value : F) : Prop :=
  value = 0 ∨ value = 1

theorem boolean_sound
    [Fact (Nat.Prime Poseidon377.P)]
    (value : F) (h : BooleanCircuit value) :
    BooleanSpec value := by
  rcases mul_eq_zero.mp h with hzero | hone
  · exact Or.inl hzero
  · right
    linear_combination -hone

/--
Recovered 128-bit comparator result. The normalized provider proves this
disjunction from the two decompositions and the prefix-comparison rows.
-/
def ThresholdFlagCircuit
    (isRegulated amount threshold output : F) : Prop :=
  amount.val < 2 ^ 128 ∧
    threshold.val < 2 ^ 128 ∧
    ((amount.val < threshold.val ∧ output = 0) ∨
      (¬ amount.val < threshold.val ∧ output = isRegulated))

def ThresholdFlagSpec
    (isRegulated amount threshold output : F) : Prop :=
  Protocol.Common.amount128 amount ∧
    Protocol.Common.amount128 threshold ∧
    output =
      Protocol.Transfer.Concrete.thresholdFlag
        isRegulated amount threshold ∧
    (isRegulated = 0 → output = 0) ∧
    (isRegulated = 1 →
      (output = 1 ↔ ¬ amount.val < threshold.val))

theorem threshold_flag_sound
    (isRegulated amount threshold output : F)
    (h : ThresholdFlagCircuit isRegulated amount threshold output) :
    ThresholdFlagSpec isRegulated amount threshold output := by
  rcases h with ⟨hamount, hthreshold, hless | hnotLess⟩
  · refine ⟨hamount, hthreshold, ?_, ?_, ?_⟩
    · simp [
        Protocol.Transfer.Concrete.thresholdFlag,
        Protocol.Transfer.Concrete.thresholdReached,
        hless.1,
        hless.2
      ]
    · intro _
      exact hless.2
    · intro _
      constructor
      · intro houtput
        have hzeroOne : (0 : F) ≠ 1 := by decide
        exact (hzeroOne (hless.2.symm.trans houtput)).elim
      · intro hnotLess
        exact (hnotLess hless.1).elim
  · refine ⟨hamount, hthreshold, ?_, ?_, ?_⟩
    · simp [
        Protocol.Transfer.Concrete.thresholdFlag,
        Protocol.Transfer.Concrete.thresholdReached,
        hnotLess.1,
        hnotLess.2
      ]
    · intro hzero
      calc
        output = isRegulated := hnotLess.2
        _ = 0 := hzero
    · intro hone
      simp [hnotLess.1, hnotLess.2, hone]

def SelectPointCircuit
    (selector : F) (whenTrue whenFalse output : Point) : Prop :=
  output.x =
      whenFalse.x - selector * (whenFalse.x - whenTrue.x) ∧
    output.y =
      whenFalse.y - selector * (whenFalse.y - whenTrue.y)

def SelectPointSpec
    (selector : F) (whenTrue whenFalse output : Point) : Prop :=
  output =
    Protocol.Transfer.Concrete.selectPoint selector whenTrue whenFalse

theorem select_point_sound
    (selector : F) (whenTrue whenFalse output : Point)
    (h : SelectPointCircuit selector whenTrue whenFalse output) :
    SelectPointSpec selector whenTrue whenFalse output := by
  rcases h with ⟨hx, hy⟩
  cases output
  simp only [SelectPointSpec, Protocol.Transfer.Concrete.selectPoint]
  simp only at hx hy
  cases hx
  cases hy
  rfl

def AssertEquivalentIfCircuit
    (selector : F) (left right : Point) : Prop :=
  selector * (left.x * right.y - right.x * left.y) = 0

def AssertEquivalentIfSpec
    (selector : F) (left right : Point) : Prop :=
  selector = 1 →
    Protocol.Common.Decaf.equivalent left right

theorem assert_equivalent_if_sound
    (selector : F) (left right : Point)
    (hleft : Protocol.Common.Decaf.onCurve left)
    (hright : Protocol.Common.Decaf.onCurve right)
    (h : AssertEquivalentIfCircuit selector left right) :
    AssertEquivalentIfSpec selector left right := by
  intro hselected
  refine ⟨hleft, hright, ?_⟩
  rw [hselected] at h
  simp only [AssertEquivalentIfCircuit, one_mul] at h
  exact sub_eq_zero.mp h

def DummyMuxCircuit
    (isDummy real synthetic output : F) : Prop :=
  output = (1 - isDummy) * real + isDummy * synthetic

def DummyMuxSpec
    (isDummy real synthetic output : F) : Prop :=
  (isDummy = 0 ∧ output = real) ∨
    (isDummy = 1 ∧ output = synthetic)

theorem dummy_mux_sound
    [Fact (Nat.Prime Poseidon377.P)]
    (isDummy real synthetic output : F)
    (hboolean : BooleanCircuit isDummy)
    (h : DummyMuxCircuit isDummy real synthetic output) :
    DummyMuxSpec isDummy real synthetic output := by
  rcases boolean_sound isDummy hboolean with hzero | hone
  · left
    refine ⟨hzero, ?_⟩
    simpa [DummyMuxCircuit, hzero] using h
  · right
    refine ⟨hone, ?_⟩
    simpa [DummyMuxCircuit, hone] using h

end Shieldd.GnarkFormal.ThresholdRegulatedBridge
