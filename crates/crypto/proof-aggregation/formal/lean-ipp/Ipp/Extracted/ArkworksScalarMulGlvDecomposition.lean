import Ipp.Extracted.ArkworksScalarMulGlvDecompFacts

/-! Congruence and magnitude bounds for the extracted GLV decomposition. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDecomposition

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev Output := ark_ip_proofs.s3_07_arkworks_fq_spike.GlvDecomposition

def signed (positive : Bool) (magnitude : Nat) : Int :=
  if positive then Int.ofNat magnitude else -Int.ofNat magnitude

theorem signed_reconstruction (input : ScalarArray) (output : Output)
    (hfacts : Ipp.Extracted.ArkworksScalarMul.GlvDecompFacts.Facts input output) :
    ∃ s beta,
      Nat.ModEq r s (scalarToNat input) ∧
      signed output.k1_positive (scalarToNat output.k1) +
          signed output.k2_positive (scalarToNat output.k2) * Int.ofNat lambda =
        Int.ofNat s - Int.ofNat beta * Int.ofNat r ∧
      scalarToNat output.k1 < 2 ^ 255 ∧
      scalarToNat output.k2 < 2 ^ 255 := by
  rcases hfacts with
    ⟨s, beta, hslt, hmod, hbeta, hk2sign, hk2value, hpositive,
      hk1value, hk1bound, hk2bound⟩
  have hlambda : (Int.ofNat lambda) =
      Int.ofNat r - Int.ofNat a - 1 := by
    norm_num [lambda, r, a, Ipp.Bls12377.scalarModulus]
  cases hpos : output.k1_positive with
  | false =>
      have hsle : s ≤ beta * (a + 1) := by
        have := hpositive
        simp [hpos] at this
        exact this
      have hk1value' : scalarToNat output.k1 = beta * (a + 1) - s := by
        simpa [hpos] using hk1value
      refine ⟨s, beta, hmod, ?_, hk1bound, hk2bound⟩
      rw [hk1value', hk2value, hlambda]
      simp only [signed, ↓reduceIte, hk2sign, Bool.false_eq_true]
      have hcast : Int.ofNat (beta * (a + 1) - s) =
          Int.ofNat (beta * (a + 1)) - Int.ofNat s := by
        simpa only using (Int.ofNat_sub hsle)
      have hprod : Int.ofNat (beta * (a + 1)) =
          Int.ofNat beta * (Int.ofNat a + 1) := by norm_cast
      rw [hcast, hprod]
      ring
  | true =>
      have hlt : beta * (a + 1) < s := by
        have := hpositive
        simp [hpos] at this
        exact this
      have hle : beta * (a + 1) ≤ s := Nat.le_of_lt hlt
      have hk1value' : scalarToNat output.k1 = s - beta * (a + 1) := by
        simpa [hpos] using hk1value
      refine ⟨s, beta, hmod, ?_, hk1bound, hk2bound⟩
      rw [hk1value', hk2value, hlambda]
      simp only [signed, ↓reduceIte, hk2sign, Bool.false_eq_true]
      have hcast : Int.ofNat (s - beta * (a + 1)) =
          Int.ofNat s - Int.ofNat (beta * (a + 1)) := by
        simpa only using (Int.ofNat_sub hle)
      have hprod : Int.ofNat (beta * (a + 1)) =
          Int.ofNat beta * (Int.ofNat a + 1) := by norm_cast
      rw [hcast, hprod]
      ring

theorem extracted_decomposition_spec (input : ScalarArray) (output : Output)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_decomposition
      input = .ok output) :
    Int.ModEq (Int.ofNat r)
      (signed output.k1_positive (scalarToNat output.k1) +
        signed output.k2_positive (scalarToNat output.k2) * Int.ofNat lambda)
      (Int.ofNat (scalarToNat input)) ∧
    scalarToNat output.k1 < 2 ^ 255 ∧
    scalarToNat output.k2 < 2 ^ 255 := by
  have hfacts := Ipp.Extracted.ArkworksScalarMul.GlvDecompFacts.extracted_facts
    input output hexec
  rcases signed_reconstruction input output hfacts with
    ⟨s, beta, hmod, hsigned, hk1, hk2⟩
  refine ⟨?_, hk1, hk2⟩
  rw [hsigned]
  apply Int.ModEq.trans (b := Int.ofNat s)
  · rw [Int.modEq_iff_dvd]
    refine ⟨Int.ofNat beta, ?_⟩
    ring
  · exact Int.natCast_modEq_iff.mpr hmod

theorem extracted_k1_lt_two_pow_255 (input : ScalarArray) (output : Output)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_decomposition
      input = .ok output) : scalarToNat output.k1 < 2 ^ 255 :=
  (extracted_decomposition_spec input output hexec).2.1

theorem extracted_k2_lt_two_pow_255 (input : ScalarArray) (output : Output)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_decomposition
      input = .ok output) : scalarToNat output.k2 < 2 ^ 255 :=
  (extracted_decomposition_spec input output hexec).2.2

#print axioms signed_reconstruction
#print axioms extracted_decomposition_spec
#print axioms extracted_k1_lt_two_pow_255
#print axioms extracted_k2_lt_two_pow_255

end Ipp.Extracted.ArkworksScalarMul.GlvDecomposition
