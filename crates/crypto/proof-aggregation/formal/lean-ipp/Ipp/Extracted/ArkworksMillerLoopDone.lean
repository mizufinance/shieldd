import Ipp.Extracted.ArkworksMillerLoopBody

/-! Terminal execution facts for the extracted Miller-loop body. -/

namespace Ipp.Extracted.ArkworksMillerLoop

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksMillerInvariant

theorem millerBody_zero_done
    (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb)
    (coeffIdx : Nat) (f out : Fq12Mont)
    (hbody : millerBody coeffs p (f, ⟨coeffIdx⟩, ⟨0⟩) =
      .ok (.done out)) :
    out = f := by
  simp [millerBody,
    ark_ip_proofs.s3_07_arkworks_fq_spike.miller_schedule_loop.body]
    at hbody
  exact hbody.symm

theorem millerBody_zero_not_next
    (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb)
    (coeffIdx : Nat) (f : Fq12Mont)
    (nextState : Fq12Mont × Usize × Usize)
    (hbody : millerBody coeffs p (f, ⟨coeffIdx⟩, ⟨0⟩) =
      .ok (.cont nextState)) :
    False := by
  simp [millerBody,
    ark_ip_proofs.s3_07_arkworks_fq_spike.miller_schedule_loop.body]
    at hbody

end Ipp.Extracted.ArkworksMillerLoop
