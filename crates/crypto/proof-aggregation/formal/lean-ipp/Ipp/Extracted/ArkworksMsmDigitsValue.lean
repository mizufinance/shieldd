import Ipp.Extracted.ArkworksMsmDigits
import Mathlib.Algebra.Order.Floor.Div

/-! Telescoping value theorem for the low-to-high signed window schedule. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std

/-- Low-to-high radix windows, truncated to `count` digits. -/
def scalarWindows (radix : Nat) : Nat → Nat → List Nat
  | _, 0 => []
  | scalar, count + 1 =>
      scalar % radix :: scalarWindows radix (scalar / radix) count

@[simp]
theorem scalarWindows_length (radix scalar count : Nat) :
    (scalarWindows radix scalar count).length = count := by
  induction count generalizing scalar with
  | zero => rfl
  | succ count ih => simp [scalarWindows, ih]

theorem scalarWindows_lt (radix scalar count : Nat) (hradix : 0 < radix) :
    ∀ coefficient ∈ scalarWindows radix scalar count, coefficient < radix := by
  induction count generalizing scalar with
  | zero => simp [scalarWindows]
  | succ count ih =>
      intro coefficient hcoefficient
      simp only [scalarWindows, List.mem_cons] at hcoefficient
      rcases hcoefficient with rfl | htail
      · exact Nat.mod_lt _ hradix
      · exact ih (scalar / radix) coefficient htail

/-- Positional evaluation of ordinary unsigned radix windows. -/
def evalWindows (radix : Nat) : List Nat → Int
  | [] => 0
  | coefficient :: rest =>
      Int.ofNat coefficient + Int.ofNat radix * evalWindows radix rest

/-- Positional evaluation of signed extracted digits. -/
def evalDigits (radix : Nat) : List WnafDigit → Int
  | [] => 0
  | digit :: rest => digit.value + Int.ofNat radix * evalDigits radix rest

/-- Pure `make_digits` schedule, with the most-significant digit unsigned. -/
def makeDigitsModel (radix : Nat) : List Nat → Nat → List WnafDigit
  | [], _ => []
  | [coefficient], carry => [finalDigit carry coefficient]
  | coefficient :: nextCoefficient :: rest, carry =>
      nonfinalDigit radix carry coefficient ::
        makeDigitsModel radix (nextCoefficient :: rest)
          (nextCarry radix carry coefficient)

theorem makeDigitsModel_length (radix carry : Nat) (windows : List Nat) :
    (makeDigitsModel radix windows carry).length = windows.length := by
  induction windows generalizing carry with
  | nil => rfl
  | cons coefficient rest ih =>
      cases rest with
      | nil => rfl
      | cons nextCoefficient rest =>
          simp [makeDigitsModel, ih]

/-- Telescoping theorem from the per-step carry equations. -/
theorem makeDigitsModel_eval (radix carry : Nat) (windows : List Nat)
    (hradix : 2 ≤ radix) (hradixWord : radix < MacCampaign.u64Base)
    (hcarry : carry ≤ 1)
    (hwindows : ∀ coefficient ∈ windows, coefficient < radix)
    (hnonempty : windows ≠ []) :
    evalDigits radix (makeDigitsModel radix windows carry) =
      Int.ofNat carry + evalWindows radix windows := by
  induction windows generalizing carry with
  | nil => exact (hnonempty rfl).elim
  | cons coefficient rest ih =>
      have hcoefficient : coefficient < radix :=
        hwindows coefficient (by simp)
      cases rest with
      | nil =>
          simp only [makeDigitsModel, evalDigits, evalWindows]
          rw [finalDigit_step radix carry coefficient hradixWord hcarry
            hcoefficient]
          ring
      | cons nextCoefficient rest =>
          have htail :
              ∀ coefficient ∈ nextCoefficient :: rest,
                coefficient < radix := by
            intro coefficient hcoefficient
            exact hwindows coefficient (by simp [hcoefficient])
          have hnext :
              nextCarry radix carry coefficient ≤ 1 :=
            nextCarry_le_one radix carry coefficient hradix hcarry
              hcoefficient
          simp only [makeDigitsModel, evalDigits, evalWindows]
          rw [ih (nextCarry radix carry coefficient) hnext htail (by simp)]
          rw [mul_add, ← add_assoc]
          rw [nonfinalDigit_step radix carry coefficient hradix hradixWord
            hcarry hcoefficient]
          simp only [evalWindows]
          ring

/-- Unsigned radix windows reconstruct any value covered by their count. -/
theorem evalWindows_scalarWindows (radix scalar count : Nat)
    (hradix : 0 < radix) (hscalar : scalar < radix ^ count) :
    evalWindows radix (scalarWindows radix scalar count) = Int.ofNat scalar := by
  induction count generalizing scalar with
  | zero =>
      have hzero : scalar = 0 := by simpa using hscalar
      simp [scalarWindows, evalWindows, hzero]
  | succ count ih =>
      have hquotient : scalar / radix < radix ^ count := by
        apply (Nat.div_lt_iff_lt_mul hradix).2
        simpa [pow_succ] using hscalar
      rw [scalarWindows, evalWindows,
        ih (scalar / radix) hquotient]
      have hsplit := Nat.mod_add_div scalar radix
      have hcast := congrArg Int.ofNat hsplit
      simpa [Int.natCast_add, Int.natCast_mul, mul_comm] using hcast

theorem radixWindowCover (bits windowBits : Nat) (hwindowBits : 0 < windowBits) :
    2 ^ bits ≤
      (2 ^ windowBits) ^ ((bits + windowBits - 1) / windowBits) := by
  have hbits :
      bits ≤ windowBits * ((bits + windowBits - 1) / windowBits) := by
    have hceil :=
      (ceilDiv_le_iff_le_mul (a := windowBits) (b := bits)
        (c := bits ⌈/⌉ windowBits) hwindowBits).1 le_rfl
    simpa [Nat.ceilDiv_eq_add_pred_div] using hceil
  calc
    2 ^ bits ≤
        2 ^ (windowBits * ((bits + windowBits - 1) / windowBits)) :=
      Nat.pow_le_pow_right (by decide) hbits
    _ = (2 ^ windowBits) ^
        ((bits + windowBits - 1) / windowBits) := by rw [pow_mul]

abbrev scalarValue
    (scalar : Ipp.Extracted.ArkworksScalarMul.ScalarArray) : Int :=
  Int.ofNat (Ipp.Extracted.ArkworksScalarMul.scalarToNat scalar)

/--
The signed model reconstructs a canonical 253-bit scalar whenever the chosen
window count covers that bit width.
-/
theorem makeDigits_value
    (scalar : Ipp.Extracted.ArkworksScalarMul.ScalarArray)
    (radix count : Nat) (hradix : 2 ≤ radix)
    (hradixWord : radix < MacCampaign.u64Base) (hcount : 0 < count)
    (hcover : 2 ^ 253 ≤ radix ^ count)
    (hscalar :
      Ipp.Extracted.ArkworksScalarMul.scalarToNat scalar < 2 ^ 253) :
    evalDigits radix
        (makeDigitsModel radix
          (scalarWindows radix
            (Ipp.Extracted.ArkworksScalarMul.scalarToNat scalar) count) 0) =
      scalarValue scalar := by
  have hscalarCovered :
      Ipp.Extracted.ArkworksScalarMul.scalarToNat scalar < radix ^ count :=
    lt_of_lt_of_le hscalar hcover
  have hnonempty :
      scalarWindows radix
          (Ipp.Extracted.ArkworksScalarMul.scalarToNat scalar) count ≠ [] := by
    intro hempty
    have hlength := scalarWindows_length radix
      (Ipp.Extracted.ArkworksScalarMul.scalarToNat scalar) count
    rw [hempty] at hlength
    simp at hlength
    omega
  rw [makeDigitsModel_eval radix 0
    (scalarWindows radix
      (Ipp.Extracted.ArkworksScalarMul.scalarToNat scalar) count)
    hradix hradixWord (by omega)
    (scalarWindows_lt radix
      (Ipp.Extracted.ArkworksScalarMul.scalarToNat scalar) count (by omega))
    hnonempty]
  simp [evalWindows_scalarWindows radix
    (Ipp.Extracted.ArkworksScalarMul.scalarToNat scalar) count
    (by omega) hscalarCovered]

/-- The exact `R = 2^c`, `m = ceil(253/c)` specialization used by MSM. -/
theorem makeDigits_value_pow_two
    (scalar : Ipp.Extracted.ArkworksScalarMul.ScalarArray)
    (windowBits : Nat) (hwindowBits : 0 < windowBits)
    (hradixWord : 2 ^ windowBits < MacCampaign.u64Base)
    (hscalar :
      Ipp.Extracted.ArkworksScalarMul.scalarToNat scalar < 2 ^ 253) :
    evalDigits (2 ^ windowBits)
        (makeDigitsModel (2 ^ windowBits)
          (scalarWindows (2 ^ windowBits)
            (Ipp.Extracted.ArkworksScalarMul.scalarToNat scalar)
            ((253 + windowBits - 1) / windowBits)) 0) =
      scalarValue scalar := by
  have hradix : 2 ≤ 2 ^ windowBits := by
    have := Nat.one_lt_two_pow (Nat.ne_of_gt hwindowBits)
    omega
  have hcover := radixWindowCover 253 windowBits hwindowBits
  have hcount :
      0 < (253 + windowBits - 1) / windowBits := by
    by_contra hnotPositive
    have hzero' : (253 + windowBits - 1) / windowBits = 0 :=
      Nat.eq_zero_of_not_pos hnotPositive
    rw [hzero', pow_zero] at hcover
    norm_num at hcover
  exact makeDigits_value scalar (2 ^ windowBits)
    ((253 + windowBits - 1) / windowBits) hradix hradixWord hcount
    hcover hscalar

/-- Bounds carried by all digits, distinguishing the final digit. -/
inductive DigitsBounded (radix : Nat) : List WnafDigit → Prop
  | last (digit : WnafDigit)
      (canonical : digit.Canonical)
      (magnitude : digit.magnitude.val ≤ radix)
      (lower : 0 ≤ digit.value)
      (upper : digit.value ≤ Int.ofNat radix) :
      DigitsBounded radix [digit]
  | cons (digit : WnafDigit) {rest : List WnafDigit}
      (canonical : digit.Canonical)
      (magnitude : digit.magnitude.val ≤ radix)
      (lower : -(Int.ofNat (radix / 2)) ≤ digit.value)
      (upper : digit.value < Int.ofNat (radix / 2))
      (tail : DigitsBounded radix rest) :
      DigitsBounded radix (digit :: rest)

/-- Every modeled digit has the required canonical sign and bucket bound. -/
theorem makeDigitsModel_bounded (radix carry : Nat) (windows : List Nat)
    (hradixEven : radix % 2 = 0) (hradix : 2 ≤ radix)
    (hradixWord : radix < MacCampaign.u64Base)
    (hcarry : carry ≤ 1)
    (hwindows : ∀ coefficient ∈ windows, coefficient < radix)
    (hnonempty : windows ≠ []) :
    DigitsBounded radix (makeDigitsModel radix windows carry) := by
  induction windows generalizing carry with
  | nil => exact (hnonempty rfl).elim
  | cons coefficient rest ih =>
      have hcoefficient : coefficient < radix :=
        hwindows coefficient (by simp)
      cases rest with
      | nil =>
          have hvalue := finalDigit_bounds radix carry coefficient
            hradixWord hcarry hcoefficient
          have hsum : carry + coefficient ≤ radix := by omega
          have hword : carry + coefficient < MacCampaign.u64Base :=
            lt_of_le_of_lt hsum hradixWord
          have hmagnitude :
              (finalDigit carry coefficient).magnitude.val ≤ radix := by
            rw [finalDigit_magnitude carry coefficient hword]
            exact hsum
          exact .last (finalDigit carry coefficient)
            (finalDigit_canonical carry coefficient) hmagnitude
            hvalue.1 hvalue.2
      | cons nextCoefficient rest =>
          have htail :
              ∀ coefficient ∈ nextCoefficient :: rest,
                coefficient < radix := by
            intro coefficient hcoefficient
            exact hwindows coefficient (by simp [hcoefficient])
          have hnext :
              nextCarry radix carry coefficient ≤ 1 :=
            nextCarry_le_one radix carry coefficient hradix hcarry
              hcoefficient
          have hvalue := nonfinalDigit_bounds radix carry coefficient
            hradixEven hradix hradixWord hcarry hcoefficient
          have hmagnitudeValue :=
            nonfinalMagnitude_le radix carry coefficient hcarry hcoefficient
          have hmagnitude :
              (nonfinalDigit radix carry coefficient).magnitude.val ≤ radix := by
            rw [nonfinalDigit_magnitude radix carry coefficient
              hradixWord hcarry hcoefficient]
            exact hmagnitudeValue
          exact .cons (nonfinalDigit radix carry coefficient)
            (nonfinalDigit_canonical radix carry coefficient
              hradixWord hcarry hcoefficient)
            hmagnitude hvalue.1 hvalue.2
            (ih (nextCarry radix carry coefficient) hnext htail (by simp))

#print axioms scalarWindows_length
#print axioms scalarWindows_lt
#print axioms makeDigitsModel_length
#print axioms makeDigitsModel_eval
#print axioms evalWindows_scalarWindows
#print axioms radixWindowCover
#print axioms makeDigits_value
#print axioms makeDigits_value_pow_two
#print axioms makeDigitsModel_bounded

end Ipp.Extracted.ArkworksMsm
