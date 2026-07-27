import Ipp.Extracted.ArkworksG2PreparedDoubleOps

namespace Ipp.Extracted.ArkworksG2PreparedDoubleSegment1A

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedDoubleOps

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment1A_spec (r : Proj) (twoInvMont : LimbArray) (output : Segment1A)
    (hr : CanonicalG2 r)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (hexec : segment1A r twoInvMont = .ok output) :
    CanonicalSegment1A output ∧
      decodeSegment1A output = modelSegment1A (decodeHomogeneous r) := by
  unfold segment1A at hexec
  obtain ⟨aa, haa, hexec⟩ := bind_eq_ok hexec
  obtain ⟨aa1, haa1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨b, hb, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c, hc, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have saa := extracted_fq2_mul_spec r.x r.y aa hr.1 hr.2.1 haa
  have saa1 := fq2_mul_fp_spec aa twoInvMont aa1 saa.1 htwoCanonical haa1
  have sb := extracted_fq2_square_spec r.y b hr.2.1 hb
  have sc := extracted_fq2_square_spec r.z c hr.2.2 hc
  clear * - r htwoDecode saa saa1 sb sc
  refine ⟨⟨saa1.1, sb.1, sc.1⟩, ?_⟩
  apply DecodedSegment1A.ext
  · simp only [decodeSegment1A, modelSegment1A, decodeHomogeneous,
      saa1.2, saa.2, htwoDecode]
  · simp only [decodeSegment1A, modelSegment1A, decodeHomogeneous, sb.2]
  · simp only [decodeSegment1A, modelSegment1A, decodeHomogeneous, sc.2]

#print axioms segment1A_spec

end Ipp.Extracted.ArkworksG2PreparedDoubleSegment1A
