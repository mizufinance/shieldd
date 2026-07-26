import Ipp.Extracted.ArkworksG2PreparedDoubleOps

namespace Ipp.Extracted.ArkworksG2PreparedDoubleAssembly

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2PreparedDoubleOps

set_option maxHeartbeats 1000000

/-- The cut-level model is definitionally the homogeneous doubling-line model. -/
theorem assemble_double_model (r : G2HomProjective)
    (s1 : DecodedSegment1) (s2 : DecodedSegment2)
    (hs1 : s1 = modelSegment1 r)
    (hs2 : s2 = modelSegment2 r s1) :
    modelSegment3State s1 s2 = (doubleLine r).1 ∧
      modelSegment3Coeff s2 = (doubleLine r).2 := by
  subst s1
  subst s2
  simp [modelSegment1, modelSegment2, modelSegment3State,
    modelSegment3Coeff, doubleLine, pow_two]

#print axioms assemble_double_model

end Ipp.Extracted.ArkworksG2PreparedDoubleAssembly
