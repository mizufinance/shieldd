import Ipp.Extracted.ArkworksG2PreparedAdditionOps

namespace Ipp.Extracted.ArkworksG2PreparedAdditionAssembly

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2PreparedAdditionOps

set_option maxHeartbeats 1000000

/-- The cut-level model is the protocol homogeneous mixed-addition formula. -/
theorem assemble_add_model (r : G2HomProjective) (qx qy : Fq2)
    (s1 : DecodedSegment1) (s2 : DecodedSegment2)
    (hs1 : s1 = modelSegment1 r qx qy)
    (hs2 : s2 = modelSegment2 s1 (modelSegment2A r s1)) :
    modelSegment3State s2 (modelSegment3A r s1 s2) =
        (addLine r ⟨false, qx, qy⟩).1 ∧
      modelSegment3Coeff s1 (modelSegment3B qx qy s1) =
        (addLine r ⟨false, qx, qy⟩).2 := by
  subst s1
  subst s2
  simp [modelSegment1, modelSegment2A, modelSegment2,
    modelSegment3A, modelSegment3B, modelSegment3State,
    modelSegment3Coeff, addLine, pow_two]

#print axioms assemble_add_model

end Ipp.Extracted.ArkworksG2PreparedAdditionAssembly
