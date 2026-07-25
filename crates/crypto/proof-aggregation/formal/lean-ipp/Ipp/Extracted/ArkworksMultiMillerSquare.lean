import Ipp.Extracted.ArkworksMultiMillerChunkInvariant

/-! Opaque-value projection of Fq12 square conformance. -/

namespace Ipp.Extracted.ArkworksMultiMillerSquare

open Aeneas Result
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksMillerInvariant
open Ipp.Extracted.ArkworksMultiMillerModel

/-- Square conformance without exposing either accumulator representation. -/
theorem square_semantics
    (f squared : ArkworksMultiMillerModel.Fq12Limb)
    (fValue squaredValue : Ipp.Bls12377.Fq12Model)
    (hfValue : decodeFq12 f = fValue)
    (hsquaredValue : decodeFq12 squared = squaredValue)
    (hf : Canonical12 f)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_square f = .ok squared) :
    Canonical12 squared ∧
      squaredValue = Ipp.Bls12377.fq12Square fValue := by
  refine ⟨canonical12_square f squared hf hexec, ?_⟩
  rw [← hsquaredValue, ← hfValue]
  exact decode_fq12_square f squared hf hexec

end Ipp.Extracted.ArkworksMultiMillerSquare
