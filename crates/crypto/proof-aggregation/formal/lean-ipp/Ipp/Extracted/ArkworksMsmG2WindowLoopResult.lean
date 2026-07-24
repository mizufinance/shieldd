import Ipp.Extracted.ArkworksMsmG2WindowExec

/-! Finite execution of the outer G2 window-sum collection loop. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMul

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

local instance : Ipp.Bls12377.g2Curve.IsElliptic :=
  Ipp.Bls12377.g2_isElliptic

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | ok value => exact ⟨value, rfl, hexec⟩
  | fail error => simp at hexec
  | div => simp at hexec

/-- Every generated G2 window is appended in low-to-high order with its model. -/
theorem valid_g2_windows
    (bases : Slice ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (size digitsCount : Usize)
    (allDigits : alloc.vec.Vec WnafDigit)
    (bucketCount : Usize)
    (pairs : Fin digitsCount.val → List (WnafDigit × G2AffinePoint))
    (hpairsLength : ∀ window, (pairs window).length = size.val)
    (hallDigits : size.val * digitsCount.val ≤ allDigits.val.length)
    (hbaseLength : size.val ≤ bases.val.length)
    (hdigits : ∀ window index (hindex : index < size.val),
      allDigits.val[index * digitsCount.val + window.val]'(by
        calc
          index * digitsCount.val + window.val <
              index * digitsCount.val + digitsCount.val :=
            Nat.add_lt_add_left window.isLt _
          _ = (index + 1) * digitsCount.val := by simp [Nat.add_mul]
          _ ≤ size.val * digitsCount.val :=
            Nat.mul_le_mul_right digitsCount.val (by omega)
          _ ≤ allDigits.val.length := hallDigits) =
        ((pairs window).get ⟨index, by
          simpa [hpairsLength window] using hindex⟩).1)
    (hbases : ∀ window index (hindex : index < size.val),
      ValidG2AffineLoopBase bases.val[index]
        ((pairs window).get ⟨index, by
          simpa [hpairsLength window] using hindex⟩).2)
    (hmagnitudes : ∀ window pair, pair ∈ pairs window →
      pair.1.magnitude.val ≤ bucketCount.val)
    (output : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop1
        bases size digitsCount allDigits
        (alloc.vec.Vec.with_capacity
          ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont digitsCount)
        bucketCount 0#usize = .ok output) :
    ∃ hlength : output.val.length = digitsCount.val,
      ∀ window (hwindow : window < output.val.length),
        ValidG2LoopState output.val[window]
          ((pairs ⟨window, by simpa [← hlength]
              using hwindow⟩).map
            (fun pair => pair.1.value • pair.2)).sum := by
  let initial :=
    alloc.vec.Vec.with_capacity
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont digitsCount
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop1 at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  let loopBody := fun state :
      alloc.vec.Vec ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont × Usize =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop1.body
      bases size digitsCount allDigits bucketCount state.1 state.2
  change LoopResult loopBody (initial, 0#usize) (.ok output) at hrun
  have go : ∀ {state final},
      LoopResult loopBody state final →
      ∀ (currentSums : alloc.vec.Vec
          ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
        (currentWindow : Usize),
        state = (currentSums, currentWindow) →
        ∀ (hbound : currentWindow.val ≤ digitsCount.val)
          (hlength : currentSums.val.length = currentWindow.val),
        (∀ window : Fin currentWindow.val,
          ValidG2LoopState
            (currentSums.val.get ⟨window.val, by
              simpa [hlength] using window.isLt⟩)
            ((pairs ⟨window.val, lt_of_lt_of_le window.isLt hbound⟩).map
              (fun pair => pair.1.value • pair.2)).sum) →
        ∀ out, final = .ok out →
          ∃ hlength : out.val.length = digitsCount.val,
            ∀ window (hwindow : window < out.val.length),
              ValidG2LoopState out.val[window]
                ((pairs ⟨window, by simpa [← hlength] using hwindow⟩).map
                  (fun pair => pair.1.value • pair.2)).sum := by
    intro state final run
    induction run with
    | done hbody =>
        rename_i state finalSums
        intro currentSums currentWindow hstate hbound hlength hvalid out hfinal
        subst state
        simp only [loopBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop1.body]
          at hbody
        by_cases hlt : currentWindow < digitsCount
        · rw [if_pos hlt] at hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          simp at hbody
        · have hnotVal : ¬currentWindow.val < digitsCount.val := hlt
          have heq : currentWindow.val = digitsCount.val := by omega
          rw [if_neg hlt] at hbody
          simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
          cases hbody
          cases hfinal
          refine ⟨hlength.trans heq, ?_⟩
          intro window hwindow
          simpa using hvalid ⟨window, by simpa [hlength] using hwindow⟩
    | next hbody hnext ih =>
        rename_i state nextState nextFinal
        intro currentSums currentWindow hstate hbound hlength hvalid out hfinal
        subst state
        have hlt : currentWindow < digitsCount := by
          by_contra hnot
          simp only [loopBody,
            ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop1.body]
            at hbody
          rw [if_neg hnot] at hbody
          simp at hbody
        have hltVal : currentWindow.val < digitsCount.val := hlt
        rcases nextState with ⟨nextSums, nextWindow⟩
        have hwindowResult := valid_g2_window_body bases size digitsCount allDigits
          bucketCount currentSums currentWindow
          (pairs ⟨currentWindow.val, hlt⟩)
          (hpairsLength ⟨currentWindow.val, hlt⟩) hlt hallDigits hbaseLength
          (hdigits ⟨currentWindow.val, hlt⟩)
          (hbases ⟨currentWindow.val, hlt⟩)
          (hmagnitudes ⟨currentWindow.val, hlt⟩)
          nextSums nextWindow (by simpa [loopBody] using hbody)
        obtain ⟨result, hnextSums, hnextWindow, hresult⟩ := hwindowResult
        refine ih nextSums nextWindow rfl ?_ ?_ ?_ out hfinal
        · omega
        · simp [hnextSums, hlength, hnextWindow]
        · intro window
          by_cases hbefore : window.val < currentWindow.val
          · have hrawBefore : window.val < currentSums.val.length := by
              simpa [hlength] using hbefore
            simpa [hnextSums, List.getElem_append_left hrawBefore] using
              hvalid ⟨window.val, hbefore⟩
          · have hwindowEq : window.val = currentWindow.val := by omega
            simpa [hwindowEq, hnextSums, hlength] using hresult
    | fail hbody =>
        intro _ _ _ _ _ _ out hfinal
        simp at hfinal
    | div hbody =>
        intro _ _ _ _ _ _ out hfinal
        simp at hfinal
  have hresult := go hrun initial (0#usize) rfl (by simp)
    (by simp [initial, alloc.vec.Vec.with_capacity])
    (by
      intro window
      exact Fin.elim0 window)
    output rfl
  exact hresult

#print axioms valid_g2_windows

end Ipp.Extracted.ArkworksMsm
