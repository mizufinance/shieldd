import Ipp.Extracted.ArkworksG2PreparedAdditionOps

namespace Ipp.Extracted.ArkworksG2PreparedAdditionSegment3A

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

theorem segment3A_spec (r : Proj) (s1 : Segment1) (s2 : Segment2)
    (output : Segment3A) (hr : CanonicalG2 r)
    (hs1 : CanonicalSegment1 s1) (hs2 : CanonicalSegment2 s2)
    (hexec : segment3A r s1 s2 = .ok output) :
    CanonicalSegment3A output ∧ decodeSegment3A output =
      modelSegment3A (decodeHomogeneous r) (decodeSegment1 s1)
        (decodeSegment2 s2) := by
  unfold segment3A at hexec
  obtain ⟨eY, heY, hexec⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨outY, houtY, hexec⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨outZ, houtZ, hret⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have seY := extracted_fq2_mul_spec s1.e r.y eY hs1.2.2.2.2 hr.2.1 heY
  have sy := Ipp.Extracted.ArkworksG2PreparedDoubleOps.fq2_sub_spec
    s2.yHead eY outY hs2.2.2 seY.1 houtY
  have sz := extracted_fq2_mul_spec r.z s1.e outZ hr.2.2 hs1.2.2.2.2 houtZ
  refine ⟨⟨sy.1, sz.1⟩, ?_⟩
  apply DecodedSegment3A.ext
  · simp [decodeSegment3A, decodeSegment2, decodeSegment1,
      modelSegment3A, sy.2, seY.2]
  · simp [decodeSegment3A, decodeSegment1, modelSegment3A,
      decodeHomogeneous, sz.2]

#print axioms segment3A_spec

end Ipp.Extracted.ArkworksG2PreparedAdditionSegment3A
