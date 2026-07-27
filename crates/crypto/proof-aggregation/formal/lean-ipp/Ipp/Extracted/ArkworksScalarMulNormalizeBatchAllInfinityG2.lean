import Ipp.Extracted.ArkworksScalarMulNormalizeBatchAllInfinityG2Forward
import Ipp.Extracted.ArkworksScalarMulNormalizeBatchAllInfinityG2Backward
import Ipp.Extracted.ArkworksScalarMulNormalizeBatchAllInfinityG2Normalize

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result

private abbrev G2Proj :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont

/-- An all-infinity G2 batch preserves length and emits only affine identities. -/
theorem valid_g2_normalize_batch_all_infinity (values : List G2Proj)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (hzero : ∀ i (hi : i < values.length), G2ZeroZ (values[i]).z)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch
      ⟨values⟩ = .ok out) :
    out.val = List.replicate values.length g2AffineIdentity ∧
      out.val.length = values.length ∧
      ∀ i (hi : i < out.val.length), out.val[i] = g2AffineIdentity := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed at hexec
  simp only [Slice.len, alloc.vec.Vec.with_capacity] at hexec
  rw [g2_forward_all_zero values hzero] at hexec
  simp only [Result.bind_ok] at hexec
  cases hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE with
  | fail error => rw [hinv] at hexec; simp at hexec
  | div => rw [hinv] at hexec; simp at hexec
  | ok inverseOption =>
      rw [hinv] at hexec
      cases inverseOption with
      | none =>
          simp only [Result.bind_ok] at hexec
          rw [g2_backward_all_zero values
            ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO hzero] at hexec
          simp only [Result.bind_ok] at hexec
          rw [g2_normalize_all_zero values hzero] at hexec
          simp only [Result.ok.injEq] at hexec
          subst out
          simp
      | some inverse =>
          simp only [Result.bind_ok] at hexec
          rw [g2_backward_all_zero values inverse hzero] at hexec
          simp only [Result.bind_ok] at hexec
          rw [g2_normalize_all_zero values hzero] at hexec
          simp only [Result.ok.injEq] at hexec
          subst out
          simp

#print axioms valid_g2_normalize_batch_all_infinity

end Ipp.Extracted.ArkworksScalarMulNormalize
