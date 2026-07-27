import Ipp.Extracted.ArkworksScalarMulNormalizeBatchAllInfinityG2Common

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow

private abbrev G2Proj :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont

private abbrev Fq2Mont :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont

private abbrev g2ForwardBody (values : List G2Proj) :=
  fun (products, product, i) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body
      ⟨values⟩ products product i

private theorem g2_forward_all_zero_fuel
    (values : List G2Proj) (products : alloc.vec.Vec Fq2Mont)
    (product : Fq2Mont) (start n : Nat)
    (hlen : start + n = values.length)
    (hzero : ∀ i (hi : i < values.length), G2ZeroZ (values[i]).z) :
    loopFuel (g2ForwardBody values)
      (n + 1) (products, product, ⟨start⟩) = .ok (products, product) := by
  induction n generalizing start products product with
  | zero =>
      rw [loopFuel]
      have hdone : ¬start < values.length := by omega
      rw [show g2ForwardBody values (products, product, ⟨start⟩) =
          .ok (.done (products, product)) by
        simp [g2ForwardBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
          Slice.len, hdone]]
  | succ n ih =>
      have hlt : start < values.length := by omega
      have hz := hzero start hlt
      rw [loopFuel]
      rw [show g2ForwardBody values (products, product, ⟨start⟩) =
          .ok (.cont (products, product, ⟨start + 1⟩)) by
        simp [g2ForwardBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
          Slice.len, Slice.index_usize, hlt, g2_eq_zero_of_zero_z _ hz]]
      have hnext : start + 1 + n = values.length := by omega
      exact ih (start := start + 1) (products := products) (product := product)
        hnext

/-- The all-zero G2 forward pass stores no prefixes and leaves one unchanged. -/
theorem g2_forward_all_zero (values : List G2Proj)
    (hzero : ∀ i (hi : i < values.length), G2ZeroZ (values[i]).z) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0
      ⟨values⟩ ⟨[]⟩ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE 0#usize =
      .ok (⟨[]⟩, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0
  apply loop_eq_of_fuel (fuel := values.length + 1) (by simp)
  exact g2_forward_all_zero_fuel values ⟨[]⟩
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE 0 values.length (by simp) hzero

end Ipp.Extracted.ArkworksScalarMulNormalize
