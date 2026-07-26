import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG1Model

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result ControlFlow

private abbrev g1ForwardBody (values : List G1BatchProj) :=
  fun (products, product, i) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body
      ⟨values⟩ products product i

private theorem g1_forward_trace_core (values : List G1BatchProj)
    (outProducts : alloc.vec.Vec G1BatchFq) (outProduct : G1BatchFq)
    {state result}
    (hloop : LoopResult (g1ForwardBody values) state result) :
    ∀ (products : alloc.vec.Vec G1BatchFq) (product : G1BatchFq) (i : Nat),
      state = (products, product, ⟨i⟩) →
      result = .ok (outProducts, outProduct) →
      i ≤ values.length →
      G1ForwardTrace (values.take i) products.val product →
      G1ForwardTrace values outProducts.val outProduct := by
  induction hloop with
  | done hbody =>
      intro products product i hstate hresult hbound htrace
      cases hstate
      simp only [Result.ok.injEq, Prod.mk.injEq] at hresult
      obtain ⟨rfl, rfl⟩ := hresult
      have hdone : ¬i < values.length := by
        intro hlt
        by_cases hz : (values[i]).z.val =
            ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val
        · simp [g1ForwardBody,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
              Slice.len, Slice.index_usize,
              ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
              ark_ip_proofs.core.array.equality.PartialEqArray.eq,
              hlt, hz] at hbody
        · cases hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
              product (values[i]).z <;>
            simp [g1ForwardBody,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
              ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
              ark_ip_proofs.core.array.equality.PartialEqArray.eq,
              hlt, hz, hmul] at hbody
      have hi : i = values.length := by omega
      simp [g1ForwardBody,
        ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
        Slice.len, hdone] at hbody
      obtain ⟨rfl, rfl⟩ := hbody
      simpa [hi] using htrace
  | @next state next result hstep hnext ih =>
      intro products product i hstate hresult hbound htrace
      cases hstate
      have hlt : i < values.length := by
        by_contra hnot
        simp [g1ForwardBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
          Slice.len, hnot] at hstep
      by_cases hz : (values[i]).z.val =
          ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val
      · have hstate : next = (products, product, ⟨i + 1⟩) := by
          simpa [g1ForwardBody,
            ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
            Slice.len, Slice.index_usize,
            ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
            ark_ip_proofs.core.array.equality.PartialEqArray.eq,
            hlt, hz] using hstep.symm
        apply ih products product (i + 1) hstate hresult (by omega)
        rw [List.take_succ_eq_append_getElem hlt]
        exact .zero htrace hz
      · cases hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
            product (values[i]).z with
        | fail error =>
            simp [g1ForwardBody,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
              ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
              ark_ip_proofs.core.array.equality.PartialEqArray.eq,
              hlt, hz, hmul] at hstep
        | div =>
            simp [g1ForwardBody,
              ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
              Slice.len, Slice.index_usize, alloc.vec.Vec.push,
              ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
              ark_ip_proofs.core.array.equality.PartialEqArray.eq,
              hlt, hz, hmul] at hstep
        | ok nextProduct =>
            have hstate : next =
                (⟨products.val ++ [product]⟩, nextProduct, ⟨i + 1⟩) := by
              simpa [g1ForwardBody,
                ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0.body,
                Slice.len, Slice.index_usize, alloc.vec.Vec.push,
                ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
                ark_ip_proofs.core.array.equality.PartialEqArray.eq,
                hlt, hz, hmul] using hstep.symm
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

/-- The concrete G1 forward loop produces its exact prefix-product trace. -/
theorem g1_forward_trace (values : List G1BatchProj)
    (products : alloc.vec.Vec G1BatchFq) (product : G1BatchFq)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0
        ⟨values⟩ ⟨[]⟩ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE
        0#usize = .ok (products, product)) :
    G1ForwardTrace values products.val product := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop0
    at hexec
  have hloop := loopResult_of_eq (by simp) hexec
  exact g1_forward_trace_core values products product hloop ⟨[]⟩
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE 0 rfl rfl
    (by simp) (by simpa using G1ForwardTrace.nil)

end Ipp.Extracted.ArkworksScalarMulNormalize
