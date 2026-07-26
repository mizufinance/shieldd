import Ipp.Extracted.ArkworksScalarMulNormalizeBatchSingletonG2Forward
import Ipp.Extracted.ArkworksScalarMulNormalizeBatchSingletonG2Backward
import Ipp.Extracted.ArkworksScalarMulNormalizeBatchSingletonG2NormalizeExec

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksG2

private abbrev Fq2Mont :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont

private theorem g2_singleton_nonzero_tail_exec (proj : G2ProjLimbTriple)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (product : Fq2Mont) (inverseOption : Option Fq2Mont) (inverse : Fq2Mont)
    (hz : ¬Ipp.Extracted.ArkworksG2.isZeroFq2Mont proj.z)
    (hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE proj.z = .ok product)
    (hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv product =
      .ok inverseOption)
    (hinverseChoice : inverse = inverseOption.getD
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO)
    (hexec : (do
      let inverses ←
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1
          ⟨[proj]⟩ ⟨[ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE]⟩
          1#usize inverse ⟨[]⟩
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch_loop
        ⟨[proj]⟩ inverses ⟨[]⟩ 0#usize) = .ok out) :
    Nonempty (G2SingletonNonzeroTrace proj out) := by
  rw [g2_backward_singleton_nonzero_exec proj inverse hz] at hexec
  cases hnext : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul inverse proj.z with
  | fail error => simp [hnext] at hexec
  | div => simp [hnext] at hexec
  | ok next =>
      simp only [hnext, Result.bind_ok] at hexec
      cases hzinv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul inverse
          ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE with
      | fail error => simp [hzinv] at hexec
      | div => simp [hzinv] at hexec
      | ok zinv =>
          simp only [hzinv, Result.bind_ok] at hexec
          rw [g2_normalize_singleton_nonzero_exec proj zinv hz] at hexec
          cases hz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square zinv with
          | fail error => simp [hz2] at hexec
          | div => simp [hz2] at hexec
          | ok z2 =>
              simp only [hz2, Result.bind_ok] at hexec
              cases hx : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul proj.x z2 with
              | fail error => simp [hx] at hexec
              | div => simp [hx] at hexec
              | ok x =>
                  simp only [hx, Result.bind_ok] at hexec
                  cases hyz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
                      proj.y z2 with
                  | fail error => simp [hyz2] at hexec
                  | div => simp [hyz2] at hexec
                  | ok yz2 =>
                      simp only [hyz2, Result.bind_ok] at hexec
                      cases hy : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
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

/-- A successful nonzero G2 singleton batch exposes one inversion and scaling trace. -/
theorem g2_normalize_batch_singleton_nonzero_exec (proj : G2ProjLimbTriple)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (hz : ¬Ipp.Extracted.ArkworksG2.isZeroFq2Mont proj.z)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch
      ⟨[proj]⟩ = .ok out) :
    Nonempty (G2SingletonNonzeroTrace proj out) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_normalize_batch
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed at hexec
  simp only [Slice.len, alloc.vec.Vec.with_capacity] at hexec
  rw [g2_forward_singleton_nonzero_exec proj hz] at hexec
  cases hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE proj.z with
  | fail error => simp [hmul] at hexec
  | div => simp [hmul] at hexec
  | ok product =>
    simp only [hmul, Result.bind_ok] at hexec
    cases hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv product with
    | fail error => rw [hinv] at hexec; simp at hexec
    | div => rw [hinv] at hexec; simp at hexec
    | ok inverseOption =>
      rw [hinv] at hexec
      cases inverseOption with
      | none =>
          simp only [Result.bind_ok, List.length_cons, List.length_nil,
            Nat.zero_add] at hexec
          exact g2_singleton_nonzero_tail_exec proj out product none
            ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO hz hmul hinv rfl hexec
      | some inverse =>
          simp only [Result.bind_ok, List.length_cons, List.length_nil,
            Nat.zero_add] at hexec
          exact g2_singleton_nonzero_tail_exec proj out product (some inverse)
            inverse hz hmul hinv rfl hexec

end Ipp.Extracted.ArkworksScalarMulNormalize
