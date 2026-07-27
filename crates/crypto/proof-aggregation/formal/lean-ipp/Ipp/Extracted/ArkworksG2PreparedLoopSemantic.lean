import Ipp.Extracted.ArkworksG2PreparedLoopModelTransition
import Ipp.Extracted.ArkworksG2PreparedLoopSemanticFalse
import Ipp.Extracted.ArkworksG2PreparedLoopSemanticTrue

/-! Generic invariant preservation from an opaque decoded transition. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopSemantic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedLoopModelTransition
open Ipp.Extracted.ArkworksG2PreparedLoopSemanticFalse
open Ipp.Extracted.ArkworksG2PreparedLoopSemanticTrue

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- Either decoded callback branch preserves the bundled loop invariant. -/
theorem preparedLoopInv_modelTransition
    (q : G2AffineMont) (Q : G2AffinePoint) (remaining : Nat)
    (state state' : G2ProjMont) (coeffs coeffs' : CoeffVec)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hq : RepresentsDecodedG2 (some (decodeFq2 q.x, decodeFq2 q.y)) Q)
    (hsub : inPrimeSubgroup Q) (hne : Q ≠ 0)
    (hinv : PreparedLoopInv (finiteAffineRep q) Q remaining state coeffs)
    (htransition : PreparedLoopModelTransition q remaining
      state coeffs state' coeffs') :
    PreparedLoopInv (finiteAffineRep q) Q (remaining - 1) state' coeffs' := by
  cases htransition with
  | falseStep hbit doubled doubleCoeff hcanonical hdouble =>
      exact preparedLoopInv_false q Q remaining state state' coeffs doubleCoeff
        hpos hbound hbit hcanonical hdouble hinv
  | trueStep hbit doubled added doubleCoeff addCoeff hcanonical hdouble hadd =>
      exact preparedLoopInv_true q Q remaining state doubled state' coeffs
        doubleCoeff addCoeff hpos hbound hbit hcanonical hdouble hadd
        hq hsub hne hinv

#print axioms preparedLoopInv_modelTransition

end Ipp.Extracted.ArkworksG2PreparedLoopSemantic
