import Ipp.Extracted.ArkworksG2PreparedLoopInvariant
import Ipp.Extracted.ArkworksG2PreparedLoopTrueStateBridge
import Ipp.Extracted.ArkworksG2PreparedLoopTrueModelRepresentation
import Ipp.Extracted.ArkworksG2PreparedLoopTrueCoeffsBridge

/-! True-bit invariant preservation from decoded callback facts. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopSemanticTrue

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedLoopTrueStateBridge
open Ipp.Extracted.ArkworksG2PreparedLoopTrueModelRepresentation
open Ipp.Extracted.ArkworksG2PreparedLoopTrueCoeffsBridge

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxHeartbeats 1000000

/-- A decoded true-bit callback transition preserves the loop invariant. -/
theorem preparedLoopInv_true
    (q : G2AffineMont) (Q : G2AffinePoint) (remaining : Nat)
    (state doubled added : G2ProjMont) (coeffs : CoeffVec)
    (doubleCoeff addCoeff : ArkworksG2PreparedSchedule.EllCoeffMont)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = true)
    (hcanonical : CanonicalG2 added)
    (hdouble : (decodeHomogeneous doubled, decodeEllCoeff doubleCoeff) =
      doubleLine (decodeHomogeneous state))
    (hadd : (decodeHomogeneous added, decodeEllCoeff addCoeff) =
      addLine (decodeHomogeneous doubled) (finiteAffineRep q))
    (hq : RepresentsDecodedG2 (some (decodeFq2 q.x, decodeFq2 q.y)) Q)
    (hsub : inPrimeSubgroup Q) (hne : Q ≠ 0)
    (hinv : PreparedLoopInv (finiteAffineRep q) Q remaining state coeffs) :
    PreparedLoopInv (finiteAffineRep q) Q (remaining - 1) added
      ⟨(coeffs.val ++ [doubleCoeff]) ++ [addCoeff]⟩ := by
  refine ⟨hcanonical, ?_, ?_, ?_⟩
  · exact true_modelRepresents (finiteAffineRep q) Q remaining
      hpos hbound hbit hinv.represents hsub hne hq
  · exact true_extracted_modelState (finiteAffineRep q) remaining
      state doubled added doubleCoeff addCoeff hpos hbound hbit
      hinv.modelState hdouble hadd
  · exact true_extracted_modelCoeffs (finiteAffineRep q) remaining
      state doubled added coeffs doubleCoeff addCoeff hpos hbound hbit
      hinv.modelState hinv.modelCoeffs hdouble hadd

end Ipp.Extracted.ArkworksG2PreparedLoopSemanticTrue
