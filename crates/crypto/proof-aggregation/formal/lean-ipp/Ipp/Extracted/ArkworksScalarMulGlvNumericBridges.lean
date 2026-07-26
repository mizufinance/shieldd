import Ipp.Extracted.ArkworksScalarMulGlvArithmetic
import Ipp.Extracted.ArkworksScalarMulGlvDivBodyCore

/-! Explicit equalities between the small integer models' shared encodings. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvNumericBridges

open Aeneas Aeneas.Std

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

theorem div_wide (value : WideArray) :
    Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.wideToNat value =
      Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.wideToNat value := by
  rfl

theorem div_scalar (value : ScalarArray) :
    Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.scalarToNat value =
      Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat value := by
  rfl

theorem div_r : Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.r =
    Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.r := by
  rfl

#print axioms div_wide
#print axioms div_scalar
#print axioms div_r

end Ipp.Extracted.ArkworksScalarMul.GlvNumericBridges
