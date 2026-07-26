import Ipp.Extracted.ArkworksMillerLoopBody

/-! Replayable successful traces for the extracted Miller countdown. -/

namespace Ipp.Extracted.ArkworksMillerLoop

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMillerInvariant

inductive MillerLoopRun (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb) :
    Nat → Nat → Fq12Mont → Fq12Mont → Prop
  | done (coeffIdx : Nat) (f : Fq12Mont)
      (hfinal : Canonical12 f ∧
        millerPrefix (coeffs.map decodeEllCoeff)
          (decode p.x) (decode p.y) 63 = some (decodeFq12 f, 69)) :
      MillerLoopRun coeffs p 0 coeffIdx f f
  | next {remaining coeffIdx nextCoeffIdx : Nat}
      {f nextF out : Fq12Mont}
      (hstep : millerBody coeffs p
        (f, ⟨coeffIdx⟩, ⟨remaining + 1⟩) =
          .ok (.cont (nextF, ⟨nextCoeffIdx⟩, ⟨remaining⟩)))
      (tail : MillerLoopRun coeffs p remaining nextCoeffIdx nextF out) :
      MillerLoopRun coeffs p (remaining + 1) coeffIdx f out

end Ipp.Extracted.ArkworksMillerLoop
