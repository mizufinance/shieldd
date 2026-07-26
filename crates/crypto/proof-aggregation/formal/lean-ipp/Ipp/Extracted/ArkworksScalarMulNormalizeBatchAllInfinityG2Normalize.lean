import Ipp.Extracted.ArkworksScalarMulNormalizeBatchAllInfinityG2Common

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow

private abbrev G2Proj :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont

/-- Canonical extracted G2 affine identity. -/
def g2AffineIdentity :
    ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont := {
  x := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO
  y := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE
  infinity := true
}

private abbrev g2NormalizeBody (values : List G2Proj) :=
  fun (inverses, result, i) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body
      ⟨values⟩ inverses result i

private theorem g2_normalize_all_zero_fuel
    (values : List G2Proj)
    (result : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (start n : Nat) (hlen : start + n = values.length)
    (hzero : ∀ i (hi : i < values.length), G2ZeroZ (values[i]).z) :
    loopFuel (g2NormalizeBody values) (n + 1)
      (⟨List.replicate n ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO⟩,
        result, ⟨start⟩) =
      .ok ⟨result.val ++ List.replicate n g2AffineIdentity⟩ := by
  induction n generalizing start result with
  | zero =>
      rw [loopFuel]
      simp only [List.replicate_zero]
      have hdone : ¬start < values.length := by omega
      rw [show g2NormalizeBody values (⟨[]⟩, result, ⟨start⟩) =
          .ok (.done result) by
        simp [g2NormalizeBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
          Slice.len, hdone]]
      simp
  | succ n ih =>
      have hlt : start < values.length := by omega
      have hz := hzero start hlt
      rw [loopFuel]
      rw [show g2NormalizeBody values
          (⟨List.replicate (n + 1)
              ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO⟩,
            result, ⟨start⟩) =
          .ok (.cont
            (⟨List.replicate n ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO⟩,
              ⟨result.val ++ [g2AffineIdentity]⟩, ⟨start + 1⟩)) by
        simp [g2NormalizeBody, g2AffineIdentity,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
          Slice.len, Slice.index_usize, alloc.vec.Vec.push, hlt,
          g2_eq_zero_of_zero_z _ hz]]
      simp only
      have hnext : start + 1 + n = values.length := by omega
      rw [ih (start := start + 1) (result := ⟨result.val ++ [g2AffineIdentity]⟩)
        hnext]
      simp [List.replicate_succ, List.append_assoc]

/-- The all-zero G2 scaling pass emits one affine identity per input. -/
theorem g2_normalize_all_zero (values : List G2Proj)
    (hzero : ∀ i (hi : i < values.length), G2ZeroZ (values[i]).z) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
      ⟨values⟩
      ⟨List.replicate values.length
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO⟩
      ⟨[]⟩ 0#usize =
      .ok ⟨List.replicate values.length g2AffineIdentity⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
  apply loop_eq_of_fuel (fuel := values.length + 1) (by simp)
  simpa using g2_normalize_all_zero_fuel values ⟨[]⟩ 0 values.length
    (by simp) hzero

end Ipp.Extracted.ArkworksScalarMulNormalize
