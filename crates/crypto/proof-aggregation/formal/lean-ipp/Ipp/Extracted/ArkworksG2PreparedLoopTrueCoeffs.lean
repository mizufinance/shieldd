import Ipp.Extracted.ArkworksG2PreparedModelPrefix

/-! True-bit pure-step coefficient projection. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopTrueCoeffs

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedModelPrefix

/-- Appending both true-bit coefficients yields the next model prefix. -/
theorem true_modelCoeffs
    (q : AffineRep Fq2) (remaining : Nat)
    (state doubled : G2HomProjective) (coeffs : List EllCoeff)
    (doubleCoeff addCoeff : EllCoeff)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = true)
    (hstate : state = (preparedModelAt q remaining).r)
    (hcoeffs : coeffs = (preparedModelAt q remaining).ellCoeffs)
    (hdoubleState : doubled = (doubleLine state).1)
    (hdoubleCoeff : doubleCoeff = (doubleLine state).2)
    (haddCoeff : addCoeff = (addLine doubled q).2) :
    (coeffs ++ [doubleCoeff]) ++ [addCoeff] =
      (preparedModelAt q (remaining - 1)).ellCoeffs := by
  have hprefix := preparedModelAt_step q hpos hbound
  rw [hbit] at hprefix
  rw [hprefix]
  simpa [preparedModelStep, hstate, hcoeffs, hdoubleState, hdoubleCoeff]
    using haddCoeff

end Ipp.Extracted.ArkworksG2PreparedLoopTrueCoeffs
