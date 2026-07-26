import Ipp.Extracted.ArkworksScalarMulGlvDecompExec
import Ipp.Extracted.ArkworksScalarMulGlvDecompBoundsCore

/-! Pure integer facts carried by a successful extracted decomposition. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDecompFacts

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev Output := ark_ip_proofs.s3_07_arkworks_fq_spike.GlvDecomposition

def Facts (input : ScalarArray) (output : Output) : Prop :=
  ∃ s beta,
    s < r ∧
    Nat.ModEq r s (scalarToNat input) ∧
    beta ≤ a ∧
    output.k2_positive = false ∧
    scalarToNat output.k2 = beta ∧
    output.k1_positive = decide (beta * (a + 1) < s) ∧
    (if output.k1_positive then
        scalarToNat output.k1 = s - beta * (a + 1)
      else scalarToNat output.k1 = beta * (a + 1) - s) ∧
    scalarToNat output.k1 < 2 ^ 255 ∧
    scalarToNat output.k2 < 2 ^ 255

theorem extracted_facts (input : ScalarArray) (output : Output)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_decomposition
      input = .ok output) : Facts input output := by
  rcases Ipp.Extracted.ArkworksScalarMul.GlvDecompExec.extracted_run
      input output hexec with
    ⟨reduced, numerator, betaWide, b1, k1Wide, positive,
      hreduce, hnumerator, hrounded, hb1, hpositive, hk1, houtput⟩
  have hreduceSpec := Ipp.Extracted.ArkworksScalarMul.extracted_reduce_fr_spec
    input reduced hreduce
  have hnumeratorValue := Ipp.Extracted.ArkworksScalarMul.GlvMul.extracted_spec
    reduced ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A numerator hnumerator
  rw [glv_a_value] at hnumeratorValue
  have hnumeratorBound :=
    Ipp.Extracted.ArkworksScalarMul.GlvDecompBoundsCore.numerator_lt_two_pow_384
      hreduceSpec.lt hnumeratorValue
  have hroundedSpec :=
    Ipp.Extracted.ArkworksScalarMul.GlvRoundedDiv.extracted_rounded_div_spec
      numerator betaWide hnumeratorBound hrounded
  have hsource : ∃ s, s < r ∧ wideToNat numerator = s * a :=
    ⟨scalarToNat reduced, hreduceSpec.lt, hnumeratorValue⟩
  let beta := wideToNat betaWide
  have hbetaLe : beta ≤ a :=
    Ipp.Extracted.ArkworksScalarMul.GlvDecompBoundsCore.rounded_quotient_le_a
      numerator betaWide hsource hroundedSpec
  have hbetaLt : beta < 2 ^ 255 :=
    Ipp.Extracted.ArkworksScalarMul.GlvDecompBoundsCore.rounded_quotient_lt_two_pow_255
      numerator betaWide hsource hroundedSpec
  have hbetaLow :
      scalarToNat (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 betaWide) =
        beta :=
    Ipp.Extracted.ArkworksScalarMul.GlvDecompBoundsCore.low4_rounded_value
      numerator betaWide hsource hroundedSpec
  have hb1Value := Ipp.Extracted.ArkworksScalarMul.GlvMul.extracted_spec
    (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 betaWide)
    ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A_PLUS_ONE b1 hb1
  rw [glv_a_plus_one_value, hbetaLow] at hb1Value
  have hb1Lt : wideToNat b1 < r := by
    rw [hb1Value, r_eq_a_mul_succ]
    nlinarith
  have hpositive' : positive =
      decide (beta * (a + 1) < scalarToNat reduced) := by
    simpa [hb1Value] using hpositive
  cases hpos : positive with
  | false =>
      have hsle : scalarToNat reduced ≤ beta * (a + 1) := by
        have := hpositive'
        simp [hpos] at this
        exact this
      have hk1' := hk1
      simp only [hpos, Bool.false_eq_true, ↓reduceIte] at hk1'
      have hk1Value :=
        Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.extracted_sub6_of_le b1
          (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4 reduced)
          k1Wide (by simpa [Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4_value,
            hb1Value] using hsle) hk1'
      rw [Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4_value,
        hb1Value] at hk1Value
      have hk1LtR : wideToNat k1Wide < r := by omega
      have hk1Low := Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4_value
        k1Wide (by
          have hr := Ipp.Extracted.ArkworksScalarMul.GlvDecompBoundsCore.r_lt_two_pow_255
          norm_num [Ipp.Extracted.ArkworksFqMul.wordBase] at hr ⊢
          omega)
      have hk1Lt : scalarToNat
          (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 k1Wide) < 2 ^ 255 := by
        rw [hk1Low]
        have hr := Ipp.Extracted.ArkworksScalarMul.GlvDecompBoundsCore.r_lt_two_pow_255
        omega
      rw [houtput]
      refine ⟨scalarToNat reduced, beta, hreduceSpec.lt, hreduceSpec.congruent,
        hbetaLe, ?_, ?_, ?_, ?_, hk1Lt, ?_⟩
      · rfl
      · simpa [Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.makeOutput] using hbetaLow
      · simpa [Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.makeOutput, hpos]
          using hpositive'
      · simpa [Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.makeOutput,
          hpos, hk1Low] using hk1Value
      · simpa [Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.makeOutput,
          hbetaLow] using hbetaLt
  | true =>
      have hlt : beta * (a + 1) < scalarToNat reduced := by
        have := hpositive'
        simp [hpos] at this
        exact this
      have hk1' := hk1
      simp only [hpos, ↓reduceIte] at hk1'
      have hk1Value :=
        Ipp.Extracted.ArkworksScalarMul.GlvArithmetic.extracted_sub6_of_le
          (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4 reduced) b1
          k1Wide (by
            rw [Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4_value, hb1Value]
            omega) hk1'
      rw [Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.widen4_value,
        hb1Value] at hk1Value
      have hk1LtR : wideToNat k1Wide < r := by
        calc
          wideToNat k1Wide = scalarToNat reduced - beta * (a + 1) := hk1Value
          _ ≤ scalarToNat reduced := Nat.sub_le _ _
          _ < r := hreduceSpec.lt
      have hk1Low := Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4_value
        k1Wide (by
          have hr := Ipp.Extracted.ArkworksScalarMul.GlvDecompBoundsCore.r_lt_two_pow_255
          norm_num [Ipp.Extracted.ArkworksFqMul.wordBase] at hr ⊢
          omega)
      have hk1Lt : scalarToNat
          (Ipp.Extracted.ArkworksScalarMul.GlvArrayCore.low4 k1Wide) < 2 ^ 255 := by
        rw [hk1Low]
        have hr := Ipp.Extracted.ArkworksScalarMul.GlvDecompBoundsCore.r_lt_two_pow_255
        omega
      rw [houtput]
      refine ⟨scalarToNat reduced, beta, hreduceSpec.lt, hreduceSpec.congruent,
        hbetaLe, ?_, ?_, ?_, ?_, hk1Lt, ?_⟩
      · rfl
      · simpa [Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.makeOutput] using hbetaLow
      · simpa [Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.makeOutput, hpos]
          using hpositive'
      · simpa [Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.makeOutput,
          hpos, hk1Low] using hk1Value
      · simpa [Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.makeOutput,
          hbetaLow] using hbetaLt

#print axioms Facts
#print axioms extracted_facts

end Ipp.Extracted.ArkworksScalarMul.GlvDecompFacts
