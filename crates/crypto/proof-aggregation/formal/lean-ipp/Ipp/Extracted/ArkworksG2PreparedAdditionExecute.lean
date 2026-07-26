import Ipp.Extracted.ArkworksG2PreparedAdditionSegment1
import Ipp.Extracted.ArkworksG2PreparedAdditionSegment2
import Ipp.Extracted.ArkworksG2PreparedAdditionSegment3
import Ipp.Extracted.ArkworksG2PreparedAdditionAssembly

namespace Ipp.Extracted.ArkworksG2PreparedAdditionExecute

open Aeneas Result
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedAdditionModel
open Ipp.Extracted.ArkworksG2PreparedAdditionOps

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

/-- The extracted addition line returns the protocol model state and coefficients. -/
theorem g2_add_line_exec_spec (r output : Proj) (q : Affine) (coeff : Coeff)
    (hr : CanonicalG2 r) (hqx : Canonical2 q.x) (hqy : Canonical2 q.y)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line r q =
      .ok (output, coeff)) :
    CanonicalG2 output ∧
      decodeHomogeneous output = (additionLineModel r q).1 ∧
      decodeEllCoeff coeff = (additionLineModel r q).2 := by
  rw [g2_add_line_eq_segmented] at hexec
  unfold segmentedAddLine at hexec
  obtain ⟨s1, hs1exec, hexec⟩ :=
    Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  obtain ⟨s2, hs2exec, hs3exec⟩ :=
    Ipp.Extracted.ArkworksG2PreparedDoubleOps.bind_eq_ok hexec
  have hs1 := Ipp.Extracted.ArkworksG2PreparedAdditionSegment1.segment1_spec
    r q s1 hr hqx hqy hs1exec
  have hs2 := Ipp.Extracted.ArkworksG2PreparedAdditionSegment2.segment2_spec
    r s1 s2 hr hs1.1 hs2exec
  have hs3 := Ipp.Extracted.ArkworksG2PreparedAdditionSegment3.segment3_spec
    r q s1 s2 output coeff hr hqx hqy hs1.1 hs2.1 hs3exec
  have hassembly := Ipp.Extracted.ArkworksG2PreparedAdditionAssembly.assemble_add_model
    (decodeHomogeneous r) (decodeFq2 q.x) (decodeFq2 q.y)
    (decodeSegment1 s1) (decodeSegment2 s2) hs1.2 hs2.2
  refine ⟨hs3.1, ?_, ?_⟩
  · exact hs3.2.1.trans (by
      simpa [additionLineModel] using hassembly.1)
  · exact hs3.2.2.trans (by
      simpa [additionLineModel] using hassembly.2)

#print axioms g2_add_line_exec_spec

end Ipp.Extracted.ArkworksG2PreparedAdditionExecute
