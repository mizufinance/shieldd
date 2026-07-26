import Ipp.Extracted.ArkworksG2PreparedModelPrefix

/-! True-bit pure-step state projection. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopTrueState

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedModelPrefix

/-- The true-bit add output is the next pure-model accumulator. -/
theorem true_modelState
    (q : AffineRep Fq2) (remaining : Nat)
    (state doubled added : G2HomProjective)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = true)
    (hstate : state = (preparedModelAt q remaining).r)
    (hdouble : doubled = (doubleLine state).1)
    (hadd : added = (addLine doubled q).1) :
    added = (preparedModelAt q (remaining - 1)).r := by
  have hprefix := preparedModelAt_step q hpos hbound
  rw [hbit] at hprefix
  rw [hprefix]
  simpa [preparedModelStep, hstate, hdouble] using hadd

end Ipp.Extracted.ArkworksG2PreparedLoopTrueState
