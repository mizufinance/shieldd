import Ipp.Extracted.ArkworksMsmDigitLoop

/-! Finite-execution refinement of signed-window digit generation. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksScalarMul

private theorem u64_eq_of_val_eq {left right : MacCampaign.U64}
    (hval : left.val = right.val) : left = right := by
  cases left
  cases right
  simp_all

private theorem makeDigitsModel_drop_step (radix carry : Nat)
    (windows : List Nat) (index : Nat) (hindex : index < windows.length) :
    makeDigitsModel radix (windows.drop index) carry =
      (if index + 1 = windows.length then
          finalDigit carry windows[index]
        else
          nonfinalDigit radix carry windows[index]) ::
        makeDigitsModel radix (windows.drop (index + 1))
          (nextCarry radix carry windows[index]) := by
  have hdrop := List.drop_eq_getElem_cons hindex
  by_cases hfinal : index + 1 = windows.length
  · have hnextDrop : windows.drop (index + 1) = [] := by
      rw [hfinal, List.drop_length]
    rw [hdrop, hnextDrop, if_pos hfinal]
    rfl
  · have hnextIndex : index + 1 < windows.length := by omega
    have hnextDrop := List.drop_eq_getElem_cons hnextIndex
    rw [hdrop, hnextDrop, if_neg hfinal]
    rfl

/-- The finite extracted digit loop appends exactly the remaining modeled digits. -/
theorem makeDigitsLoop_result (scalar : ScalarArray)
    (width count carry index : Nat) (digits output : alloc.vec.Vec WnafDigit)
    (hwidth : 0 < width) (hwidth64 : width < 64)
    (hcount : 0 < count) (hindex : index ≤ count)
    (hstarts : ∀ currentIndex, currentIndex < count →
      currentIndex * width < 256)
    (hcarry : carry ≤ 1)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.make_wnaf_digits_loop
        scalar (Usize.ofNat width) (MacCampaign.U64.ofNat (2 ^ width))
        (MacCampaign.U64.ofNat (2 ^ width - 1)) (Usize.ofNat count)
        (MacCampaign.U64.ofNat carry) digits (Usize.ofNat index) =
          .ok output) :
    output.val =
      digits.val ++
        makeDigitsModel (2 ^ width)
          ((scalarWindows (2 ^ width) (scalarToNat scalar) count).drop index)
          carry := by
  let windows :=
    scalarWindows (2 ^ width) (scalarToNat scalar) count
  let loopBody := fun state :
      MacCampaign.U64 × alloc.vec.Vec WnafDigit × Usize =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.make_wnaf_digits_loop.body
      scalar (Usize.ofNat width) (MacCampaign.U64.ofNat (2 ^ width))
      (MacCampaign.U64.ofNat (2 ^ width - 1)) (Usize.ofNat count)
      state.1 state.2.1 state.2.2
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.make_wnaf_digits_loop at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  change LoopResult loopBody
    (MacCampaign.U64.ofNat carry, digits, Usize.ofNat index)
    (.ok output) at hrun
  have go : ∀ {state final},
      LoopResult loopBody state final →
      ∀ (currentCarry : Nat) (currentDigits : alloc.vec.Vec WnafDigit)
        (currentIndex : Nat),
        state =
          (MacCampaign.U64.ofNat currentCarry, currentDigits,
            Usize.ofNat currentIndex) →
        currentIndex ≤ count →
        currentCarry ≤ 1 →
        ∀ out, final = .ok out →
          out.val =
            currentDigits.val ++
              makeDigitsModel (2 ^ width) (windows.drop currentIndex)
                currentCarry := by
    intro state final run
    induction run with
    | done hbody =>
        rename_i state finalDigits
        intro currentCarry currentDigits currentIndex hstate hcurrentIndex
          hcurrentCarry out hfinal
        subst state
        have hdoneIndex : count ≤ currentIndex := by
          by_contra hnot
          have hstepBit : currentIndex * width < 256 :=
            hstarts currentIndex (by omega)
          have hstep := makeDigitsBody_step scalar width count currentCarry
            currentIndex currentDigits hwidth hwidth64 hcount (by omega)
            hstepBit hcurrentCarry
          simp only [loopBody] at hbody
          rw [hstep] at hbody
          simp at hbody
        have hindexEq : currentIndex = count := by omega
        simp only [loopBody] at hbody
        rw [makeDigitsBody_done scalar width count
          (MacCampaign.U64.ofNat currentCarry) currentDigits currentIndex
          hwidth64 hcount hdoneIndex] at hbody
        simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
        cases hbody
        cases hfinal
        have hwindowsLength : windows.length = count := by
          simp [windows]
        have hdrop : windows.drop currentIndex = [] := by
          rw [hindexEq, ← hwindowsLength, List.drop_length]
        simp [hdrop, makeDigitsModel]
    | next hbody hnext ih =>
        rename_i state nextState nextFinal
        intro currentCarry currentDigits currentIndex hstate hcurrentIndex
          hcurrentCarry out hfinal
        subst state
        have hstepIndex : currentIndex < count := by
          by_contra hnot
          simp only [loopBody] at hbody
          rw [makeDigitsBody_done scalar width count
            (MacCampaign.U64.ofNat currentCarry) currentDigits currentIndex
            hwidth64 hcount (by omega)] at hbody
          simp at hbody
        have hstepBit : currentIndex * width < 256 :=
          hstarts currentIndex hstepIndex
        have hbodyStep := makeDigitsBody_step scalar width count currentCarry
          currentIndex currentDigits hwidth hwidth64 hcount hstepIndex
          hstepBit hcurrentCarry
        have hcoefficient :=
          scalarWindowBuffer_windows_of_start scalar width count currentIndex
            hwidth (by omega) hstepIndex hstepBit
        have hwindowsLength : windows.length = count := by
          simp [windows]
        have hwindowIndex : currentIndex < windows.length := by
          simpa [hwindowsLength] using hstepIndex
        change
          scalarWindowBuffer scalar (currentIndex * width) % 2 ^ width =
            windows[currentIndex] at hcoefficient
        rw [hcoefficient] at hbodyStep
        simp only [loopBody] at hbody
        rw [hbodyStep] at hbody
        simp only [Result.ok.injEq, ControlFlow.cont.injEq] at hbody
        subst nextState
        have hcoefficientLt : windows[currentIndex] < 2 ^ width := by
          apply scalarWindows_lt (2 ^ width) (scalarToNat scalar) count
            (by positivity)
          exact List.getElem_mem hwindowIndex
        have hnextCarry :
            nextCarry (2 ^ width) currentCarry windows[currentIndex] ≤ 1 :=
          nextCarry_le_one (2 ^ width) currentCarry windows[currentIndex]
            (by
              cases width with
              | zero => omega
              | succ exponent =>
                  simp only [pow_succ]
                  have := Nat.pow_pos (a := 2) (n := exponent) (by decide)
                  omega)
            hcurrentCarry hcoefficientLt
        have hsemantic := ih
          (nextCarry (2 ^ width) currentCarry windows[currentIndex])
          ⟨currentDigits.val ++
            [if currentIndex + 1 = count then
                finalDigit currentCarry windows[currentIndex]
              else
                nonfinalDigit (2 ^ width) currentCarry
                  windows[currentIndex]]⟩
          (currentIndex + 1) rfl (by omega) hnextCarry out hfinal
        rw [makeDigitsModel_drop_step (2 ^ width) currentCarry windows
          currentIndex hwindowIndex]
        simpa [hwindowsLength, List.append_assoc] using hsemantic
    | fail hbody =>
        intro _ _ _ _ _ _ out hfinal
        simp at hfinal
    | div hbody =>
        intro _ _ _ _ _ _ out hfinal
        simp at hfinal
  simpa [windows] using
    go hrun carry digits index rfl hindex hcarry output rfl

/-- The extracted digit wrapper returns the complete pure signed-digit model. -/
theorem makeDigits_result (scalar : ScalarArray) (width numBits : Nat)
    (output : alloc.vec.Vec WnafDigit)
    (hwidth : 0 < width) (hwidth64 : width < 64)
    (hnumBits : 0 < numBits)
    (hcount : 0 < (numBits + width - 1) / width)
    (hnumBitsLe : numBits ≤ 256)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.make_wnaf_digits
        scalar (Usize.ofNat width) (Usize.ofNat numBits) = .ok output) :
    output.val =
      makeDigitsModel (2 ^ width)
        (scalarWindows (2 ^ width) (scalarToNat scalar)
          ((numBits + width - 1) / width)) 0 := by
  let count := (numBits + width - 1) / width
  have hradix : 2 ^ width < MacCampaign.u64Base := by
    simpa [MacCampaign.u64Base] using
      (Nat.pow_lt_pow_right (by decide : 1 < 2) hwidth64)
  have hradixVal :
      (MacCampaign.U64.ofNat (2 ^ width)).val = 2 ^ width := by
    simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hradix]
  have honeVal : (MacCampaign.U64.ofNat 1).val = 1 := by decide
  have hmaskBound : 1 ≤ 2 ^ width := by
    have := Nat.pow_pos (a := 2) (n := width) (by decide)
    omega
  have hmaskWord : 2 ^ width - 1 < MacCampaign.u64Base :=
    lt_of_le_of_lt (Nat.sub_le _ _) hradix
  have hmaskEq :
      ({ val := 2 ^ width - 1,
          isLt := hmaskWord } : MacCampaign.U64) =
        MacCampaign.U64.ofNat (2 ^ width - 1) := by
    cases width with
    | zero => omega
    | succ exponent =>
        apply u64_eq_of_val_eq
        simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hmaskWord]
  have hsum : 1 ≤ numBits + width := by omega
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.make_wnaf_digits at hexec
  simp only [HShiftLeft.hShiftLeft, HSub.hSub, HAdd.hAdd, HDiv.hDiv] at hexec
  simp only [MacCampaign.shl64ByUsize, Usize.ofNat_val, hwidth64,
    ↓reduceIte, Result.bind_ok] at hexec
  rw [honeVal] at hexec
  simp only [one_mul] at hexec
  simp only [MacCampaign.sub64, hradixVal, honeVal, hmaskBound,
    ↓reduceDIte, Result.bind_ok] at hexec
  rw [hmaskEq] at hexec
  have hsum' : 1 ≤ Add.add numBits width := by
    exact hsum
  rw [if_pos hsum'] at hexec
  simp only [Result.bind_ok] at hexec
  rw [if_neg (by omega)] at hexec
  simp only [Result.bind_ok] at hexec
  let countExec :=
    Div.div (Sub.sub (Add.add numBits width) 1) width
  have hcountExec : countExec = count := by rfl
  change
    ark_ip_proofs.s3_07_arkworks_fq_spike.make_wnaf_digits_loop
      scalar (Usize.ofNat width) (MacCampaign.U64.ofNat (2 ^ width))
      (MacCampaign.U64.ofNat (2 ^ width - 1))
      (Usize.ofNat countExec) (MacCampaign.U64.ofNat 0)
      (alloc.vec.Vec.with_capacity WnafDigit (Usize.ofNat countExec))
      (Usize.ofNat 0) = .ok output at hexec
  rw [hcountExec] at hexec
  have hmodel := makeDigitsLoop_result scalar width count 0 0
    (alloc.vec.Vec.with_capacity WnafDigit (Usize.ofNat count)) output
    hwidth hwidth64 (by simpa [count] using hcount) (by omega)
    (by
      intro currentIndex hcurrentIndex
      have hbefore : currentIndex * width < numBits := by
        by_contra hnot
        have hceilLe :
            numBits ⌈/⌉ width ≤ currentIndex :=
          (ceilDiv_le_iff_le_mul (a := width) (b := numBits)
            (c := currentIndex) hwidth).2 (by
              simpa [Nat.mul_comm] using Nat.le_of_not_gt hnot)
        have hcountCeil : count = numBits ⌈/⌉ width := by
          simp [count, Nat.ceilDiv_eq_add_pred_div]
        omega
      exact lt_of_lt_of_le hbefore hnumBitsLe)
    (by omega) hexec
  simpa [count, alloc.vec.Vec.with_capacity] using hmodel

#print axioms makeDigitsLoop_result
#print axioms makeDigits_result

end Ipp.Extracted.ArkworksMsm
