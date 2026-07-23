import Ipp.Extracted.ArkworksMultiMillerChunkStep

/-! Countdown induction for one complete shared Miller chunk. -/

namespace Ipp.Extracted.ArkworksMultiMillerChunkLoop

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerChunkModel
open Ipp.Extracted.ArkworksMultiMillerChunkInvariant
open Ipp.Extracted.ArkworksMultiMillerChunkStep

private abbrev chunkBody (filtered : List ExecPair) (chunkStart : Nat) :=
  fun (cursors, f, remaining) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1.body
      ⟨filtered⟩ ⟨chunkStart⟩ cursors f remaining

set_option maxHeartbeats 1000000

private theorem chunkLoopResult
    (filtered : List ExecPair) (chunkStart width remaining : Nat)
    (cursors : alloc.vec.Vec Usize)
    (f out : ArkworksMultiMillerModel.Fq12Limb)
    (hvalid : ValidExecPairs filtered)
    (hchunk : chunkStart + width ≤ filtered.length)
    (hinv : ChunkLoopInv filtered chunkStart width remaining cursors f)
    (hrun : LoopResult (chunkBody filtered chunkStart)
      (cursors, f, ⟨remaining⟩) (.ok out)) :
    Canonical12 out ∧
      decodeFq12 out =
        (chunkPrefixValues filtered chunkStart width 63).prod := by
  induction remaining generalizing cursors f with
  | zero =>
      cases hrun with
      | done hbody =>
          change
            ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1.body
              ⟨filtered⟩ ⟨chunkStart⟩ cursors f 0#usize =
                .ok (.done out) at hbody
          simp [
            ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1.body]
            at hbody
          subst out
          exact ⟨hinv.canonical, by simpa using hinv.accumulator⟩
      | next hbody hnext =>
          change
            ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1.body
              ⟨filtered⟩ ⟨chunkStart⟩ cursors f 0#usize = _ at hbody
          simp [
            ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1.body]
            at hbody
  | succ remaining ih =>
      cases hrun with
      | done hbody =>
          have hstep := chunkLoopInv_step filtered chunkStart width
            (remaining + 1) cursors f (.done out) hvalid hchunk (by omega)
            hinv hbody
          rcases hstep with ⟨nextCursors, nextF, hflow, hnextInv⟩
          cases hflow
      | next hbody hnext =>
          rename_i nextState
          rcases nextState with ⟨nextCursors, nextF, nextRemaining⟩
          have hstep := chunkLoopInv_step filtered chunkStart width
            (remaining + 1) cursors f
            (.cont (nextCursors, nextF, nextRemaining))
            hvalid hchunk (by omega) hinv hbody
          rcases hstep with
            ⟨witnessCursors, witnessF, hflow, hnextInv⟩
          have hstate := ControlFlow.cont.inj hflow
          have hcursorsEq : nextCursors = witnessCursors :=
            congrArg Prod.fst hstate
          have hfEq : nextF = witnessF :=
            congrArg (fun state => state.2.1) hstate
          have hremainingEq : nextRemaining = ⟨remaining⟩ :=
            congrArg (fun state => state.2.2) hstate
          subst nextCursors
          subst nextF
          subst nextRemaining
          exact ih witnessCursors witnessF hnextInv hnext

/-- A successful fresh chunk loop returns the product of its 63-step prefixes. -/
theorem chunk_schedule_spec
    (filtered : List ExecPair) (chunkStart width : Nat)
    (cursors : alloc.vec.Vec Usize)
    (out : ArkworksMultiMillerModel.Fq12Limb)
    (hvalid : ValidExecPairs filtered)
    (hchunk : chunkStart + width ≤ filtered.length)
    (hcursors : cursors.val = List.replicate width 0#usize)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1
        ⟨filtered⟩ ⟨chunkStart⟩ cursors
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE 63#usize = .ok out) :
    Canonical12 out ∧
      decodeFq12 out =
        (chunkPrefixValues filtered chunkStart width 63).prod := by
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1
    at hexec
  have hrun := loopResult_of_eq (by simp) hexec
  exact chunkLoopResult filtered chunkStart width 63 cursors
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE out hvalid hchunk
    (chunkLoopInv_initial filtered chunkStart width cursors hcursors) hrun

end Ipp.Extracted.ArkworksMultiMillerChunkLoop
