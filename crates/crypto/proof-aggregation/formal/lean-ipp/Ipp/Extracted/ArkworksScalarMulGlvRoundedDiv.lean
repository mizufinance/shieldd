import Ipp.Extracted.ArkworksScalarMulGlvDivLoopAdapter
import Ipp.Extracted.ArkworksScalarMulGlvIncrementCore
import Ipp.Extracted.ArkworksScalarMulGlvRoundedExec
import Ipp.Extracted.ArkworksScalarMulGlvRoundedNormalize
import Ipp.Extracted.ArkworksScalarMulGlvRoundedValue
import Ipp.Extracted.ArkworksScalarMulGlvRoundedQuotient
import Ipp.Extracted.ArkworksScalarMulGlvRoundedNormalizeBound
import Ipp.Extracted.ArkworksScalarMulGlvRoundedWitness

/-! Exact half-up interpretation of the extracted 384-bit division. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvRoundedDiv

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksScalarMul.GlvArithmetic

set_option maxRecDepth 32768

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

structure RoundedSpec (numerator quotient : WideArray) : Prop where
  quotient_remainder : ∃ q remainder,
    wideToNat numerator = q * r + remainder ∧
    remainder < r ∧
    wideToNat quotient = if r < 2 * remainder then q + 1 else q

theorem extracted_rounded_div_spec (numerator quotient : WideArray)
    (hnumerator : wideToNat numerator < 2 ^ 384)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr
      numerator = .ok quotient) :
    RoundedSpec numerator quotient := by
  rcases Ipp.Extracted.ArkworksScalarMul.GlvRoundedExec.decompose
      numerator quotient hexec with
    ⟨rawQuotient, remainder, twiceRemainder, hloop, hshift, htail⟩
  exact ⟨Ipp.Extracted.ArkworksScalarMul.GlvRoundedWitness.witness_value
    numerator rawQuotient quotient remainder twiceRemainder hnumerator
    hloop hshift htail⟩

#print axioms RoundedSpec
#print axioms extracted_rounded_div_spec

end Ipp.Extracted.ArkworksScalarMul.GlvRoundedDiv
