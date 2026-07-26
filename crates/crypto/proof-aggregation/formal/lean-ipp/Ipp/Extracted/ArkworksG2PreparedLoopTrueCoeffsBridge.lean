import Ipp.Extracted.ArkworksG2PreparedLoopTrueCoeffs
import Ipp.Extracted.ArkworksG2PreparedSchedule

namespace Ipp.Extracted.ArkworksG2PreparedLoopTrueCoeffsBridge

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedLoopTrueCoeffs

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxHeartbeats 1000000

theorem true_extracted_modelCoeffs
    (q : AffineRep Fq2) (remaining : Nat)
    (state doubled added : G2ProjMont) (coeffs : CoeffVec)
    (doubleCoeff addCoeff : ArkworksG2PreparedSchedule.EllCoeffMont)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = true)
    (hstate : decodeHomogeneous state = (preparedModelAt q remaining).r)
    (hcoeffs : coeffs.val.map decodeEllCoeff =
      (preparedModelAt q remaining).ellCoeffs)
    (hdouble : (decodeHomogeneous doubled, decodeEllCoeff doubleCoeff) =
      doubleLine (decodeHomogeneous state))
    (hadd : (decodeHomogeneous added, decodeEllCoeff addCoeff) =
      addLine (decodeHomogeneous doubled) q) :
    (⟨(coeffs.val ++ [doubleCoeff]) ++ [addCoeff]⟩ : CoeffVec).val.map
      decodeEllCoeff = (preparedModelAt q (remaining - 1)).ellCoeffs := by
  simp only [List.map_append, List.map_cons, List.map_nil]
  let s := decodeHomogeneous state
  let d := decodeHomogeneous doubled
  let cs := coeffs.val.map decodeEllCoeff
  let dc := decodeEllCoeff doubleCoeff
  let ac := decodeEllCoeff addCoeff
  change (cs ++ [dc]) ++ [ac] =
    (preparedModelAt q (remaining - 1)).ellCoeffs
  have hs : s = (preparedModelAt q remaining).r := by
    change decodeHomogeneous state = _ at hstate
    exact hstate
  have hcs : cs = (preparedModelAt q remaining).ellCoeffs := by
    change coeffs.val.map decodeEllCoeff = _ at hcoeffs
    exact hcoeffs
  have hds : d = (doubleLine s).1 := by
    have h := congrArg Prod.fst hdouble
    change d = (doubleLine s).1 at h
    exact h
  have hdc : dc = (doubleLine s).2 := by
    have h := congrArg Prod.snd hdouble
    change dc = (doubleLine s).2 at h
    exact h
  have hac : ac = (addLine d q).2 := by
    have h := congrArg Prod.snd hadd
    change ac = (addLine d q).2 at h
    exact h
  clear_value s d cs dc ac
  clear hstate hcoeffs hdouble hadd state doubled added coeffs doubleCoeff addCoeff
  exact true_modelCoeffs q remaining s d cs dc ac hpos hbound hbit
    hs hcs hds hdc hac

end Ipp.Extracted.ArkworksG2PreparedLoopTrueCoeffsBridge
