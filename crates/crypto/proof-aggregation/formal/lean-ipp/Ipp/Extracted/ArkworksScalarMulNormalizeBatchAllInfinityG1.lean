import Ipp.Extracted.ArkworksScalarMulNormalizeBatchAllInfinityG1Forward
import Ipp.Extracted.ArkworksScalarMulNormalizeBatchAllInfinityG1Backward
import Ipp.Extracted.ArkworksScalarMulNormalizeBatchAllInfinityG1Normalize

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result

private abbrev G1Proj :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont

/-- An all-infinity G1 batch preserves length and emits only affine identities. -/
theorem valid_g1_normalize_batch_all_infinity (values : List G1Proj)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (hzero : ∀ i (hi : i < values.length),
      (values[i]).z.val =
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch
      ⟨values⟩ = .ok out) :
    out.val = List.replicate values.length g1AffineIdentity ∧
      out.val.length = values.length ∧
      ∀ i (hi : i < out.val.length), out.val[i] = g1AffineIdentity := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed at hexec
  simp only [Slice.len, alloc.vec.Vec.with_capacity] at hexec
  rw [g1_forward_all_zero values hzero] at hexec
  simp only [Result.bind_ok] at hexec
  cases hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.inv
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE with
  | fail error => rw [hinv] at hexec; simp at hexec
  | div => rw [hinv] at hexec; simp at hexec
  | ok inverseOption =>
      rw [hinv] at hexec
      cases inverseOption with
      | none =>
          simp only [Result.bind_ok] at hexec
          rw [g1_backward_all_zero values
            ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO hzero] at hexec
          simp only [Result.bind_ok] at hexec
          rw [g1_normalize_all_zero values hzero] at hexec
          simp only [Result.ok.injEq] at hexec
          subst out
          simp
      | some inverse =>
          simp only [Result.bind_ok] at hexec
          rw [g1_backward_all_zero values inverse hzero] at hexec
          simp only [Result.bind_ok] at hexec
          rw [g1_normalize_all_zero values hzero] at hexec
          simp only [Result.ok.injEq] at hexec
          subst out
          simp

#print axioms valid_g1_normalize_batch_all_infinity

end Ipp.Extracted.ArkworksScalarMulNormalize
