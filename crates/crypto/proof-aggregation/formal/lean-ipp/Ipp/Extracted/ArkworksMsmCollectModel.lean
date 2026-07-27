import Ipp.Extracted.ArkworksMsmDigitLoopResult

/-! Row-major packaging for the per-scalar signed-window digit vectors. -/

namespace Ipp.Extracted.ArkworksMsm

open Ipp.Extracted.ArkworksScalarMul

/-- The number of signed windows used by the 253-bit MSM schedule. -/
def msmDigitCount (width : Nat) : Nat :=
  (253 + width - 1) / width

/-- The modeled signed-window row for one scalar. -/
def msmScalarDigits (width : Nat) (scalar : ScalarArray) : List WnafDigit :=
  makeDigitsModel (2 ^ width)
    (scalarWindows (2 ^ width) (scalarToNat scalar) (msmDigitCount width)) 0

/-- The row-major digit matrix consumed by the generated bucket loops. -/
def collectedDigits (width : Nat) (scalars : List ScalarArray) : List WnafDigit :=
  scalars.flatMap (msmScalarDigits width)

@[simp]
theorem msmScalarDigits_length (width : Nat) (scalar : ScalarArray) :
    (msmScalarDigits width scalar).length = msmDigitCount width := by
  simp [msmScalarDigits, msmDigitCount, makeDigitsModel_length]

@[simp]
theorem collectedDigits_length (width : Nat) (scalars : List ScalarArray) :
    (collectedDigits width scalars).length =
      scalars.length * msmDigitCount width := by
  induction scalars with
  | nil => simp [collectedDigits]
  | cons scalar scalars ih =>
      simp [collectedDigits, ih, Nat.add_mul, Nat.add_comm]

/-- Row-major indexing recovers the selected scalar's selected window. -/
theorem collectedDigits_get (width : Nat) (scalars : List ScalarArray)
    (point window : Nat) (hpoint : point < scalars.length)
    (hwindow : window < msmDigitCount width) :
    (collectedDigits width scalars).get
        ⟨point * msmDigitCount width + window, by
          rw [collectedDigits_length]
          calc
            point * msmDigitCount width + window <
                point * msmDigitCount width + msmDigitCount width :=
              Nat.add_lt_add_left hwindow _
            _ = (point + 1) * msmDigitCount width := by
              simp [Nat.add_mul]
            _ ≤ scalars.length * msmDigitCount width :=
              Nat.mul_le_mul_right (msmDigitCount width) (by omega)⟩ =
      (msmScalarDigits width scalars[point]).get ⟨window, by
        simpa using hwindow⟩ := by
  induction scalars generalizing point with
  | nil => simp at hpoint
  | cons scalar scalars ih =>
      cases point with
      | zero =>
          simp only [Nat.zero_mul, Nat.zero_add, List.get_eq_getElem]
          change (msmScalarDigits width scalar ++
              collectedDigits width scalars).get
                ⟨window, by
                  simp only [List.length_append, msmScalarDigits_length]
                  omega⟩ = _
          rw [List.get_eq_getElem]
          rw [List.getElem_append_left (by simpa using hwindow)]
          rfl
      | succ point =>
          have htail : point < scalars.length := by simpa using hpoint
          change
            (msmScalarDigits width scalar ++ collectedDigits width scalars).get _ =
              (msmScalarDigits width scalars[point]).get _
          simp only [List.get_eq_getElem]
          rw [List.getElem_append_right (by
            simp only [msmScalarDigits_length]
            rw [Nat.succ_mul]
            omega)]
          have hsub :
              (point + 1) * msmDigitCount width + window -
                  (msmScalarDigits width scalar).length =
                point * msmDigitCount width + window := by
            rw [msmScalarDigits_length, Nat.succ_mul]
            omega
          simpa only [hsub] using ih point htail

#print axioms msmScalarDigits_length
#print axioms collectedDigits_length
#print axioms collectedDigits_get

end Ipp.Extracted.ArkworksMsm
