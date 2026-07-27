import Ipp.Extracted.ArkworksScalarMulGlvRoundedDiv
import Ipp.Extracted.ArkworksScalarMulGlvArrayCore

/-! Pure bounds for the rounded GLV quotient. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDecompBoundsCore

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksScalarMul
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

set_option maxRecDepth 32768

abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

theorem r_lt_two_pow_255 : r < 2 ^ 255 := by
  norm_num [r, Ipp.Bls12377.scalarModulus, pow_succ]

theorem numerator_lt_two_pow_384 {s numerator : Nat}
    (hs : s < r) (hnumerator : numerator = s * a) :
    numerator < 2 ^ 384 := by
  rw [hnumerator]
  have hmul : s * a < r * a :=
    (Nat.mul_lt_mul_right (show 0 < a by norm_num [a])).2 hs
  have hconstant : r * a < 2 ^ 384 := by
    norm_num [r, a, Ipp.Bls12377.scalarModulus, pow_succ]
  omega

theorem rounded_quotient_le_a (numerator quotient : WideArray)
    (hs : ∃ s, s < r ∧ wideToNat numerator = s * a)
    (hspec : Ipp.Extracted.ArkworksScalarMul.GlvRoundedDiv.RoundedSpec
      numerator quotient) : wideToNat quotient ≤ a := by
  rcases hs with ⟨s, hslt, hnumerator⟩
  rcases hspec.quotient_remainder with ⟨q, remainder, hdecomp, hremainder, hquotient⟩
  have hmul : s * a < r * a :=
    (Nat.mul_lt_mul_right (show 0 < a by norm_num [a])).2 hslt
  have hqmul : q * r ≤ s * a := by omega
  have hqa : q < a := by
    have hrpos : 0 < r := by norm_num [r, Ipp.Bls12377.scalarModulus]
    nlinarith
  rw [hquotient]
  split <;> omega

theorem rounded_quotient_lt_two_pow_255 (numerator quotient : WideArray)
    (hs : ∃ s, s < r ∧ wideToNat numerator = s * a)
    (hspec : Ipp.Extracted.ArkworksScalarMul.GlvRoundedDiv.RoundedSpec
      numerator quotient) : wideToNat quotient < 2 ^ 255 := by
  have hle := rounded_quotient_le_a numerator quotient hs hspec
  have ha := a_succ_lt_two_pow_255
  omega

theorem low4_rounded_value (numerator quotient : WideArray)
    (hs : ∃ s, s < r ∧ wideToNat numerator = s * a)
    (hspec : Ipp.Extracted.ArkworksScalarMul.GlvRoundedDiv.RoundedSpec
      numerator quotient) :
    scalarToNat (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 quotient) =
      wideToNat quotient := by
  apply Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4_value
  have h := rounded_quotient_lt_two_pow_255 numerator quotient hs hspec
  norm_num [Ipp.Extracted.ArkworksFqMul.wordBase] at h ⊢
  omega

#print axioms numerator_lt_two_pow_384
#print axioms r_lt_two_pow_255
#print axioms rounded_quotient_le_a
#print axioms rounded_quotient_lt_two_pow_255
#print axioms low4_rounded_value

end Ipp.Extracted.ArkworksScalarMul.GlvDecompBoundsCore
