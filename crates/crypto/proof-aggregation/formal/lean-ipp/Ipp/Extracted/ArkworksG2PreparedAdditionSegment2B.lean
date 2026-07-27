import Ipp.Extracted.ArkworksG2PreparedAdditionOps

namespace Ipp.Extracted.ArkworksG2PreparedAdditionSegment2B

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2PreparedAdditionOps

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment2B_spec (s1 : Segment1) (a : Segment2A) (output : Segment2)
    (hs1 : CanonicalSegment1 s1) (ha : CanonicalSegment2A a)
    (hexec : segment2B s1 a = .ok output) :
    CanonicalSegment2 output ∧ decodeSegment2 output =
      modelSegment2 (decodeSegment1 s1) (decodeSegment2A a) := by
  unfold segment2B at hexec
  obtain ⟨outX, hx, hexec⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨gMinusH, hgh, hexec⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨yHead, hy, hret⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have sx := extracted_fq2_mul_spec s1.lambda a.h outX hs1.2.1 ha.2 hx
  have sgh := Ipp.Extracted.ArkworksG2PreparedDoubleOps.fq2_sub_spec
    a.g a.h gMinusH ha.1 ha.2 hgh
  have sy := extracted_fq2_mul_spec s1.theta gMinusH yHead
    hs1.1 sgh.1 hy
  refine ⟨⟨ha.2, sx.1, sy.1⟩, ?_⟩
  apply DecodedSegment2.ext
  · rfl
  · exact sx.2
  · simp [decodeSegment2, decodeSegment1, decodeSegment2A,
      modelSegment2, sy.2, sgh.2]

#print axioms segment2B_spec

end Ipp.Extracted.ArkworksG2PreparedAdditionSegment2B
