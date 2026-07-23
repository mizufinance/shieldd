import Ipp.Extracted.ArkworksMultiMillerFilter

/-! Exact cursor-vector initialization for one extracted chunk. -/

namespace Ipp.Extracted.ArkworksMultiMillerCursors

open Aeneas Aeneas.Std Result ControlFlow

private abbrev cursorBody (chunkEnd : Nat) :=
  fun (cursors, cursorIndex) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop0.body
      ⟨chunkEnd⟩ cursors cursorIndex

private theorem replicate_append_one {α : Type} (value : α) (count : Nat) :
    List.replicate count value ++ [value] =
      List.replicate (count + 1) value := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [List.replicate_succ, List.replicate_succ, List.cons_append, ih]

private theorem cursorTraceCore (chunkStart chunkEnd : Nat)
    (out : alloc.vec.Vec Usize) {state result}
    (hrun : LoopResult (cursorBody chunkEnd) state result) :
    ∀ (cursors : alloc.vec.Vec Usize) (cursorIndex : Nat),
      state = (cursors, ⟨cursorIndex⟩) → result = .ok out →
      chunkStart ≤ cursorIndex → cursorIndex ≤ chunkEnd →
      cursors.val = List.replicate (cursorIndex - chunkStart) 0#usize →
      out.val = List.replicate (chunkEnd - chunkStart) 0#usize := by
  induction hrun with
  | done hbody =>
      intro cursors cursorIndex hstate hresult hlower hupper hcursors
      cases hstate
      simp only [Result.ok.injEq] at hresult
      subst out
      have hdone : ¬cursorIndex < chunkEnd := by
        intro hlt
        simp [cursorBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop0.body,
          Aeneas.Std.alloc.vec.Vec.push, hlt] at hbody
      have hindex : cursorIndex = chunkEnd := by omega
      simp [cursorBody,
        ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop0.body,
        hdone] at hbody
      subst cursors
      simpa [hindex] using hcursors
  | @next state next result hstep hnext ih =>
      intro cursors cursorIndex hstate hresult hlower hupper hcursors
      cases hstate
      have hlt : cursorIndex < chunkEnd := by
        by_contra hnot
        simp [cursorBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop0.body,
          hnot] at hstep
      have hnextState : next =
          (⟨cursors.val ++ [0#usize]⟩, ⟨cursorIndex + 1⟩) := by
        simpa [cursorBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop0.body,
          Aeneas.Std.alloc.vec.Vec.push, hlt] using hstep.symm
      apply ih ⟨cursors.val ++ [0#usize]⟩ (cursorIndex + 1)
        hnextState hresult (by omega) (by omega)
      rw [hcursors]
      have hdiff : cursorIndex + 1 - chunkStart =
          (cursorIndex - chunkStart) + 1 := by omega
      rw [hdiff]
      exact replicate_append_one 0#usize (cursorIndex - chunkStart)
  | fail hbody =>
      intro cursors cursorIndex hstate hresult hlower hupper hcursors
      simp at hresult
  | div hbody =>
      intro cursors cursorIndex hstate hresult hlower hupper hcursors
      simp at hresult

/-- The cursor builder creates one zero cursor per chunk position. -/
theorem init_cursors_spec (chunkStart chunkEnd : Nat)
    (out : alloc.vec.Vec Usize) (hbound : chunkStart ≤ chunkEnd)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop0
        ⟨chunkEnd⟩ Aeneas.Std.alloc.vec.Vec.new ⟨chunkStart⟩ = .ok out) :
    out.val = List.replicate (chunkEnd - chunkStart) 0#usize := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop0
    at hexec
  have hrun := loopResult_of_eq (by simp) hexec
  exact cursorTraceCore chunkStart chunkEnd out hrun ⟨[]⟩ chunkStart
    rfl rfl (by omega) hbound (by simp)

end Ipp.Extracted.ArkworksMultiMillerCursors
