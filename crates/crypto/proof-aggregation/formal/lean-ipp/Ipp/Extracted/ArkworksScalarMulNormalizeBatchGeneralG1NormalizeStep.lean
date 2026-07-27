import Ipp.Extracted.ArkworksScalarMulNormalizeBatchGeneralG1Invert
import Ipp.Extracted.ArkworksScalarMulNormalizeBatchAllInfinityG1Normalize
import Ipp.Extracted.ArkworksScalarMulG1Base

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Result
open Ipp.Extracted.ArkworksFqMul (decode limbsToNat)
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksScalarMul
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

theorem g1_normalize_zero_semantic (value : G1BatchProj)
    (point : G1AffinePoint) (hvalue : ValidG1LoopState value point)
    (hz : value.z.val =
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    ValidG1AffineLoopBase g1AffineIdentity point := by
  refine ⟨fq_zero_canonical, fq_one_canonical, ?_⟩
  simpa [g1AffineIdentity, decodeG1, hz] using hvalue.represents

/-- Scaling by a recovered inverse preserves the represented nonzero G1 point. -/
theorem g1_normalize_nonzero_semantic (value : G1BatchProj)
    (point : G1AffinePoint) (zinv z2 x yz2 y : G1BatchFq)
    (hvalue : ValidG1LoopState value point)
    (hrecovered : G1RecoveredInverse value zinv)
    (hz : value.z.val ≠
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.square zinv = .ok z2)
    (hx : ark_ip_proofs.s3_07_arkworks_fq_spike.mul value.x z2 = .ok x)
    (hyz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.mul value.y z2 = .ok yz2)
    (hy : ark_ip_proofs.s3_07_arkworks_fq_spike.mul yz2 zinv = .ok y) :
    ValidG1AffineLoopBase ({ x := x, y := y, infinity := false } :
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont) point := by
  cases hrecovered with
  | zero hzZero => exact (hz hzZero).elim
  | nonzero hz' hzinvCanonical hzinverse =>
      have hz2Spec := Ipp.Extracted.ArkworksFqSquare.extracted_square_spec
        zinv z2 hzinvCanonical hz2
      have hxSpec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
        value.x z2 x hvalue.canonical.1 hz2Spec.1 hx
      have hyz2Spec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
        value.y z2 yz2 hvalue.canonical.2.1 hz2Spec.1 hyz2
      have hySpec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
        yz2 zinv y hyz2Spec.1 hzinvCanonical hy
      have dz2 := Ipp.Extracted.ArkworksFqSquare.decode_extracted_square
        zinv z2 hzinvCanonical hz2
      have dx := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
        value.x z2 x hvalue.canonical.1 hz2Spec.1 hx
      have dyz2 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
        value.y z2 yz2 hvalue.canonical.2.1 hz2Spec.1 hyz2
      have dy := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
        yz2 zinv y hyz2Spec.1 hzinvCanonical hy
      have hscaled := inverse_scaled_coords (decode value.x) (decode value.y)
        (decode value.z) (decode zinv) hzinverse
      refine ⟨hxSpec.1, hySpec.1, ?_⟩
      have hdecode : some (decode x, decode y) = decodeG1 value := by
        simp only [decodeG1, hz, if_false, Option.some.injEq, Prod.mk.injEq]
        constructor
        · rw [dx, dz2]
          exact hscaled.1
        · rw [dy, dyz2, dz2]
          exact hscaled.2
      change RepresentsDecodedG1 (some (decode x, decode y)) point
      rw [hdecode]
      exact hvalue.represents

end Ipp.Extracted.ArkworksScalarMulNormalize
