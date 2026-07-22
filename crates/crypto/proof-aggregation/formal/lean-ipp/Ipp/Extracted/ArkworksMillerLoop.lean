import Ipp.Extracted.ArkworksMillerStep

/-! Structural countdown from an extracted loop trace to the final prefix model. -/

namespace Ipp.Extracted.ArkworksMillerLoop

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMillerInvariant
open Ipp.Extracted.ArkworksMillerStep

/-- Execution-only body view with the extracted tuple state bundled. -/
def millerBody (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb)
    (state : Fq12Mont × Usize × Usize) :
    Result (ControlFlow (Fq12Mont × Usize × Usize) Fq12Mont) :=
  let (f, coeffIdx, remaining) := state
  ark_ip_proofs.s3_07_arkworks_fq_spike.miller_schedule_loop.body
    ⟨coeffs⟩ p f coeffIdx remaining

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
  induction remaining generalizing coeffIdx f with
  | zero =>
      cases hrun with
      | done hbody =>
          simp [millerBody,
            ark_ip_proofs.s3_07_arkworks_fq_spike.miller_schedule_loop.body]
            at hbody
          subst out
          exact ⟨hinv.canonical, by
            have hidx : coeffIdx = 69 := by
              rw [hinv.coeffIndex, millerCoeffCount_63]
            rw [hidx] at hinv
            exact hinv.modelPrefix⟩
      | next hbody hnext =>
          simp [millerBody,
            ark_ip_proofs.s3_07_arkworks_fq_spike.miller_schedule_loop.body]
            at hbody
  | succ remaining ih =>
      cases hrun with
      | done hbody =>
          have hstep := millerLoopInv_step coeffs p (remaining + 1)
            coeffIdx f (.done out) (by omega) hbound hc hp hinv hbody
          rcases hstep with ⟨f', coeffIdx', hflow, _⟩
          cases hflow
      | next hbody hnext =>
          rename_i nextState
          rcases nextState with ⟨f', ⟨coeffIdx'⟩, ⟨remaining'⟩⟩
          have hstep := millerLoopInv_step coeffs p (remaining + 1)
            coeffIdx f (.cont (f', ⟨coeffIdx'⟩, ⟨remaining'⟩))
            (by omega) hbound hc hp hinv hbody
          rcases hstep with ⟨nextF, nextCoeffIdx, hflow, hnextInv⟩
          simp only [ControlFlow.cont.injEq, Prod.mk.injEq,
            Usize.mk.injEq] at hflow
          rcases hflow with ⟨rfl, rfl, rfl⟩
          exact ih coeffIdx' f' (by omega) hnextInv hnext

end Ipp.Extracted.ArkworksMillerLoop
