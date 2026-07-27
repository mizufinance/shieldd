import Ipp.Extracted.ArkworksMillerInvariant

/-! Read the terminal Miller-loop specification from the bundled invariant. -/

namespace Ipp.Extracted.ArkworksMillerLoop

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMillerInvariant

set_option maxHeartbeats 1000000

theorem millerLoopInv_final
    (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb)
    (coeffIdx : Nat) (f : Fq12Mont)
    (hinv : MillerLoopInv (coeffs.map decodeEllCoeff)
      (decode p.x) (decode p.y) 0 coeffIdx f) :
    Canonical12 f ∧
      millerPrefix (coeffs.map decodeEllCoeff) (decode p.x) (decode p.y) 63 =
        some (decodeFq12 f, 69) := by
  refine ⟨hinv.canonical, ?_⟩
  have hidx : coeffIdx = 69 := by
    rw [hinv.coeffIndex, millerCoeffCount_63]
  rw [hidx] at hinv
  exact hinv.modelPrefix

end Ipp.Extracted.ArkworksMillerLoop
