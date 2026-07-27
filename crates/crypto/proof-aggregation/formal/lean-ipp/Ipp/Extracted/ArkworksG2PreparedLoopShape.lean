import Ipp.Extracted.ArkworksG2PreparedLoopBody

namespace Ipp.Extracted.ArkworksG2PreparedLoopShape

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2PreparedSchedule
open Ipp.Extracted.ArkworksG2PreparedLoopBody

set_option maxHeartbeats 1000000

theorem successful_positive_body_is_cont
    (q : G2AffineMont) (twoInvMont : FqMont) (remaining : Nat)
    (state : G2ProjMont) (coeffs : CoeffVec)
    (flow : ControlFlow (G2ProjMont × CoeffVec × Usize) CoeffVec)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbody : scheduleBody
      (fun r => ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line r twoInvMont)
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line
      { x := q.x, y := q.y, infinity := false }
      (state, coeffs, ⟨remaining⟩) = .ok flow) :
    ∃ state' coeffs', flow = .cont (state', coeffs', ⟨remaining - 1⟩) := by
  have hposition : remaining - 1 < 64 := by omega
  rw [scheduleBody_positive _ _ _ _ _ _ hpos,
    extractedAteBit_eq_testBit (remaining - 1) hposition] at hbody
  cases hbit : ateLoopParameter.testBit (remaining - 1) with
  | false =>
      cases hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
          state twoInvMont with
      | fail error => rw [hdouble] at hbody; cases hbody
      | div => rw [hdouble] at hbody; cases hbody
      | ok doubledResult =>
          rcases doubledResult with ⟨doubled, doubleCoeff⟩
          rw [hdouble] at hbody
          simp only [Result.bind_ok, alloc.vec.Vec.push, hbit,
            Bool.false_eq_true, if_false, Result.ok.injEq] at hbody
          exact ⟨doubled, ⟨coeffs.val ++ [doubleCoeff]⟩, hbody.symm⟩
  | true =>
      cases hdouble : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
          state twoInvMont with
      | fail error => rw [hdouble] at hbody; cases hbody
      | div => rw [hdouble] at hbody; cases hbody
      | ok doubledResult =>
          rcases doubledResult with ⟨doubled, doubleCoeff⟩
          rw [hdouble] at hbody
          simp only [Result.bind_ok, hbit, if_true] at hbody
          cases hadd : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_line doubled
              { x := q.x, y := q.y, infinity := false } with
          | fail error => rw [hadd] at hbody; cases hbody
          | div => rw [hadd] at hbody; cases hbody
          | ok addedResult =>
              rcases addedResult with ⟨added, addCoeff⟩
              rw [hadd] at hbody
              simp only [Result.bind_ok, alloc.vec.Vec.push,
                Result.ok.injEq] at hbody
              exact ⟨added, ⟨(coeffs.val ++ [doubleCoeff]) ++ [addCoeff]⟩,
                hbody.symm⟩

end Ipp.Extracted.ArkworksG2PreparedLoopShape
