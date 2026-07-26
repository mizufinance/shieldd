import Ipp.Extracted.ArkworksScalarMulNormalizeBatchSingletonG2Trace
import Ipp.Extracted.ArkworksScalarMulNormalizeCommon

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

private abbrev Fq2Mont :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont

theorem g2_backward_singleton_nonzero_exec (proj : G2ProjLimbTriple)
    (inverse : Fq2Mont)
    (hz : ¬Ipp.Extracted.ArkworksG2.isZeroFq2Mont proj.z) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1
      ⟨[proj]⟩ ⟨[ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE]⟩
      1#usize inverse ⟨[]⟩ =
      (do
        let _ ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul inverse proj.z
        let zinv ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul inverse
          ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE
        ok ⟨[zinv]⟩) := by
  cases hnext : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul inverse proj.z with
  | fail error =>
      simp only [Result.bind_fail]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1
      apply loop_eq_of_fuel (fuel := 2)
      · simp
      · simp [loopFuel,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
          Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero, hz, hnext]
  | div =>
      simp only [Result.bind_div]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1
      apply loop_eq_of_result
      apply LoopResult.div
      simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
        Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero, hz, hnext]
  | ok next =>
      cases hzinv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul inverse
          ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE with
      | ok zinv =>
          simp only [Result.bind_ok]
          unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1
          apply loop_eq_of_fuel (fuel := 2)
          · simp
          · simp [loopFuel,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
              Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
              hz, hnext, hzinv]
      | fail error =>
          simp only [Result.bind_ok, Result.bind_fail]
          unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1
          apply loop_eq_of_fuel (fuel := 2)
          · simp
          · simp [loopFuel,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
              Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
              hz, hnext, hzinv]
      | div =>
          simp only [Result.bind_ok, Result.bind_div]
          unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1
          apply loop_eq_of_result
          apply LoopResult.div
          simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
            Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
            hz, hnext, hzinv]

end Ipp.Extracted.ArkworksScalarMulNormalize
