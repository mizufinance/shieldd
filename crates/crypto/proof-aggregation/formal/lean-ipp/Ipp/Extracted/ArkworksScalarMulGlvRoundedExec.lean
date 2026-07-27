import Ipp.Extracted.ArkworksScalarMulGlvDivLoopAdapter

/-! Narrow execution witness for the extracted rounded-division tail. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvRoundedExec

open Aeneas Aeneas.Std Result

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize
abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

theorem decompose (numerator quotient : WideArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr
      numerator = .ok quotient) :
    ∃ rawQuotient remainder twiceRemainder,
      ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr_loop
        numerator (MacCampaign.Array.replicate 6#usize 0#u64)
        (MacCampaign.Array.replicate 4#usize 0#u64) 384#usize =
          .ok (rawQuotient, remainder) ∧
      Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit remainder false =
        .ok twiceRemainder ∧
      (do
        let round ← ark_ip_proofs.s3_07_arkworks_fq_spike.gt_4 twiceRemainder
          ark_ip_proofs.s3_07_arkworks_fq_spike.FR_MODULUS
        if round then
          ark_ip_proofs.s3_07_arkworks_fq_spike.increment_6 rawQuotient
        else .ok rawQuotient) = .ok quotient := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr at hexec
  dsimp only at hexec
  cases hloop : ark_ip_proofs.s3_07_arkworks_fq_spike.rounded_div_6_by_fr_loop
      numerator (MacCampaign.Array.replicate 6#usize 0#u64)
      (MacCampaign.Array.replicate 4#usize 0#u64) 384#usize with
  | ok pair =>
      rcases pair with ⟨rawQuotient, remainder⟩
      rw [hloop] at hexec
      simp only [Result.bind_ok] at hexec
      rw [Ipp.Extracted.ArkworksScalarMul.GlvDivAdapter.extracted_shl_eq_core]
        at hexec
      cases hshift : Ipp.Extracted.ArkworksScalarMul.GlvShiftCore.shl4addbit
          remainder false with
      | ok twiceRemainder =>
          rw [hshift] at hexec
          simp only [Result.bind_ok] at hexec
          exact ⟨rawQuotient, remainder, twiceRemainder, rfl, hshift, hexec⟩
      | fail error => rw [hshift] at hexec; cases hexec
      | div => rw [hshift] at hexec; cases hexec
  | fail error => rw [hloop] at hexec; cases hexec
  | div => rw [hloop] at hexec; cases hexec

#print axioms decompose

end Ipp.Extracted.ArkworksScalarMul.GlvRoundedExec
