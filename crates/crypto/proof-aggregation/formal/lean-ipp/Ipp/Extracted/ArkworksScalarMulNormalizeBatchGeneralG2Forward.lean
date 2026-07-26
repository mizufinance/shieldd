import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG2Model

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

private abbrev g2ForwardBody (values : List G2BatchProj) :=
  fun (products, product, i) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body
      ⟨values⟩ products product i

private theorem g2_forward_trace_core (values : List G2BatchProj)
    (outProducts : alloc.vec.Vec G2BatchFq) (outProduct : G2BatchFq)
    {state result}
    (hloop : LoopResult (g2ForwardBody values) state result) :
    ∀ (products : alloc.vec.Vec G2BatchFq) (product : G2BatchFq) (i : Nat),
      state = (products, product, ⟨i⟩) →
      result = .ok (outProducts, outProduct) →
      i ≤ values.length →
      G2ForwardTrace (values.take i) products.val product →
      G2ForwardTrace values outProducts.val outProduct := by
  induction hloop with
  | done hbody =>
      intro products product i hstate hresult hbound htrace
      cases hstate
      simp only [Result.ok.injEq] at hresult
      obtain ⟨rfl, rfl⟩ := hresult
      have hdone : ¬i < values.length := by
        intro hlt
        by_cases hz : isZeroFq2Mont (values[i]).z
        · simp [g2ForwardBody,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
              Slice.len, Slice.index_usize, fq2_eq_zero, hlt, hz] at hbody
        · cases hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
              product (values[i]).z <;>
            simp [g2ForwardBody,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
              fq2_eq_zero, hlt, hz, hmul] at hbody
      have hi : i = values.length := by omega
      simp [g2ForwardBody,
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
        Slice.len, hdone] at hbody
      obtain ⟨rfl, rfl⟩ := hbody
      simpa [hi] using htrace
  | @next state next result hstep hnext ih =>
      intro products product i hstate hresult hbound htrace
      cases hstate
      have hlt : i < values.length := by
        by_contra hnot
        simp [g2ForwardBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
          Slice.len, hnot] at hstep
      by_cases hz : isZeroFq2Mont (values[i]).z
      · have hstate : next = (products, product, ⟨i + 1⟩) := by
          simpa [g2ForwardBody,
            ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
            Slice.len, Slice.index_usize, fq2_eq_zero,
            hlt, hz] using hstep.symm
        apply ih products product (i + 1) hstate hresult (by omega)
        rw [List.take_succ_eq_append_getElem hlt]
        exact .zero htrace hz
      · cases hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
            product (values[i]).z with
        | fail error =>
            simp [g2ForwardBody,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
              fq2_eq_zero, hlt, hz, hmul] at hstep
        | div =>
            simp [g2ForwardBody,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
              fq2_eq_zero, hlt, hz, hmul] at hstep
        | ok nextProduct =>
            have hstate : next =
                (⟨products.val ++ [product]⟩, nextProduct, ⟨i + 1⟩) := by
              simpa [g2ForwardBody,
                ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0.body,
                Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                fq2_eq_zero, hlt, hz, hmul] using hstep.symm
            apply ih ⟨products.val ++ [product]⟩ nextProduct (i + 1) hstate
              hresult (by omega)
            rw [List.take_succ_eq_append_getElem hlt]
            exact .nonzero htrace hz hmul
  | fail hbody =>
      intro products product i hstate hresult hbound htrace
      simp at hresult
  | div hbody =>
      intro products product i hstate hresult hbound htrace
      simp at hresult

theorem g2_forward_trace (values : List G2BatchProj)
    (products : alloc.vec.Vec G2BatchFq) (product : G2BatchFq)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0
        ⟨values⟩ ⟨[]⟩ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE
        0#usize = .ok (products, product)) :
    G2ForwardTrace values products.val product := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop0
    at hexec
  have hloop := loopResult_of_eq (by simp) hexec
  exact g2_forward_trace_core values products product hloop ⟨[]⟩
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE 0 rfl rfl
    (by simp) (by simpa using G2ForwardTrace.nil)

end Ipp.Extracted.ArkworksScalarMulNormalize
