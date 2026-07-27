import Ipp.Extracted.ArkworksG2PreparedDoubleSegment3A
import Ipp.Extracted.ArkworksG2PreparedDoubleSegment3B

namespace Ipp.Extracted.ArkworksG2PreparedDoubleSegment3

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedDoubleOps
open Ipp.Extracted.ArkworksG2PreparedDoubleSegment3A
open Ipp.Extracted.ArkworksG2PreparedDoubleSegment3B

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment3_spec (s1 : Segment1) (s2 : Segment2)
    (output : Proj) (coeff : Coeff)
    (hs1 : CanonicalSegment1 s1) (hs2 : CanonicalSegment2 s2)
    (hexec : segment3 s1 s2 = .ok (output, coeff)) :
    CanonicalG2 output ∧
      decodeHomogeneous output =
        modelSegment3State (decodeSegment1 s1) (decodeSegment2 s2) ∧
      decodeEllCoeff coeff = modelSegment3Coeff (decodeSegment2 s2) := by
  rw [segment3_eq_cut] at hexec
  unfold segment3Cut at hexec
  obtain ⟨a, ha, hexec⟩ := bind_eq_ok hexec
  obtain ⟨b, hb, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq, Prod.mk.injEq] at hret
  rcases hret with ⟨rfl, rfl⟩
  have sa := segment3A_spec s1 s2 a hs1.2.2.2.2.2 hs2.2.2.2.1 ha
  have sb := segment3B_spec s1 s2 b hs1.2.1 hs2.1 hs2.2.2.1 hb
  refine ⟨⟨hs2.2.2.2.2, sa.1, sb.1⟩, ?_, ?_⟩
  · simp only [decodeHomogeneous, modelSegment3State, decodeSegment1,
      decodeSegment2, sa.2, sb.2.2.2.1]
  · simp only [decodeEllCoeff, modelSegment3Coeff, decodeSegment2,
      sb.2.2.2.2.1, sb.2.2.2.2.2]

#print axioms segment3_spec

end Ipp.Extracted.ArkworksG2PreparedDoubleSegment3
