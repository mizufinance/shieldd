import Ipp.Extracted.ArkworksMultiMillerAdditionStep

/-! Fuel induction for one complete addition-line pass over a chunk. -/

namespace Ipp.Extracted.ArkworksMultiMillerAdditionPass

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerLineModel
open Ipp.Extracted.ArkworksMultiMillerLineExecution
open Ipp.Extracted.ArkworksMultiMillerAdditionStep

private abbrev additionBody (filtered : List ExecPair) (chunkStart : Nat) :=
  fun (cursors, f, localIndex) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop1.body
      ⟨filtered⟩ ⟨chunkStart⟩ cursors f localIndex

set_option maxHeartbeats 1000000

private theorem additionTraceCore
    (filtered : List ExecPair) (chunkStart width cursor : Nat)
    (baseValues : List Ipp.Bls12377.Fq12Model)
    (outCursors : alloc.vec.Vec Usize)
    (outF : ArkworksMultiMillerModel.Fq12Limb)
    (hvalid : ValidExecPairs filtered)
    (hchunk : chunkStart + width ≤ filtered.length)
    (hcursor : cursor < 69)
    (hbaseLength : baseValues.length = width)
    {state result} (hrun : LoopResult (additionBody filtered chunkStart)
      state result) :
    ∀ (processed : Nat) (cursors : alloc.vec.Vec Usize)
      (f : ArkworksMultiMillerModel.Fq12Limb),
      state = (cursors, f, ⟨processed⟩) →
      result = .ok (outCursors, outF) →
      LinePassInv filtered chunkStart width cursor baseValues processed
        cursors f →
      LinePassInv filtered chunkStart width cursor baseValues width
        outCursors outF := by
  induction hrun with
  | done hbody =>
      intro processed cursors f hstate hresult hinv
      cases hstate
      by_cases hactive : processed < width
      · change
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop0.body
            ⟨filtered⟩ ⟨chunkStart⟩ cursors f ⟨processed⟩ = _ at hbody
        have hwitness := line_body_witness filtered chunkStart width cursor
          processed cursors f _ hvalid hchunk hcursor hactive
          hinv.cursorsState hbody
        cases hwitness with
        | intro pair coeff c0 c1 c2 nextF pairGet coeffGet pairValid
            lineExec flowEq =>
            cases flowEq
      · have hprocessed : processed = width := by
          have := hinv.processedBound
          omega
        have hcursorsLength : cursors.val.length = width := by
          rw [hinv.cursorsState,
            cursorState_length width cursor processed hinv.processedBound]
        change
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop1.body
            ⟨filtered⟩ ⟨chunkStart⟩ cursors f ⟨processed⟩ = _ at hbody
        unfold
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop1.body
          at hbody
        rw [show Aeneas.Std.alloc.vec.Vec.len cursors = (⟨width⟩ : Usize) by
          simp [Aeneas.Std.alloc.vec.Vec.len, hcursorsLength]] at hbody
        rw [if_neg (show ¬(⟨processed⟩ : Usize) < ⟨width⟩ by
          exact hactive)] at hbody
        simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
        rw [← hbody] at hresult
        have hout : (cursors, f) = (outCursors, outF) :=
          Result.ok.inj hresult
        have hcursorsOut : cursors = outCursors := congrArg Prod.fst hout
        have hfOut : f = outF := congrArg Prod.snd hout
        rw [← hcursorsOut, ← hfOut]
        simpa only [hprocessed] using hinv
  | @next state next result hstep hnext ih =>
      intro processed cursors f hstate hresult hinv
      cases hstate
      rcases next with ⟨nextCursors, nextF, nextProcessed⟩
      have hactive : processed < width := by
        by_contra hnot
        have hcursorsLength : cursors.val.length = width := by
          rw [hinv.cursorsState,
            cursorState_length width cursor processed hinv.processedBound]
        change
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop1.body
            ⟨filtered⟩ ⟨chunkStart⟩ cursors f ⟨processed⟩ = _ at hstep
        unfold
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop1.body
          at hstep
        rw [show Aeneas.Std.alloc.vec.Vec.len cursors = (⟨width⟩ : Usize) by
          simp [Aeneas.Std.alloc.vec.Vec.len, hcursorsLength]] at hstep
        rw [if_neg (show ¬(⟨processed⟩ : Usize) < ⟨width⟩ by
          exact hnot)] at hstep
        cases hstep
      have hnextInv := addition_line_step filtered chunkStart width cursor
        processed baseValues cursors nextCursors f nextF nextProcessed hvalid
        hchunk hcursor hbaseLength hinv hactive hstep
      cases hnextInv.1
      exact ih (processed + 1) nextCursors nextF rfl hresult hnextInv.2
  | fail hbody =>
      intro processed cursors f hstate hresult hinv
      simp at hresult
  | div hbody =>
      intro processed cursors f hstate hresult hinv
      simp at hresult

/-- A successful addition-line loop advances every chunk cursor once. -/
theorem addition_line_pass
    (filtered : List ExecPair) (chunkStart width cursor : Nat)
    (baseValues : List Ipp.Bls12377.Fq12Model)
    (cursors outCursors : alloc.vec.Vec Usize)
    (f outF : ArkworksMultiMillerModel.Fq12Limb)
    (hvalid : ValidExecPairs filtered)
    (hchunk : chunkStart + width ≤ filtered.length)
    (hcursor : cursor < 69)
    (hbaseLength : baseValues.length = width)
    (hinv : LinePassInv filtered chunkStart width cursor baseValues 0 cursors f)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop1
        ⟨filtered⟩ ⟨chunkStart⟩ cursors f 0#usize =
          .ok (outCursors, outF)) :
    LinePassInv filtered chunkStart width cursor baseValues width
      outCursors outF := by
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop1
    at hexec
  have hrun := loopResult_of_eq (by simp) hexec
  exact additionTraceCore filtered chunkStart width cursor baseValues
    outCursors outF hvalid hchunk hcursor hbaseLength hrun 0 cursors f
    rfl rfl hinv

end Ipp.Extracted.ArkworksMultiMillerAdditionPass
