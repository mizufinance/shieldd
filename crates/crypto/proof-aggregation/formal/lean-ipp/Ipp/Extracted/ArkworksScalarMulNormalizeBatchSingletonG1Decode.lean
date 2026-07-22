import Ipp.Extracted.ArkworksScalarMulNormalizeBatchSingletonG1Exec

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul (decode limbsToNat)
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksScalarMul
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

/-- The decoded operations in a nonzero G1 singleton trace preserve its point. -/
theorem valid_g1_singleton_nonzero_trace (proj : G1ProjLimbTriple)
    (point : G1AffinePoint)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (hproj : ValidG1LoopState proj point)
    (hz : proj.z.val ≠
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (trace : G1SingletonNonzeroTrace proj out) :
    ∃ affine, out.val = [affine] ∧ ValidG1AffineLoopBase affine point := by
  have hproductSpec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE proj.z trace.product
    fq_one_canonical hproj.canonical.2.2 trace.forwardMul
  have hproductDecode := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE proj.z trace.product
    fq_one_canonical hproj.canonical.2.2 trace.forwardMul
  rw [decode_fq_one, one_mul] at hproductDecode
  have hinverseOption : trace.inverseOption = some trace.inverse := by
    cases hoption : trace.inverseOption with
    | none =>
        have hinvNone : ark_ip_proofs.s3_07_arkworks_fq_spike.inv
            trace.product = .ok none := by
          simpa [hoption] using trace.productInv
        have hproductZero := inv_none_imp_zero_val trace.product hinvNone
        have hproductDecodeZero : decode trace.product = 0 :=
          (Ipp.Extracted.ArkworksG1.canonical_fq_val_eq_iff_decode_eq
            trace.product ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO
            hproductSpec.1 fq_zero_canonical).1 hproductZero |>.trans
              decode_fq_zero
        have hzDecodeZero : decode proj.z = 0 :=
          hproductDecode.symm.trans hproductDecodeZero
        have hzValZero :=
          (Ipp.Extracted.ArkworksG1.canonical_fq_val_eq_iff_decode_eq
            proj.z ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO
            hproj.canonical.2.2 fq_zero_canonical).2
              (hzDecodeZero.trans decode_fq_zero.symm)
        exact (hz hzValZero).elim
    | some inverse =>
        have hinverse : trace.inverse = inverse := by
          simpa [hoption] using trace.inverseChoice
        simpa [hoption, hinverse]
  have hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.inv trace.product =
      .ok (some trace.inverse) := by
    simpa [hinverseOption] using trace.productInv
  have hproductNe : trace.product ≠
      Ipp.Extracted.ArkworksFqInv.zeroArray := by
    intro hzero
    rw [hzero, Ipp.Extracted.ArkworksFqInv.extracted_inv_zero] at hinv
    simp at hinv
  have hinvSpec := Ipp.Extracted.ArkworksFqInv.extracted_inv_spec
    trace.product trace.inverse hproductSpec.1 hproductNe hinv
  have hinvDecode := Ipp.Extracted.ArkworksFqInv.decode_extracted_inv
    trace.product trace.inverse hproductSpec.1 hproductNe hinv
  have hzinvSpec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    trace.inverse ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE trace.zinv
    hinvSpec.coefficient_lt fq_one_canonical trace.recoverInverse
  have hzinvDecode := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    trace.inverse ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE trace.zinv
    hinvSpec.coefficient_lt fq_one_canonical trace.recoverInverse
  rw [decode_fq_one, mul_one] at hzinvDecode
  have hzinvLeft : decode trace.zinv * decode proj.z = 1 := by
    calc
      decode trace.zinv * decode proj.z =
          decode trace.inverse * decode trace.product := by
            rw [hzinvDecode, hproductDecode]
      _ = 1 := hinvDecode
  have hz2Spec := Ipp.Extracted.ArkworksFqSquare.extracted_square_spec
    trace.zinv trace.z2 hzinvSpec.1 trace.squareInverse
  have hxSpec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    proj.x trace.z2 trace.x hproj.canonical.1 hz2Spec.1 trace.scaleX
  have hyz2Spec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    proj.y trace.z2 trace.yz2 hproj.canonical.2.1 hz2Spec.1 trace.scaleY2
  have hySpec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    trace.yz2 trace.zinv trace.y hyz2Spec.1 hzinvSpec.1 trace.scaleY3
  have dz2 := Ipp.Extracted.ArkworksFqSquare.decode_extracted_square
    trace.zinv trace.z2 hzinvSpec.1 trace.squareInverse
  have dx := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    proj.x trace.z2 trace.x hproj.canonical.1 hz2Spec.1 trace.scaleX
  have dyz2 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    proj.y trace.z2 trace.yz2 hproj.canonical.2.1 hz2Spec.1 trace.scaleY2
  have dy := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    trace.yz2 trace.zinv trace.y hyz2Spec.1 hzinvSpec.1 trace.scaleY3
  have hscaled := inverse_scaled_coords (decode proj.x) (decode proj.y)
    (decode proj.z) (decode trace.zinv) hzinvLeft
  let affine : ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont := {
    x := trace.x
    y := trace.y
    infinity := false
  }
  refine ⟨affine, by simpa [affine] using trace.output, ?_⟩
  refine ⟨hxSpec.1, hySpec.1, ?_⟩
  have hdecode : some (decode trace.x, decode trace.y) = decodeG1 proj := by
    simp only [decodeG1, hz, if_false, Option.some.injEq, Prod.mk.injEq]
    constructor
    · rw [dx, dz2]
      exact hscaled.1
    · rw [dy, dyz2, dz2]
      exact hscaled.2
  rw [hdecode]
  exact hproj.represents

#print axioms valid_g1_singleton_nonzero_trace

end Ipp.Extracted.ArkworksScalarMulNormalize
