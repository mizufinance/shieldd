import Ipp.Extracted.ArkworksScalarMulGlvDivAdapter

/-! Loop-level adapter from extracted restoring division to its Nat specification. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDivLoopAdapter

open Aeneas Aeneas.Std Result ControlFlow

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize
abbrev ExtractedState := WideArray × ScalarArray × Usize

def modelBody (numerator : WideArray) (state : ExtractedState) :
    Result (ControlFlow ExtractedState (WideArray × ScalarArray)) := do
  let flow ← Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.body numerator
    (state.1, state.2.1, state.2.2.val)
  .ok (Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter.adaptFlow flow)

theorem usize_of_val (value : Usize) : Usize.ofNat value.val = value := by
  cases value
  rfl

theorem extracted_body_eq_model (numerator : WideArray) (state : ExtractedState)
    (hbound : state.2.2.val ≤ 384) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr_loop.body
      numerator state.1 state.2.1 state.2.2 = modelBody numerator state := by
  rcases state with ⟨quotient, remainder, remaining⟩
  simp only [modelBody]
  rw [← usize_of_val remaining]
  exact Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter.extracted_body_eq_core
    numerator quotient remainder remaining.val hbound

theorem modelBody_decreases (numerator : WideArray) {state nextState : ExtractedState}
    (hbound : state.2.2.val ≤ 384)
    (hexec : modelBody numerator state = .ok (.cont nextState)) :
    nextState.2.2.val < state.2.2.val := by
  rcases state with ⟨quotient, remainder, remaining⟩
  simp only [modelBody] at hexec
  cases hbody : Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.body numerator
      (quotient, remainder, remaining.val) with
  | ok flow =>
      rw [hbody] at hexec
      simp only [Result.bind_ok, Result.ok.injEq] at hexec
      cases flow with
      | done output => simp [Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter.adaptFlow] at hexec
      | cont coreNext =>
          cases hexec
          simp only [Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter.adaptFlow,
            Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter.adaptState,
            Usize.ofNat_val]
          unfold Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.body at hbody
          simp only [Prod.fst, Prod.snd] at hbody
          by_cases hpos : 0 < remaining.val
          · rw [if_pos hpos] at hbody
            cases hshift : Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit
                remainder
                (Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.wideBit numerator
                  (remaining.val - 1)) <;> rw [hshift] at hbody
            · simp only [Result.bind_ok] at hbody
              rename_i shifted
              cases hreduce : Ipp.Extracted.ArkworksScalarMul.GlvReduceCore.body shifted <;>
                rw [hreduce] at hbody
              · simp only [Result.bind_ok] at hbody
                rename_i reduced
                cases reduced with
                | done nextRemainder =>
                    cases hbody
                    simp only [Prod.fst, Prod.snd]
                    omega
                | cont nextRemainder =>
                    cases hset : Ipp.Extracted.ArkworksScalarMul.GlvSetBitCore.setBit
                        quotient (remaining.val - 1) <;> rw [hset] at hbody
                    · simp only [Result.bind_ok, Result.ok.injEq] at hbody
                      cases hbody
                      simp only [Prod.fst, Prod.snd]
                      omega
                    · cases hbody
                    · cases hbody
              · cases hbody
              · cases hbody
            · cases hbody
            · cases hbody
          · rw [if_neg (by omega)] at hbody
            simp at hbody
  | fail error => rw [hbody] at hexec; cases hexec
  | div => rw [hbody] at hexec; cases hexec

theorem extractedLoopResult_to_model (numerator : WideArray)
    {state : ExtractedState} {result : Result (WideArray × ScalarArray)}
    (hrun : LoopResult
      (fun state =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr_loop.body
          numerator state.1 state.2.1 state.2.2)
      state result)
    (hbound : state.2.2.val ≤ 384) :
    LoopResult (modelBody numerator) state result := by
  induction hrun with
  | done hbody =>
      apply LoopResult.done
      rwa [← extracted_body_eq_model numerator _ hbound]
  | next hbody hnext ih =>
      rename_i current nextState nextResult
      have hmodel : modelBody numerator current = .ok (.cont nextState) := by
        rwa [← extracted_body_eq_model numerator _ hbound]
      have hnextBound : nextState.2.2.val ≤ 384 := by
        have hlt := modelBody_decreases numerator hbound hmodel
        omega
      exact LoopResult.next hmodel (ih hnextBound)
  | fail hbody =>
      apply LoopResult.fail
      rwa [← extracted_body_eq_model numerator _ hbound]
  | div hbody =>
      apply LoopResult.div
      rwa [← extracted_body_eq_model numerator _ hbound]

theorem modelLoopResult_to_core (numerator : WideArray)
    {state : ExtractedState} {result : Result (WideArray × ScalarArray)}
    (hrun : LoopResult (modelBody numerator) state result) :
    LoopResult (Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.body numerator)
      (state.1, state.2.1, state.2.2.val) result := by
  induction hrun with
  | done hbody =>
      rename_i current final
      simp only [modelBody] at hbody
      cases hcore : Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.body numerator
          (current.1, current.2.1, current.2.2.val) with
      | ok flow =>
          rw [hcore] at hbody
          simp only [Result.bind_ok, Result.ok.injEq] at hbody
          cases flow with
          | done output =>
              simp only [Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter.adaptFlow,
                ControlFlow.done.injEq] at hbody
              subst output
              exact LoopResult.done hcore
          | cont next =>
              simp [Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter.adaptFlow] at hbody
      | fail error => rw [hcore] at hbody; cases hbody
      | div => rw [hcore] at hbody; cases hbody
  | next hbody hnext ih =>
      rename_i current nextState nextResult
      simp only [modelBody] at hbody
      cases hcore : Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.body numerator
          (current.1, current.2.1, current.2.2.val) with
      | ok flow =>
          rw [hcore] at hbody
          simp only [Result.bind_ok, Result.ok.injEq] at hbody
          cases flow with
          | done output =>
              simp [Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter.adaptFlow] at hbody
          | cont coreNext =>
              simp only [Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter.adaptFlow,
                ControlFlow.cont.injEq] at hbody
              subst nextState
              apply LoopResult.next hcore
              simpa [Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter.adaptState] using ih
      | fail error => rw [hcore] at hbody; cases hbody
      | div => rw [hcore] at hbody; cases hbody
  | fail hbody =>
      rename_i current error
      simp only [modelBody] at hbody
      cases hcore : Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.body numerator
          (current.1, current.2.1, current.2.2.val) with
      | ok flow => rw [hcore] at hbody; cases hbody
      | fail coreError =>
          rw [hcore] at hbody
          cases hbody
          exact LoopResult.fail hcore
      | div => rw [hcore] at hbody; cases hbody
  | div hbody =>
      rename_i current
      simp only [modelBody] at hbody
      cases hcore : Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore.body numerator
          (current.1, current.2.1, current.2.2.val) with
      | ok flow => rw [hcore] at hbody; cases hbody
      | fail error => rw [hcore] at hbody; cases hbody
      | div =>
          rw [hcore] at hbody
          exact LoopResult.div hcore

theorem extracted_loop_spec (numerator quotient : WideArray)
    (remainder : ScalarArray)
    (hnumerator : Ipp.Extracted.ArkworksScalarMul.GlvWideUpdateCore.wideToNat
      numerator < 2 ^ 384)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr_loop
      numerator (MacCampaign.Array.replicate 6#usize 0#u64)
      (MacCampaign.Array.replicate 4#usize 0#u64) 384#usize =
        .ok (quotient, remainder)) :
    Ipp.Extracted.ArkworksScalarMul.GlvDivLoopCore.DivSpec
      numerator quotient remainder := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr_loop at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  have hmodel := extractedLoopResult_to_model numerator hrun (by norm_num)
  have hcore := modelLoopResult_to_core numerator hmodel
  exact Ipp.Extracted.ArkworksScalarMul.GlvDivLoopCore.divLoopResult_spec
    numerator quotient remainder hnumerator (by simpa using hcore)

#print axioms usize_of_val
#print axioms extracted_body_eq_model
#print axioms modelBody_decreases
#print axioms extractedLoopResult_to_model
#print axioms modelLoopResult_to_core
#print axioms extracted_loop_spec

end Ipp.Extracted.ArkworksScalarMul.GlvDivLoopAdapter
