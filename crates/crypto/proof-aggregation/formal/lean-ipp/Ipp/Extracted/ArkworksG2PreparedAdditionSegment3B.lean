import Ipp.Extracted.ArkworksG2PreparedAdditionOps

namespace Ipp.Extracted.ArkworksG2PreparedAdditionSegment3B

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2PreparedAdditionOps

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment3B_spec (q : Affine) (s1 : Segment1) (output : Segment3B)
    (hqx : Canonical2 q.x) (hqy : Canonical2 q.y)
    (hs1 : CanonicalSegment1 s1) (hexec : segment3B q s1 = .ok output) :
    CanonicalSegment3B output ∧ decodeSegment3B output =
      modelSegment3B (decodeFq2 q.x) (decodeFq2 q.y) (decodeSegment1 s1) := by
  unfold segment3B at hexec
  obtain ⟨thetaQx, hthetaQx, hexec⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨lambdaQy, hlambdaQy, hexec⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨j, hj, hexec⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨negTheta, hneg, hret⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have stqx := extracted_fq2_mul_spec s1.theta q.x thetaQx hs1.1 hqx hthetaQx
  have slqy := extracted_fq2_mul_spec s1.lambda q.y lambdaQy hs1.2.1 hqy hlambdaQy
  have sj := Ipp.Extracted.ArkworksG2PreparedDoubleOps.fq2_sub_spec
    thetaQx lambdaQy j stqx.1 slqy.1 hj
  have sn := Ipp.Extracted.ArkworksG2PreparedDoubleOps.fq2_neg_spec
    s1.theta negTheta hs1.1 hneg
  refine ⟨⟨sn.1, sj.1⟩, ?_⟩
  apply DecodedSegment3B.ext
  · simp [decodeSegment3B, decodeSegment1, modelSegment3B, sn.2]
  · simp [decodeSegment3B, decodeSegment1, modelSegment3B,
      sj.2, stqx.2, slqy.2]

#print axioms segment3B_spec

end Ipp.Extracted.ArkworksG2PreparedAdditionSegment3B
