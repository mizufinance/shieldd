import Ipp.Extracted.ArkworksG2PreparedLoopTrueState
import Ipp.Extracted.ArkworksG2PreparedSchedule

namespace Ipp.Extracted.ArkworksG2PreparedLoopTrueStateBridge

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedLoopTrueState

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxHeartbeats 1000000

theorem true_extracted_modelState
    (q : AffineRep Fq2) (remaining : Nat)
    (state doubled added : G2ProjMont)
    (doubleCoeff addCoeff : ArkworksG2PreparedSchedule.EllCoeffMont)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = true)
    (hstate : decodeHomogeneous state = (preparedModelAt q remaining).r)
    (hdouble : (decodeHomogeneous doubled, decodeEllCoeff doubleCoeff) =
      doubleLine (decodeHomogeneous state))
    (hadd : (decodeHomogeneous added, decodeEllCoeff addCoeff) =
      addLine (decodeHomogeneous doubled) q) :
    decodeHomogeneous added = (preparedModelAt q (remaining - 1)).r := by
  let s := decodeHomogeneous state
  let d := decodeHomogeneous doubled
  let a := decodeHomogeneous added
  change a = (preparedModelAt q (remaining - 1)).r
  have hs : s = (preparedModelAt q remaining).r := by
    change decodeHomogeneous state = _ at hstate
    exact hstate
  have hd : d = (doubleLine s).1 := by
    have h := congrArg Prod.fst hdouble
    change d = (doubleLine s).1 at h
    exact h
  have ha : a = (addLine d q).1 := by
    have h := congrArg Prod.fst hadd
    change a = (addLine d q).1 at h
    exact h
  clear_value s d a
  clear hstate hdouble hadd state doubled added doubleCoeff addCoeff
  exact true_modelState q remaining s d a hpos hbound hbit hs hd ha

end Ipp.Extracted.ArkworksG2PreparedLoopTrueStateBridge
