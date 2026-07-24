import Ipp.Extracted.ArkworksMsmExchange
import Ipp.Extracted.ArkworksScalarMulG1Loop
import Ipp.Extracted.ArkworksScalarMulG2Loop

/-! Shared representation and digit-bound facts for the checked MSM capstones. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksScalarMul

/-- A canonical executed G1 value representing an algebraic point. -/
abbrev RepresentsG1 := ValidG1LoopState

/-- A canonical executed G2 value representing an algebraic point. -/
abbrev RepresentsG2 := ValidG2LoopState

theorem usize_eq_of_val_eq {left right : Usize}
    (hvalue : left.val = right.val) : left = right := by
  cases left
  cases right
  simp_all

theorem usize_add_value (left right output : Usize)
    (hexec : (left + right : Result Usize) = .ok output) :
    output.val = left.val + right.val := by
  rw [Aeneas.Std.add_eq] at hexec
  cases hexec
  rfl

theorem usize_sub_value (left right output : Usize)
    (hbound : right.val ≤ left.val)
    (hexec : (left - right : Result Usize) = .ok output) :
    output.val = left.val - right.val := by
  rw [MacCampaign.sub_eq left right hbound] at hexec
  cases hexec
  rfl

theorem usize_mac_div_value (left right output : Usize)
    (hnonzero : right.val ≠ 0)
    (hexec :
      @HDiv.hDiv Usize Usize (Result Usize)
        MacCampaign.instHDivUsize left right = .ok output) :
    output.val = left.val / right.val := by
  simp only [HDiv.hDiv] at hexec
  rw [if_neg hnonzero] at hexec
  cases hexec
  rfl

theorem usize_glv_div_value (left right output : Usize)
    (hnonzero : right.val ≠ 0)
    (hexec :
      @HDiv.hDiv Usize Usize (Result Usize)
        ark_ip_proofs.GlvRuntime.instHDivUsizeResult left right =
          .ok output) :
    output.val = left.val / right.val := by
  simp only [HDiv.hDiv] at hexec
  rw [if_neg hnonzero] at hexec
  cases hexec
  rfl

theorem DigitsBounded.magnitude_le {radix : Nat} {digits : List WnafDigit}
    (hbounded : DigitsBounded radix digits) (digit : WnafDigit)
    (hdigit : digit ∈ digits) :
    digit.magnitude.val ≤ radix := by
  induction hbounded with
  | last final _ hmagnitude _ _ =>
      simp only [List.mem_singleton] at hdigit
      subst digit
      exact hmagnitude
  | cons head _ hmagnitude _ _ htail ih =>
      rcases List.mem_cons.mp hdigit with rfl | hdigit
      · exact hmagnitude
      · exact ih hdigit

/-- Every digit in one MSM scalar row fits the generated bucket array. -/
theorem msmScalarDigits_magnitude_le (width : Nat) (scalar : ScalarArray)
    (hwidth : 0 < width) (hwidth64 : width < 64)
    (digit : WnafDigit) (hdigit : digit ∈ msmScalarDigits width scalar) :
    digit.magnitude.val ≤ 2 ^ width := by
  have hradix : 2 ≤ 2 ^ width := by
    have := Nat.one_lt_two_pow (Nat.ne_of_gt hwidth)
    omega
  have hradixWord : 2 ^ width < MacCampaign.u64Base := by
    simpa [MacCampaign.u64Base] using
      (Nat.pow_lt_pow_right (by decide : 1 < 2) hwidth64)
  have hcount : 0 < msmDigitCount width := by
    unfold msmDigitCount
    apply Nat.div_pos
    · omega
    · exact hwidth
  have hnonempty :
      scalarWindows (2 ^ width) (scalarToNat scalar)
          (msmDigitCount width) ≠ [] := by
    intro hempty
    have hlength := scalarWindows_length (2 ^ width)
      (scalarToNat scalar) (msmDigitCount width)
    rw [hempty] at hlength
    simp at hlength
    omega
  have hbounded :
      DigitsBounded (2 ^ width) (msmScalarDigits width scalar) := by
    apply makeDigitsModel_bounded
    · simpa using hwidth
    · exact hradix
    · exact hradixWord
    · omega
    · exact scalarWindows_lt (2 ^ width) (scalarToNat scalar)
        (msmDigitCount width) (by omega)
    · exact hnonempty
  exact hbounded.magnitude_le digit hdigit

#print axioms DigitsBounded.magnitude_le
#print axioms msmScalarDigits_magnitude_le
#print axioms usize_eq_of_val_eq
#print axioms usize_add_value
#print axioms usize_sub_value
#print axioms usize_mac_div_value
#print axioms usize_glv_div_value

end Ipp.Extracted.ArkworksMsm
