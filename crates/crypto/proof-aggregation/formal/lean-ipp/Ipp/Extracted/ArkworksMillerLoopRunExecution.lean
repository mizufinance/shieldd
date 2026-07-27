import Ipp.Extracted.ArkworksMillerLoopDone
import Ipp.Extracted.ArkworksMillerLoopFinal
import Ipp.Extracted.ArkworksMillerLoopNext
import Ipp.Extracted.ArkworksMillerLoopRun

/-! Convert a finite extracted result into an explicit Miller countdown trace. -/

namespace Ipp.Extracted.ArkworksMillerLoop

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMillerInvariant

set_option maxHeartbeats 1000000

theorem run_of_loopResult
    (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb)
    (remaining coeffIdx : Nat) (f out : Fq12Mont)
    (hbound : remaining ≤ 63)
    (hc : ∀ coeff ∈ coeffs, CanonicalEllCoeff coeff)
    (hp : CanonicalFiniteG1 p)
    (hinv : MillerLoopInv (coeffs.map decodeEllCoeff)
      (decode p.x) (decode p.y) remaining coeffIdx f)
    (hrun : LoopResult (millerBody coeffs p)
      (f, ⟨coeffIdx⟩, ⟨remaining⟩) (.ok out)) :
    MillerLoopRun coeffs p remaining coeffIdx f out := by
  induction remaining generalizing coeffIdx f with
  | zero =>
      cases hrun with
      | done hbody =>
          have hout := millerBody_zero_done coeffs p coeffIdx f out hbody
          subst out
          exact .done coeffIdx f
            (millerLoopInv_final coeffs p coeffIdx f hinv)
      | next hbody _ =>
          exact (millerBody_zero_not_next coeffs p coeffIdx f _ hbody).elim
  | succ remaining ih =>
      cases hrun with
      | done hbody =>
          have hstep := millerBody_step coeffs p (remaining + 1)
            coeffIdx f (.done out) (by omega) hbound hc hp hinv hbody
          rcases hstep with ⟨f', coeffIdx', hflow, _⟩
          cases hflow
      | next hbody hnext =>
          rename_i nextState
          rcases nextState with ⟨f', ⟨coeffIdx'⟩, ⟨remaining'⟩⟩
          have hstep := millerBody_step coeffs p (remaining + 1)
            coeffIdx f (.cont (f', ⟨coeffIdx'⟩, ⟨remaining'⟩))
            (by omega) hbound hc hp hinv hbody
          rcases hstep with ⟨nextF, nextCoeffIdx, hflow, hnextInv⟩
          simp only [ControlFlow.cont.injEq, Prod.mk.injEq,
            Usize.mk.injEq] at hflow
          rcases hflow with ⟨rfl, rfl, rfl⟩
          exact .next hbody
            (ih coeffIdx' f' (by omega) hnextInv hnext)

end Ipp.Extracted.ArkworksMillerLoop
