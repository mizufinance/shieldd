import Ipp.Extracted.ArkworksScalarMulGlvDivBodyCore

/-! Finite restoring-division loop and its exact quotient/remainder result. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDivLoopCore

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksScalarMul.GlvDivBodyCore

set_option maxHeartbeats 500000
set_option maxRecDepth 8192

def divLoop (numerator : WideArray) (quotient : WideArray)
    (remainder : ScalarArray) (remaining : Nat) :
    Result (WideArray × ScalarArray) :=
  loop (body numerator) (quotient, remainder, remaining)

structure DivSpec (numerator quotient : WideArray)
    (remainder : ScalarArray) : Prop where
  remainder_lt : scalarToNat remainder < r
  quotient_division : ∃ quotientValue,
    wideToNat quotient = quotientValue ∧
      wideToNat numerator = quotientValue * r + scalarToNat remainder

private theorem loopResult_spec (numerator : WideArray) {state : State}
    {result : Result (WideArray × ScalarArray)}
    (hrun : LoopResult (body numerator) state result)
    (hinv : Invariant numerator state) :
    ∀ quotient remainder, result = .ok (quotient, remainder) →
      DivSpec numerator quotient remainder := by
  induction hrun with
  | done hbody =>
      rename_i current final
      intro quotient remainder hresult
      rcases current with ⟨currentQuotient, currentRemainder, remaining⟩
      simp only [body] at hbody
      have hzero : remaining = 0 := by
        by_contra h
        rw [if_pos (by omega)] at hbody
        cases hshift :
            Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit
              currentRemainder (wideBit numerator (remaining - 1)) <;>
          rw [hshift] at hbody
        · simp only [Result.bind_ok] at hbody
          rename_i shifted
          cases hreduce :
              Ipp.Extracted.ArkworksScalarMul.GlvReduceCore.body shifted <;>
            rw [hreduce] at hbody
          · simp only [Result.bind_ok] at hbody
            rename_i flow
            cases flow with
            | done value => simp at hbody
            | cont value =>
                cases hset :
                    Ipp.Extracted.ArkworksScalarMul.GlvSetBitCore.setBit
                      currentQuotient (remaining - 1) <;>
                  rw [hset] at hbody
                · simp at hbody
                · cases hbody
                · cases hbody
          · cases hbody
          · cases hbody
        · cases hbody
        · cases hbody
      subst remaining
      norm_num at hbody
      cases hbody
      cases hresult
      rcases hinv.quotient_division with
        ⟨quotientValue, hquotient, hequation⟩
      refine
        { remainder_lt := hinv.remainder_lt
          quotient_division := ⟨quotientValue, by simpa using hquotient,
            by simpa using hequation⟩ }
  | next hbody hnext ih =>
      rename_i current nextState nextResult
      intro quotient remainder hresult
      exact ih (body_preserves numerator current nextState hinv hbody)
        quotient remainder hresult
  | fail hbody => intro quotient remainder hresult; simp at hresult
  | div hbody => intro quotient remainder hresult; simp at hresult

private theorem zero_wide_value :
    wideToNat (MacCampaign.Array.replicate 6#usize 0#u64) = 0 := by
  norm_num [wideToNat,
    Ipp.Extracted.ArkworksScalarMul.GlvWideUpdateCore.wideToNat,
    limbsToNat_six, limb, limbWord, MacCampaign.Array.replicate,
    MacCampaign.U64.ofNat, MacCampaign.u64Base]

private theorem zero_scalar_value :
    scalarToNat (MacCampaign.Array.replicate 4#usize 0#u64) = 0 := by
  norm_num [scalarToNat, Ipp.Extracted.ArkworksFr.limbsToNat_four,
    Ipp.Extracted.ArkworksFr.limb, Ipp.Extracted.ArkworksFr.limbWord,
    MacCampaign.Array.replicate, MacCampaign.U64.ofNat,
    MacCampaign.u64Base]

theorem divLoopResult_spec (numerator quotient : WideArray)
    (remainder : ScalarArray)
    (hnumerator : wideToNat numerator < 2 ^ 384)
    (hrun : LoopResult (body numerator)
      (MacCampaign.Array.replicate 6#usize 0#u64,
        MacCampaign.Array.replicate 4#usize 0#u64, 384)
      (.ok (quotient, remainder))) :
    DivSpec numerator quotient remainder := by
  have hinitialEquation : wideToNat numerator / 2 ^ 384 =
      0 * r + scalarToNat (MacCampaign.Array.replicate 4#usize 0#u64) := by
    rw [Nat.div_eq_of_lt hnumerator, zero_scalar_value]
    simp
  have hinv : Invariant numerator
      (MacCampaign.Array.replicate 6#usize 0#u64,
        MacCampaign.Array.replicate 4#usize 0#u64, 384) :=
    { remaining_le := by norm_num
      remainder_lt := by
        rw [zero_scalar_value]
        norm_num [r, Ipp.Bls12377.scalarModulus]
      clear := Ipp.Extracted.ArkworksScalarMul.GlvClearBelow.zero_clear_384
      quotient_division := ⟨0, by simp [zero_wide_value], hinitialEquation⟩ }
  exact loopResult_spec numerator hrun hinv quotient remainder rfl

theorem divLoop_spec (numerator quotient : WideArray)
    (remainder : ScalarArray)
    (hnumerator : wideToNat numerator < 2 ^ 384)
    (hexec : divLoop numerator (MacCampaign.Array.replicate 6#usize 0#u64)
      (MacCampaign.Array.replicate 4#usize 0#u64) 384 =
        .ok (quotient, remainder)) :
    DivSpec numerator quotient remainder := by
  unfold divLoop at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  exact divLoopResult_spec numerator quotient remainder hnumerator hrun

#print axioms DivSpec
#print axioms divLoopResult_spec
#print axioms divLoop_spec

end Ipp.Extracted.ArkworksScalarMul.GlvDivLoopCore
