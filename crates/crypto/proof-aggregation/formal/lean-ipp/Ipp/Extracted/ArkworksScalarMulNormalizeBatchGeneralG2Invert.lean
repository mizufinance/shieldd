import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG2Forward
import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG2Backward

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

theorem g2_batch_invert_recovered (values : List G2BatchProj)
    (out : alloc.vec.Vec G2BatchFq)
    (hcanonical : ∀ value ∈ values, Canonical2 value.z)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed
        ⟨values⟩ = .ok out) :
    G2RecoveredBatch values out.val := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed
    at hexec
  simp only [Slice.len, alloc.vec.Vec.with_capacity] at hexec
  obtain ⟨forward, hforward, hexec⟩ := bind_eq_ok hexec
  rcases forward with ⟨products, product⟩
  obtain ⟨inverseOption, hinv, hexec⟩ := bind_eq_ok hexec
  have trace := g2_forward_trace values products product hforward
  obtain ⟨_, hproductCanonical, hproductNe⟩ := trace.semantic hcanonical
  cases hoption : inverseOption with
  | none =>
      have hinvNone : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv product =
          .ok none := by simpa [hoption] using hinv
      have hdecodeZero :=
        Ipp.Extracted.ArkworksFq2.extracted_fq2_inv_none_iff
          product hproductCanonical hinvNone
      exact (hproductNe hdecodeZero).elim
  | some inverse =>
      have hinvSome : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv product =
          .ok (some inverse) := by simpa [hoption] using hinv
      have hinverseSpec :=
        Ipp.Extracted.ArkworksFq2.extracted_fq2_inv_some_spec
          product inverse hproductCanonical hinvSome
      have hbackward :
          ark_ip_proofs.s3_07_arkworks_fq_spike.g2_batch_invert_reversed_loop1
            ⟨values⟩ products ⟨values.length⟩ inverse ⟨[]⟩ = .ok out := by
        simpa [hoption] using hexec
      exact g2_backward_recovered values products product inverse out trace
        hcanonical hinverseSpec.1 hinverseSpec.2 hbackward

#print axioms g2_batch_invert_recovered

end Ipp.Extracted.ArkworksScalarMulNormalize
