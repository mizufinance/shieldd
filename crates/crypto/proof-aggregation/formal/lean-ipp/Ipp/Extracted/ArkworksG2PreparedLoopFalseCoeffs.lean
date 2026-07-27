import Ipp.Extracted.ArkworksG2PreparedModelPrefix

/-! False-bit pure-step coefficient projection. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopFalseCoeffs

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedModelPrefix

/-- Appending the double coefficient yields the next false-bit model prefix. -/
theorem false_modelCoeffs
    (q : AffineRep Fq2) (remaining : Nat)
    (state : G2HomProjective) (coeffs : List EllCoeff)
    (doubleCoeff : EllCoeff)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = false)
    (hstate : state = (preparedModelAt q remaining).r)
    (hcoeffs : coeffs = (preparedModelAt q remaining).ellCoeffs)
    (hdoubleCoeff : doubleCoeff = (doubleLine state).2) :
    coeffs ++ [doubleCoeff] =
      (preparedModelAt q (remaining - 1)).ellCoeffs := by
  have hprefix := preparedModelAt_step q hpos hbound
  rw [hbit] at hprefix
  rw [hprefix]
  simpa [preparedModelStep, hstate, hcoeffs] using hdoubleCoeff

end Ipp.Extracted.ArkworksG2PreparedLoopFalseCoeffs
