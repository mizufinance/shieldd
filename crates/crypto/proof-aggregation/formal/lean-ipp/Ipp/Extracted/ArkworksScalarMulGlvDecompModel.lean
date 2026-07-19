import Ipp.Extracted.ArkworksScalarMulGlvDecompTails
import Ipp.Extracted.ArkworksScalarMulGlvRoundedDiv

/-! Compact model of the extracted decomposition after array-index normalization. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvDecompModel

open Aeneas Aeneas.Std Result

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev Output := ark_ip_proofs.s3_07_arkworks_fq_spike.GlvDecomposition

private theorem bind_congr_right {alpha beta : Type} (action : Result alpha)
    (left right : alpha → Result beta) (h : ∀ value, left value = right value) :
    (action >>= left) = (action >>= right) := by
  cases action <;> simp_all

def rawDecomposition (scalar : ScalarArray) : Result Output := do
  let reduced ← ark_ip_proofs.s3_07_arkworks_fq_spike.reduce_fr scalar
  let numerator ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2 reduced
    ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A
  let betaWide ← ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr numerator
  Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.betaRaw reduced betaWide

def decomposition (scalar : ScalarArray) : Result Output := do
  let reduced ← ark_ip_proofs.s3_07_arkworks_fq_spike.reduce_fr scalar
  let numerator ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul_4_by_2 reduced
    ark_ip_proofs.s3_07_arkworks_fq_spike.GLV_A
  let betaWide ← ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr numerator
  Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.beta reduced betaWide

theorem extracted_eq_raw (scalar : ScalarArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_decomposition scalar =
      rawDecomposition scalar := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_decomposition
    rawDecomposition
  apply bind_congr_right
  intro reduced
  apply bind_congr_right
  intro numerator
  apply bind_congr_right
  intro betaWide
  rfl

theorem raw_eq_model (scalar : ScalarArray) :
    rawDecomposition scalar = decomposition scalar := by
  unfold rawDecomposition decomposition
  apply bind_congr_right
  intro reduced
  apply bind_congr_right
  intro numerator
  apply bind_congr_right
  intro betaWide
  exact Ipp.Extracted.ArkworksScalarMul.GlvDecompTails.betaRaw_eq_beta
    reduced betaWide

theorem extracted_eq_model (scalar : ScalarArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_decomposition scalar =
      decomposition scalar :=
  (extracted_eq_raw scalar).trans (raw_eq_model scalar)

#print axioms extracted_eq_raw
#print axioms raw_eq_model
#print axioms extracted_eq_model

end Ipp.Extracted.ArkworksScalarMul.GlvDecompModel
