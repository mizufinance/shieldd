import Ipp.Extracted.ArkworksMultiMillerModel

/-! The reached finite/nonempty precondition makes the extracted filter identity. -/

namespace Ipp.Extracted.ArkworksMultiMillerFilter

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksMultiMillerModel

private abbrev filterBody (pairs : List ExecPair) :=
  fun (filtered, pairIndex) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop0.body
      ⟨pairs⟩ filtered pairIndex

private theorem filterTraceCore (pairs : List ExecPair)
    (out : alloc.vec.Vec ExecPair) (hvalid : ValidExecPairs pairs)
    {state result} (hrun : LoopResult (filterBody pairs) state result) :
    ∀ (filtered : alloc.vec.Vec ExecPair) (pairIndex : Nat),
      state = (filtered, ⟨pairIndex⟩) → result = .ok out →
      pairIndex ≤ pairs.length → filtered.val = pairs.take pairIndex →
      out.val = pairs := by
  induction hrun with
  | done hbody =>
      intro filtered pairIndex hstate hresult hbound hprefix
      cases hstate
      simp only [Result.ok.injEq] at hresult
      subst out
      have hdone : ¬pairIndex < pairs.length := by
        intro hlt
        have hpair := hvalid pairIndex pairs[pairIndex]
          (List.getElem?_eq_getElem hlt)
        have hinfinity := validPair_not_infinity (pair :=
          (pairs[pairIndex].1.val, pairs[pairIndex].2)) hpair
        have hnonempty := validPair_coeffs_nonempty (pair :=
          (pairs[pairIndex].1.val, pairs[pairIndex].2)) hpair
        have hlenU : (⟨pairs[pairIndex].1.val.length⟩ : Usize) ≠ 0#usize := by
          intro heq
          have hlen : pairs[pairIndex].1.val.length = 0 :=
            congrArg Usize.val heq
          exact hnonempty (List.length_eq_zero_iff.mp hlen)
        simp [filterBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop0.body,
          Aeneas.Std.alloc.vec.Vec.len, ark_ip_proofs.alloc.vec.Vec.index,
          Aeneas.Std.alloc.vec.Vec.push, hlt] at hbody
        rw [hinfinity] at hbody
        simp only [Bool.false_eq_true, if_false] at hbody
        rw [if_neg hlenU] at hbody
        cases hbody
      have hindex : pairIndex = pairs.length := by omega
      simp [filterBody,
        ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop0.body,
        Aeneas.Std.alloc.vec.Vec.len, hdone] at hbody
      subst filtered
      simpa [hindex] using hprefix
  | @next state next result hstep hnext ih =>
      intro filtered pairIndex hstate hresult hbound hprefix
      cases hstate
      have hlt : pairIndex < pairs.length := by
        by_contra hnot
        simp [filterBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop0.body,
          Aeneas.Std.alloc.vec.Vec.len, hnot] at hstep
      have hpair := hvalid pairIndex pairs[pairIndex]
        (List.getElem?_eq_getElem hlt)
      have hinfinity := validPair_not_infinity (pair :=
        (pairs[pairIndex].1.val, pairs[pairIndex].2)) hpair
      have hnonempty := validPair_coeffs_nonempty (pair :=
        (pairs[pairIndex].1.val, pairs[pairIndex].2)) hpair
      have hlenU : (⟨pairs[pairIndex].1.val.length⟩ : Usize) ≠ 0#usize := by
        intro heq
        have hlen : pairs[pairIndex].1.val.length = 0 :=
          congrArg Usize.val heq
        exact hnonempty (List.length_eq_zero_iff.mp hlen)
      have hnextState : next =
          (⟨filtered.val ++ [pairs[pairIndex]]⟩, ⟨pairIndex + 1⟩) := by
        simp [filterBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop0.body,
          Aeneas.Std.alloc.vec.Vec.len, ark_ip_proofs.alloc.vec.Vec.index,
          Aeneas.Std.alloc.vec.Vec.push, hlt] at hstep
        rw [hinfinity] at hstep
        simp only [Bool.false_eq_true, if_false] at hstep
        rw [if_neg hlenU] at hstep
        simpa using hstep.symm
      apply ih ⟨filtered.val ++ [pairs[pairIndex]]⟩ (pairIndex + 1)
        hnextState hresult (by omega)
      rw [List.take_succ_eq_append_getElem hlt, hprefix]
  | fail hbody =>
      intro filtered pairIndex hstate hresult hbound hprefix
      simp at hresult
  | div hbody =>
      intro filtered pairIndex hstate hresult hbound hprefix
      simp at hresult

/-- Successful filtering preserves every reached valid pair and its order. -/
theorem filter_valid_exec_pairs (pairs : List ExecPair)
    (out : alloc.vec.Vec ExecPair) (hvalid : ValidExecPairs pairs)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop0
        ⟨pairs⟩ Aeneas.Std.alloc.vec.Vec.new 0#usize = .ok out) :
    out.val = pairs := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop0
    at hexec
  have hrun := loopResult_of_eq (by simp) hexec
  exact filterTraceCore pairs out hvalid hrun ⟨[]⟩ 0 rfl rfl
    (by simp) (by simp)

end Ipp.Extracted.ArkworksMultiMillerFilter
