import Ipp.Extracted.ArkworksMillerLoopRunExecution
import Ipp.Extracted.ArkworksMillerLoopRunSemantic

/-! Structural countdown from an extracted loop trace to the final prefix model. -/

namespace Ipp.Extracted.ArkworksMillerLoop

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMillerInvariant
open Ipp.Extracted.ArkworksMillerLoop

set_option maxHeartbeats 1000000

/-- Folding the single-step invariant over a successful countdown trace. -/
theorem millerLoopResult
    (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb)
    (remaining coeffIdx : Nat) (f out : Fq12Mont)
    (hbound : remaining ≤ 63)
    (hc : ∀ coeff ∈ coeffs, CanonicalEllCoeff coeff)
    (hp : CanonicalFiniteG1 p)
    (hinv : MillerLoopInv (coeffs.map decodeEllCoeff)
      (decode p.x) (decode p.y) remaining coeffIdx f)
    (hrun : LoopResult (millerBody coeffs p)
      (f, ⟨coeffIdx⟩, ⟨remaining⟩) (.ok out)) :
    Canonical12 out ∧
      millerPrefix (coeffs.map decodeEllCoeff) (decode p.x) (decode p.y) 63 =
        some (decodeFq12 out, 69) := by
  have trace := run_of_loopResult coeffs p remaining coeffIdx f out
    hbound hc hp hinv hrun
  exact millerLoopRun_model coeffs p remaining coeffIdx f out
    trace

#print axioms millerLoopResult

end Ipp.Extracted.ArkworksMillerLoop
