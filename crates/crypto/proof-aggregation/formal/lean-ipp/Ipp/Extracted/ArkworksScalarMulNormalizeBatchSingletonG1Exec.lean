import Ipp.Extracted.ArkworksScalarMulNormalizeBatchSingleton
import Ipp.Extracted.ArkworksScalarMulNormalizeCommon

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG1

private abbrev FqMont :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont

/-- The successful operations exposed by a nonzero G1 singleton batch. -/
structure G1SingletonNonzeroTrace (proj : G1ProjLimbTriple)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont) where
  product : FqMont
  inverseOption : Option FqMont
  inverse : FqMont
  next : FqMont
  zinv : FqMont
  z2 : FqMont
  x : FqMont
  yz2 : FqMont
  y : FqMont
  forwardMul : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE proj.z = .ok product
  productInv : ark_ip_proofs.s3_07_arkworks_fq_spike.inv product =
    .ok inverseOption
  inverseChoice : inverse = inverseOption.getD
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO
  advanceInverse : ark_ip_proofs.s3_07_arkworks_fq_spike.mul inverse proj.z =
    .ok next
  recoverInverse : ark_ip_proofs.s3_07_arkworks_fq_spike.mul inverse
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = .ok zinv
  squareInverse : ark_ip_proofs.s3_07_arkworks_fq_spike.square zinv = .ok z2
  scaleX : ark_ip_proofs.s3_07_arkworks_fq_spike.mul proj.x z2 = .ok x
  scaleY2 : ark_ip_proofs.s3_07_arkworks_fq_spike.mul proj.y z2 = .ok yz2
  scaleY3 : ark_ip_proofs.s3_07_arkworks_fq_spike.mul yz2 zinv = .ok y
  output : out.val = [{ x := x, y := y, infinity := false }]

private theorem g1_forward_singleton_nonzero_exec (proj : G1ProjLimbTriple)
    (hz : proj.z.val ≠
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0
      ⟨[proj]⟩ ⟨[]⟩ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE 0#usize =
      (do
        let product ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul
          ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE proj.z
        ok (⟨[ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE]⟩, product)) := by
  cases hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE proj.z with
  | ok product =>
      simpa [hmul] using g1_forward_singleton_nonzero proj hz product hmul
  | fail error =>
      simp only [hmul, Result.bind_fail]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0
      apply loop_eq_of_fuel (fuel := 2)
      · simp
      · simp [loopFuel,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
          Slice.len, Slice.index_usize, alloc.vec.Vec.push,
          ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
          ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hmul]
  | div =>
      simp only [hmul, Result.bind_div]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0
      apply loop_eq_of_result
      apply LoopResult.div
      simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
        Slice.len, Slice.index_usize, alloc.vec.Vec.push,
        ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
        ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hmul]

private theorem g1_backward_singleton_nonzero_exec (proj : G1ProjLimbTriple)
    (inverse : FqMont)
    (hz : proj.z.val ≠
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
      ⟨[proj]⟩ ⟨[ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE]⟩
      1#usize inverse ⟨[]⟩ =
      (do
        let next ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul inverse proj.z
        let zinv ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul inverse
          ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE
        ok ⟨[zinv]⟩) := by
  cases hnext : ark_ip_proofs.s3_07_arkworks_fq_spike.mul inverse proj.z with
  | fail error =>
      simp only [hnext, Result.bind_fail]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
      apply loop_eq_of_fuel (fuel := 2)
      · simp
      · simp [loopFuel,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1.body,
          Slice.index_usize, alloc.vec.Vec.push,
          ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
          ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hnext]
  | div =>
      simp only [hnext, Result.bind_div]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
      apply loop_eq_of_result
      apply LoopResult.div
      simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1.body,
        Slice.index_usize, alloc.vec.Vec.push,
        ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
        ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hnext]
  | ok next =>
      cases hzinv : ark_ip_proofs.s3_07_arkworks_fq_spike.mul inverse
          ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE with
      | ok zinv =>
          simpa [hnext, hzinv] using
            g1_backward_singleton_nonzero proj inverse next zinv hz hnext hzinv
      | fail error =>
          simp only [hnext, Result.bind_ok, hzinv, Result.bind_fail]
          unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
          apply loop_eq_of_fuel (fuel := 2)
          · simp
          · simp [loopFuel,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1.body,
              Slice.index_usize, alloc.vec.Vec.push,
              ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
              ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hnext, hzinv]
      | div =>
          simp only [hnext, Result.bind_ok, hzinv, Result.bind_div]
          unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
          apply loop_eq_of_result
          apply LoopResult.div
          simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1.body,
            Slice.index_usize, alloc.vec.Vec.push,
            ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
            ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hnext, hzinv]

private theorem g1_normalize_singleton_nonzero_exec (proj : G1ProjLimbTriple)
    (zinv : FqMont)
    (hz : proj.z.val ≠
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
      ⟨[proj]⟩ ⟨[zinv]⟩ ⟨[]⟩ 0#usize =
      (do
        let z2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.square zinv
        let x ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul proj.x z2
        let yz2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul proj.y z2
        let y ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul yz2 zinv
        ok ⟨[{ x := x, y := y, infinity := false }]⟩) := by
  cases hz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.square zinv with
  | fail error =>
      simp only [hz2, Result.bind_fail]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
      apply loop_eq_of_fuel (fuel := 2)
      · simp
      · simp [loopFuel,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
          Slice.len, Slice.index_usize, alloc.vec.Vec.push,
          ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
          ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hz2]
  | div =>
      simp only [hz2, Result.bind_div]
      unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
      apply loop_eq_of_result
      apply LoopResult.div
      simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
        Slice.len, Slice.index_usize, alloc.vec.Vec.push,
        ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
        ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hz2]
  | ok z2 =>
      cases hx : ark_ip_proofs.s3_07_arkworks_fq_spike.mul proj.x z2 with
      | fail error =>
          simp only [hz2, Result.bind_ok, hx, Result.bind_fail]
          unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
          apply loop_eq_of_fuel (fuel := 2)
          · simp
          · simp [loopFuel,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
              ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
              ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hz2, hx]
      | div =>
          simp only [hz2, Result.bind_ok, hx, Result.bind_div]
          unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
          apply loop_eq_of_result
          apply LoopResult.div
          simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
            Slice.len, Slice.index_usize, alloc.vec.Vec.push,
            ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
            ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz, hz2, hx]
      | ok x =>
          cases hyz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.mul proj.y z2 with
          | fail error =>
              simp only [hz2, Result.bind_ok, hx, hyz2, Result.bind_fail]
              unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
              apply loop_eq_of_fuel (fuel := 2)
              · simp
              · simp [loopFuel,
                  ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                  Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                  ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                  ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                  hz, hz2, hx, hyz2]
          | div =>
              simp only [hz2, Result.bind_ok, hx, hyz2, Result.bind_div]
              unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
              apply loop_eq_of_result
              apply LoopResult.div
              simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                hz, hz2, hx, hyz2]
          | ok yz2 =>
              cases hy : ark_ip_proofs.s3_07_arkworks_fq_spike.mul yz2 zinv with
              | ok y =>
                  simpa [hz2, hx, hyz2, hy] using
                    g1_normalize_singleton_nonzero proj zinv z2 x yz2 y hz
                      hz2 hx hyz2 hy
              | fail error =>
                  simp only [hz2, Result.bind_ok, hx, hyz2, hy,
                    Result.bind_fail]
                  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
                  apply loop_eq_of_fuel (fuel := 2)
                  · simp
                  · simp [loopFuel,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                      Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                      ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                      hz, hz2, hx, hyz2, hy]
              | div =>
                  simp only [hz2, Result.bind_ok, hx, hyz2, hy,
                    Result.bind_div]
                  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
                  apply loop_eq_of_result
                  apply LoopResult.div
                  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop.body,
                    Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                    ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                    ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                    hz, hz2, hx, hyz2, hy]

private theorem g1_singleton_nonzero_tail_exec (proj : G1ProjLimbTriple)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (product : FqMont) (inverseOption : Option FqMont) (inverse : FqMont)
    (hz : proj.z.val ≠
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE proj.z = .ok product)
    (hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.inv product =
      .ok inverseOption)
    (hinverseChoice : inverse = inverseOption.getD
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO)
    (hexec : (do
      let inverses ←
        ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
          ⟨[proj]⟩ ⟨[ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE]⟩
          1#usize inverse ⟨[]⟩
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch_loop
        ⟨[proj]⟩ inverses ⟨[]⟩ 0#usize) = .ok out) :
    Nonempty (G1SingletonNonzeroTrace proj out) := by
  rw [g1_backward_singleton_nonzero_exec proj inverse hz] at hexec
  cases hnext : ark_ip_proofs.s3_07_arkworks_fq_spike.mul inverse proj.z with
  | fail error => simp [hnext] at hexec
  | div => simp [hnext] at hexec
  | ok next =>
      simp only [hnext, Result.bind_ok] at hexec
      cases hzinv : ark_ip_proofs.s3_07_arkworks_fq_spike.mul inverse
          ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE with
      | fail error => simp [hzinv] at hexec
      | div => simp [hzinv] at hexec
      | ok zinv =>
          simp only [hzinv, Result.bind_ok] at hexec
          rw [g1_normalize_singleton_nonzero_exec proj zinv hz] at hexec
          cases hz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.square zinv with
          | fail error => simp [hz2] at hexec
          | div => simp [hz2] at hexec
          | ok z2 =>
              simp only [hz2, Result.bind_ok] at hexec
              cases hx : ark_ip_proofs.s3_07_arkworks_fq_spike.mul proj.x z2 with
              | fail error => simp [hx] at hexec
              | div => simp [hx] at hexec
              | ok x =>
                  simp only [hx, Result.bind_ok] at hexec
                  cases hyz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
                      proj.y z2 with
                  | fail error => simp [hyz2] at hexec
                  | div => simp [hyz2] at hexec
                  | ok yz2 =>
                      simp only [hyz2, Result.bind_ok] at hexec
                      cases hy : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
                          yz2 zinv with
                      | fail error => simp [hy] at hexec
                      | div => simp [hy] at hexec
                      | ok y =>
                          simp only [hy, Result.bind_ok, Result.ok.injEq] at hexec
                          subst out
                          exact ⟨{
                            product := product
                            inverseOption := inverseOption
                            inverse := inverse
                            next := next
                            zinv := zinv
                            z2 := z2
                            x := x
                            yz2 := yz2
                            y := y
                            forwardMul := hmul
                            productInv := hinv
                            inverseChoice := hinverseChoice
                            advanceInverse := hnext
                            recoverInverse := hzinv
                            squareInverse := hz2
                            scaleX := hx
                            scaleY2 := hyz2
                            scaleY3 := hy
                            output := rfl
                          }⟩

/-- A successful nonzero G1 singleton batch exposes one inversion and scaling trace. -/
theorem g1_normalize_batch_singleton_nonzero_exec (proj : G1ProjLimbTriple)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (hz : proj.z.val ≠
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch
      ⟨[proj]⟩ = .ok out) :
    Nonempty (G1SingletonNonzeroTrace proj out) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed at hexec
  simp only [Slice.len, alloc.vec.Vec.with_capacity] at hexec
  rw [g1_forward_singleton_nonzero_exec proj hz] at hexec
  cases hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE proj.z with
  | fail error => simp [hmul] at hexec
  | div => simp [hmul] at hexec
  | ok product =>
    simp only [hmul, Result.bind_ok] at hexec
    cases hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.inv product with
    | fail error => rw [hinv] at hexec; simp at hexec
    | div => rw [hinv] at hexec; simp at hexec
    | ok inverseOption =>
      rw [hinv] at hexec
      cases inverseOption with
      | none =>
          simp only [Result.bind_ok, List.length_cons, List.length_nil,
            Nat.zero_add] at hexec
          exact g1_singleton_nonzero_tail_exec proj out product none
            ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO hz hmul hinv rfl hexec
      | some inverse =>
          simp only [Result.bind_ok, List.length_cons, List.length_nil,
            Nat.zero_add] at hexec
          exact g1_singleton_nonzero_tail_exec proj out product (some inverse)
            inverse hz hmul hinv rfl hexec

end Ipp.Extracted.ArkworksScalarMulNormalize
