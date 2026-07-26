import Ipp.Extracted.ArkworksG2PreparedLoopFalseRepresentation
import Ipp.Extracted.ArkworksG2PreparedRepresentation

namespace Ipp.Extracted.ArkworksG2PreparedLoopFalseRepresentationWitness

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedScalar
open Ipp.Extracted.ArkworksG2PreparedLoopFalseRepresentation

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

theorem false_representationWitness
    (Q : G2AffinePoint) (remaining : Nat)
    (state doubled : G2HomProjective)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = false)
    (hrep : RepresentsDecodedG2 (decodeModelHomogeneous state)
      (accumulatedScalar remaining • Q))
    (hdouble : doubled = (doubleLine state).1) :
    RepresentationWitness
      (RepresentsDecodedG2 (decodeModelHomogeneous doubled)
        (accumulatedScalar (remaining - 1) • Q)) := by
  exact ⟨false_represents Q remaining state doubled hpos hbound hbit hrep hdouble⟩

end Ipp.Extracted.ArkworksG2PreparedLoopFalseRepresentationWitness
