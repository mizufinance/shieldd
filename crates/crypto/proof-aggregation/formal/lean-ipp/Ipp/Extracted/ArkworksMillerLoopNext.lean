import Ipp.Extracted.ArkworksMillerLoopBody
import Ipp.Extracted.ArkworksMillerStep

/-! Opaque invariant transition for one extracted Miller-loop body step. -/

namespace Ipp.Extracted.ArkworksMillerLoop

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMillerInvariant
open Ipp.Extracted.ArkworksMillerStep

set_option maxHeartbeats 1000000

theorem millerBody_step
    (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb)
    (remaining coeffIdx : Nat) (f : Fq12Mont)
    (flow : ControlFlow (Fq12Mont × Usize × Usize) Fq12Mont)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hc : ∀ coeff ∈ coeffs, CanonicalEllCoeff coeff)
    (hp : CanonicalFiniteG1 p)
    (hinv : MillerLoopInv (coeffs.map decodeEllCoeff)
      (decode p.x) (decode p.y) remaining coeffIdx f)
    (hbody : millerBody coeffs p (f, ⟨coeffIdx⟩, ⟨remaining⟩) =
      .ok flow) :
    ∃ nextF nextCoeffIdx,
      flow = .cont (nextF, ⟨nextCoeffIdx⟩, ⟨remaining - 1⟩) ∧
      MillerLoopInv (coeffs.map decodeEllCoeff)
        (decode p.x) (decode p.y) (remaining - 1) nextCoeffIdx nextF := by
  exact millerLoopInv_step coeffs p remaining coeffIdx f flow
    hpos hbound hc hp hinv hbody

end Ipp.Extracted.ArkworksMillerLoop
