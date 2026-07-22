import Ipp.Extracted.ArkworksMillerLoop

/-! Bridge from the extracted executor to the structural loop trace. -/

namespace Ipp.Extracted.ArkworksMillerExecution

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksMillerLoop

abbrev Fq12Limb := ark_ip_proofs.s3_07_arkworks_fq_spike.Fq12Mont

/-- List-facing view of the extracted vector-facing schedule. -/
def miller_schedule (coeffs : List G2EllCoeffLimb)
    (p : G1AffineLimb) : Result Fq12Limb :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.miller_schedule ⟨coeffs⟩ p

set_option maxHeartbeats 1000000

/-- A successful extracted execution supplies the structural loop trace. -/
theorem miller_schedule_loopResult
    (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb) (out : Fq12Limb)
    (hexec : miller_schedule coeffs p = .ok out) :
    LoopResult (millerBody coeffs p)
      (ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE, 0#usize, 63#usize)
      (.ok out) := by
  unfold miller_schedule
    ark_ip_proofs.s3_07_arkworks_fq_spike.miller_schedule
    ark_ip_proofs.s3_07_arkworks_fq_spike.miller_schedule_loop at hexec
  change Aeneas.loop (millerBody coeffs p)
    (ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE, 0#usize, 63#usize) =
      .ok out at hexec
  exact loopResult_of_eq (by simp) hexec

end Ipp.Extracted.ArkworksMillerExecution
