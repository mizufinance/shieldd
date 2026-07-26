import Ipp.Extracted.ArkworksScalarMulNormalizeCommon

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Result
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)
open Ipp.Extracted.ArkworksG2

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

/-- The executed inverse and square recover the inverse-square field value. -/
theorem g2_inverse_square_spec (z zinv z2 :
    ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont)
    (hz : Canonical2 z)
    (hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv z =
      .ok (some zinv))
    (hz2 : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square zinv = .ok z2) :
    Canonical2 zinv ∧ Canonical2 z2 ∧
      decodeFq2 zinv * decodeFq2 z = 1 ∧
      decodeFq2 z2 = decodeFq2 zinv * decodeFq2 zinv := by
  have hi := Ipp.Extracted.ArkworksFq2.extracted_fq2_inv_some_spec
    z zinv hz hinv
  have hs := Ipp.Extracted.ArkworksFq2.extracted_fq2_square_spec
    zinv z2 hi.1 hz2
  exact ⟨hi.1, hs.1, hi.2, hs.2⟩

#print axioms g2_inverse_square_spec

end Ipp.Extracted.ArkworksScalarMulNormalize
