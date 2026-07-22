import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG1Normalize

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksG1

/-- General G1 batch normalization preserves length and every represented point. -/
theorem valid_g1_normalize_batch_general (values : List G1BatchProj)
    (points : List G1AffinePoint)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (hinput : G1ValidBatchInput values points)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch
      ⟨values⟩ = .ok out) :
    out.val.length = values.length ∧
      G1ValidBatchOutput out.val points := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch at hexec
  obtain ⟨inverses, hinvert, hnormalize⟩ :=
    Ipp.Extracted.ArkworksScalarMulNormalizeCommon.bind_eq_ok hexec
  have hrecovered := g1_batch_invert_recovered values inverses
    hinput.z_canonical hinvert
  have hvalid := g1_normalize_recovered values points inverses out
    hinput hrecovered (by simpa [Slice.len, alloc.vec.Vec.with_capacity]
      using hnormalize)
  refine ⟨?_, hvalid⟩
  have houtputLength := hvalid.length_eq
  have hinputLength := hinput.length_eq
  omega

#print axioms valid_g1_normalize_batch_general

end Ipp.Extracted.ArkworksScalarMulNormalize
