import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG2BackwardStep

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

private abbrev g2BackwardBody (values : List G2BatchProj) :=
  fun (products, i, inverse, result) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body
      ⟨values⟩ products i inverse result

private theorem g2_take_snoc (values : List G2BatchProj) (i : Nat)
    (hpositive : 0 < i) (hbound : i ≤ values.length) :
    values.take i = values.take (i - 1) ++ [values[i - 1]] := by
  have hidx : i - 1 < values.length := by omega
  have htake := List.take_succ_eq_append_getElem hidx
  have hi : i - 1 + 1 = i := by omega
  simpa [hi] using htake

private theorem g2_backward_core (values : List G2BatchProj)
    (out : alloc.vec.Vec G2BatchFq)
    (hcanonical : ∀ value ∈ values, Canonical2 value.z)
    {state result}
    (hloop : LoopResult (g2BackwardBody values) state result) :
    ∀ (products : alloc.vec.Vec G2BatchFq) (product : G2BatchFq) (i : Nat)
      (inverse : G2BatchFq) (acc : alloc.vec.Vec G2BatchFq),
      state = (products, ⟨i⟩, inverse, acc) →
      result = .ok out →
      i ≤ values.length →
      G2ForwardTrace (values.take i) products.val product →
      Canonical2 inverse →
      decodeFq2 inverse * decodeFq2 product = 1 →
      ∃ recovered,
        out.val = acc.val ++ recovered ∧
        G2RecoveredBatch (values.take i) recovered := by
  induction hloop with
  | done hbody =>
      intro products product i inverse acc hstate hresult hbound htrace
        hinverseCanonical hinverse
      cases hstate
      simp only [Result.ok.injEq] at hresult
      subst out
      have hi : i = 0 := by
        by_contra hne
        have hpositive : 0 < i := by omega
        have hidx : i - 1 < values.length := by omega
        have hsub : ((⟨i⟩ : Usize) - 1#usize : Result Usize) =
            .ok ⟨i - 1⟩ := MacCampaign.sub_eq _ _ (by simpa using hpositive)
        have htake := g2_take_snoc values i hpositive hbound
        rw [htake] at htrace
        rcases htrace.unsnoc with hzero | hnonzero
        · rcases hzero with ⟨hprevious, hz⟩
          simp [g2BackwardBody,
            ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
            Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
            hpositive, hsub, hidx, hz] at hbody
        · rcases hnonzero with
            ⟨previousProducts, previousProduct, hproducts, hprevious,
              hz, hforward⟩
          cases products with
          | mk items =>
              change items = previousProducts ++ [previousProduct] at hproducts
              subst items
              cases hnext : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul inverse
                  (values[i - 1]).z with
              | fail error =>
                  simp [g2BackwardBody,
                    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
                    Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                    hpositive, hsub, hidx, hz, hnext] at hbody
              | div =>
                  simp [g2BackwardBody,
                    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
                    Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                    hpositive, hsub, hidx, hz, hnext] at hbody
              | ok nextInverse =>
                  cases hzinv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
                      inverse previousProduct <;>
                    simp [g2BackwardBody,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
                      Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                      hpositive, hsub, hidx, hz, hnext, hzinv] at hbody
      subst i
      simp [g2BackwardBody,
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body]
        at hbody
      subst acc
      exact ⟨[], by simp, G2RecoveredBatch.nil⟩
  | @next state next result hstep hnext ih =>
      intro products product i inverse acc hstate hresult hbound htrace
        hinverseCanonical hinverse
      cases hstate
      have hpositive : 0 < i := by
        by_contra hnot
        have hi : i = 0 := by omega
        subst i
        simp [g2BackwardBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body]
          at hstep
      have hidx : i - 1 < values.length := by omega
      have hsub : ((⟨i⟩ : Usize) - 1#usize : Result Usize) =
          .ok ⟨i - 1⟩ := MacCampaign.sub_eq _ _ (by simpa using hpositive)
      have htake := g2_take_snoc values i hpositive hbound
      rw [htake] at htrace
      rcases htrace.unsnoc with hzero | hnonzero
      · rcases hzero with ⟨hprevious, hz⟩
        have hstate : next =
            (products, ⟨i - 1⟩, inverse,
              ⟨acc.val ++ [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO]⟩) := by
          simpa [g2BackwardBody,
            ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
            Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
            hpositive, hsub, hidx, hz] using hstep.symm
        obtain ⟨recovered, hout, hbatch⟩ := ih products product (i - 1)
          inverse
          ⟨acc.val ++ [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO]⟩
          hstate hresult (by omega) hprevious hinverseCanonical hinverse
        refine ⟨ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO :: recovered,
          ?_, ?_⟩
        · simpa [List.append_assoc] using hout
        · rw [htake]
          exact hbatch.snoc (.zero hz)
      · rcases hnonzero with
          ⟨previousProducts, previousProduct, hproducts, hprevious,
            hz, hforward⟩
        cases products with
        | mk items =>
            change items = previousProducts ++ [previousProduct] at hproducts
            subst items
            cases hnextMul : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul inverse
                (values[i - 1]).z with
            | fail error =>
                simp [g2BackwardBody,
                  ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
                  Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                  hpositive, hsub, hidx, hz, hnextMul] at hstep
            | div =>
                simp [g2BackwardBody,
                  ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
                  Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                  hpositive, hsub, hidx, hz, hnextMul] at hstep
            | ok nextInverse =>
                cases hzinv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul inverse
                    previousProduct with
                | fail error =>
                    simp [g2BackwardBody,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
                      Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                      hpositive, hsub, hidx, hz, hnextMul, hzinv] at hstep
                | div =>
                    simp [g2BackwardBody,
                      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
                      Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                      hpositive, hsub, hidx, hz, hnextMul, hzinv] at hstep
                | ok zinv =>
                    have hstate : next =
                        (⟨previousProducts⟩, ⟨i - 1⟩, nextInverse,
                          ⟨acc.val ++ [zinv]⟩) := by
                      simpa [g2BackwardBody,
                        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1.body,
                        Slice.index_usize, alloc.vec.Vec.push, fq2_eq_zero,
                        hpositive, hsub, hidx, hz, hnextMul, hzinv] using hstep.symm
                    have hcanonicalPrevious : ∀ item ∈ values.take (i - 1),
                        Canonical2 item.z := by
                      intro item hmem
                      exact hcanonical item (List.mem_of_mem_take hmem)
                    have hzCanonical := hcanonical (values[i - 1])
                      (List.getElem_mem hidx)
                    obtain ⟨hnextCanonical, hnextInverse, hrecovered⟩ :=
                      g2_backward_nonzero_semantic
                        (values.take (i - 1)) previousProducts previousProduct
                        (values[i - 1]) product inverse nextInverse zinv hprevious
                        hcanonicalPrevious hzCanonical hz hforward
                        hinverseCanonical hinverse hnextMul hzinv
                    obtain ⟨recovered, hout, hbatch⟩ :=
                      ih ⟨previousProducts⟩ previousProduct (i - 1)
                        nextInverse ⟨acc.val ++ [zinv]⟩ hstate hresult
                        (by omega) hprevious hnextCanonical hnextInverse
                    refine ⟨zinv :: recovered, ?_, ?_⟩
                    · simpa [List.append_assoc] using hout
                    · rw [htake]
                      exact hbatch.snoc hrecovered
  | fail hbody =>
      intro products product i inverse acc hstate hresult hbound htrace
        hinverseCanonical hinverse
      simp at hresult
  | div hbody =>
      intro products product i inverse acc hstate hresult hbound htrace
        hinverseCanonical hinverse
      simp at hresult

theorem g2_backward_recovered (values : List G2BatchProj)
    (products : alloc.vec.Vec G2BatchFq) (product inverse : G2BatchFq)
    (out : alloc.vec.Vec G2BatchFq)
    (trace : G2ForwardTrace values products.val product)
    (hcanonical : ∀ value ∈ values, Canonical2 value.z)
    (hinverseCanonical : Canonical2 inverse)
    (hinverse : decodeFq2 inverse * decodeFq2 product = 1)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1
        ⟨values⟩ products ⟨values.length⟩ inverse ⟨[]⟩ = .ok out) :
    G2RecoveredBatch values out.val := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1
    at hexec
  have hloop := loopResult_of_eq (by simp) hexec
  obtain ⟨recovered, hout, hbatch⟩ :=
    g2_backward_core values out hcanonical hloop products product values.length
      inverse ⟨[]⟩ rfl rfl (by simp) (by simpa using trace)
      hinverseCanonical hinverse
  simp only [List.take_length] at hbatch
  simp only [List.nil_append] at hout
  subst recovered
  exact hbatch

end Ipp.Extracted.ArkworksScalarMulNormalize
