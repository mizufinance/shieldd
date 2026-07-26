import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG2Model

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Result
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

theorem g2_backward_nonzero_semantic
    (previousValues : List G2BatchProj)
    (previousProducts : List G2BatchFq)
    (previousProduct : G2BatchFq) (value : G2BatchProj)
    (product inverse nextInverse zinv : G2BatchFq)
    (trace : G2ForwardTrace previousValues previousProducts previousProduct)
    (hcanonical : ∀ item ∈ previousValues,
      Canonical2 item.z)
    (hzCanonical : Canonical2 value.z)
    (hz : ¬Ipp.Extracted.ArkworksG2.isZeroFq2Mont value.z)
    (hforward : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul
      previousProduct value.z = .ok product)
    (hinverseCanonical : Canonical2 inverse)
    (hinverse : decodeFq2 inverse * decodeFq2 product = 1)
    (hnext : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul inverse value.z =
      .ok nextInverse)
    (hzinv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul inverse
      previousProduct = .ok zinv) :
    Canonical2 nextInverse ∧
      decodeFq2 nextInverse * decodeFq2 previousProduct = 1 ∧
      G2RecoveredInverse value zinv := by
  obtain ⟨_, hpreviousCanonical, _⟩ := trace.semantic hcanonical
  have hforwardSpec := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
    previousProduct value.z product hpreviousCanonical hzCanonical hforward
  have hnextSpec := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
    inverse value.z nextInverse hinverseCanonical hzCanonical hnext
  have hzinvSpec := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
    inverse previousProduct zinv hinverseCanonical hpreviousCanonical hzinv
  refine ⟨hnextSpec.1, ?_, .nonzero hz hzinvSpec.1 ?_⟩
  · rw [hnextSpec.2]
    calc
      (decodeFq2 inverse * decodeFq2 value.z) * decodeFq2 previousProduct =
          decodeFq2 inverse *
            (decodeFq2 previousProduct * decodeFq2 value.z) := by ring
      _ = decodeFq2 inverse * decodeFq2 product := by rw [hforwardSpec.2]
      _ = 1 := hinverse
  · rw [hzinvSpec.2]
    calc
      (decodeFq2 inverse * decodeFq2 previousProduct) * decodeFq2 value.z =
          decodeFq2 inverse *
            (decodeFq2 previousProduct * decodeFq2 value.z) := by ring
      _ = decodeFq2 inverse * decodeFq2 product := by rw [hforwardSpec.2]
      _ = 1 := hinverse

end Ipp.Extracted.ArkworksScalarMulNormalize
