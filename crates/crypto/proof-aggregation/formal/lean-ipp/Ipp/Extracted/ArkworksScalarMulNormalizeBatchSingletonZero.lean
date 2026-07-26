import Ipp.Extracted.ArkworksScalarMulNormalizeBatchSingleton

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksScalarMul

/-- Singleton G1 batch normalization preserves an identity projective point. -/
theorem valid_g1_normalize_batch_singleton_zero (proj : G1ProjLimbTriple)
    (point : G1AffinePoint)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (hproj : ValidG1LoopState proj point)
    (hz : proj.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch
      ⟨[proj]⟩ = .ok out) :
    ∃ affine, out.val = [affine] ∧ ValidG1AffineLoopBase affine point := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_normalize_batch
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed at hexec
  simp only [Slice.len, alloc.vec.Vec.with_capacity] at hexec
  rw [g1_forward_singleton_zero proj hz] at hexec
  simp only [Result.bind_ok] at hexec
  cases hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.inv
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE with
  | fail error => rw [hinv] at hexec; simp at hexec
  | div => rw [hinv] at hexec; simp at hexec
  | ok inverse =>
      rw [hinv] at hexec
      cases inverse with
      | none =>
          simp only [Result.bind_ok, List.length_cons, List.length_nil,
            Nat.zero_add] at hexec
          have hback := g1_backward_singleton_zero proj
            ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO hz
          simp only [Usize.ofNat] at hback
          rw [hback] at hexec
          simp only [Result.bind_ok] at hexec
          rw [g1_normalize_singleton_zero proj
            ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO hz] at hexec
          simp only [Result.ok.injEq] at hexec
          subst out
          let affine : ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont := {
            x := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO
            y := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE
            infinity := true
          }
          refine ⟨affine, rfl, valid_g1_into_affine proj point affine hproj ?_⟩
          unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_into_affine
          simp [affine,
            ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
            ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz]
      | some inverse =>
          simp only [Result.bind_ok, List.length_cons, List.length_nil,
            Nat.zero_add] at hexec
          have hback := g1_backward_singleton_zero proj inverse hz
          simp only [Usize.ofNat] at hback
          rw [hback] at hexec
          simp only [Result.bind_ok] at hexec
          rw [g1_normalize_singleton_zero proj
            ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO hz] at hexec
          simp only [Result.ok.injEq] at hexec
          subst out
          let affine : ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont := {
            x := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO
            y := ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE
            infinity := true
          }
          refine ⟨affine, rfl, valid_g1_into_affine proj point affine hproj ?_⟩
          unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_into_affine
          simp [affine,
            ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
            ark_ip_proofs.core.array.equality.PartialEqArray.eq, hz]

#print axioms valid_g1_normalize_batch_singleton_zero

end Ipp.Extracted.ArkworksScalarMulNormalize
