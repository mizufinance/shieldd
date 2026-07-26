import Ipp.Extracted.ArkworksG2PreparedLoopTrueRepresentation
import Ipp.Extracted.ArkworksG2PreparedRepresentation
import Ipp.Extracted.ArkworksG2PreparedModelPrefix

namespace Ipp.Extracted.ArkworksG2PreparedLoopTrueModelRepresentation

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedScalar
open Ipp.Extracted.ArkworksG2PreparedLoopTrueRepresentation

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxHeartbeats 1000000

theorem true_modelRepresents
    (q : AffineRep Fq2) (Q : G2AffinePoint) (remaining : Nat)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = true)
    (hrep : RepresentationWitness
      (RepresentsDecodedG2
        (decodeModelHomogeneous (preparedModelAt q remaining).r)
        (accumulatedScalar remaining • Q)))
    (hsub : inPrimeSubgroup Q) (hne : Q ≠ 0)
    (hq : RepresentsDecodedG2 (some (q.x, q.y)) Q) :
    RepresentationWitness
      (RepresentsDecodedG2
        (decodeModelHomogeneous (preparedModelAt q (remaining - 1)).r)
        (accumulatedScalar (remaining - 1) • Q)) := by
  let state := (preparedModelAt q remaining).r
  let doubled := (doubleLine state).1
  let added := (preparedModelAt q (remaining - 1)).r
  have hprefix := preparedModelAt_step q hpos hbound
  rw [hbit] at hprefix
  have hadd : added = (addLine doubled q).1 := by
    change (preparedModelAt q (remaining - 1)).r = _
    rw [hprefix]
    rfl
  have hdouble : doubled = (doubleLine state).1 := rfl
  change RepresentationWitness
    (RepresentsDecodedG2 (decodeModelHomogeneous added)
      (accumulatedScalar (remaining - 1) • Q))
  have hr : RepresentsDecodedG2 (decodeModelHomogeneous state)
      (accumulatedScalar remaining • Q) := by
    change RepresentsDecodedG2
      (decodeModelHomogeneous (preparedModelAt q remaining).r) _
    exact hrep.get
  clear_value state doubled added
  clear hprefix hrep
  exact ⟨true_represents q Q remaining state doubled added hpos hbound hbit
    hr hsub hne hq hdouble hadd⟩

end Ipp.Extracted.ArkworksG2PreparedLoopTrueModelRepresentation
