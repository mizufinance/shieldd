import Ipp.Extracted.ArkworksMultiMillerChunkLoop

/-! Opaque-value projection of Fq12 multiplication conformance. -/

namespace Ipp.Extracted.ArkworksMultiMillerMul

open Aeneas Result
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksMultiMillerModel

/-- Multiplication conformance without exposing any accumulator representation. -/
theorem mul_semantics
    (left right out : ArkworksMultiMillerModel.Fq12Limb)
    (leftValue rightValue outValue : Ipp.Bls12377.Fq12Model)
    (hleftValue : decodeFq12 left = leftValue)
    (hrightValue : decodeFq12 right = rightValue)
    (houtValue : decodeFq12 out = outValue)
    (hleft : Canonical12 left) (hright : Canonical12 right)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul left right = .ok out) :
    Canonical12 out ∧
      outValue = Ipp.Bls12377.fq12Mul leftValue rightValue := by
  refine ⟨canonical12_mul left right out hleft hright hexec, ?_⟩
  rw [← houtValue, ← hleftValue, ← hrightValue]
  exact decode_fq12_mul left right out hleft hright hexec

end Ipp.Extracted.ArkworksMultiMillerMul
