import Ipp.Extracted.ArkworksG2PreparedAdditionSegment1A
import Ipp.Extracted.ArkworksG2PreparedAdditionSegment1B

namespace Ipp.Extracted.ArkworksG2PreparedAdditionSegment1

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedAdditionOps

set_option maxHeartbeats 1000000

theorem segment1_spec (r : Proj) (q : Affine) (output : Segment1)
    (hr : CanonicalG2 r) (hqx : Canonical2 q.x) (hqy : Canonical2 q.y)
    (hexec : segment1 r q = .ok output) :
    CanonicalSegment1 output ∧ decodeSegment1 output =
      modelSegment1 (decodeHomogeneous r) (decodeFq2 q.x) (decodeFq2 q.y) := by
  unfold segment1 at hexec
  obtain ⟨a, haexec, hbexec⟩ :=
    Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  have ha := Ipp.Extracted.ArkworksG2PreparedAdditionSegment1A.segment1A_spec
    r q a hr hqx hqy haexec
  exact Ipp.Extracted.ArkworksG2PreparedAdditionSegment1B.segment1B_spec
    (decodeHomogeneous r) (decodeFq2 q.x) (decodeFq2 q.y)
    a output ha.1 ha.2 hbexec

#print axioms segment1_spec

end Ipp.Extracted.ArkworksG2PreparedAdditionSegment1
