import Ipp.Extracted.ArkworksMillerExecution

/-! Single-pair Miller schedule accumulation conformance. -/

namespace Ipp.Extracted.ArkworksMiller

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMillerInvariant
open Ipp.Extracted.ArkworksMillerLoop
open Ipp.Extracted.ArkworksMillerExecution

abbrev Fq12Limb := ark_ip_proofs.s3_07_arkworks_fq_spike.Fq12Mont

set_option maxHeartbeats 1000000 in
/-- The extracted 63-position schedule canonically accumulates the decoded
line coefficients in order. This theorem does not assert pairing semantics. -/
theorem miller_schedule_spec
    (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb) (out : Fq12Limb)
    (hc : ∀ coeff ∈ coeffs, CanonicalEllCoeff coeff)
    (hlen : coeffs.length = 69)
    (hp : CanonicalFiniteG1 p)
    (hexec : miller_schedule coeffs p = .ok out) :
    Canonical12 out ∧
      Ipp.Extracted.ArkworksFq12.decodeFq12 out =
        (Ipp.Extracted.ArkworksMillerModel.millerFoldModel
          (coeffs.map Ipp.Extracted.ArkworksMillerModel.decodeEllCoeff)
          (Ipp.Extracted.ArkworksFqMul.decode p.x)
          (Ipp.Extracted.ArkworksFqMul.decode p.y)) := by
  have hlenLower : 69 ≤ coeffs.length := by omega
  clear hlenLower
  have hloop : LoopResult (millerBody coeffs p)
      (ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE, 0#usize, 63#usize)
      (.ok out) := miller_schedule_loopResult coeffs p out hexec
  have hresult := millerLoopResult coeffs p 63 0
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE out (by omega)
    hc hp (millerLoopInv_initial
      (coeffs.map Ipp.Extracted.ArkworksMillerModel.decodeEllCoeff)
      (Ipp.Extracted.ArkworksFqMul.decode p.x)
      (Ipp.Extracted.ArkworksFqMul.decode p.y)) hloop
  refine ⟨hresult.1, ?_⟩
  exact (millerFoldModel_eq_of_prefix _ _ _ _ _ hresult.2).symm

end Ipp.Extracted.ArkworksMiller
