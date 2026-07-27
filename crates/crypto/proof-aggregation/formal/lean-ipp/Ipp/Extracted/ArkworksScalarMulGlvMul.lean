import Ipp.Extracted.ArkworksScalarMulGlvMulCore
import Ipp.Extracted.ArkworksScalarMulGlvArithmetic

/-! Adapter from the extracted 4-by-2 multiplication to its Nat model. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvMul

open Aeneas Aeneas.Std Result

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev PairArray := MacCampaign.Array MacCampaign.U64 2#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

theorem extracted_eq_core (left : ScalarArray) (right : PairArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2 left right =
      Ipp.Extracted.ArkworksScalarMul.GlvMulCore.mul4by2 left right := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2
    Ipp.Extracted.ArkworksScalarMul.GlvMulCore.mul4by2
  rw [Ipp.Extracted.ArkworksFr.array_index_limbWord left ⟨0, by decide⟩,
    Ipp.Extracted.ArkworksScalarMul.GlvMulCore.pair_index right ⟨0, by decide⟩,
    Ipp.Extracted.ArkworksFr.array_index_limbWord left ⟨1, by decide⟩,
    Ipp.Extracted.ArkworksFr.array_index_limbWord left ⟨2, by decide⟩,
    Ipp.Extracted.ArkworksFr.array_index_limbWord left ⟨3, by decide⟩,
    Ipp.Extracted.ArkworksScalarMul.GlvMulCore.pair_index right ⟨1, by decide⟩]
  rfl

theorem extracted_spec (left : ScalarArray) (right : PairArray)
    (output : WideArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2 left right =
      .ok output) :
    Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.wideToNat output =
      scalarToNat left *
        Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.pairToNat right := by
  rw [extracted_eq_core] at hexec
  exact Ipp.Extracted.ArkworksScalarMul.GlvMulCore.mul4by2_spec
    left right output hexec

#print axioms extracted_eq_core
#print axioms extracted_spec

end Ipp.Extracted.ArkworksScalarMul.GlvMul
