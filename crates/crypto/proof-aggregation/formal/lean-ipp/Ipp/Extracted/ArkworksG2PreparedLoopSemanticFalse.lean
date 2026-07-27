import Ipp.Extracted.ArkworksG2PreparedLoopInvariant
import Ipp.Extracted.ArkworksG2PreparedLoopFalseStateBridge
import Ipp.Extracted.ArkworksG2PreparedLoopFalseModelRepresentation
import Ipp.Extracted.ArkworksG2PreparedLoopFalseCoeffsBridge

/-! False-bit invariant preservation from decoded callback facts. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopSemanticFalse

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedLoopFalseStateBridge
open Ipp.Extracted.ArkworksG2PreparedLoopFalseModelRepresentation
open Ipp.Extracted.ArkworksG2PreparedLoopFalseCoeffsBridge

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxHeartbeats 1000000

/-- A decoded false-bit callback transition preserves the loop invariant. -/
theorem preparedLoopInv_false
    (q : G2AffineMont) (Q : G2AffinePoint) (remaining : Nat)
    (state doubled : G2ProjMont) (coeffs : CoeffVec)
    (doubleCoeff : ArkworksG2PreparedSchedule.EllCoeffMont)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = false)
    (hcanonical : CanonicalG2 doubled)
    (hdouble : (decodeHomogeneous doubled, decodeEllCoeff doubleCoeff) =
      doubleLine (decodeHomogeneous state))
    (hinv : PreparedLoopInv (finiteAffineRep q) Q remaining state coeffs) :
    PreparedLoopInv (finiteAffineRep q) Q (remaining - 1) doubled
      ⟨coeffs.val ++ [doubleCoeff]⟩ := by
  refine ⟨hcanonical, ?_, ?_, ?_⟩
  · exact false_modelRepresents (finiteAffineRep q) Q remaining
      hpos hbound hbit hinv.represents
  · exact false_extracted_modelState (finiteAffineRep q) remaining
      state doubled doubleCoeff hpos hbound hbit hinv.modelState hdouble
  · exact false_extracted_modelCoeffs (finiteAffineRep q) remaining
      state doubled coeffs doubleCoeff hpos hbound hbit hinv.modelState
      hinv.modelCoeffs hdouble

end Ipp.Extracted.ArkworksG2PreparedLoopSemanticFalse
