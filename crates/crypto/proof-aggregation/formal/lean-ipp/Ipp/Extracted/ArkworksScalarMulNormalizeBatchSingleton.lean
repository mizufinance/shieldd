import Ipp.Extracted.ArkworksScalarMulNormalize

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksScalarMul

private abbrev G1Proj :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont

private abbrev FqMont :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont

theorem g1_forward_singleton_zero (proj : G1Proj)
    (hz : proj.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0
      ⟨[proj]⟩ ⟨[]⟩ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE 0#usize =
      .ok (⟨[]⟩, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0
  apply loop_eq_of_fuel (fuel := 2)
  · simp
  · have h01 : (0#usize : Usize) < ⟨1⟩ := by decide
    have h11 : ¬((⟨1⟩ : Usize) < ⟨1⟩) := by decide
    simp [loopFuel,
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
      Slice.len, Slice.index_usize,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
      ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, h01, h11]

theorem g1_forward_singleton_nonzero (proj : G1Proj)
    (hz : proj.z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (product : FqMont)
    (hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE proj.z = .ok product) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0
      ⟨[proj]⟩ ⟨[]⟩ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE 0#usize =
      .ok (⟨[ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE]⟩, product) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0
  apply loop_eq_of_fuel (fuel := 2)
  · simp
  · have h01 : (0#usize : Usize) < ⟨1⟩ := by decide
    have h11 : ¬((⟨1⟩ : Usize) < ⟨1⟩) := by decide
    simp [loopFuel,
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
      Slice.len, Slice.index_usize, alloc.vec.Vec.push,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
      ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hmul, h01, h11]

theorem g1_backward_singleton_zero (proj : G1Proj) (inverse : FqMont)
    (hz : proj.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
      ⟨[proj]⟩ ⟨[]⟩ 1#usize inverse ⟨[]⟩ =
      .ok ⟨[ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
  apply loop_eq_of_fuel (fuel := 2)
  · simp
  · have h10 : (1#usize : Usize) > 0#usize := by decide
    have h00 : ¬((0#usize : Usize) > 0#usize) := by decide
    simp [loopFuel,
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1.body,
      Slice.index_usize, alloc.vec.Vec.push,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
      ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, h10, h00]

theorem g1_backward_singleton_nonzero (proj : G1Proj)
    (inverse next result : FqMont)
    (hz : proj.z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hnext : ark_ip_proofs.s3_07_arkworks_fq_spike.mul inverse proj.z =
      .ok next)
    (hresult : ark_ip_proofs.s3_07_arkworks_fq_spike.mul inverse
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = .ok result) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
      ⟨[proj]⟩ ⟨[ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE]⟩
      1#usize inverse ⟨[]⟩ = .ok ⟨[result]⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
  apply loop_eq_of_fuel (fuel := 2)
  · simp
  · have h10 : (1#usize : Usize) > 0#usize := by decide
    have h00 : ¬((0#usize : Usize) > 0#usize) := by decide
    simp [loopFuel,
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1.body,
      Slice.index_usize,
      alloc.vec.Vec.push,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
      ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hnext, hresult,
      h10, h00]

theorem g1_normalize_singleton_zero (proj : G1Proj) (zinv : FqMont)
    (hz : proj.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
      ⟨[proj]⟩ ⟨[zinv]⟩ ⟨[]⟩ 0#usize =
      .ok ⟨[{
        x := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO,
        y := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE,
        infinity := true
      }]⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
  apply loop_eq_of_fuel (fuel := 2)
  · simp
  · simp [loopFuel,
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
      Slice.len, Slice.index_usize, alloc.vec.Vec.push,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
      ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz]

theorem g1_normalize_singleton_nonzero (proj : G1Proj)
    (zinv z2 x yz2 y : FqMont)
    (hz : proj.z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.square zinv = .ok z2)
    (hx : ark_ip_proofs.s3_07_arkworks_fq_spike.mul proj.x z2 = .ok x)
    (hyz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.mul proj.y z2 = .ok yz2)
    (hy : ark_ip_proofs.s3_07_arkworks_fq_spike.mul yz2 zinv = .ok y) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
      ⟨[proj]⟩ ⟨[zinv]⟩ ⟨[]⟩ 0#usize =
      .ok ⟨[{
        x := x,
        y := y,
        infinity := false
      }]⟩ := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
  apply loop_eq_of_fuel (fuel := 2)
  · simp
  · simp [loopFuel,
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
      Slice.len, Slice.index_usize, alloc.vec.Vec.push,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
      ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hz2, hx, hyz2, hy]

end Ipp.Extracted.ArkworksScalarMulNormalize
