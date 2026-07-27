import Ipp.Extracted.ArkworksMillerLoop

/-! Semantic specialization of a complete Miller schedule trace. -/

namespace Ipp.Extracted.ArkworksMillerScheduleSemantic

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMillerInvariant
open Ipp.Extracted.ArkworksMillerLoop

/-- A complete extracted schedule trace reaches the canonical prefix model. -/
theorem miller_schedule_semantic
    (coeffs : List G2EllCoeffLimb) (p : G1AffineLimb)
    (out : Fq12Mont)
    (hc : ∀ coeff ∈ coeffs, CanonicalEllCoeff coeff)
    (hp : CanonicalFiniteG1 p)
    (hrun : LoopResult (millerBody coeffs p)
      (ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE, 0#usize, 63#usize)
      (.ok out)) :
    Canonical12 out ∧
      millerPrefix (coeffs.map decodeEllCoeff) (decode p.x) (decode p.y) 63 =
        some (decodeFq12 out, 69) := by
  exact millerLoopResult coeffs p 63 0
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE out (by omega)
    hc hp (millerLoopInv_initial
      (coeffs.map decodeEllCoeff) (decode p.x) (decode p.y)) hrun

end Ipp.Extracted.ArkworksMillerScheduleSemantic
