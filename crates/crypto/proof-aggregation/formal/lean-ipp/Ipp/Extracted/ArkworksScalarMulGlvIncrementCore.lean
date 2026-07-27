import Ipp.Extracted.ArkworksScalarMulGlvArithmetic

/-! Exact six-limb increment used after half-up division. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvIncrementCore

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksFqOps

abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

def increment6 (value : WideArray) : Result WideArray := do
  let limb0 ← ark_ip_proofs.s3_07_arkworks_fq_spike.adc
    (limbWord value ⟨0, by decide⟩) 1#u64 0#u64
  let limb1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.adc
    (limbWord value ⟨1, by decide⟩) 0#u64 limb0.carry
  let limb2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.adc
    (limbWord value ⟨2, by decide⟩) 0#u64 limb1.carry
  let limb3 ← ark_ip_proofs.s3_07_arkworks_fq_spike.adc
    (limbWord value ⟨3, by decide⟩) 0#u64 limb2.carry
  let limb4 ← ark_ip_proofs.s3_07_arkworks_fq_spike.adc
    (limbWord value ⟨4, by decide⟩) 0#u64 limb3.carry
  let limb5 ← ark_ip_proofs.s3_07_arkworks_fq_spike.adc
    (limbWord value ⟨5, by decide⟩) 0#u64 limb4.carry
  .ok (MacCampaign.Array.make 6#usize
    [limb0.low, limb1.low, limb2.low, limb3.low, limb4.low, limb5.low])

theorem extracted_eq_core (value : WideArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.increment_6 value = increment6 value := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.increment_6 increment6
  rw [array_index_limbWord value ⟨0, by decide⟩,
    array_index_limbWord value ⟨1, by decide⟩,
    array_index_limbWord value ⟨2, by decide⟩,
    array_index_limbWord value ⟨3, by decide⟩,
    array_index_limbWord value ⟨4, by decide⟩,
    array_index_limbWord value ⟨5, by decide⟩]
  rfl

private theorem increment_telescope
    (a0 a1 a2 a3 a4 a5 l0 l1 l2 l3 l4 l5 c1 c2 c3 c4 c5 c6 : Nat)
    (h0 : a0 + 1 = c1 * wordBase + l0)
    (h1 : a1 + c1 = c2 * wordBase + l1)
    (h2 : a2 + c2 = c3 * wordBase + l2)
    (h3 : a3 + c3 = c4 * wordBase + l3)
    (h4 : a4 + c4 = c5 * wordBase + l4)
    (h5 : a5 + c5 = c6 * wordBase + l5) :
    l0 + l1 * wordBase + l2 * wordBase ^ 2 + l3 * wordBase ^ 3 +
        l4 * wordBase ^ 4 + l5 * wordBase ^ 5 + c6 * wordBase ^ 6 =
      (a0 + a1 * wordBase + a2 * wordBase ^ 2 + a3 * wordBase ^ 3 +
        a4 * wordBase ^ 4 + a5 * wordBase ^ 5) + 1 := by
  linear_combination -h0 - wordBase * h1 - wordBase ^ 2 * h2 -
    wordBase ^ 3 * h3 - wordBase ^ 4 * h4 - wordBase ^ 5 * h5

theorem increment6_spec (value output : WideArray)
    (hbound : limbsToNat value + 1 < wordBase ^ 6)
    (hexec : increment6 value = .ok output) :
    limbsToNat output = limbsToNat value + 1 := by
  let zero := MacCampaign.U64.ofNat 0
  let one := MacCampaign.U64.ofNat 1
  have hz : zero.val ≤ 1 := by norm_num [zero, MacCampaign.U64.ofNat]
  let limb0 := adcModel (limbWord value ⟨0, by decide⟩) one zero
  have h0 := extracted_adc_eq_model (limbWord value ⟨0, by decide⟩)
    one zero hz
  have s0 := extracted_adc_spec _ _ zero limb0 hz (by simpa [limb0] using h0)
  let limb1 := adcModel (limbWord value ⟨1, by decide⟩) zero limb0.carry
  have h1 := extracted_adc_eq_model (limbWord value ⟨1, by decide⟩)
    zero limb0.carry s0.carry_out_le
  have s1 := extracted_adc_spec _ _ limb0.carry limb1 s0.carry_out_le
    (by simpa [limb1] using h1)
  let limb2 := adcModel (limbWord value ⟨2, by decide⟩) zero limb1.carry
  have h2 := extracted_adc_eq_model (limbWord value ⟨2, by decide⟩)
    zero limb1.carry s1.carry_out_le
  have s2 := extracted_adc_spec _ _ limb1.carry limb2 s1.carry_out_le
    (by simpa [limb2] using h2)
  let limb3 := adcModel (limbWord value ⟨3, by decide⟩) zero limb2.carry
  have h3 := extracted_adc_eq_model (limbWord value ⟨3, by decide⟩)
    zero limb2.carry s2.carry_out_le
  have s3 := extracted_adc_spec _ _ limb2.carry limb3 s2.carry_out_le
    (by simpa [limb3] using h3)
  let limb4 := adcModel (limbWord value ⟨4, by decide⟩) zero limb3.carry
  have h4 := extracted_adc_eq_model (limbWord value ⟨4, by decide⟩)
    zero limb3.carry s3.carry_out_le
  have s4 := extracted_adc_spec _ _ limb3.carry limb4 s3.carry_out_le
    (by simpa [limb4] using h4)
  let limb5 := adcModel (limbWord value ⟨5, by decide⟩) zero limb4.carry
  have h5 := extracted_adc_eq_model (limbWord value ⟨5, by decide⟩)
    zero limb4.carry s4.carry_out_le
  have s5 := extracted_adc_spec _ _ limb4.carry limb5 s4.carry_out_le
    (by simpa [limb5] using h5)
  have hrun := hexec
  simp only [increment6] at hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.adc _ one zero >>= _ = .ok output at hrun
  rw [h0] at hrun
  simp only [Result.bind_ok] at hrun
  rw [h1] at hrun
  simp only [Result.bind_ok] at hrun
  rw [h2] at hrun
  simp only [Result.bind_ok] at hrun
  rw [h3] at hrun
  simp only [Result.bind_ok] at hrun
  rw [h4] at hrun
  simp only [Result.bind_ok] at hrun
  rw [h5] at hrun
  simp only [Result.bind_ok, Result.ok.injEq] at hrun
  subst output
  have ht := increment_telescope
    (limb value ⟨0, by decide⟩) (limb value ⟨1, by decide⟩)
    (limb value ⟨2, by decide⟩) (limb value ⟨3, by decide⟩)
    (limb value ⟨4, by decide⟩) (limb value ⟨5, by decide⟩)
    limb0.low.val limb1.low.val limb2.low.val limb3.low.val limb4.low.val
    limb5.low.val limb0.carry.val limb1.carry.val limb2.carry.val
    limb3.carry.val limb4.carry.val limb5.carry.val
    (by simpa [one, zero, limb] using s0.equation)
    (by simpa [zero, limb] using s1.equation)
    (by simpa [zero, limb] using s2.equation)
    (by simpa [zero, limb] using s3.equation)
    (by simpa [zero, limb] using s4.equation)
    (by simpa [zero, limb] using s5.equation)
  rw [limbsToNat_six] at hbound ⊢
  simp only [limb, limbWord, MacCampaign.Array.make]
  have hc : limb5.carry.val ≤ 1 := s5.carry_out_le
  interval_cases hcarry : limb5.carry.val
  · simpa [limbsToNat_six, limbWord] using ht
  · omega

theorem extracted_increment_spec (value output : WideArray)
    (hbound : limbsToNat value + 1 < wordBase ^ 6)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.increment_6 value = .ok output) :
    limbsToNat output = limbsToNat value + 1 := by
  rw [extracted_eq_core] at hexec
  exact increment6_spec value output hbound hexec

#print axioms extracted_eq_core
#print axioms increment6_spec
#print axioms extracted_increment_spec

end Ipp.Extracted.ArkworksScalarMul.GlvIncrementCore
