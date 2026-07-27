import Ipp.Extracted.ArkworksScalarMulNormalizeBatchAllInfinityG2Common

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow

private abbrev G2Proj :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont

private abbrev Fq2Mont :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont

private abbrev g2BackwardBody (values : List G2Proj) :=
  fun (products, i, inverse, result) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body
      ⟨values⟩ products i inverse result

private theorem g2_backward_all_zero_fuel
    (values : List G2Proj) (products : alloc.vec.Vec Fq2Mont)
    (inverse : Fq2Mont) (result : alloc.vec.Vec Fq2Mont) (n : Nat)
    (hbound : n ≤ values.length)
    (hzero : ∀ i (hi : i < values.length), G2ZeroZ (values[i]).z) :
    loopFuel (g2BackwardBody values) (n + 1)
      (products, ⟨n⟩, inverse, result) =
      .ok ⟨result.val ++ List.replicate n
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO⟩ := by
  induction n generalizing result with
  | zero =>
      rw [loopFuel]
      rw [show g2BackwardBody values (products, ⟨0⟩, inverse, result) =
          .ok (.done result) by
        simp [g2BackwardBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body]]
      simp
  | succ n ih =>
      have hidx : n < values.length := by omega
      have hz := hzero n hidx
      rw [loopFuel]
      rw [show g2BackwardBody values (products, ⟨n + 1⟩, inverse, result) =
          .ok (.cont (products, ⟨n⟩, inverse,
            ⟨result.val ++ [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO]⟩)) by
        simp [g2BackwardBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
          Slice.index_usize, alloc.vec.Vec.push, hidx,
          g2_eq_zero_of_zero_z _ hz]]
      simp only
      rw [ih (result :=
        ⟨result.val ++ [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO]⟩)
        (by omega)]
      simp [List.replicate_succ, List.append_assoc]

/-- The all-zero G2 backward pass emits one zero inverse per input. -/
theorem g2_backward_all_zero (values : List G2Proj) (inverse : Fq2Mont)
    (hzero : ∀ i (hi : i < values.length), G2ZeroZ (values[i]).z) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1
      ⟨values⟩ ⟨[]⟩ ⟨values.length⟩ inverse ⟨[]⟩ =
      .ok ⟨List.replicate values.length
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1
  apply loop_eq_of_fuel (fuel := values.length + 1) (by simp)
  simpa using g2_backward_all_zero_fuel values ⟨[]⟩ inverse ⟨[]⟩
    values.length (by simp) hzero

end Ipp.Extracted.ArkworksScalarMulNormalize
