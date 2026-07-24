import Ipp.Extracted.ArkworksMsmCollectModel

/-! Finite execution of the G1 row-major digit collection loops. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksScalarMul

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | ok value => exact ⟨value, rfl, hexec⟩
  | fail error => simp at hexec
  | div => simp at hexec

/-- The generated inner G1 collection loop appends one complete digit row. -/
theorem g1_append_digit_row
    (initial digits output : alloc.vec.Vec WnafDigit)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0_loop0
        initial digits 0#usize = .ok output) :
    output.val = initial.val ++ digits.val := by
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0_loop0 at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  let loopBody := fun state : alloc.vec.Vec WnafDigit × Usize =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0_loop0.body
      digits state.1 state.2
  change LoopResult loopBody (initial, 0#usize) (.ok output) at hrun
  have go : ∀ {state final},
      LoopResult loopBody state final →
      ∀ (current : alloc.vec.Vec WnafDigit) (index : Nat),
        state = (current, Usize.ofNat index) →
        index ≤ digits.val.length →
        current.val = initial.val ++ digits.val.take index →
        ∀ out, final = .ok out →
          out.val = initial.val ++ digits.val := by
    intro state final run
    induction run with
    | done hbody =>
        rename_i state finalDigits
        intro current index hstate hbound hcurrent out hfinal
        subst state
        simp only [loopBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0_loop0.body]
          at hbody
        by_cases hlt : index < digits.val.length
        · rw [if_pos (show Usize.ofNat index <
              alloc.vec.Vec.len digits by simpa [alloc.vec.Vec.len])] at hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          simp at hbody
        · have heq : index = digits.val.length := by omega
          rw [if_neg (show ¬Usize.ofNat index <
              alloc.vec.Vec.len digits by
                simp [alloc.vec.Vec.len]
                omega)] at hbody
          simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
          cases hbody
          cases hfinal
          simpa [heq] using hcurrent
    | next hbody hnext ih =>
        rename_i state nextState nextFinal
        intro current index hstate hbound hcurrent out hfinal
        subst state
        have hlt : index < digits.val.length := by
          by_contra hnot
          simp only [loopBody,
            ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0_loop0.body]
            at hbody
          rw [if_neg (show ¬Usize.ofNat index <
              alloc.vec.Vec.len digits by
                simp [alloc.vec.Vec.len]
                omega)] at hbody
          simp at hbody
        simp only [loopBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0_loop0.body]
          at hbody
        rw [if_pos (show Usize.ofNat index <
            alloc.vec.Vec.len digits by simpa [alloc.vec.Vec.len])] at hbody
        obtain ⟨digit, hindex, hbody⟩ := bind_eq_ok hbody
        obtain ⟨nextDigits, hpush, hbody⟩ := bind_eq_ok hbody
        obtain ⟨nextIndex, hadd, hreturn⟩ := bind_eq_ok hbody
        simp only [Result.ok.injEq, ControlFlow.cont.injEq] at hreturn
        cases hreturn
        have hdigit : digit = digits.val[index] := by
          symm
          simpa [alloc.vec.Vec.index,
            List.getElem?_eq_getElem hlt] using hindex
        subst digit
        have hnextDigits :
            nextDigits.val = current.val ++ [digits.val[index]] := by
          simp [alloc.vec.Vec.push] at hpush
          subst nextDigits
          rfl
        have hnextIndex : nextIndex.val = index + 1 := by
          rw [Aeneas.Std.add_eq] at hadd
          cases hadd
          rfl
        apply ih nextDigits (index + 1)
        · apply Prod.ext
          · rfl
          · cases nextIndex
            simp_all [Usize.ofNat]
        · omega
        · rw [hnextDigits, hcurrent,
            List.take_succ_eq_append_getElem hlt, List.append_assoc]
        · exact hfinal
    | fail hbody =>
        intro _ _ _ _ _ out hfinal
        simp at hfinal
    | div hbody =>
        intro _ _ _ _ _ out hfinal
        simp at hfinal
  exact go hrun initial 0 rfl (by simp) (by simp) output rfl

/-- The generated outer G1 collection loop packages every scalar row in order. -/
theorem g1_collect_digits
    (scalars : Slice ScalarArray) (size width : Usize)
    (initial output : alloc.vec.Vec WnafDigit)
    (hsize : size.val ≤ scalars.val.length)
    (hwidth : 0 < width.val) (hwidth64 : width.val < 64)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0
        scalars size width initial 0#usize = .ok output) :
    output.val =
      initial.val ++ collectedDigits width.val (scalars.val.take size.val) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0 at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  let loopBody := fun state : alloc.vec.Vec WnafDigit × Usize =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0.body
      scalars size width state.1 state.2
  change LoopResult loopBody (initial, 0#usize) (.ok output) at hrun
  have hcount : 0 < msmDigitCount width.val := by
    unfold msmDigitCount
    apply Nat.div_pos
    · omega
    · exact hwidth
  have go : ∀ {state final},
      LoopResult loopBody state final →
      ∀ (current : alloc.vec.Vec WnafDigit) (index : Nat),
        state = (current, Usize.ofNat index) →
        index ≤ size.val →
        current.val =
          initial.val ++ collectedDigits width.val (scalars.val.take index) →
        ∀ out, final = .ok out →
          out.val =
            initial.val ++
              collectedDigits width.val (scalars.val.take size.val) := by
    intro state final run
    induction run with
    | done hbody =>
        rename_i state finalDigits
        intro current index hstate hbound hcurrent out hfinal
        subst state
        simp only [loopBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0.body]
          at hbody
        by_cases hlt : index < size.val
        · rw [if_pos (show Usize.ofNat index < size by exact hlt)] at hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          simp at hbody
        · have heq : index = size.val := by omega
          rw [if_neg (show ¬Usize.ofNat index < size by exact hlt)] at hbody
          simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
          cases hbody
          cases hfinal
          simpa [heq] using hcurrent
    | next hbody hnext ih =>
        rename_i state nextState nextFinal
        intro current index hstate hbound hcurrent out hfinal
        subst state
        have hlt : index < size.val := by
          by_contra hnot
          simp only [loopBody,
            ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0.body]
            at hbody
          rw [if_neg (show ¬Usize.ofNat index < size by exact hnot)] at hbody
          simp at hbody
        have hscalarIndex : index < scalars.val.length := lt_of_lt_of_le hlt hsize
        simp only [loopBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop0.body]
          at hbody
        rw [if_pos (show Usize.ofNat index < size by exact hlt)] at hbody
        obtain ⟨scalar, hscalarExec, hbody⟩ := bind_eq_ok hbody
        obtain ⟨digits, hdigitsExec, hbody⟩ := bind_eq_ok hbody
        obtain ⟨nextDigits, happendExec, hbody⟩ := bind_eq_ok hbody
        obtain ⟨nextIndex, hadd, hreturn⟩ := bind_eq_ok hbody
        simp only [Result.ok.injEq, ControlFlow.cont.injEq] at hreturn
        cases hreturn
        have hscalar : scalar = scalars.val[index] := by
          symm
          simpa [Slice.index_usize,
            List.getElem?_eq_getElem hscalarIndex] using hscalarExec
        subst scalar
        have hdigits :
            digits.val = msmScalarDigits width.val scalars.val[index] := by
          have hresult := makeDigits_result scalars.val[index] width.val 253
            digits hwidth hwidth64 (by omega) hcount (by omega) hdigitsExec
          simpa [msmScalarDigits, msmDigitCount] using hresult
        have hnextDigits :
            nextDigits.val =
              current.val ++ msmScalarDigits width.val scalars.val[index] := by
          rw [g1_append_digit_row current digits nextDigits happendExec, hdigits]
        have hnextIndex : nextIndex.val = index + 1 := by
          rw [Aeneas.Std.add_eq] at hadd
          cases hadd
          rfl
        apply ih nextDigits (index + 1)
        · apply Prod.ext
          · rfl
          · cases nextIndex
            simp_all [Usize.ofNat]
        · omega
        · have hcollected :
              collectedDigits width.val (scalars.val.take (index + 1)) =
                collectedDigits width.val (scalars.val.take index) ++
                  msmScalarDigits width.val scalars.val[index] := by
            unfold collectedDigits
            rw [List.take_succ_eq_append_getElem hscalarIndex]
            rw [List.flatMap_append]
            simp
          rw [hnextDigits, hcurrent, hcollected, List.append_assoc]
        · exact hfinal
    | fail hbody =>
        intro _ _ _ _ _ out hfinal
        simp at hfinal
    | div hbody =>
        intro _ _ _ _ _ out hfinal
        simp at hfinal
  exact go hrun initial 0 rfl (by simp) (by simp [collectedDigits]) output rfl

#print axioms g1_append_digit_row
#print axioms g1_collect_digits

end Ipp.Extracted.ArkworksMsm
