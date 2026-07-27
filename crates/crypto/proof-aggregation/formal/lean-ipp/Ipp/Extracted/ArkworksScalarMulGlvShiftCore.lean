import Ipp.Extracted.ArkworksFr
import Ipp.Extracted.ArkworksFqOps

/-! Curve-free model of the four-limb left shift used by GLV division. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvShiftCore

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksFqOps

set_option maxHeartbeats 300000
set_option maxRecDepth 4096

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize

def scalarToNat (value : ScalarArray) : Nat :=
  Ipp.Extracted.ArkworksFr.limbsToNat value

def bitToNat (bit : Bool) : Nat := if bit then 1 else 0

def shl4addbit (value : ScalarArray) (bit : Bool) : Result ScalarArray := do
  let carry0 := if bit then 1#u64 else 0#u64
  let limb0 <- ark_ip_proofs.s3_07_arkworks_fq_spike.adc
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨0, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨0, by decide⟩) carry0
  let limb1 <- ark_ip_proofs.s3_07_arkworks_fq_spike.adc
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨1, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨1, by decide⟩) limb0.carry
  let limb2 <- ark_ip_proofs.s3_07_arkworks_fq_spike.adc
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨2, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨2, by decide⟩) limb1.carry
  let limb3 <- ark_ip_proofs.s3_07_arkworks_fq_spike.adc
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨3, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨3, by decide⟩) limb2.carry
  .ok (MacCampaign.Array.make 4#usize
    [limb0.low, limb1.low, limb2.low, limb3.low])

private theorem shift_telescope
    (a0 a1 a2 a3 b l0 l1 l2 l3 c1 c2 c3 c4 : Nat)
    (h0 : a0 + a0 + b = c1 * wordBase + l0)
    (h1 : a1 + a1 + c1 = c2 * wordBase + l1)
    (h2 : a2 + a2 + c2 = c3 * wordBase + l2)
    (h3 : a3 + a3 + c3 = c4 * wordBase + l3) :
    l0 + l1 * wordBase + l2 * wordBase ^ 2 + l3 * wordBase ^ 3 +
        c4 * wordBase ^ 4 =
      2 * (a0 + a1 * wordBase + a2 * wordBase ^ 2 +
        a3 * wordBase ^ 3) + b := by
  linear_combination -h0 - wordBase * h1 - wordBase ^ 2 * h2 -
    wordBase ^ 3 * h3

theorem shl4addbit_spec (value output : ScalarArray) (bit : Bool)
    (hbound : 2 * scalarToNat value + bitToNat bit < wordBase ^ 4)
    (hexec : shl4addbit value bit = .ok output) :
    scalarToNat output = 2 * scalarToNat value + bitToNat bit := by
  let carry0 := if bit then MacCampaign.U64.ofNat 1 else MacCampaign.U64.ofNat 0
  have hcarry0 : carry0.val ≤ 1 := by
    cases bit <;> norm_num [carry0, MacCampaign.U64.ofNat,
      MacCampaign.u64Base]
  have hcarry0val : carry0.val = bitToNat bit := by
    cases bit <;> norm_num [carry0, bitToNat, MacCampaign.U64.ofNat,
      MacCampaign.u64Base]
  let limb0 := adcModel
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨0, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨0, by decide⟩) carry0
  have h0 := extracted_adc_eq_model
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨0, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨0, by decide⟩) carry0 hcarry0
  have s0 := extracted_adc_spec _ _ carry0 limb0 hcarry0
    (by simpa [limb0] using h0)
  let limb1 := adcModel
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨1, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨1, by decide⟩) limb0.carry
  have h1 := extracted_adc_eq_model
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨1, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨1, by decide⟩)
    limb0.carry s0.carry_out_le
  have s1 := extracted_adc_spec _ _ limb0.carry limb1 s0.carry_out_le
    (by simpa [limb1] using h1)
  let limb2 := adcModel
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨2, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨2, by decide⟩) limb1.carry
  have h2 := extracted_adc_eq_model
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨2, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨2, by decide⟩)
    limb1.carry s1.carry_out_le
  have s2 := extracted_adc_spec _ _ limb1.carry limb2 s1.carry_out_le
    (by simpa [limb2] using h2)
  let limb3 := adcModel
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨3, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨3, by decide⟩) limb2.carry
  have h3 := extracted_adc_eq_model
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨3, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limbWord value ⟨3, by decide⟩)
    limb2.carry s2.carry_out_le
  have s3 := extracted_adc_spec _ _ limb2.carry limb3 s2.carry_out_le
    (by simpa [limb3] using h3)
  have hrun := hexec
  simp only [shl4addbit] at hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.adc _ _ carry0 >>= _ =
    .ok output at hrun
  rw [h0] at hrun
  simp only [Result.bind_ok] at hrun
  rw [h1] at hrun
  simp only [Result.bind_ok] at hrun
  rw [h2] at hrun
  simp only [Result.bind_ok] at hrun
  rw [h3] at hrun
  simp only [Result.bind_ok, Result.ok.injEq] at hrun
  subst output
  have ht := shift_telescope
    (Ipp.Extracted.ArkworksFr.limb value ⟨0, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limb value ⟨1, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limb value ⟨2, by decide⟩)
    (Ipp.Extracted.ArkworksFr.limb value ⟨3, by decide⟩)
    (bitToNat bit) limb0.low.val limb1.low.val limb2.low.val limb3.low.val
    limb0.carry.val limb1.carry.val limb2.carry.val limb3.carry.val
    (by simpa [hcarry0val, Ipp.Extracted.ArkworksFr.limb] using s0.equation)
    (by simpa [Ipp.Extracted.ArkworksFr.limb] using s1.equation)
    (by simpa [Ipp.Extracted.ArkworksFr.limb] using s2.equation)
    (by simpa [Ipp.Extracted.ArkworksFr.limb] using s3.equation)
  rw [scalarToNat, Ipp.Extracted.ArkworksFr.limbsToNat_four] at hbound ⊢
  simp only [Ipp.Extracted.ArkworksFr.limb,
    Ipp.Extracted.ArkworksFr.limbWord, MacCampaign.Array.make]
  have hc : limb3.carry.val ≤ 1 := s3.carry_out_le
  interval_cases hcarry : limb3.carry.val
  · simpa [scalarToNat, Ipp.Extracted.ArkworksFr.limbsToNat_four,
      Ipp.Extracted.ArkworksFr.limbWord] using ht
  · omega

#print axioms shl4addbit_spec

end Ipp.Extracted.ArkworksScalarMul.GlvShiftCore
