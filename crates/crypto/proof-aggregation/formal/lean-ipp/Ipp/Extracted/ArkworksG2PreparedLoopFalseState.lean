import Ipp.Extracted.ArkworksG2PreparedModelPrefix

/-! False-bit pure-step state projection. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopFalseState

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedModelPrefix

/-- The false-bit output is the next pure-model accumulator. -/
theorem false_modelState
    (q : AffineRep Fq2) (remaining : Nat)
    (state doubled : G2HomProjective)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = false)
    (hstate : state = (preparedModelAt q remaining).r)
    (hdouble : doubled = (doubleLine state).1) :
    doubled = (preparedModelAt q (remaining - 1)).r := by
  have hprefix := preparedModelAt_step q hpos hbound
  rw [hbit] at hprefix
  rw [hprefix]
  simpa [preparedModelStep, hstate] using hdouble

end Ipp.Extracted.ArkworksG2PreparedLoopFalseState
