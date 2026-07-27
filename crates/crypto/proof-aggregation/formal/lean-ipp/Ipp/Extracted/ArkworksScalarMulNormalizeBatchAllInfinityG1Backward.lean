import Ipp.Extracted.ArkworksScalarMulNormalizeGenerated

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow

private abbrev G1Proj :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont

private abbrev FqMont :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont

private abbrev g1BackwardBody (values : List G1Proj) :=
  fun (products, i, inverse, result) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1.body
      ⟨values⟩ products i inverse result

private theorem g1_backward_all_zero_fuel
    (values : List G1Proj) (products : alloc.vec.Vec FqMont)
    (inverse : FqMont) (result : alloc.vec.Vec FqMont) (n : Nat)
    (hbound : n ≤ values.length)
    (hzero : ∀ i (hi : i < values.length),
      (values[i]).z.val =
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    loopFuel (g1BackwardBody values) (n + 1)
      (products, ⟨n⟩, inverse, result) =
      .ok ⟨result.val ++ List.replicate n
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ := by
  induction n generalizing result with
  | zero =>
      rw [loopFuel]
      rw [show g1BackwardBody values (products, ⟨0⟩, inverse, result) =
          .ok (.done result) by
        simp [g1BackwardBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1.body]]
      simp
  | succ n ih =>
      have hidx : n < values.length := by omega
      have hz := hzero n hidx
      rw [loopFuel]
      rw [show g1BackwardBody values (products, ⟨n + 1⟩, inverse, result) =
          .ok (.cont (products, ⟨n⟩, inverse,
            ⟨result.val ++ [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]⟩)) by
        simp [g1BackwardBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1.body,
          Slice.index_usize, alloc.vec.Vec.push,
          ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
          ark_ip_proofs.core.array.equality.PartialEqArray.eq, hidx, hz]]
      simp only
      rw [ih (result :=
        ⟨result.val ++ [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]⟩)
        (by omega)]
      simp [List.replicate_succ, List.append_assoc]

/-- The all-zero G1 backward pass emits one zero inverse per input. -/
theorem g1_backward_all_zero (values : List G1Proj) (inverse : FqMont)
    (hzero : ∀ i (hi : i < values.length),
      (values[i]).z.val =
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
      ⟨values⟩ ⟨[]⟩ ⟨values.length⟩ inverse ⟨[]⟩ =
      .ok ⟨List.replicate values.length
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
  apply loop_eq_of_fuel (fuel := values.length + 1) (by simp)
  simpa using g1_backward_all_zero_fuel values ⟨[]⟩ inverse ⟨[]⟩
    values.length (by simp) hzero

end Ipp.Extracted.ArkworksScalarMulNormalize
