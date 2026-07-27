import Ipp.Extracted.ArkworksMillerExecution
import Ipp.Extracted.ArkworksMillerScheduleSemantic

/-! Single-pair Miller schedule accumulation conformance. -/

namespace Ipp.Extracted.ArkworksMiller

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMillerExecution
open Ipp.Extracted.ArkworksMillerScheduleSemantic

abbrev Fq12Limb := ark_ip_proofs.s3_07_arkworks_fq_spike.Fq12Mont

/-- The extracted 63-position schedule canonically accumulates the decoded
line coefficients in order. This theorem does not assert pairing semantics. -/
theorem miller_schedule_spec
    (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb) (out : Fq12Limb)
    (hc : ∀ coeff ∈ coeffs, CanonicalEllCoeff coeff)
    (hlen : coeffs.length = 69)
    (hp : CanonicalFiniteG1 p)
    (hexec : miller_schedule coeffs p = .ok out) :
    Canonical12 out ∧
      decodeFq12 out =
        millerFoldModel (coeffs.map decodeEllCoeff) (decode p.x) (decode p.y) := by
  have hrun := miller_schedule_loopResult coeffs p out hexec
  have hresult := miller_schedule_semantic coeffs p out hc hp hrun
  refine ⟨hresult.1, ?_⟩
  exact (millerFoldModel_eq_of_prefix _ _ _ _ _ hresult.2).symm

#print axioms miller_schedule_spec

end Ipp.Extracted.ArkworksMiller
