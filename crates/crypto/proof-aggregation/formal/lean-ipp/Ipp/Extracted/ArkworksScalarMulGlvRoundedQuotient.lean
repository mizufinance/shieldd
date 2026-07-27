import Ipp.Extracted.ArkworksScalarMulGlvDivLoopAdapter
import Ipp.Extracted.ArkworksScalarMulGlvNumericBridges

/-! Quotient/remainder numbers exposed in the canonical GLV integer model. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvRoundedQuotient

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

theorem loop_numbers (numerator rawQuotient : WideArray)
    (remainder : ScalarArray)
    (hnumerator : wideToNat numerator < 2 ^ 384)
    (hloop : ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr_loop
      numerator (MacCampaign.Array.replicate 6#usize 0#u64)
      (MacCampaign.Array.replicate 4#usize 0#u64) 384#usize =
        .ok (rawQuotient, remainder)) :
    ∃ q remainderValue,
      wideToNat rawQuotient = q ∧
      wideToNat numerator = q * r + remainderValue ∧
      remainderValue = Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat
        remainder ∧
      remainderValue < r := by
  have hdiv :=
    Ipp.Extracted.ArkworksScalarMul.GlvDivLoopAdapter.extracted_loop_spec
      numerator rawQuotient remainder hnumerator hloop
  rcases hdiv.quotient_division with ⟨q, hq, heq⟩
  refine ⟨q,
    Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat remainder,
    ?_, ?_, rfl, ?_⟩
  · rw [← Ipp.Extracted.ArkworksScalarMul.GlvNumericBridges.div_wide]
    exact hq
  · rw [← Ipp.Extracted.ArkworksScalarMul.GlvNumericBridges.div_wide,
      ← Ipp.Extracted.ArkworksScalarMul.GlvNumericBridges.div_scalar,
      ← Ipp.Extracted.ArkworksScalarMul.GlvNumericBridges.div_r]
    exact heq
  · rw [← Ipp.Extracted.ArkworksScalarMul.GlvNumericBridges.div_scalar,
      ← Ipp.Extracted.ArkworksScalarMul.GlvNumericBridges.div_r]
    exact hdiv.remainder_lt

#print axioms loop_numbers

end Ipp.Extracted.ArkworksScalarMul.GlvRoundedQuotient
