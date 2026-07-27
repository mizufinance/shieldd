import Ipp.Extracted.ArkworksG2PreparedAdditionOps

namespace Ipp.Extracted.ArkworksG2PreparedAdditionSegment1B

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2PreparedAdditionOps

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment1B_spec (r : G2HomProjective) (qx qy : Fq2)
    (a : Segment1A) (output : Segment1)
    (ha : CanonicalSegment1A a)
    (hda : decodeSegment1A a = modelSegment1A r qx qy)
    (hexec : segment1B a = .ok output) :
    CanonicalSegment1 output ∧ decodeSegment1 output = modelSegment1 r qx qy := by
  unfold segment1B at hexec
  obtain ⟨c, hc, hexec⟩ :=
    Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨d, hd, hexec⟩ :=
    Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨e, he, hret⟩ :=
    Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have sc := extracted_fq2_square_spec a.theta c ha.1 hc
  have sd := extracted_fq2_square_spec a.lambda d ha.2 hd
  have se := extracted_fq2_mul_spec a.lambda d e ha.2 sd.1 he
  have htheta := congrArg DecodedSegment1A.theta hda
  have hlambda := congrArg DecodedSegment1A.lambda hda
  refine ⟨⟨ha.1, ha.2, sc.1, sd.1, se.1⟩, ?_⟩
  apply DecodedSegment1.ext
  · simpa [decodeSegment1, decodeSegment1A, modelSegment1,
      modelSegment1A] using htheta
  · simpa [decodeSegment1, decodeSegment1A, modelSegment1,
      modelSegment1A] using hlambda
  · simp only [decodeSegment1, modelSegment1, sc.2]
    rw [show decodeFq2 a.theta = r.y - qy * r.z by
      simpa [decodeSegment1A, modelSegment1A] using htheta]
    ring
  · simp only [decodeSegment1, modelSegment1, sd.2]
    rw [show decodeFq2 a.lambda = r.x - qx * r.z by
      simpa [decodeSegment1A, modelSegment1A] using hlambda]
    ring
  · simp only [decodeSegment1, modelSegment1, se.2, sd.2]
    rw [show decodeFq2 a.lambda = r.x - qx * r.z by
      simpa [decodeSegment1A, modelSegment1A] using hlambda]
    ring

#print axioms segment1B_spec

end Ipp.Extracted.ArkworksG2PreparedAdditionSegment1B
