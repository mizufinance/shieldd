import Ipp.Extracted.ArkworksScalarMulNormalizeGenerated

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow

private abbrev G1Proj :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont

private abbrev FqMont :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont

/-- Canonical extracted G1 affine identity. -/
def g1AffineIdentity :
    ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont := {
  x := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO
  y := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE
  infinity := true
}

private abbrev g1NormalizeBody (values : List G1Proj) :=
  fun (inverses, result, i) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body
      ⟨values⟩ inverses result i

private theorem g1_normalize_all_zero_fuel
    (values : List G1Proj)
    (result : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (start n : Nat) (hlen : start + n = values.length)
    (hzero : ∀ i (hi : i < values.length),
      (values[i]).z.val =
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    loopFuel (g1NormalizeBody values) (n + 1)
      (⟨List.replicate n ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩,
        result, ⟨start⟩) =
      .ok ⟨result.val ++ List.replicate n g1AffineIdentity⟩ := by
  induction n generalizing start result with
  | zero =>
      rw [loopFuel]
      simp only [List.replicate_zero]
      have hdone : ¬start < values.length := by omega
      rw [show g1NormalizeBody values (⟨[]⟩, result, ⟨start⟩) =
          .ok (.done result) by
        simp [g1NormalizeBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
          Slice.len, hdone]]
      simp
  | succ n ih =>
      have hlt : start < values.length := by omega
      have hz := hzero start hlt
      rw [loopFuel]
      rw [show g1NormalizeBody values
          (⟨List.replicate (n + 1)
              ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩,
            result, ⟨start⟩) =
          .ok (.cont
            (⟨List.replicate n ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩,
              ⟨result.val ++ [g1AffineIdentity]⟩, ⟨start + 1⟩)) by
        simp [g1NormalizeBody, g1AffineIdentity,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
          Slice.len, Slice.index_usize, alloc.vec.Vec.push, hlt,
          ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
          ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz]]
      simp only
      have hnext : start + 1 + n = values.length := by omega
      rw [ih (start := start + 1) (result := ⟨result.val ++ [g1AffineIdentity]⟩)
        hnext]
      simp [List.replicate_succ, List.append_assoc]

/-- The all-zero G1 scaling pass emits one affine identity per input. -/
theorem g1_normalize_all_zero (values : List G1Proj)
    (hzero : ∀ i (hi : i < values.length),
      (values[i]).z.val =
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
      ⟨values⟩
      ⟨List.replicate values.length
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩
      ⟨[]⟩ 0#usize =
      .ok ⟨List.replicate values.length g1AffineIdentity⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
  apply loop_eq_of_fuel (fuel := values.length + 1) (by simp)
  simpa using g1_normalize_all_zero_fuel values ⟨[]⟩ 0 values.length
    (by simp) hzero

end Ipp.Extracted.ArkworksScalarMulNormalize
