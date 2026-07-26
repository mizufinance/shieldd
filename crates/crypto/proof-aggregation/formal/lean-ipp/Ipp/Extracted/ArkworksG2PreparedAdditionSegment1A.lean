import Ipp.Extracted.ArkworksG2PreparedAdditionOps

namespace Ipp.Extracted.ArkworksG2PreparedAdditionSegment1A

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedAdditionOps

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment1A_spec (r : Proj) (q : Affine) (output : Segment1A)
    (hr : CanonicalG2 r) (hqx : Canonical2 q.x) (hqy : Canonical2 q.y)
    (hexec : segment1A r q = .ok output) :
    CanonicalSegment1A output ∧ decodeSegment1A output =
      modelSegment1A (decodeHomogeneous r) (decodeFq2 q.x) (decodeFq2 q.y) := by
  unfold segment1A at hexec
  obtain ⟨qyZ, hqyZ, hexec⟩ :=
    Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨theta, htheta, hexec⟩ :=
    Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨qxZ, hqxZ, hexec⟩ :=
    Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨lambda, hlambda, hret⟩ :=
    Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have sqyZ := extracted_fq2_mul_spec q.y r.z qyZ hqy hr.2.2 hqyZ
  have stheta := Ipp.Extracted.ArkworksG2PreparedDoubleOps.fq2_sub_spec
    r.y qyZ theta hr.2.1 sqyZ.1 htheta
  have sqxZ := extracted_fq2_mul_spec q.x r.z qxZ hqx hr.2.2 hqxZ
  have slambda := Ipp.Extracted.ArkworksG2PreparedDoubleOps.fq2_sub_spec
    r.x qxZ lambda hr.1 sqxZ.1 hlambda
  clear * - r q stheta slambda sqyZ sqxZ
  refine ⟨⟨stheta.1, slambda.1⟩, ?_⟩
  apply DecodedSegment1A.ext
  · simp [decodeSegment1A, modelSegment1A, decodeHomogeneous,
      stheta.2, sqyZ.2]
  · simp [decodeSegment1A, modelSegment1A, decodeHomogeneous,
      slambda.2, sqxZ.2]

#print axioms segment1A_spec

end Ipp.Extracted.ArkworksG2PreparedAdditionSegment1A
