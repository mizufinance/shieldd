import Ipp.Extracted.ArkworksG2PreparedLoopFalseCoeffs
import Ipp.Extracted.ArkworksG2PreparedSchedule

namespace Ipp.Extracted.ArkworksG2PreparedLoopFalseCoeffsBridge

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedLoopFalseCoeffs

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxHeartbeats 1000000

theorem false_extracted_modelCoeffs
    (q : AffineRep Fq2) (remaining : Nat) (state doubled : G2ProjMont)
    (coeffs : CoeffVec) (doubleCoeff : ArkworksG2PreparedSchedule.EllCoeffMont)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = false)
    (hstate : decodeHomogeneous state =
      (preparedModelAt q remaining).r)
    (hcoeffs : coeffs.val.map decodeEllCoeff =
      (preparedModelAt q remaining).ellCoeffs)
    (hdouble : (decodeHomogeneous doubled, decodeEllCoeff doubleCoeff) =
      doubleLine (decodeHomogeneous state)) :
    (⟨coeffs.val ++ [doubleCoeff]⟩ : CoeffVec).val.map decodeEllCoeff =
      (preparedModelAt q (remaining - 1)).ellCoeffs := by
  simp only [List.map_append, List.map_cons, List.map_nil]
  let s := decodeHomogeneous state
  let cs := coeffs.val.map decodeEllCoeff
  let dc := decodeEllCoeff doubleCoeff
  change cs ++ [dc] = (preparedModelAt q (remaining - 1)).ellCoeffs
  have hs : s = (preparedModelAt q remaining).r := by
    change decodeHomogeneous state = _ at hstate
    exact hstate
  have hcs : cs = (preparedModelAt q remaining).ellCoeffs := by
    change coeffs.val.map decodeEllCoeff = _ at hcoeffs
    exact hcoeffs
  have hdc : dc = (doubleLine s).2 := by
    have h := congrArg Prod.snd hdouble
    change dc = (doubleLine s).2 at h
    exact h
  clear_value s cs dc
  clear hstate hcoeffs hdouble state doubled coeffs doubleCoeff
  exact false_modelCoeffs q remaining s cs dc hpos hbound hbit hs hcs hdc

end Ipp.Extracted.ArkworksG2PreparedLoopFalseCoeffsBridge
