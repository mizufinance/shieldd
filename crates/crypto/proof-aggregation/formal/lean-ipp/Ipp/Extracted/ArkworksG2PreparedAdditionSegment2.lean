import Ipp.Extracted.ArkworksG2PreparedAdditionSegment2A
import Ipp.Extracted.ArkworksG2PreparedAdditionSegment2B

namespace Ipp.Extracted.ArkworksG2PreparedAdditionSegment2

open Aeneas Result
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedAdditionOps

set_option maxHeartbeats 1000000

theorem segment2_spec (r : Proj) (s1 : Segment1) (output : Segment2)
    (hr : CanonicalG2 r) (hs1 : CanonicalSegment1 s1)
    (hexec : segment2 r s1 = .ok output) :
    CanonicalSegment2 output ∧ decodeSegment2 output =
      modelSegment2 (decodeSegment1 s1)
        (modelSegment2A (Ipp.Extracted.ArkworksG2PreparedModel.decodeHomogeneous r)
          (decodeSegment1 s1)) := by
  unfold segment2 at hexec
  obtain ⟨a, haexec, hbexec⟩ :=
    Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  have ha := Ipp.Extracted.ArkworksG2PreparedAdditionSegment2A.segment2A_spec
    r s1 a hr hs1 haexec
  have hb := Ipp.Extracted.ArkworksG2PreparedAdditionSegment2B.segment2B_spec
    s1 a output hs1 ha.1 hbexec
  refine ⟨hb.1, ?_⟩
  rw [hb.2, ha.2]

#print axioms segment2_spec

end Ipp.Extracted.ArkworksG2PreparedAdditionSegment2
