import Ipp.Extracted.ArkworksG2PreparedLoopFalseState
import Ipp.Extracted.ArkworksG2PreparedSchedule

namespace Ipp.Extracted.ArkworksG2PreparedLoopFalseStateBridge

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedLoopFalseState

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxHeartbeats 1000000

theorem false_extracted_modelState
    (q : AffineRep Fq2) (remaining : Nat) (state doubled : G2ProjMont)
    (doubleCoeff : ArkworksG2PreparedSchedule.EllCoeffMont)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = false)
    (hstate : decodeHomogeneous state =
      (preparedModelAt q remaining).r)
    (hdouble : (decodeHomogeneous doubled, decodeEllCoeff doubleCoeff) =
      doubleLine (decodeHomogeneous state)) :
    decodeHomogeneous doubled =
      (preparedModelAt q (remaining - 1)).r := by
  let s := decodeHomogeneous state
  let d := decodeHomogeneous doubled
  change d = (preparedModelAt q (remaining - 1)).r
  have hs : s = (preparedModelAt q remaining).r := by
    change decodeHomogeneous state = _ at hstate
    exact hstate
  have hd : d = (doubleLine s).1 := by
    have h := congrArg Prod.fst hdouble
    change d = (doubleLine s).1 at h
    exact h
  clear_value s d
  clear hstate hdouble state doubled doubleCoeff
  exact false_modelState q remaining s d hpos hbound hbit hs hd

end Ipp.Extracted.ArkworksG2PreparedLoopFalseStateBridge
