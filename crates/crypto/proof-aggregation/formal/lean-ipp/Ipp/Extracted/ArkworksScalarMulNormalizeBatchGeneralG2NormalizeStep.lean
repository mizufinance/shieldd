import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG2Invert
import Ipp.Extracted.ArkworksScalarMulNormalizeBatchAllInfinityG2Normalize
import Ipp.Extracted.ArkworksScalarMulG2Base

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Result
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

theorem g2_normalize_zero_semantic (value : G2BatchProj)
    (point : G2AffinePoint) (hvalue : ValidG2LoopState value point)
    (hz : isZeroFq2Mont value.z) :
    ValidG2AffineLoopBase g2AffineIdentity point := by
  refine ⟨fq2_zero_canonical, fq2_one_canonical, ?_⟩
  simpa [g2AffineIdentity, decodeG2, hz] using hvalue.represents

theorem g2_normalize_nonzero_semantic (value : G2BatchProj)
    (point : G2AffinePoint) (zinv z2 x yz2 y : G2BatchFq)
    (hvalue : ValidG2LoopState value point)
    (hrecovered : G2RecoveredInverse value zinv)
    (hz : ¬isZeroFq2Mont value.z)
    (hz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square zinv = .ok z2)
    (hx : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul value.x z2 = .ok x)
    (hyz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul value.y z2 = .ok yz2)
    (hy : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul yz2 zinv = .ok y) :
    ValidG2AffineLoopBase ({ x := x, y := y, infinity := false } :
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont) point := by
  cases hrecovered with
  | zero hzZero => exact (hz hzZero).elim
  | nonzero hz' hzinvCanonical hzinverse =>
      have hz2Spec := Ipp.Extracted.ArkworksFq2.extracted_fq2_square_spec
        zinv z2 hzinvCanonical hz2
      have hxSpec := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
        value.x z2 x hvalue.canonical.1 hz2Spec.1 hx
      have hyz2Spec := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
        value.y z2 yz2 hvalue.canonical.2.1 hz2Spec.1 hyz2
      have hySpec := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
        yz2 zinv y hyz2Spec.1 hzinvCanonical hy
      have hscaled := inverse_scaled_coords (decodeFq2 value.x)
        (decodeFq2 value.y) (decodeFq2 value.z) (decodeFq2 zinv) hzinverse
      refine ⟨hxSpec.1, hySpec.1, ?_⟩
      have hdecode : some (decodeFq2 x, decodeFq2 y) = decodeG2 value := by
        simp only [decodeG2, hz, Bool.false_eq_true, if_false,
          Option.some.injEq, Prod.mk.injEq]
        constructor
        · rw [hxSpec.2, hz2Spec.2]
          exact hscaled.1
        · rw [hySpec.2, hyz2Spec.2, hz2Spec.2]
          exact hscaled.2
      change RepresentsDecodedG2 (some (decodeFq2 x, decodeFq2 y)) point
      rw [hdecode]
      exact hvalue.represents

end Ipp.Extracted.ArkworksScalarMulNormalize
