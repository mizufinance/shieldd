import Ipp.Extracted.ArkworksMultiMillerOuterStep

/-! Trace induction for the outer contiguous chunk loop. -/

namespace Ipp.Extracted.ArkworksMultiMillerOuterLoop

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerChunkModel
open Ipp.Extracted.ArkworksMultiMillerOuterInvariant
open Ipp.Extracted.ArkworksMultiMillerOuterStep

private abbrev outerBody (filtered : List ExecPair) :=
  fun (result, start) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1.body
      ⟨filtered⟩ result start

set_option maxHeartbeats 1000000

private theorem outerTraceCore
    (filtered : List ExecPair)
    (out : ArkworksMultiMillerModel.Fq12Limb)
    (hvalid : ValidExecPairs filtered)
    {state loopResult}
    (hrun : LoopResult (outerBody filtered) state loopResult) :
    ∀ (start : Nat) (result : ArkworksMultiMillerModel.Fq12Limb),
      state = (result, ⟨start⟩) →
      loopResult = .ok out →
      OuterLoopInv filtered start result →
      OuterLoopInv filtered filtered.length out := by
  induction hrun with
  | done hbody =>
      intro start result hstate hresult hinv
      cases hstate
      by_cases hactive : start < filtered.length
      · have hstep := outerLoopInv_step filtered start result _ hvalid
          hactive hinv hbody
        rcases hstep with ⟨nextResult, hflow, hnextInv⟩
        cases hflow
      · have hstart : start = filtered.length := by
          have := hinv.processedBound
          omega
        change
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1.body
            ⟨filtered⟩ result ⟨start⟩ = _ at hbody
        unfold
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1.body
          at hbody
        rw [if_neg (show ¬(⟨start⟩ : Usize) <
          Aeneas.Std.alloc.vec.Vec.len ⟨filtered⟩ by
            simpa [Aeneas.Std.alloc.vec.Vec.len] using hactive)] at hbody
        simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
        rw [← hbody] at hresult
        have hout : result = out := Result.ok.inj hresult
        rw [← hout]
        simpa only [hstart] using hinv
  | @next state next loopResult hstep hnext ih =>
      intro start result hstate hresult hinv
      cases hstate
      rcases next with ⟨nextResult, nextStart⟩
      have hactive : start < filtered.length := by
        by_contra hnot
        change
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1.body
            ⟨filtered⟩ result ⟨start⟩ = _ at hstep
        unfold
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1.body
          at hstep
        rw [if_neg (show ¬(⟨start⟩ : Usize) <
          Aeneas.Std.alloc.vec.Vec.len ⟨filtered⟩ by
            simpa [Aeneas.Std.alloc.vec.Vec.len] using hnot)] at hstep
        cases hstep
      have hnextInv := outerLoopInv_step filtered start result
        (.cont (nextResult, nextStart)) hvalid hactive hinv hstep
      rcases hnextInv with ⟨witnessResult, hflow, hwitnessInv⟩
      have hstateEq := ControlFlow.cont.inj hflow
      have hresultEq : nextResult = witnessResult :=
        congrArg Prod.fst hstateEq
      have hstartEq :
          nextStart = ⟨nextChunk filtered start⟩ :=
        congrArg Prod.snd hstateEq
      subst nextResult
      subst nextStart
      exact ih (nextChunk filtered start) witnessResult rfl hresult
        hwitnessInv
  | fail hbody =>
      intro start result hstate hresult hinv
      simp at hresult
  | div hbody =>
      intro start result hstate hresult hinv
      simp at hresult

/-- The outer loop returns the ordered product of every filtered pair fold. -/
theorem outer_schedule_spec
    (filtered : List ExecPair)
    (out : ArkworksMultiMillerModel.Fq12Limb)
    (hvalid : ValidExecPairs filtered)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1
        ⟨filtered⟩ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE 0#usize =
          .ok out) :
    Canonical12 out ∧
      decodeFq12 out =
        (filtered.map (fun pair => pairFold (sourcePair pair))).prod := by
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1 at hexec
  have hrun := loopResult_of_eq (by simp) hexec
  have hfinal := outerTraceCore filtered out hvalid hrun 0
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE rfl rfl
    (outerLoopInv_initial filtered)
  refine ⟨hfinal.canonical, ?_⟩
  simpa [completedValues] using hfinal.accumulator

end Ipp.Extracted.ArkworksMultiMillerOuterLoop
