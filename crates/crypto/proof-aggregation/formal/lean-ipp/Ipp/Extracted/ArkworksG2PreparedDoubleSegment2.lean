import Ipp.Extracted.ArkworksG2PreparedDoubleSegment2A
import Ipp.Extracted.ArkworksG2PreparedDoubleSegment2B

namespace Ipp.Extracted.ArkworksG2PreparedDoubleSegment2

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedDoubleOps
open Ipp.Extracted.ArkworksG2PreparedDoubleSegment2A
open Ipp.Extracted.ArkworksG2PreparedDoubleSegment2B

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment2_spec (r : Proj) (s : Segment1) (output : Segment2)
    (hr : CanonicalG2 r) (hs : CanonicalSegment1 s)
    (hexec : segment2 r s = .ok output) :
    CanonicalSegment2 output ∧ decodeSegment2 output =
      modelSegment2 (decodeHomogeneous r) (decodeSegment1 s) := by
  rw [segment2_eq_cut] at hexec
  unfold segment2Cut at hexec
  obtain ⟨h, hh, hexec⟩ := bind_eq_ok hexec
  obtain ⟨tail, htail, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have sh := segment2A_spec r s h hr ⟨hs.2.1, hs.2.2.1⟩ hh
  have stail := segment2B_spec r s tail hr hs htail
  refine ⟨⟨sh.1, stail.1, stail.2.1, stail.2.2.1, stail.2.2.2.1⟩, ?_⟩
  apply DecodedSegment2.ext
  · simp only [decodeSegment2, modelSegment2, decodeHomogeneous, decodeSegment1,
      sh.2]
  · simp only [decodeSegment2, modelSegment2, decodeHomogeneous, decodeSegment1,
      stail.2.2.2.2.1]
  · simp only [decodeSegment2, modelSegment2, decodeHomogeneous, decodeSegment1,
      stail.2.2.2.2.2.1]
  · simp only [decodeSegment2, modelSegment2, decodeHomogeneous, decodeSegment1,
      stail.2.2.2.2.2.2.1]
  · simp only [decodeSegment2, modelSegment2, decodeHomogeneous, decodeSegment1,
      stail.2.2.2.2.2.2.2]

#print axioms segment2_spec

end Ipp.Extracted.ArkworksG2PreparedDoubleSegment2
