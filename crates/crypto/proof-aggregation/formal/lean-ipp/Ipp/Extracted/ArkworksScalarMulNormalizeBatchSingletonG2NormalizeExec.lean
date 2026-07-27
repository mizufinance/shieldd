import Ipp.Extracted.ArkworksScalarMulNormalizeBatchSingletonG2Trace
import Ipp.Extracted.ArkworksScalarMulNormalizeCommon

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

private abbrev Fq2Mont :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont

theorem g2_normalize_singleton_nonzero_exec (proj : G2ProjLimbTriple)
    (zinv : Fq2Mont)
    (hz : ¬Ipp.Extracted.ArkworksG2.isZeroFq2Mont proj.z) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
      ⟨[proj]⟩ ⟨[zinv]⟩ ⟨[]⟩ 0#usize =
      (do
        let z2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square zinv
        let x ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul proj.x z2
        let yz2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul proj.y z2
        let y ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul yz2 zinv
        ok ⟨[{ x := x, y := y, infinity := false }]⟩) := by
  cases hz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square zinv with
  | fail error =>
      simp only [Result.bind_fail]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
      apply loop_eq_of_fuel (fuel := 2)
      · simp
      · simp [loopFuel,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
          Slice.len, Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
          hz, hz2]
  | div =>
      simp only [Result.bind_div]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
      apply loop_eq_of_result
      apply LoopResult.div
      simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
        Slice.len, Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
        hz, hz2]
  | ok z2 =>
      cases hx : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul proj.x z2 with
      | fail error =>
          simp only [Result.bind_ok, hx]
          unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
          apply loop_eq_of_fuel (fuel := 2)
          · simp
          · simp [loopFuel,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
              Slice.len, Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
              hz, hz2, hx]
      | div =>
          simp only [Result.bind_ok, hx]
          unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
          apply loop_eq_of_result
          apply LoopResult.div
          simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
            Slice.len, Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
            hz, hz2, hx]
      | ok x =>
          cases hyz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul proj.y z2 with
          | fail error =>
              simp only [hx, Result.bind_ok, hyz2, Result.bind_fail]
              unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
              apply loop_eq_of_fuel (fuel := 2)
              · simp
              · simp [loopFuel,
                  ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                  Slice.len, Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                  hz, hz2, hx, hyz2]
          | div =>
              simp only [hx, Result.bind_ok, hyz2, Result.bind_div]
              unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
              apply loop_eq_of_result
              apply LoopResult.div
              simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                Slice.len, Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                hz, hz2, hx, hyz2]
          | ok yz2 =>
              cases hy : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul yz2 zinv with
              | ok y =>
                  simp only [hx, Result.bind_ok, hyz2, hy]
                  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
                  apply loop_eq_of_fuel (fuel := 2)
                  · simp
                  · simp [loopFuel,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                      Slice.len, Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                      hz, hz2, hx, hyz2, hy]
              | fail error =>
                  simp only [hx, Result.bind_ok, hyz2, hy, Result.bind_fail]
                  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
                  apply loop_eq_of_fuel (fuel := 2)
                  · simp
                  · simp [loopFuel,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                      Slice.len, Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                      hz, hz2, hx, hyz2, hy]
              | div =>
                  simp only [hx, Result.bind_ok, hyz2, hy, Result.bind_div]
                  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
                  apply loop_eq_of_result
                  apply LoopResult.div
                  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop.body,
                    Slice.len, Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                    hz, hz2, hx, hyz2, hy]

end Ipp.Extracted.ArkworksScalarMulNormalize
