import Ipp.Extracted.ArkworksG2PreparedLoopRun
import Ipp.Extracted.ArkworksG2PreparedLoopDone
import Ipp.Extracted.ArkworksG2PreparedLoopShape

namespace Ipp.Extracted.ArkworksG2PreparedLoopRunExecution

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedLoopRun
open Ipp.Extracted.ArkworksG2PreparedLoopDone
open Ipp.Extracted.ArkworksG2PreparedLoopShape

set_option maxHeartbeats 1000000

/-- A finite extracted result yields an explicit successful countdown trace. -/
theorem run_of_loopResult
    (q : G2AffineMont) (twoInvMont : FqMont) (remaining : Nat)
    (state : G2ProjMont) (coeffs output : CoeffVec)
    (hbound : remaining ≤ 63)
    (hexec : LoopResult
      (scheduleBody
        (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line r twoInvMont)
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
        { x := q.x, y := q.y, infinity := false })
      (state, coeffs, ⟨remaining⟩) (.ok output)) :
    PreparedLoopRun q twoInvMont remaining state coeffs output := by
  induction remaining generalizing state coeffs with
  | zero =>
      cases hexec with
      | done hbody =>
          have hzero := scheduleBody_zero
            (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
              r twoInvMont)
            ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
            { x := q.x, y := q.y, infinity := false } state coeffs
          change scheduleBody
            (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
              r twoInvMont)
            ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
            { x := q.x, y := q.y, infinity := false }
            (state, coeffs, 0#usize) = .ok (.done output) at hbody
          rw [hzero] at hbody
          have hout := ControlFlow.done.inj (Result.ok.inj hbody)
          subst output
          exact .done state coeffs
      | next hbody hnext =>
          rename_i nextState
          have hzero := scheduleBody_zero
            (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
              r twoInvMont)
            ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
            { x := q.x, y := q.y, infinity := false } state coeffs
          change scheduleBody
            (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
              r twoInvMont)
            ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
            { x := q.x, y := q.y, infinity := false }
            (state, coeffs, 0#usize) = .ok (.cont nextState) at hbody
          rw [hzero] at hbody
          cases hbody
  | succ remaining ih =>
      cases hexec with
      | done hbody =>
          have hshape := successful_positive_body_is_cont q twoInvMont
            (remaining + 1) state coeffs (.done output) (by omega) hbound hbody
          rcases hshape with ⟨state', coeffs', hflow⟩
          cases hflow
      | next hbody hnext =>
          rename_i nextState
          rcases nextState with ⟨state', coeffs', nextRemaining⟩
          have hshape := successful_positive_body_is_cont q twoInvMont
            (remaining + 1) state coeffs
            (.cont (state', coeffs', nextRemaining)) (by omega) hbound hbody
          rcases hshape with ⟨nextState, nextCoeffs, hflow⟩
          simp only [ControlFlow.cont.injEq, Prod.mk.injEq] at hflow
          rcases hflow with ⟨rfl, rfl, rfl⟩
          exact .next hbody (ih state' coeffs' (by omega) hnext)

end Ipp.Extracted.ArkworksG2PreparedLoopRunExecution
