import Ipp.Extracted.ArkworksG2PreparedLoopFalseRepresentationWitness
import Ipp.Extracted.ArkworksG2PreparedModelPrefix

namespace Ipp.Extracted.ArkworksG2PreparedLoopFalseModelRepresentation

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedScalar
open Ipp.Extracted.ArkworksG2PreparedLoopFalseRepresentationWitness

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

theorem false_modelRepresents
    (q : AffineRep Fq2) (Q : G2AffinePoint) (remaining : Nat)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = false)
    (hrep : RepresentationWitness
      (RepresentsDecodedG2
        (decodeModelHomogeneous (preparedModelAt q remaining).r)
        (accumulatedScalar remaining • Q))) :
    RepresentationWitness
      (RepresentsDecodedG2
        (decodeModelHomogeneous (preparedModelAt q (remaining - 1)).r)
        (accumulatedScalar (remaining - 1) • Q)) := by
  have hprefix := preparedModelAt_step q hpos hbound
  rw [hbit] at hprefix
  have hdouble : (preparedModelAt q (remaining - 1)).r =
      (doubleLine (preparedModelAt q remaining).r).1 := by
    rw [hprefix]
    rfl
  exact false_representationWitness Q remaining
    (preparedModelAt q remaining).r (preparedModelAt q (remaining - 1)).r
    hpos hbound hbit hrep.get hdouble

end Ipp.Extracted.ArkworksG2PreparedLoopFalseModelRepresentation
