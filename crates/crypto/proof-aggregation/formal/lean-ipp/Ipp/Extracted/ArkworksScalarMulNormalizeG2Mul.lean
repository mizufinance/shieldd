import Ipp.Extracted.ArkworksScalarMulNormalizeG2InvSquare

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Result
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)
open Ipp.Extracted.ArkworksG2

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

/-- The three coordinate multiplications refine the inverse-scaled formulas. -/
theorem g2_inverse_mul_spec (proj : G2ProjLimbTriple)
    (zinv z2 x yz2 y : ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont)
    (hproj : CanonicalG2 proj)
    (hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv proj.z =
      .ok (some zinv))
    (hz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square zinv = .ok z2)
    (hx : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul proj.x z2 = .ok x)
    (hyz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul proj.y z2 = .ok yz2)
    (hy : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul yz2 zinv = .ok y) :
    Canonical2 x ∧ Canonical2 y ∧
      decodeFq2 zinv * decodeFq2 proj.z = 1 ∧
      decodeFq2 x = decodeFq2 proj.x * (decodeFq2 zinv * decodeFq2 zinv) ∧
      decodeFq2 y =
        (decodeFq2 proj.y * (decodeFq2 zinv * decodeFq2 zinv)) *
          decodeFq2 zinv := by
  have hs := g2_inverse_square_spec proj.z zinv z2 hproj.2.2 hinv hz2
  have hxs := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
    proj.x z2 x hproj.1 hs.2.1 hx
  have hyzs := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
    proj.y z2 yz2 hproj.2.1 hs.2.1 hyz2
  have hys := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
    yz2 zinv y hyzs.1 hs.1 hy
  refine ⟨hxs.1, hys.1, hs.2.2.1, ?_, ?_⟩
  · rw [hxs.2, hs.2.2.2]
  · rw [hys.2, hyzs.2, hs.2.2.2]

#print axioms g2_inverse_mul_spec

end Ipp.Extracted.ArkworksScalarMulNormalize
