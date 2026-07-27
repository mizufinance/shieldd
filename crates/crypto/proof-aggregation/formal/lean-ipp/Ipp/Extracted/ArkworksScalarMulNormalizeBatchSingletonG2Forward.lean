import Ipp.Extracted.ArkworksScalarMulNormalizeBatchSingletonG2Trace
import Ipp.Extracted.ArkworksScalarMulNormalizeCommon

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

theorem g2_forward_singleton_nonzero_exec (proj : G2ProjLimbTriple)
    (hz : ¬Ipp.Extracted.ArkworksG2.isZeroFq2Mont proj.z) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0
      ⟨[proj]⟩ ⟨[]⟩ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE 0#usize =
      (do
        let product ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
          ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE proj.z
        ok (⟨[ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE]⟩, product)) := by
  cases hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE proj.z with
  | ok product =>
      simp only [Result.bind_ok]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0
      apply loop_eq_of_fuel (fuel := 2)
      · simp
      · simp [loopFuel,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
          Slice.len, Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero, hz, hmul]
  | fail error =>
      simp only [Result.bind_fail]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0
      apply loop_eq_of_fuel (fuel := 2)
      · simp
      · simp [loopFuel,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
          Slice.len, Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero, hz, hmul]
  | div =>
      simp only [Result.bind_div]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0
      apply loop_eq_of_result
      apply LoopResult.div
      simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
        Slice.len, Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero, hz, hmul]

end Ipp.Extracted.ArkworksScalarMulNormalize
