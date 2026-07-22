import Ipp.Extracted.ArkworksMillerModel

/-! Bundled representation boundary for Miller-loop execution. -/

namespace Ipp.Extracted.ArkworksMillerInvariant

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksMillerModel

abbrev Fq12Mont := ark_ip_proofs.s3_07_arkworks_fq_spike.Fq12Mont

/-- Canonical accumulator, decoded prefix value, and exact coefficient index. -/
structure MillerLoopInv (coeffs : List DecodedEllCoeff) (x y : Fq)
    (remaining coeffIdx : Nat) (f : Fq12Mont) : Prop where
  canonical : Canonical12 f
  modelPrefix : millerPrefix coeffs x y (63 - remaining) =
    some (decodeFq12 f, coeffIdx)
  coeffIndex : coeffIdx = millerCoeffCount (63 - remaining)

theorem millerLoopInv_initial (coeffs : List DecodedEllCoeff) (x y : Fq) :
    MillerLoopInv coeffs x y 63 0
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE := by
  exact ⟨fq12_one_spec.1, by simp [millerPrefix, fq12_one_spec.2], rfl⟩

end Ipp.Extracted.ArkworksMillerInvariant
