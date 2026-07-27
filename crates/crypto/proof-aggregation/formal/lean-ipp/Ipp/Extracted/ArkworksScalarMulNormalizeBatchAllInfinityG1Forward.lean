import Ipp.Extracted.ArkworksScalarMulNormalizeGenerated

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow

private abbrev G1Proj :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont

private abbrev FqMont :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont

private abbrev g1ForwardBody (values : List G1Proj) :=
  fun (products, product, i) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body
      ⟨values⟩ products product i

private theorem g1_forward_all_zero_fuel
    (values : List G1Proj) (products : alloc.vec.Vec FqMont)
    (product : FqMont) (start n : Nat)
    (hlen : start + n = values.length)
    (hzero : ∀ i (hi : i < values.length),
      (values[i]).z.val =
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    loopFuel (g1ForwardBody values)
      (n + 1) (products, product, ⟨start⟩) = .ok (products, product) := by
  induction n generalizing start products product with
  | zero =>
      rw [loopFuel]
      have hdone : ¬start < values.length := by omega
      rw [show g1ForwardBody values (products, product, ⟨start⟩) =
          .ok (.done (products, product)) by
        simp [g1ForwardBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
          Slice.len, hdone]]
  | succ n ih =>
      have hlt : start < values.length := by omega
      have hget : values[start]? = some values[start] := by simp [hlt]
      have hz := hzero start hlt
      rw [loopFuel]
      rw [show g1ForwardBody values (products, product, ⟨start⟩) =
          .ok (.cont (products, product, ⟨start + 1⟩)) by
        simp [g1ForwardBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
          Slice.len, Slice.index_usize, hlt, hget,
          ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
          ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz]]
      have hnext : start + 1 + n = values.length := by omega
      exact ih (start := start + 1) (products := products) (product := product)
        hnext

/-- The all-zero G1 forward pass stores no prefixes and leaves one unchanged. -/
theorem g1_forward_all_zero (values : List G1Proj)
    (hzero : ∀ i (hi : i < values.length),
      (values[i]).z.val =
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0
      ⟨values⟩ ⟨[]⟩ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE 0#usize =
      .ok (⟨[]⟩, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0
  apply loop_eq_of_fuel (fuel := values.length + 1) (by simp)
  exact g1_forward_all_zero_fuel values ⟨[]⟩
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE 0 values.length (by simp) hzero

end Ipp.Extracted.ArkworksScalarMulNormalize
