import Ipp.Extracted.ArkworksG2PreparedAdditionOps

namespace Ipp.Extracted.ArkworksG2PreparedAdditionSegment2A

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

theorem segment2A_spec (r : Proj) (s : Segment1) (output : Segment2A)
    (hr : CanonicalG2 r) (hs : CanonicalSegment1 s)
    (hexec : segment2A r s = .ok output) :
    CanonicalSegment2A output ∧ decodeSegment2A output =
      modelSegment2A (decodeHomogeneous r) (decodeSegment1 s) := by
  unfold segment2A at hexec
  obtain ⟨f, hf, hexec⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨g, hg, hexec⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨ePlusF, hef, hexec⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨twoG, htwoG, hexec⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨h, hh, hret⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have sf := extracted_fq2_mul_spec r.z s.c f hr.2.2 hs.2.2.1 hf
  have sg := extracted_fq2_mul_spec r.x s.d g hr.1 hs.2.2.2.1 hg
  have sef := Ipp.Extracted.ArkworksG2PreparedDoubleOps.fq2_add_spec
    s.e f ePlusF hs.2.2.2.2 sf.1 hef
  have stwoG := Ipp.Extracted.ArkworksG2PreparedDoubleOps.fq2_double_spec
    g twoG sg.1 htwoG
  have sh := Ipp.Extracted.ArkworksG2PreparedDoubleOps.fq2_sub_spec
    ePlusF twoG h sef.1 stwoG.1 hh
  clear * - r s sg sf sef stwoG sh
  refine ⟨⟨sg.1, sh.1⟩, ?_⟩
  apply DecodedSegment2A.ext
  · simp [decodeSegment2A, decodeSegment1, modelSegment2A,
      decodeHomogeneous, sg.2]
  · simp only [decodeSegment2A, modelSegment2A, decodeHomogeneous,
      decodeSegment1, sh.2, sef.2, sf.2, stwoG.2, sg.2]

#print axioms segment2A_spec

end Ipp.Extracted.ArkworksG2PreparedAdditionSegment2A
