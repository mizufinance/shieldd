import Ipp.Extracted.ArkworksG2PreparedLoopInitialDecode

namespace Ipp.Extracted.ArkworksG2PreparedLoopInitialRepresentationQ

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedInput
open Ipp.Extracted.ArkworksG2PreparedLoopInitialDecode
open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedRepresentation
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedSchedule

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

theorem initial_modelRepresentsQ {q : G2AffineLimb} {Q : G2AffinePoint}
    (hq : ValidG2PreparedInput q Q) (hfinite : q.infinity = false) :
    RepresentationWitness
      (RepresentsDecodedG2
        (decodeModelHomogeneous (preparedModelAt (finiteAffineRep q) 63).r) Q) := by
  refine ⟨?_⟩
  rw [initial_modelDecode q]
  simpa only [hfinite, if_false] using hq.represents

end Ipp.Extracted.ArkworksG2PreparedLoopInitialRepresentationQ
