import Ipp.Extracted.ArkworksMillerLoopRun

/-! Fold the Miller invariant over an explicit successful countdown trace. -/

namespace Ipp.Extracted.ArkworksMillerLoop

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksMillerInvariant
open Ipp.Extracted.ArkworksMillerModel

theorem millerLoopRun_model
    (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb)
    (remaining coeffIdx : Nat) (f out : Fq12Mont)
    (hrun : MillerLoopRun coeffs p remaining coeffIdx f out) :
    Canonical12 out ∧
      millerPrefix (coeffs.map decodeEllCoeff) (decode p.x) (decode p.y) 63 =
        some (decodeFq12 out, 69) := by
  induction hrun with
  | done coeffIdx f hfinal =>
      exact hfinal
  | next hstep tail ih =>
      exact ih

end Ipp.Extracted.ArkworksMillerLoop
