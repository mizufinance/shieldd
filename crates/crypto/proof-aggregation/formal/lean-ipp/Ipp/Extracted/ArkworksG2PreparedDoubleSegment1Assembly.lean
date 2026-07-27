import Ipp.Extracted.ArkworksG2PreparedDoubleOps

namespace Ipp.Extracted.ArkworksG2PreparedDoubleSegment1Assembly

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2PreparedDoubleOps

set_option maxHeartbeats 1000000

theorem assemble_segment1_spec (r : G2HomProjective) (a : Segment1A)
    (e : Fq2LimbPair) (tail : Segment1C)
    (ha : CanonicalSegment1A a)
    (hda : decodeSegment1A a = modelSegment1A r)
    (he : Canonical2 e)
    (hde : decodeFq2 e = g2TwistB *
      (decodeFq2 a.c + decodeFq2 a.c + decodeFq2 a.c))
    (hf : Canonical2 tail.f) (hg : Canonical2 tail.g)
    (hdf : decodeFq2 tail.f = decodeFq2 e + decodeFq2 e + decodeFq2 e)
    (hdg : decodeFq2 tail.g = fq2MulFq
      (decodeFq2 a.b + decodeFq2 tail.f) twoInv) :
    CanonicalSegment1 ⟨a.aa1, a.b, a.c, e, tail.f, tail.g⟩ ∧
      decodeSegment1 ⟨a.aa1, a.b, a.c, e, tail.f, tail.g⟩ =
        modelSegment1 r := by
  have haa1 := congrArg DecodedSegment1A.aa1 hda
  have hb := congrArg DecodedSegment1A.b hda
  have hc := congrArg DecodedSegment1A.c hda
  refine ⟨⟨ha.1, ha.2.1, ha.2.2, he, hf, hg⟩, ?_⟩
  apply DecodedSegment1.ext
  · simpa [decodeSegment1A, modelSegment1A] using haa1
  · simpa [decodeSegment1A, modelSegment1A] using hb
  · simpa [decodeSegment1A, modelSegment1A] using hc
  · simp only [decodeSegment1, modelSegment1, hde]
    rw [show decodeFq2 a.c = r.z * r.z by
      simpa [decodeSegment1A, modelSegment1A] using hc]
  · simp only [decodeSegment1, modelSegment1, hdf, hde]
    rw [show decodeFq2 a.c = r.z * r.z by
      simpa [decodeSegment1A, modelSegment1A] using hc]
  · simp only [decodeSegment1, modelSegment1, hdg, hdf, hde]
    have hb' : decodeFq2 a.b = r.y * r.y := by
      simpa [decodeSegment1A, modelSegment1A] using hb
    rw [hb']
    rw [show decodeFq2 a.c = r.z * r.z by
      simpa [decodeSegment1A, modelSegment1A] using hc]

#print axioms assemble_segment1_spec

end Ipp.Extracted.ArkworksG2PreparedDoubleSegment1Assembly
