import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG2Normalize

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksG2

/-- General G2 batch normalization preserves length and every represented point. -/
theorem valid_g2_normalize_batch_general (values : List G2BatchProj)
    (points : List G2AffinePoint)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (hinput : G2ValidBatchInput values points)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch
      ⟨values⟩ = .ok out) :
    out.val.length = values.length ∧
      G2ValidBatchOutput out.val points := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch at hexec
  obtain ⟨inverses, hinvert, hnormalize⟩ :=
    Ipp.Extracted.ArkworksScalarMulNormalizeCommon.bind_eq_ok hexec
  have hrecovered := g2_batch_invert_recovered values inverses
    hinput.z_canonical hinvert
  have hvalid := g2_normalize_recovered values points inverses out
    hinput hrecovered (by simpa [Slice.len, alloc.vec.Vec.with_capacity]
      using hnormalize)
  refine ⟨?_, hvalid⟩
  have houtputLength := hvalid.length_eq
  have hinputLength := hinput.length_eq
  omega

#print axioms valid_g2_normalize_batch_general

end Ipp.Extracted.ArkworksScalarMulNormalize
