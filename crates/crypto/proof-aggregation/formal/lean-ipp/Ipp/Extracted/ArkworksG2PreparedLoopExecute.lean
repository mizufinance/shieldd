import Ipp.Extracted.ArkworksG2PreparedLoopBody
import Ipp.Extracted.ArkworksG2PreparedLoopTransition

/-! Collapse one concrete prepared-loop body into an opaque transition certificate. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopExecute

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedLoopBody
open Ipp.Extracted.ArkworksG2PreparedLoopTransition

set_option maxHeartbeats 1000000

/-- A successful positive loop body exposes only callback results and the selected bit. -/
theorem transition_of_body
    (q : G2AffineMont) (twoInvMont : FqMont) (remaining : Nat)
    (state state' : G2ProjMont) (coeffs coeffs' : CoeffVec)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hexec : scheduleBody
      (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line r twoInvMont)
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
      { x := q.x, y := q.y, infinity := false }
      (state, coeffs, ⟨remaining⟩) =
        .ok (.cont (state', coeffs', ⟨remaining - 1⟩))) :
    PreparedLoopTransition q twoInvMont remaining state coeffs state' coeffs' := by
  have hposition : remaining - 1 < 64 := by omega
  rw [scheduleBody_positive _ _ _ _ _ _ hpos,
    extractedAteBit_eq_testBit (remaining - 1) hposition] at hexec
  cases hbit : ateLoopParameter.testBit (remaining - 1) with
  | false =>
      cases hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
          state twoInvMont with
      | fail error => rw [hdouble] at hexec; cases hexec
      | div => rw [hdouble] at hexec; cases hexec
      | ok doubledResult =>
          rcases doubledResult with ⟨doubled, doubleCoeff⟩
          rw [hdouble] at hexec
          simp only [Result.bind_ok, alloc.vec.Vec.push, hbit,
            Bool.false_eq_true, if_false, Result.ok.injEq,
            ControlFlow.cont.injEq, Prod.mk.injEq] at hexec
          rcases hexec with ⟨hstate, hcoeffs, _⟩
          subst state'
          subst coeffs'
          exact .falseStep hbit doubled doubleCoeff hdouble
  | true =>
      cases hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
          state twoInvMont with
      | fail error => rw [hdouble] at hexec; cases hexec
      | div => rw [hdouble] at hexec; cases hexec
      | ok doubledResult =>
          rcases doubledResult with ⟨doubled, doubleCoeff⟩
          rw [hdouble] at hexec
          simp only [Result.bind_ok, hbit, if_true] at hexec
          cases hadd : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line doubled
              { x := q.x, y := q.y, infinity := false } with
          | fail error => rw [hadd] at hexec; cases hexec
          | div => rw [hadd] at hexec; cases hexec
          | ok addedResult =>
              rcases addedResult with ⟨added, addCoeff⟩
              rw [hadd] at hexec
              simp only [Result.bind_ok, alloc.vec.Vec.push,
                Result.ok.injEq, ControlFlow.cont.injEq,
                Prod.mk.injEq] at hexec
              rcases hexec with ⟨hstate, hcoeffs, _⟩
              subst state'
              subst coeffs'
              exact .trueStep hbit doubled added doubleCoeff addCoeff hdouble hadd

#print axioms transition_of_body

end Ipp.Extracted.ArkworksG2PreparedLoopExecute
