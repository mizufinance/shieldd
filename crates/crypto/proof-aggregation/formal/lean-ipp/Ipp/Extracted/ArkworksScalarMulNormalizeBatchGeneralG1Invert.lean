import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG1Forward
import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG1Backward

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul (decode limbsToNat)
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

/-- The complete G1 batch inversion returns one reverse-aligned inverse per input. -/
theorem g1_batch_invert_recovered (values : List G1BatchProj)
    (out : alloc.vec.Vec G1BatchFq)
    (hcanonical : ∀ value ∈ values,
      limbsToNat value.z < Ipp.Bls12377.baseModulus)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed
        ⟨values⟩ = .ok out) :
    G1RecoveredBatch values out.val := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed
    at hexec
  simp only [Slice.len, alloc.vec.Vec.with_capacity] at hexec
  obtain ⟨forward, hforward, hexec⟩ := bind_eq_ok hexec
  rcases forward with ⟨products, product⟩
  obtain ⟨inverseOption, hinv, hexec⟩ := bind_eq_ok hexec
  have trace := g1_forward_trace values products product hforward
  obtain ⟨_, hproductCanonical, hproductNe⟩ := trace.semantic hcanonical
  cases hoption : inverseOption with
  | none =>
      have hinvNone : ark_ip_proofs.s3_07_arkworks_fq_spike.inv product =
          .ok none := by simpa [hoption] using hinv
      have hproductZero := inv_none_imp_zero_val product hinvNone
      have hdecodeZero : decode product = 0 :=
        (Ipp.Extracted.ArkworksG1.canonical_fq_val_eq_iff_decode_eq
          product ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO
          hproductCanonical fq_zero_canonical).1 hproductZero |>.trans
            decode_fq_zero
      exact (hproductNe hdecodeZero).elim
  | some inverse =>
      have hinvSome : ark_ip_proofs.s3_07_arkworks_fq_spike.inv product =
          .ok (some inverse) := by simpa [hoption] using hinv
      have hproductRawNe : product ≠
          Ipp.Extracted.ArkworksFqInv.zeroArray := by
        intro hzero
        rw [hzero, Ipp.Extracted.ArkworksFqInv.extracted_inv_zero] at hinvSome
        simp at hinvSome
      have hinverseSpec := Ipp.Extracted.ArkworksFqInv.extracted_inv_spec
        product inverse hproductCanonical hproductRawNe hinvSome
      have hinverseDecode := Ipp.Extracted.ArkworksFqInv.decode_extracted_inv
        product inverse hproductCanonical hproductRawNe hinvSome
      have hbackward :
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_batch_invert_reversed_loop1
            ⟨values⟩ products ⟨values.length⟩ inverse ⟨[]⟩ = .ok out := by
        simpa [hoption] using hexec
      exact g1_backward_recovered values products product inverse out trace
        hcanonical hinverseSpec.coefficient_lt hinverseDecode hbackward

#print axioms g1_batch_invert_recovered

end Ipp.Extracted.ArkworksScalarMulNormalize
