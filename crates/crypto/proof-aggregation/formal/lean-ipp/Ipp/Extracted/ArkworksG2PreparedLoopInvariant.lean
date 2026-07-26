import Ipp.Extracted.ArkworksG2PreparedInput
import Ipp.Extracted.ArkworksG2PreparedModelPrefix
import Ipp.Extracted.ArkworksG2PreparedScalar

/-! The opaque invariant connecting prepared-loop execution to its pure prefix model. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopInvariant

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedScalar
open Ipp.Extracted.ArkworksG2PreparedModelPrefix

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- The finite input decoded as the affine representative used by the model. -/
def finiteAffineRep (q : G2AffineMont) : AffineRep Fq2 :=
  ⟨false, decodeFq2 q.x, decodeFq2 q.y⟩

/-- Facts preserved by every remaining-position countdown step. -/
structure PreparedLoopInv (q : AffineRep Fq2) (Q : G2AffinePoint)
    (remaining : Nat) (state : G2ProjMont) (coeffs : CoeffVec) : Prop where
  canonical : CanonicalG2 state
  represents : RepresentationWitness
    (RepresentsDecodedG2
      (decodeModelHomogeneous (preparedModelAt q remaining).r)
      (accumulatedScalar remaining • Q))
  modelState : decodeHomogeneous state =
    (preparedModelAt q remaining).r
  modelCoeffs : coeffs.val.map decodeEllCoeff =
    (preparedModelAt q remaining).ellCoeffs

end Ipp.Extracted.ArkworksG2PreparedLoopInvariant
