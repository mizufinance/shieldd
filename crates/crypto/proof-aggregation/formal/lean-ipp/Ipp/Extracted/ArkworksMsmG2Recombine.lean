import Ipp.Extracted.ArkworksMsmG2WindowExec
import Ipp.Extracted.ArkworksMsmRecombine

/-! Executed G2 high-to-low cross-window recombination. -/

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

/-- The generated inner loop doubles a represented G2 point exactly `c` times. -/
theorem valid_g2_window_doubles
    (c : Usize)
    (input output :
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
    (point : G2AffinePoint)
    (hinput : ValidG2LoopState input point)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2_loop0
        c input 0#usize = .ok output) :
    ValidG2LoopState output (2 ^ c.val • point) := by
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2_loop0
    at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  let loopBody := fun state :
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont × Usize =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2_loop0.body
      c state.1 state.2
  change LoopResult loopBody (input, 0#usize) (.ok output) at hrun
  have go : ∀ {state final},
      LoopResult loopBody state final →
      ∀ (original : G2AffinePoint),
        ValidG2LoopState state.1 (2 ^ state.2.val • original) →
        state.2.val ≤ c.val →
        ∀ out, final = .ok out →
          ValidG2LoopState out (2 ^ c.val • original) := by
    intro state final run
    induction run with
    | done hbody =>
        rename_i state finalValue
        rcases state with ⟨current, bit⟩
        intro original hcurrent hbound out hfinal
        change bit.val ≤ c.val at hbound
        simp only [loopBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2_loop0.body]
          at hbody
        by_cases hlt : bit.val < c.val
        · rw [if_pos (show bit < c by exact hlt)] at hbody
          obtain ⟨doubled, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨nextBit, _, hbody⟩ := bind_eq_ok hbody
          simp at hbody
        · have heq : bit.val = c.val := by omega
          rw [if_neg (show ¬bit < c by exact hlt)] at hbody
          simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
          cases hbody
          cases hfinal
          simpa [heq] using hcurrent
    | next hbody hnext ih =>
        rename_i state nextState nextFinal
        rcases state with ⟨current, bit⟩
        intro original hcurrent hbound out hfinal
        change bit.val ≤ c.val at hbound
        have hlt : bit.val < c.val := by
          by_contra hnot
          simp only [loopBody,
            ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2_loop0.body]
            at hbody
          rw [if_neg (show ¬bit < c by exact hnot)] at hbody
          simp at hbody
        simp only [loopBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2_loop0.body]
          at hbody
        rw [if_pos (show bit < c by exact hlt)] at hbody
        obtain ⟨doubled, hdouble, hbody⟩ := bind_eq_ok hbody
        obtain ⟨nextBit, hadd, hreturn⟩ := bind_eq_ok hbody
        simp only [Result.ok.injEq, ControlFlow.cont.injEq] at hreturn
        cases hreturn
        have hnextBit : nextBit.val = bit.val + 1 := by
          rw [Aeneas.Std.add_eq] at hadd
          cases hadd
          rfl
        have hdoubled :=
          valid_g2_double current doubled (2 ^ bit.val • original)
            hcurrent hdouble
        have hdoubled' :
            ValidG2LoopState doubled (2 ^ nextBit.val • original) := by
          rw [hnextBit]
          simpa [pow_succ, mul_nsmul, two_nsmul, nsmul_add, mul_comm] using
            hdoubled
        exact ih original hdoubled'
          (by change nextBit.val ≤ c.val; omega) out hfinal
    | fail hbody =>
        intro _ _ _ out hfinal
        simp at hfinal
    | div hbody =>
        intro _ _ _ out hfinal
        simp at hfinal
  have hstart :
      ValidG2LoopState input (2 ^ (0#usize).val • point) := by
    simpa using hinput
  exact go hrun point hstart (by simp) output rfl

/-- The generated outer G2 loop realizes the high-to-low fold of window sums. -/
theorem valid_g2_recombine_loop
    (c : Usize)
    (windowSums : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
    (windowPoints : List G2AffinePoint)
    (hlength : windowPoints.length = windowSums.val.length)
    (hvalid : ∀ index (hindex : index < windowSums.val.length),
      ValidG2LoopState windowSums.val[index]
        (windowPoints.get ⟨index, by simpa [hlength] using hindex⟩))
    (input output :
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
    (inputPoint : G2AffinePoint)
    (hinput : ValidG2LoopState input inputPoint)
    (window : Usize) (hwindow : window.val ≤ windowSums.val.length)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2
        c windowSums input window = .ok output) :
    ValidG2LoopState output
      (highWindowFold (2 ^ c.val) (windowPoints.take window.val) inputPoint) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2 at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  let loopBody := fun state :
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont × Usize =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2.body
      c windowSums state.1 state.2
  change LoopResult loopBody (input, window) (.ok output) at hrun
  have go : ∀ {state final},
      LoopResult loopBody state final →
      ∀ (currentPoint : G2AffinePoint),
        ValidG2LoopState state.1 currentPoint →
        state.2.val ≤ windowSums.val.length →
        ∀ out, final = .ok out →
          ValidG2LoopState out
            (highWindowFold (2 ^ c.val)
              (windowPoints.take state.2.val) currentPoint) := by
    intro state final run
    induction run with
    | done hbody =>
        rename_i state finalValue
        rcases state with ⟨current, currentWindow⟩
        intro currentPoint hcurrent hbound out hfinal
        change currentWindow.val ≤ windowSums.val.length at hbound
        simp only [loopBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2.body]
          at hbody
        by_cases hmore : currentWindow.val > 1
        · rw [if_pos (show currentWindow > 1#usize by exact hmore)] at hbody
          obtain ⟨nextWindow, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨windowSum, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨added, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨doubled, _, hbody⟩ := bind_eq_ok hbody
          simp at hbody
        · rw [if_neg (show ¬currentWindow > 1#usize by exact hmore)] at hbody
          simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
          cases hbody
          cases hfinal
          have hsmall : currentWindow.val = 0 ∨ currentWindow.val = 1 := by omega
          rcases hsmall with hzero | hone
          · simpa [highWindowFold, hzero] using hcurrent
          · simpa [highWindowFold, hone] using hcurrent
    | next hbody hnext ih =>
        rename_i state nextState nextFinal
        rcases state with ⟨current, currentWindow⟩
        intro currentPoint hcurrent hbound out hfinal
        change currentWindow.val ≤ windowSums.val.length at hbound
        have hmore : currentWindow.val > 1 := by
          by_contra hnot
          simp only [loopBody,
            ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2.body]
            at hbody
          rw [if_neg (show ¬currentWindow > 1#usize by exact hnot)] at hbody
          simp at hbody
        simp only [loopBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2.body]
          at hbody
        rw [if_pos (show currentWindow > 1#usize by exact hmore)] at hbody
        obtain ⟨nextWindow, hsub, hbody⟩ := bind_eq_ok hbody
        obtain ⟨windowSum, hindexExec, hbody⟩ := bind_eq_ok hbody
        obtain ⟨added, hadd, hbody⟩ := bind_eq_ok hbody
        obtain ⟨doubled, hdoubles, hreturn⟩ := bind_eq_ok hbody
        simp only [Result.ok.injEq, ControlFlow.cont.injEq] at hreturn
        cases hreturn
        have hnextWindow : nextWindow.val = currentWindow.val - 1 := by
          rw [MacCampaign.sub_eq currentWindow 1#usize (by simp; omega)] at hsub
          cases hsub
          rfl
        have hnextPositive : 0 < nextWindow.val := by omega
        have hnextIndex : nextWindow.val < windowSums.val.length := by omega
        have hwindowSum : windowSum = windowSums.val[nextWindow.val] := by
          have hreverse : windowSums.val[nextWindow.val] = windowSum := by
            simpa [alloc.vec.Vec.index, hnextIndex] using hindexExec
          exact hreverse.symm
        subst windowSum
        let nextPoint : G2AffinePoint :=
          windowPoints.get ⟨nextWindow.val,
            by simpa [hlength] using hnextIndex⟩
        have hnextValid :
            ValidG2LoopState windowSums.val[nextWindow.val] nextPoint :=
          hvalid nextWindow.val hnextIndex
        have hadded :
            ValidG2LoopState added (currentPoint + nextPoint) :=
          valid_g2_add current windowSums.val[nextWindow.val] added
            currentPoint nextPoint hcurrent hnextValid hadd
        have hdoubled :
            ValidG2LoopState doubled
              (2 ^ c.val • (currentPoint + nextPoint)) :=
          valid_g2_window_doubles c added doubled
            (currentPoint + nextPoint) hadded hdoubles
        have hsemantic :=
          ih (2 ^ c.val • (currentPoint + nextPoint)) hdoubled
            (by change nextWindow.val ≤ windowSums.val.length; omega) out hfinal
        have hindexPoint : nextPoint = windowPoints[nextWindow.val] := rfl
        rw [hindexPoint] at hsemantic
        have hsucc : currentWindow.val = nextWindow.val + 1 := by omega
        change ValidG2LoopState out
          (highWindowFold (2 ^ c.val)
            (windowPoints.take currentWindow.val) currentPoint)
        rw [hsucc, highWindowFold_take_succ (2 ^ c.val) windowPoints
          currentPoint nextWindow.val hnextPositive
          (by simpa [hlength] using hnextIndex)]
        exact hsemantic
    | fail hbody =>
        intro _ _ _ out hfinal
        simp at hfinal
    | div hbody =>
        intro _ _ _ out hfinal
        simp at hfinal
  exact go hrun inputPoint hinput hwindow output rfl

/-- The full executed G2 recombination adds window zero to the high-window fold. -/
theorem valid_g2_cross_window
    (c : Usize)
    (windowSums : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
    (windowPoints : List G2AffinePoint)
    (hlength : windowPoints.length = windowSums.val.length)
    (hnonempty : windowPoints ≠ [])
    (hvalid : ∀ index (hindex : index < windowSums.val.length),
      ValidG2LoopState windowSums.val[index]
        (windowPoints.get ⟨index, by simpa [hlength] using hindex⟩))
    (zero folded output :
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
    (hzero : ValidG2LoopState zero 0)
    (hfold :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2
        c windowSums zero (Usize.ofNat windowPoints.length) = .ok folded)
    (hadd :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add
        (windowSums.val.get ⟨0,
          by
            apply Nat.pos_of_ne_zero
            intro hzeroLength
            apply hnonempty
            apply List.eq_nil_of_length_eq_zero
            omega⟩)
        folded = .ok output) :
    ValidG2LoopState output (windowValue (2 ^ c.val) windowPoints) := by
  have hrawPositive : 0 < windowSums.val.length := by
    apply Nat.pos_of_ne_zero
    intro hzeroLength
    apply hnonempty
    apply List.eq_nil_of_length_eq_zero
    omega
  have hfolded := valid_g2_recombine_loop c windowSums windowPoints hlength
    hvalid zero folded 0 hzero (Usize.ofNat windowPoints.length)
    (by simp [hlength]) hfold
  have hzeroValid := hvalid 0 hrawPositive
  cases windowPoints with
  | nil => exact (hnonempty rfl).elim
  | cons point rest =>
      have hzeroValid' :
          ValidG2LoopState (windowSums.val.get ⟨0, hrawPositive⟩) point := by
        simpa using hzeroValid
      have hfolded' :
          ValidG2LoopState folded
            (highWindowFold (2 ^ c.val) (point :: rest) 0) := by
        simpa using hfolded
      have hout := valid_g2_add (windowSums.val.get ⟨0, hrawPositive⟩)
        folded output
        point (highWindowFold (2 ^ c.val) (point :: rest) 0)
        hzeroValid' hfolded' hadd
      rw [highWindowFold_zero] at hout
      exact hout

#print axioms valid_g2_window_doubles
#print axioms valid_g2_recombine_loop
#print axioms valid_g2_cross_window

end Ipp.Extracted.ArkworksMsm
