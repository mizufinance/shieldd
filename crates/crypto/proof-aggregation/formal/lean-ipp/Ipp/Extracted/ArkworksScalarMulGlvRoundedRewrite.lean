import Ipp.Extracted.ArkworksScalarMulGlvArithmetic
import Ipp.Extracted.ArkworksScalarMulGlvShiftCore

/-! Remove the fixed false-bit addend from the rounded comparison. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvRoundedRewrite

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

theorem value (output : WideArray) (remainder : ScalarArray)
    (q remainderValue : Nat)
    (hremainderValue : remainderValue =
      Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat remainder)
    (hvalue : wideToNat output =
      if r < 2 * Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.scalarToNat
          remainder +
          Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.bitToNat false
        then q + 1 else q) :
    wideToNat output = if r < 2 * remainderValue then q + 1 else q := by
  have hzero : Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.bitToNat false = 0 := rfl
  rw [hzero, Nat.add_zero] at hvalue
  rw [hremainderValue]
  exact hvalue

#print axioms value

end Ipp.Extracted.ArkworksScalarMul.GlvRoundedRewrite
