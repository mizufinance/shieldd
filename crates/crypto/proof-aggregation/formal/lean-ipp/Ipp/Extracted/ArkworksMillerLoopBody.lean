import Ipp.Extracted.ArkworksMillerInvariant

/-! Opaque execution boundary for the extracted Miller-loop body. -/

namespace Ipp.Extracted.ArkworksMillerLoop

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksMillerInvariant

/-- Execution-only body view with the extracted tuple state bundled. -/
def millerBody (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb)
    (state : Fq12Mont × Usize × Usize) :
    Result (ControlFlow (Fq12Mont × Usize × Usize) Fq12Mont) :=
  let (f, coeffIdx, remaining) := state
  ark_ip_proofs.s3_07_arkworks_fq_spike.miller_schedule_loop.body
    ⟨coeffs⟩ p f coeffIdx remaining

end Ipp.Extracted.ArkworksMillerLoop
