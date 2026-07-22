import Ipp.Extracted.ArkworksG2PreparedAdditionSegment3A
import Ipp.Extracted.ArkworksG2PreparedAdditionSegment3B

namespace Ipp.Extracted.ArkworksG2PreparedAdditionSegment3

open Aeneas Result
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedAdditionOps

set_option maxHeartbeats 1000000

theorem segment3_spec (r : Proj) (q : Affine) (s1 : Segment1) (s2 : Segment2)
    (output : Proj) (coeff : Coeff) (hr : CanonicalG2 r)
    (hqx : Canonical2 q.x) (hqy : Canonical2 q.y)
    (hs1 : CanonicalSegment1 s1) (hs2 : CanonicalSegment2 s2)
    (hexec : segment3 r q s1 s2 = .ok (output, coeff)) :
    CanonicalG2 output ∧
      decodeHomogeneous output = modelSegment3State (decodeSegment2 s2)
        (modelSegment3A (decodeHomogeneous r) (decodeSegment1 s1)
          (decodeSegment2 s2)) ∧
      decodeEllCoeff coeff = modelSegment3Coeff (decodeSegment1 s1)
        (modelSegment3B (decodeFq2 q.x) (decodeFq2 q.y)
          (decodeSegment1 s1)) := by
  unfold segment3 at hexec
  obtain ⟨a, haexec, hexec⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨b, hbexec, hret⟩ := Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  simp only [Result.ok.injEq, Prod.mk.injEq] at hret
  rcases hret with ⟨rfl, rfl⟩
  have ha := Ipp.Extracted.ArkworksG2PreparedAdditionSegment3A.segment3A_spec
    r s1 s2 a hr hs1 hs2 haexec
  have hb := Ipp.Extracted.ArkworksG2PreparedAdditionSegment3B.segment3B_spec
    q s1 b hqx hqy hs1 hbexec
  refine ⟨⟨hs2.2.1, ha.1.1, ha.1.2⟩, ?_, ?_⟩
  · rw [← ha.2]
    rfl
  · rw [← hb.2]
    rfl

#print axioms segment3_spec

end Ipp.Extracted.ArkworksG2PreparedAdditionSegment3
