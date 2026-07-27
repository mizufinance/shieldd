import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG1Model

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Result
open Ipp.Extracted.ArkworksFqMul (decode limbsToNat)

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

/-- One nonzero backward step preserves the prefix inverse and recovers `Z⁻¹`. -/
theorem g1_backward_nonzero_semantic
    (previousValues : List G1BatchProj)
    (previousProducts : List G1BatchFq)
    (previousProduct : G1BatchFq) (value : G1BatchProj)
    (product inverse nextInverse zinv : G1BatchFq)
    (trace : G1ForwardTrace previousValues previousProducts previousProduct)
    (hcanonical : ∀ item ∈ previousValues,
      limbsToNat item.z < Ipp.Bls12377.baseModulus)
    (hzCanonical : limbsToNat value.z < Ipp.Bls12377.baseModulus)
    (hz : value.z.val ≠
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hforward : ark_ip_proofs.s3_07_arkworks_fq_spike.mul
      previousProduct value.z = .ok product)
    (hinverseCanonical : limbsToNat inverse < Ipp.Bls12377.baseModulus)
    (hinverse : decode inverse * decode product = 1)
    (hnext : ark_ip_proofs.s3_07_arkworks_fq_spike.mul inverse value.z =
      .ok nextInverse)
    (hzinv : ark_ip_proofs.s3_07_arkworks_fq_spike.mul inverse
      previousProduct = .ok zinv) :
    limbsToNat nextInverse < Ipp.Bls12377.baseModulus ∧
      decode nextInverse * decode previousProduct = 1 ∧
      G1RecoveredInverse value zinv := by
  obtain ⟨_, hpreviousCanonical, _⟩ := trace.semantic hcanonical
  have hforwardDecode := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    previousProduct value.z product hpreviousCanonical hzCanonical hforward
  have hnextSpec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    inverse value.z nextInverse hinverseCanonical hzCanonical hnext
  have hnextDecode := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    inverse value.z nextInverse hinverseCanonical hzCanonical hnext
  have hzinvSpec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    inverse previousProduct zinv hinverseCanonical hpreviousCanonical hzinv
  have hzinvDecode := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    inverse previousProduct zinv hinverseCanonical hpreviousCanonical hzinv
  refine ⟨hnextSpec.1, ?_, .nonzero hz hzinvSpec.1 ?_⟩
  · rw [hnextDecode]
    calc
      (decode inverse * decode value.z) * decode previousProduct =
          decode inverse * (decode previousProduct * decode value.z) := by ring
      _ = decode inverse * decode product := by rw [hforwardDecode]
      _ = 1 := hinverse
  · rw [hzinvDecode]
    calc
      (decode inverse * decode previousProduct) * decode value.z =
          decode inverse * (decode previousProduct * decode value.z) := by ring
      _ = decode inverse * decode product := by rw [hforwardDecode]
      _ = 1 := hinverse

end Ipp.Extracted.ArkworksScalarMulNormalize
