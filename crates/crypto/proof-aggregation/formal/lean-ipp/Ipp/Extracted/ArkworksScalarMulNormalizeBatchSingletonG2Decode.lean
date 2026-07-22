import Ipp.Extracted.ArkworksScalarMulNormalizeBatchSingletonG2Exec

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMul
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

local instance : Ipp.Bls12377.g2Curve.IsElliptic :=
  Ipp.Bls12377.g2_isElliptic

/-- The decoded operations in a nonzero G2 singleton trace preserve its point. -/
theorem valid_g2_singleton_nonzero_trace (proj : G2ProjLimbTriple)
    (point : G2AffinePoint)
    (out : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (hproj : ValidG2LoopState proj point)
    (hz : ¬Ipp.Extracted.ArkworksG2.isZeroFq2Mont proj.z)
    (trace : G2SingletonNonzeroTrace proj out) :
    ∃ affine, out.val = [affine] ∧ ValidG2AffineLoopBase affine point := by
  have hproductSpec := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE proj.z trace.product
    fq2_one_canonical hproj.canonical.2.2 trace.forwardMul
  have hproductDecode : decodeFq2 trace.product = decodeFq2 proj.z := by
    rw [hproductSpec.2, decode_fq2_one, one_mul]
  have hinverseOption : trace.inverseOption = some trace.inverse := by
    cases hoption : trace.inverseOption with
    | none =>
        have hinvNone : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv
            trace.product = .ok none := by
          simpa [hoption] using trace.productInv
        have hproductDecodeZero :=
          Ipp.Extracted.ArkworksFq2.extracted_fq2_inv_none_iff
            trace.product hproductSpec.1 hinvNone
        have hzDecodeZero : decodeFq2 proj.z = 0 :=
          hproductDecode.symm.trans hproductDecodeZero
        have hzVals :=
          (Ipp.Extracted.ArkworksG2.canonical_fq2_val_eq_iff_decode_eq
            proj.z ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO
            hproj.canonical.2.2 fq2_zero_canonical).2
              (hzDecodeZero.trans decode_fq2_zero.symm)
        exact (hz (by simpa [Ipp.Extracted.ArkworksG2.isZeroFq2Mont,
          ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO] using hzVals)).elim
    | some inverse =>
        have hinverse : trace.inverse = inverse := by
          simpa [hoption] using trace.inverseChoice
        simpa [hoption, hinverse]
  have hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv trace.product =
      .ok (some trace.inverse) := by
    simpa [hinverseOption] using trace.productInv
  have hinvSpec := Ipp.Extracted.ArkworksFq2.extracted_fq2_inv_some_spec
    trace.product trace.inverse hproductSpec.1 hinv
  have hzinvSpec := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
    trace.inverse ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE trace.zinv
    hinvSpec.1 fq2_one_canonical trace.recoverInverse
  have hzinvDecode : decodeFq2 trace.zinv = decodeFq2 trace.inverse := by
    rw [hzinvSpec.2, decode_fq2_one, mul_one]
  have hzinvLeft : decodeFq2 trace.zinv * decodeFq2 proj.z = 1 := by
    calc
      decodeFq2 trace.zinv * decodeFq2 proj.z =
          decodeFq2 trace.inverse * decodeFq2 trace.product := by
            rw [hzinvDecode, hproductDecode]
      _ = 1 := hinvSpec.2
  have hz2Spec := Ipp.Extracted.ArkworksFq2.extracted_fq2_square_spec
    trace.zinv trace.z2 hzinvSpec.1 trace.squareInverse
  have hxSpec := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
    proj.x trace.z2 trace.x hproj.canonical.1 hz2Spec.1 trace.scaleX
  have hyz2Spec := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
    proj.y trace.z2 trace.yz2 hproj.canonical.2.1 hz2Spec.1 trace.scaleY2
  have hySpec := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
    trace.yz2 trace.zinv trace.y hyz2Spec.1 hzinvSpec.1 trace.scaleY3
  have hscaled := inverse_scaled_coords (decodeFq2 proj.x) (decodeFq2 proj.y)
    (decodeFq2 proj.z) (decodeFq2 trace.zinv) hzinvLeft
  let affine : ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont := {
    x := trace.x
    y := trace.y
    infinity := false
  }
  refine ⟨affine, by simpa [affine] using trace.output, ?_⟩
  refine ⟨hxSpec.1, hySpec.1, ?_⟩
  have hdecode : some (decodeFq2 trace.x, decodeFq2 trace.y) =
      decodeG2 proj := by
    simp only [decodeG2, hz, Bool.false_eq_true, if_false,
      Option.some.injEq, Prod.mk.injEq]
    constructor
    · rw [hxSpec.2, hz2Spec.2]
      exact hscaled.1
    · rw [hySpec.2, hyz2Spec.2, hz2Spec.2]
      exact hscaled.2
  rw [hdecode]
  exact hproj.represents

#print axioms valid_g2_singleton_nonzero_trace

end Ipp.Extracted.ArkworksScalarMulNormalize
