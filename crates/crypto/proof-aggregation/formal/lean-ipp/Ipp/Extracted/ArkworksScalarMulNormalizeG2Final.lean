import Ipp.Extracted.ArkworksScalarMulNormalizeG2
import Ipp.Extracted.ArkworksScalarMulG2Base

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Ipp.Extracted.ArkworksFq2 (decodeFq2)
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMul

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

local instance : Ipp.Bls12377.g2Curve.IsElliptic :=
  Ipp.Bls12377.g2_isElliptic

/-- Executed G2 Jacobian normalization preserves the represented Mathlib point. -/
theorem valid_g2_into_affine (proj : G2ProjLimbTriple)
    (point : G2AffinePoint) (out : G2AffineLimbPair)
    (hproj : ValidG2LoopState proj point)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_into_affine proj =
      .ok out) :
    ValidG2AffineLoopBase out point := by
  have hdecode := decode_g2_into_affine proj out hproj.canonical hexec
  refine ⟨hdecode.1, hdecode.2.1, ?_⟩
  rw [hdecode.2.2]
  exact hproj.represents

#print axioms valid_g2_into_affine

end Ipp.Extracted.ArkworksScalarMulNormalize
