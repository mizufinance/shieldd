import Ipp.Extracted.ArkworksFqOpsGenerated
import Ipp.Extracted.ArkworksFqMul
import Ipp.Bls12377MontgomeryFq
import Mathlib.Tactic

namespace Ipp.Extracted.ArkworksFqOps

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul

set_option maxHeartbeats 400000

abbrev LimbArray := ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont
abbrev ExtractedMac := ark_ip_proofs.s3_07_arkworks_fq_spike.Mac

private theorem u64_eq_of_val_eq (left right : MacCampaign.U64)
    (h : left.val = right.val) : left = right := by
  cases left
  cases right
  simp_all

private theorem continue_after_ok {α β : Type} {action : Result α}
    {value : α} {next : α → Result β} {output : β}
    (haction : action = .ok value)
    (hexec : action >>= next = .ok output) :
    next value = .ok output := by
  rw [haction] at hexec
  exact hexec

structure AdcSpec (left right carry : Nat) (output : NatMac) : Prop where
  left_lt : left < wordBase
  right_lt : right < wordBase
  carry_le : carry ≤ 1
  low_lt : output.low < wordBase
  carry_out_le : output.carry ≤ 1
  equation : left + right + carry = output.carry * wordBase + output.low

def adcModel (left right carry : MacCampaign.U64) : ExtractedMac :=
  let value := left.val + right.val + carry.val
  { low := MacCampaign.U64.ofNat value
    carry := MacCampaign.U64.ofNat (value / wordBase) }

theorem extracted_adc_eq_model (left right carry : MacCampaign.U64)
    (hcarry : carry.val ≤ 1) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.adc left right carry =
      .ok (adcModel left right carry) := by
  let value := left.val + right.val + carry.val
  have hleft : left.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using left.isLt
  have hright : right.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using right.isLt
  have hsum : left.val + right.val < MacCampaign.u128Base := by
    simp only [MacCampaign.u128Base, wordBase] at *
    omega
  have hvalue : value < MacCampaign.u128Base := by
    dsimp [value]
    simp only [MacCampaign.u128Base, wordBase] at *
    omega
  have hcarryOut : value / wordBase < wordBase := by
    apply (Nat.div_lt_iff_lt_mul wordBase_pos).2
    simpa [u128Base_eq] using hvalue
  have hshift : (MacCampaign.I32.ofNat 64).val < 128 := by decide
  have hshiftValue : (MacCampaign.I32.ofNat 64).val = 64 := by decide
  have hvalueRaw : left.val + right.val + carry.val <
      MacCampaign.u128Base := by simpa [value] using hvalue
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.adc, lift,
    Result.bind_ok, MacCampaign.castU128, MacCampaign.hAddU128_eq,
    MacCampaign.add128, dif_pos hsum, dif_pos hvalueRaw,
    MacCampaign.castU64, MacCampaign.castU64Source_u128,
    MacCampaign.hShiftRightU128_eq, MacCampaign.shr128, if_pos hshift]
  simp [adcModel, MacCampaign.U64.ofNat, MacCampaign.U128.ofNat,
    MacCampaign.u64Base, MacCampaign.u128Base, wordBase,
    Nat.mod_eq_of_lt hcarryOut, hshiftValue]

theorem extracted_adc_spec (left right carry : MacCampaign.U64)
    (output : ExtractedMac) (hcarry : carry.val ≤ 1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.adc left right carry =
      .ok output) :
    AdcSpec left.val right.val carry.val
      { low := output.low.val, carry := output.carry.val } := by
  rw [extracted_adc_eq_model left right carry hcarry] at hexec
  cases hexec
  have hl : left.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using left.isLt
  have hr : right.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using right.isLt
  let value := left.val + right.val + carry.val
  have htwo : value < 2 * wordBase := by
    dsimp [value]
    omega
  have hc : value / wordBase ≤ 1 := by
    exact (Nat.div_le_iff_le_mul wordBase_pos).2 (by omega)
  have hcLt : value / wordBase < wordBase := by
    exact lt_of_le_of_lt hc (by decide)
  refine ⟨hl, hr, hcarry, ?_, ?_, ?_⟩
  · simpa [adcModel, MacCampaign.U64.ofNat, MacCampaign.u64Base,
      wordBase] using Nat.mod_lt value wordBase_pos
  · change value / wordBase % wordBase ≤ 1
    rw [Nat.mod_eq_of_lt hcLt]
    exact hc
  · change value = (value / wordBase % MacCampaign.u64Base) * wordBase +
      value % MacCampaign.u64Base
    rw [show MacCampaign.u64Base = wordBase by rfl,
      Nat.mod_eq_of_lt hcLt]
    exact (Nat.mod_add_div value wordBase).symm.trans (by ac_rfl)

/-- `adc` with a full-word third addend, as used by dedicated squaring. -/
theorem extracted_adc_general_spec (left right carry : MacCampaign.U64)
    (output : ExtractedMac)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.adc left right carry =
      .ok output) :
    output.carry.val ≤ 2 ∧
      left.val + right.val + carry.val =
        output.carry.val * wordBase + output.low.val := by
  have hl : left.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using left.isLt
  have hr : right.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using right.isLt
  have hc : carry.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using carry.isLt
  let value := left.val + right.val + carry.val
  have hsum : left.val + right.val < MacCampaign.u128Base := by
    simp only [MacCampaign.u128Base, wordBase] at *
    omega
  have hvalue : value < MacCampaign.u128Base := by
    dsimp [value]
    simp only [MacCampaign.u128Base, wordBase] at *
    omega
  have hcarryOut : value / wordBase < wordBase := by
    apply (Nat.div_lt_iff_lt_mul wordBase_pos).2
    simpa [u128Base_eq] using hvalue
  have hcarryTwo : value / wordBase ≤ 2 := by
    apply (Nat.div_le_iff_le_mul wordBase_pos).2
    omega
  have hshift : (MacCampaign.I32.ofNat 64).val < 128 := by decide
  have hshiftValue : (MacCampaign.I32.ofNat 64).val = 64 := by decide
  have hvalueRaw : left.val + right.val + carry.val <
      MacCampaign.u128Base := by simpa [value] using hvalue
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.adc, lift,
    Result.bind_ok, MacCampaign.castU128, MacCampaign.hAddU128_eq,
    MacCampaign.add128, dif_pos hsum, dif_pos hvalueRaw,
    MacCampaign.castU64, MacCampaign.castU64Source_u128,
    MacCampaign.hShiftRightU128_eq, MacCampaign.shr128,
    if_pos hshift] at hexec
  simp [MacCampaign.U64.ofNat, MacCampaign.U128.ofNat,
    MacCampaign.u64Base, MacCampaign.u128Base, hshiftValue,
    Nat.mod_eq_of_lt hcarryOut] at hexec
  cases hexec
  refine ⟨?_, ?_⟩
  · change value / wordBase % MacCampaign.u64Base ≤ 2
    rw [show MacCampaign.u64Base = wordBase by rfl,
      Nat.mod_eq_of_lt hcarryOut]
    exact hcarryTwo
  change value = (value / wordBase % MacCampaign.u64Base) * wordBase +
    value % MacCampaign.u64Base
  rw [show MacCampaign.u64Base = wordBase by rfl,
    Nat.mod_eq_of_lt hcarryOut]
  exact (Nat.mod_add_div value wordBase).symm.trans (by ac_rfl)

private theorem adc_telescope
    (a0 a1 a2 a3 a4 a5 b0 b1 b2 b3 b4 b5
      l0 l1 l2 l3 l4 l5 c1 c2 c3 c4 c5 c6 : Nat)
    (h0 : a0 + b0 = c1 * wordBase + l0)
    (h1 : a1 + b1 + c1 = c2 * wordBase + l1)
    (h2 : a2 + b2 + c2 = c3 * wordBase + l2)
    (h3 : a3 + b3 + c3 = c4 * wordBase + l3)
    (h4 : a4 + b4 + c4 = c5 * wordBase + l4)
    (h5 : a5 + b5 + c5 = c6 * wordBase + l5) :
    (l0 + l1 * wordBase + l2 * wordBase ^ 2 + l3 * wordBase ^ 3 +
      l4 * wordBase ^ 4 + l5 * wordBase ^ 5) + c6 * wordBase ^ 6 =
    (a0 + a1 * wordBase + a2 * wordBase ^ 2 + a3 * wordBase ^ 3 +
      a4 * wordBase ^ 4 + a5 * wordBase ^ 5) +
    (b0 + b1 * wordBase + b2 * wordBase ^ 2 + b3 * wordBase ^ 3 +
      b4 * wordBase ^ 4 + b5 * wordBase ^ 5) := by
  norm_num [wordBase] at h0 h1 h2 h3 h4 h5 ⊢
  omega

private theorem limbsToNat_make_six
    (x0 x1 x2 x3 x4 x5 : MacCampaign.U64) :
    limbsToNat (MacCampaign.Array.make (Usize.ofNat 6)
      [x0, x1, x2, x3, x4, x5]) =
      x0.val + x1.val * wordBase + x2.val * wordBase ^ 2 +
      x3.val * wordBase ^ 3 + x4.val * wordBase ^ 4 +
      x5.val * wordBase ^ 5 := by
  simp [limbsToNat, prefixToNat, limb, limbWord,
    MacCampaign.Array.make, limbCount]

set_option maxRecDepth 32768 in
theorem extracted_add_raw_spec (a b output : LimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.add_raw a b = .ok output) :
    ∃ carry, carry ≤ 1 ∧
      limbsToNat output + carry * wordBase ^ limbCount =
        limbsToNat a + limbsToNat b := by
  let z := MacCampaign.U64.ofNat 0
  let o0 := adcModel (limbWord a ⟨0, by decide⟩)
    (limbWord b ⟨0, by decide⟩) z
  have hz : z.val ≤ 1 := by simp [z, MacCampaign.U64.ofNat]
  have h0 := extracted_adc_eq_model (limbWord a ⟨0, by decide⟩)
    (limbWord b ⟨0, by decide⟩) z hz
  have s0 := extracted_adc_spec _ _ z o0 hz (by simpa [o0] using h0)
  let o1 := adcModel (limbWord a ⟨1, by decide⟩)
    (limbWord b ⟨1, by decide⟩) o0.carry
  have h1 := extracted_adc_eq_model (limbWord a ⟨1, by decide⟩)
    (limbWord b ⟨1, by decide⟩) o0.carry s0.carry_out_le
  have s1 := extracted_adc_spec _ _ o0.carry o1 s0.carry_out_le
    (by simpa [o1] using h1)
  let o2 := adcModel (limbWord a ⟨2, by decide⟩)
    (limbWord b ⟨2, by decide⟩) o1.carry
  have h2 := extracted_adc_eq_model (limbWord a ⟨2, by decide⟩)
    (limbWord b ⟨2, by decide⟩) o1.carry s1.carry_out_le
  have s2 := extracted_adc_spec _ _ o1.carry o2 s1.carry_out_le
    (by simpa [o2] using h2)
  let o3 := adcModel (limbWord a ⟨3, by decide⟩)
    (limbWord b ⟨3, by decide⟩) o2.carry
  have h3 := extracted_adc_eq_model (limbWord a ⟨3, by decide⟩)
    (limbWord b ⟨3, by decide⟩) o2.carry s2.carry_out_le
  have s3 := extracted_adc_spec _ _ o2.carry o3 s2.carry_out_le
    (by simpa [o3] using h3)
  let o4 := adcModel (limbWord a ⟨4, by decide⟩)
    (limbWord b ⟨4, by decide⟩) o3.carry
  have h4 := extracted_adc_eq_model (limbWord a ⟨4, by decide⟩)
    (limbWord b ⟨4, by decide⟩) o3.carry s3.carry_out_le
  have s4 := extracted_adc_spec _ _ o3.carry o4 s3.carry_out_le
    (by simpa [o4] using h4)
  let o5 := adcModel (limbWord a ⟨5, by decide⟩)
    (limbWord b ⟨5, by decide⟩) o4.carry
  have h5 := extracted_adc_eq_model (limbWord a ⟨5, by decide⟩)
    (limbWord b ⟨5, by decide⟩) o4.carry s4.carry_out_le
  have s5 := extracted_adc_spec _ _ o4.carry o5 s4.carry_out_le
    (by simpa [o5] using h5)
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.add_raw] at hrun
  change MacCampaign.Array.index_usize a (Usize.ofNat 0) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord a ⟨0, by decide⟩) hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 0) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord b ⟨0, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.adc _ _ z >>= _ = .ok output at hrun
  have hrun := continue_after_ok (by simpa [z] using h0) hrun
  change MacCampaign.Array.index_usize a (Usize.ofNat 1) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord a ⟨1, by decide⟩) hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 1) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord b ⟨1, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.adc _ _ o0.carry >>= _ = .ok output at hrun
  have hrun := continue_after_ok h1 hrun
  change MacCampaign.Array.index_usize a (Usize.ofNat 2) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord a ⟨2, by decide⟩) hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 2) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord b ⟨2, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.adc _ _ o1.carry >>= _ = .ok output at hrun
  have hrun := continue_after_ok h2 hrun
  change MacCampaign.Array.index_usize a (Usize.ofNat 3) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord a ⟨3, by decide⟩) hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 3) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord b ⟨3, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.adc _ _ o2.carry >>= _ = .ok output at hrun
  have hrun := continue_after_ok h3 hrun
  change MacCampaign.Array.index_usize a (Usize.ofNat 4) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord a ⟨4, by decide⟩) hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 4) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord b ⟨4, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.adc _ _ o3.carry >>= _ = .ok output at hrun
  have hrun := continue_after_ok h4 hrun
  change MacCampaign.Array.index_usize a (Usize.ofNat 5) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord a ⟨5, by decide⟩) hrun
  change MacCampaign.Array.index_usize b (Usize.ofNat 5) >>= _ = .ok output at hrun
  have hrun := continue_after_ok (array_index_limbWord b ⟨5, by decide⟩) hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.adc _ _ o4.carry >>= _ = .ok output at hrun
  have hrun := continue_after_ok h5 hrun
  simp only [Result.ok.injEq] at hrun
  subst output
  refine ⟨o5.carry.val, s5.carry_out_le, ?_⟩
  rw [limbsToNat_make_six, limbsToNat_six a, limbsToNat_six b]
  simpa [limb] using adc_telescope
    (limb a ⟨0, by decide⟩) (limb a ⟨1, by decide⟩)
    (limb a ⟨2, by decide⟩) (limb a ⟨3, by decide⟩)
    (limb a ⟨4, by decide⟩) (limb a ⟨5, by decide⟩)
    (limb b ⟨0, by decide⟩) (limb b ⟨1, by decide⟩)
    (limb b ⟨2, by decide⟩) (limb b ⟨3, by decide⟩)
    (limb b ⟨4, by decide⟩) (limb b ⟨5, by decide⟩)
    o0.low.val o1.low.val o2.low.val o3.low.val o4.low.val o5.low.val
    o0.carry.val o1.carry.val o2.carry.val o3.carry.val o4.carry.val o5.carry.val
    (by simpa [z, MacCampaign.U64.ofNat, limb] using s0.equation)
    (by simpa [limb] using s1.equation) (by simpa [limb] using s2.equation)
    (by simpa [limb] using s3.equation) (by simpa [limb] using s4.equation)
    (by simpa [limb] using s5.equation)

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

def asRep (value : LimbArray) : Ipp.Bls12377.MontgomeryFq.Rep :=
  ⟨limbsToNat value, limbsToNat_lt_radix value⟩

theorem asRep_tight_iff (value : LimbArray) :
    Ipp.Bls12377.MontgomeryFq.Tight (asRep value) ↔
      limbsToNat value < Ipp.Bls12377.baseModulus := by
  exact Ipp.Bls12377.MontgomeryFq.tight_iff (asRep value)

theorem decode_eq_rep_decode (value : LimbArray) :
    Ipp.Extracted.ArkworksFqMul.decode value =
      Ipp.Bls12377.MontgomeryFq.decode (asRep value) := rfl

theorem extracted_add_spec (a b output : LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hb : limbsToNat b < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.add a b = .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
    limbsToNat output =
      Ipp.Bls12377.MontgomeryFq.addSem (asRep a) (asRep b) := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.add] at hrun
  obtain ⟨raw, hraw, hrun⟩ := bind_eq_ok hrun
  obtain ⟨result, hsub, hreturn⟩ := bind_eq_ok hrun
  simp only [Result.ok.injEq] at hreturn
  subst result
  obtain ⟨carry, hcarry, heq⟩ := extracted_add_raw_spec a b raw hraw
  have hsum : limbsToNat a + limbsToNat b <
      2 * Ipp.Bls12377.baseModulus := by omega
  have hsumRadix : limbsToNat a + limbsToNat b < wordBase ^ limbCount :=
    lt_trans hsum two_modulus_lt_radix
  have hcarryZero : carry = 0 := by
    by_cases hzero : carry = 0
    · exact hzero
    have hone : carry = 1 := by omega
    rw [hone, one_mul] at heq
    have := limbsToNat_lt_radix raw
    omega
  have hrawValue : limbsToNat raw = limbsToNat a + limbsToNat b := by
    simpa [hcarryZero] using heq
  have hsubspec := extracted_subtract_modulus_spec raw output (by
    rw [hrawValue]
    exact hsum) hsub
  refine ⟨hsubspec.1, ?_⟩
  by_cases hlt : limbsToNat a + limbsToNat b < Ipp.Bls12377.baseModulus
  · rw [Ipp.Bls12377.MontgomeryFq.addSem_no_reduction]
    · simpa [asRep, hrawValue] using
        hsubspec.2.2.2 (by simpa [hrawValue] using hlt)
    · simpa [asRep] using hlt
  · rw [Ipp.Bls12377.MontgomeryFq.addSem_reduction (Nat.not_lt.mp hlt)]
    change limbsToNat output =
      limbsToNat a + limbsToNat b - Ipp.Bls12377.baseModulus
    have habove : Ipp.Bls12377.baseModulus + limbsToNat output =
        limbsToNat raw := hsubspec.2.2.1 (by rw [hrawValue]; omega)
    rw [hrawValue] at habove
    omega

theorem decode_extracted_add (a b output : LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hb : limbsToNat b < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.add a b = .ok output) :
    Ipp.Extracted.ArkworksFqMul.decode output =
      Ipp.Extracted.ArkworksFqMul.decode a +
        Ipp.Extracted.ArkworksFqMul.decode b := by
  have hs := extracted_add_spec a b output ha hb hexec
  have hspec : Ipp.Bls12377.MontgomeryFq.AddSpec
      (asRep a) (asRep b) (asRep output) := by
    refine ⟨(asRep_tight_iff a).2 ha, (asRep_tight_iff b).2 hb,
      (asRep_tight_iff output).2 hs.1, ?_⟩
    simpa [asRep] using hs.2
  have haRep : Ipp.Bls12377.MontgomeryFq.Represents
      (asRep a) (Ipp.Extracted.ArkworksFqMul.decode a) := by
    rw [Ipp.Bls12377.MontgomeryFq.represents_iff]
    exact ⟨(asRep_tight_iff a).2 ha, (decode_eq_rep_decode a).symm⟩
  have hbRep : Ipp.Bls12377.MontgomeryFq.Represents
      (asRep b) (Ipp.Extracted.ArkworksFqMul.decode b) := by
    rw [Ipp.Bls12377.MontgomeryFq.represents_iff]
    exact ⟨(asRep_tight_iff b).2 hb, (decode_eq_rep_decode b).symm⟩
  have hout := Ipp.Bls12377.MontgomeryFq.add_represents
    (asRep a) (asRep b) (asRep output) _ _ haRep hbRep hspec
  rw [Ipp.Bls12377.MontgomeryFq.represents_iff] at hout
  exact (decode_eq_rep_decode output).trans hout.2

private theorem sbb_telescope
    (x0 x1 x2 x3 x4 x5 y0 y1 y2 y3 y4 y5
      l0 l1 l2 l3 l4 l5 b1 b2 b3 b4 b5 b6 : Nat)
    (h0 : x0 + wordBase * b1 = y0 + l0)
    (h1 : x1 + wordBase * b2 = y1 + b1 + l1)
    (h2 : x2 + wordBase * b3 = y2 + b2 + l2)
    (h3 : x3 + wordBase * b4 = y3 + b3 + l3)
    (h4 : x4 + wordBase * b5 = y4 + b4 + l4)
    (h5 : x5 + wordBase * b6 = y5 + b5 + l5) :
    (x0 + x1 * wordBase + x2 * wordBase ^ 2 + x3 * wordBase ^ 3 +
      x4 * wordBase ^ 4 + x5 * wordBase ^ 5) + b6 * wordBase ^ 6 =
    (y0 + y1 * wordBase + y2 * wordBase ^ 2 + y3 * wordBase ^ 3 +
      y4 * wordBase ^ 4 + y5 * wordBase ^ 5) +
    (l0 + l1 * wordBase + l2 * wordBase ^ 2 + l3 * wordBase ^ 3 +
      l4 * wordBase ^ 4 + l5 * wordBase ^ 5) := by
  norm_num [wordBase] at h0 h1 h2 h3 h4 h5 ⊢
  omega

set_option maxRecDepth 32768 in
theorem extracted_sub_raw_equation (left right output : LimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sub_raw left right =
      .ok output) :
    ∃ borrow, borrow ≤ 1 ∧
      limbsToNat left + borrow * wordBase ^ limbCount =
        limbsToNat right + limbsToNat output := by
  let z := MacCampaign.U64.ofNat 0
  let o0 := sbbModel (limbWord left ⟨0, by decide⟩)
    (limbWord right ⟨0, by decide⟩) z
  have hz : z.val ≤ 1 := by simp [z, MacCampaign.U64.ofNat]
  have h0 := extracted_sbb_eq_model (limbWord left ⟨0, by decide⟩)
    (limbWord right ⟨0, by decide⟩) z hz
  have s0 := extracted_sbb_spec _ _ z o0 hz (by simpa [o0] using h0)
  let o1 := sbbModel (limbWord left ⟨1, by decide⟩)
    (limbWord right ⟨1, by decide⟩) o0.2
  have h1 := extracted_sbb_eq_model (limbWord left ⟨1, by decide⟩)
    (limbWord right ⟨1, by decide⟩) o0.2 s0.nextBorrow_le
  have s1 := extracted_sbb_spec _ _ o0.2 o1 s0.nextBorrow_le (by simpa [o1] using h1)
  let o2 := sbbModel (limbWord left ⟨2, by decide⟩)
    (limbWord right ⟨2, by decide⟩) o1.2
  have h2 := extracted_sbb_eq_model (limbWord left ⟨2, by decide⟩)
    (limbWord right ⟨2, by decide⟩) o1.2 s1.nextBorrow_le
  have s2 := extracted_sbb_spec _ _ o1.2 o2 s1.nextBorrow_le (by simpa [o2] using h2)
  let o3 := sbbModel (limbWord left ⟨3, by decide⟩)
    (limbWord right ⟨3, by decide⟩) o2.2
  have h3 := extracted_sbb_eq_model (limbWord left ⟨3, by decide⟩)
    (limbWord right ⟨3, by decide⟩) o2.2 s2.nextBorrow_le
  have s3 := extracted_sbb_spec _ _ o2.2 o3 s2.nextBorrow_le (by simpa [o3] using h3)
  let o4 := sbbModel (limbWord left ⟨4, by decide⟩)
    (limbWord right ⟨4, by decide⟩) o3.2
  have h4 := extracted_sbb_eq_model (limbWord left ⟨4, by decide⟩)
    (limbWord right ⟨4, by decide⟩) o3.2 s3.nextBorrow_le
  have s4 := extracted_sbb_spec _ _ o3.2 o4 s3.nextBorrow_le (by simpa [o4] using h4)
  let o5 := sbbModel (limbWord left ⟨5, by decide⟩)
    (limbWord right ⟨5, by decide⟩) o4.2
  have h5 := extracted_sbb_eq_model (limbWord left ⟨5, by decide⟩)
    (limbWord right ⟨5, by decide⟩) o4.2 s4.nextBorrow_le
  have s5 := extracted_sbb_spec _ _ o4.2 o5 s4.nextBorrow_le (by simpa [o5] using h5)
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.sub_raw,
    array_index_limbWord left ⟨0, by decide⟩,
    array_index_limbWord left ⟨1, by decide⟩,
    array_index_limbWord left ⟨2, by decide⟩,
    array_index_limbWord left ⟨3, by decide⟩,
    array_index_limbWord left ⟨4, by decide⟩,
    array_index_limbWord left ⟨5, by decide⟩,
    array_index_limbWord right ⟨0, by decide⟩,
    array_index_limbWord right ⟨1, by decide⟩,
    array_index_limbWord right ⟨2, by decide⟩,
    array_index_limbWord right ⟨3, by decide⟩,
    array_index_limbWord right ⟨4, by decide⟩,
    array_index_limbWord right ⟨5, by decide⟩,
    Result.bind_ok] at hrun
  rw [show ark_ip_proofs.s3_07_arkworks_fq_spike.sbb _ _
      (MacCampaign.U64.ofNat 0) = .ok o0 by simpa [z] using h0] at hrun
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
  refine ⟨o5.2.val, s5.nextBorrow_le, ?_⟩
  rw [limbsToNat_six left, limbsToNat_six right, limbsToNat_make_six]
  simpa [limb, z, MacCampaign.U64.ofNat] using sbb_telescope
    (limb left ⟨0, by decide⟩) (limb left ⟨1, by decide⟩)
    (limb left ⟨2, by decide⟩) (limb left ⟨3, by decide⟩)
    (limb left ⟨4, by decide⟩) (limb left ⟨5, by decide⟩)
    (limb right ⟨0, by decide⟩) (limb right ⟨1, by decide⟩)
    (limb right ⟨2, by decide⟩) (limb right ⟨3, by decide⟩)
    (limb right ⟨4, by decide⟩) (limb right ⟨5, by decide⟩)
    o0.1.val o1.1.val o2.1.val o3.1.val o4.1.val o5.1.val
    o0.2.val o1.2.val o2.2.val o3.2.val o4.2.val o5.2.val
    (by simpa [limb, z, MacCampaign.U64.ofNat] using s0.equation)
    (by simpa [limb] using s1.equation) (by simpa [limb] using s2.equation)
    (by simpa [limb] using s3.equation) (by simpa [limb] using s4.equation)
    (by simpa [limb] using s5.equation)

theorem extracted_sub_raw_of_le (left right output : LimbArray)
    (hle : limbsToNat right ≤ limbsToNat left)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sub_raw left right =
      .ok output) :
    limbsToNat output = limbsToNat left - limbsToNat right := by
  obtain ⟨borrow, hborrow, heq⟩ := extracted_sub_raw_equation left right output hexec
  have hout := limbsToNat_lt_radix output
  have hright := limbsToNat_lt_radix right
  have hborrowZero : borrow = 0 := by
    by_cases hzero : borrow = 0
    · exact hzero
    have hone : borrow = 1 := by omega
    rw [hone, one_mul] at heq
    omega
  rw [hborrowZero, zero_mul, Nat.add_zero] at heq
  omega

def gtPrefix (left right : LimbArray) : Nat → Bool
  | 0 => false
  | count + 1 =>
      if hcount : count < limbCount then
        let l := limbWord left ⟨count, hcount⟩
        let r := limbWord right ⟨count, hcount⟩
        if l > r then true else if l = r then gtPrefix left right count else false
      else false

theorem gtPrefix_spec (left right : LimbArray) (count : Nat)
    (hcount : count ≤ limbCount) :
    gtPrefix left right count = true ↔
      prefixToNat right count < prefixToNat left count := by
  induction count with
  | zero => simp [gtPrefix]
  | succ count ih =>
      have hlt : count < limbCount := by omega
      rw [prefixToNat_succ left hlt, prefixToNat_succ right hlt]
      simp only [gtPrefix, dif_pos hlt]
      let l := limbWord left ⟨count, hlt⟩
      let r := limbWord right ⟨count, hlt⟩
      change (if l > r then true else if l = r then gtPrefix left right count
        else false) = true ↔ _
      by_cases hgt : l > r
      · rw [if_pos hgt]
        simp only [true_iff]
        have hlp := prefixToNat_lt_pow left count (by omega)
        have hrp := prefixToNat_lt_pow right count (by omega)
        have hp : 0 < wordBase ^ count := pow_pos wordBase_pos count
        have hd : limb right ⟨count, hlt⟩ + 1 ≤ limb left ⟨count, hlt⟩ := by
          change r.val + 1 ≤ l.val
          exact hgt
        have hm := Nat.mul_le_mul_right (wordBase ^ count) hd
        nlinarith
      · rw [if_neg hgt]
        by_cases heq : l = r
        · rw [if_pos heq]
          have hd : limb left ⟨count, hlt⟩ = limb right ⟨count, hlt⟩ := by
            change l.val = r.val
            exact congrArg MacCampaign.U64.val heq
          rw [hd]
          simpa only [Nat.add_lt_add_iff_right] using ih (by omega)
        · rw [if_neg heq]
          simp only [Bool.false_eq_true, false_iff, not_lt]
          have hlp := prefixToNat_lt_pow left count (by omega)
          have hrp := prefixToNat_lt_pow right count (by omega)
          have hp : 0 < wordBase ^ count := pow_pos wordBase_pos count
          have hne : l.val ≠ r.val := by
            intro hv
            exact heq (u64_eq_of_val_eq l r hv)
          have hd : limb left ⟨count, hlt⟩ + 1 ≤ limb right ⟨count, hlt⟩ := by
            change l.val + 1 ≤ r.val
            change ¬r.val < l.val at hgt
            omega
          have hm := Nat.mul_le_mul_right (wordBase ^ count) hd
          nlinarith

set_option maxHeartbeats 1000000 in
theorem extracted_gt_prefix (left right : LimbArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.gt left right =
      .ok (gtPrefix left right limbCount) := by
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.gt,
    array_index_limbWord left ⟨5, by decide⟩,
    array_index_limbWord left ⟨4, by decide⟩,
    array_index_limbWord left ⟨3, by decide⟩,
    array_index_limbWord left ⟨2, by decide⟩,
    array_index_limbWord left ⟨1, by decide⟩,
    array_index_limbWord left ⟨0, by decide⟩,
    array_index_limbWord right ⟨5, by decide⟩,
    array_index_limbWord right ⟨4, by decide⟩,
    array_index_limbWord right ⟨3, by decide⟩,
    array_index_limbWord right ⟨2, by decide⟩,
    array_index_limbWord right ⟨1, by decide⟩,
    array_index_limbWord right ⟨0, by decide⟩,
    Result.bind_ok]
  simp [gtPrefix, limbCount]
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all
  split <;> simp_all

theorem extracted_gt_spec (left right : LimbArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.gt left right =
      .ok (decide (limbsToNat right < limbsToNat left)) := by
  rw [extracted_gt_prefix]
  congr 2
  have hs := gtPrefix_spec left right limbCount (by omega)
  cases h : gtPrefix left right limbCount with
  | false =>
      have hn : ¬limbsToNat right < limbsToNat left := by
        intro hlt
        have hp : prefixToNat right limbCount < prefixToNat left limbCount := by
          simpa [limbsToNat] using hlt
        have := hs.mpr hp
        simp [h] at this
      simp [hn]
  | true =>
      have hlt : limbsToNat right < limbsToNat left := by
        simpa [limbsToNat] using hs.mp h
      simp [hlt]

theorem extracted_sub_spec (a b output : LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hb : limbsToNat b < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sub a b = .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
    limbsToNat output =
      Ipp.Bls12377.MontgomeryFq.subSem (asRep a) (asRep b) := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.sub] at hrun
  change ark_ip_proofs.s3_07_arkworks_fq_spike.gt b a >>= _ = .ok output at hrun
  have hrun := continue_after_ok (extracted_gt_spec b a) hrun
  by_cases hlt : limbsToNat a < limbsToNat b
  · simp only [decide_eq_true_eq.mpr hlt, if_true] at hrun
    obtain ⟨raw, hraw, hrun⟩ := bind_eq_ok hrun
    change ark_ip_proofs.s3_07_arkworks_fq_spike.sub_raw raw b >>= _ =
      .ok output at hrun
    obtain ⟨result, hsub, hreturn⟩ := bind_eq_ok hrun
    simp only [Result.ok.injEq] at hreturn
    subst result
    obtain ⟨carry, hcarry, heq⟩ := extracted_add_raw_spec a
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS raw hraw
    have hsum : limbsToNat a + Ipp.Bls12377.baseModulus <
        wordBase ^ limbCount := by
      calc
        _ < 2 * Ipp.Bls12377.baseModulus := by omega
        _ < _ := two_modulus_lt_radix
    have hcarryZero : carry = 0 := by
      by_cases hzero : carry = 0
      · exact hzero
      have hone : carry = 1 := by omega
      rw [modulus_limbsToNat, hone, one_mul] at heq
      have := limbsToNat_lt_radix raw
      omega
    rw [modulus_limbsToNat, hcarryZero, zero_mul, Nat.add_zero] at heq
    have hle : limbsToNat b ≤ limbsToNat raw := by omega
    have hout := extracted_sub_raw_of_le raw b output hle hsub
    refine ⟨by rw [hout]; omega, ?_⟩
    rw [Ipp.Bls12377.MontgomeryFq.subSem_borrow]
    · change limbsToNat output =
        limbsToNat a + Ipp.Bls12377.baseModulus - limbsToNat b
      omega
    · simpa [asRep] using hlt
  · have hle : limbsToNat b ≤ limbsToNat a := by omega
    simp only [decide_eq_false_iff_not.mpr (by omega : ¬limbsToNat a < limbsToNat b),
      if_false] at hrun
    change ark_ip_proofs.s3_07_arkworks_fq_spike.sub_raw a b >>= _ =
      .ok output at hrun
    obtain ⟨result, hsub, hreturn⟩ := bind_eq_ok hrun
    simp only [Result.ok.injEq] at hreturn
    subst result
    have hout := extracted_sub_raw_of_le a b output hle hsub
    refine ⟨by rw [hout]; exact lt_of_le_of_lt (Nat.sub_le _ _) ha, ?_⟩
    rw [Ipp.Bls12377.MontgomeryFq.subSem_no_borrow]
    · simpa [asRep] using hout
    · simpa [asRep] using hle

theorem decode_extracted_sub (a b output : LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hb : limbsToNat b < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sub a b = .ok output) :
    Ipp.Extracted.ArkworksFqMul.decode output =
      Ipp.Extracted.ArkworksFqMul.decode a -
        Ipp.Extracted.ArkworksFqMul.decode b := by
  have hs := extracted_sub_spec a b output ha hb hexec
  have hspec : Ipp.Bls12377.MontgomeryFq.SubSpec
      (asRep a) (asRep b) (asRep output) :=
    ⟨(asRep_tight_iff a).2 ha, (asRep_tight_iff b).2 hb,
      (asRep_tight_iff output).2 hs.1, by simpa [asRep] using hs.2⟩
  have haRep : Ipp.Bls12377.MontgomeryFq.Represents
      (asRep a) (Ipp.Extracted.ArkworksFqMul.decode a) := by
    rw [Ipp.Bls12377.MontgomeryFq.represents_iff]
    exact ⟨(asRep_tight_iff a).2 ha, (decode_eq_rep_decode a).symm⟩
  have hbRep : Ipp.Bls12377.MontgomeryFq.Represents
      (asRep b) (Ipp.Extracted.ArkworksFqMul.decode b) := by
    rw [Ipp.Bls12377.MontgomeryFq.represents_iff]
    exact ⟨(asRep_tight_iff b).2 hb, (decode_eq_rep_decode b).symm⟩
  have hout := Ipp.Bls12377.MontgomeryFq.sub_represents
    (asRep a) (asRep b) (asRep output) _ _ haRep hbRep hspec
  rw [Ipp.Bls12377.MontgomeryFq.represents_iff] at hout
  exact (decode_eq_rep_decode output).trans hout.2

private def zeroLimbs : LimbArray :=
  MacCampaign.Array.replicate (Usize.ofNat 6) (MacCampaign.U64.ofNat 0)

private theorem zeroLimbs_value : limbsToNat zeroLimbs = 0 := by
  simp [zeroLimbs, limbsToNat, prefixToNat, limb, limbWord,
    MacCampaign.Array.replicate, limbCount, MacCampaign.U64.ofNat]

private theorem eq_zeroLimbs_of_value_zero (a : LimbArray)
    (hvalue : limbsToNat a = 0) : a = zeroLimbs := by
  have hsix := limbsToNat_six a
  rw [hvalue] at hsix
  have hsum := hsix.symm
  obtain ⟨hsum4, hterm5⟩ := Nat.eq_zero_of_add_eq_zero hsum
  obtain ⟨hsum3, hterm4⟩ := Nat.eq_zero_of_add_eq_zero hsum4
  obtain ⟨hsum2, hterm3⟩ := Nat.eq_zero_of_add_eq_zero hsum3
  obtain ⟨hsum1, hterm2⟩ := Nat.eq_zero_of_add_eq_zero hsum2
  obtain ⟨hterm0, hterm1⟩ := Nat.eq_zero_of_add_eq_zero hsum1
  have h0 : (limbWord a ⟨0, by decide⟩).val = 0 := by
    change limb a ⟨0, by decide⟩ = 0
    exact hterm0
  have h1 : (limbWord a ⟨1, by decide⟩).val = 0 := by
    change limb a ⟨1, by decide⟩ = 0
    exact (Nat.mul_eq_zero.mp hterm1).resolve_right (ne_of_gt wordBase_pos)
  have h2 : (limbWord a ⟨2, by decide⟩).val = 0 := by
    change limb a ⟨2, by decide⟩ = 0
    exact (Nat.mul_eq_zero.mp hterm2).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  have h3 : (limbWord a ⟨3, by decide⟩).val = 0 := by
    change limb a ⟨3, by decide⟩ = 0
    exact (Nat.mul_eq_zero.mp hterm3).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  have h4 : (limbWord a ⟨4, by decide⟩).val = 0 := by
    change limb a ⟨4, by decide⟩ = 0
    exact (Nat.mul_eq_zero.mp hterm4).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  have h5 : (limbWord a ⟨5, by decide⟩).val = 0 := by
    change limb a ⟨5, by decide⟩ = 0
    exact (Nat.mul_eq_zero.mp hterm5).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  apply MacCampaign.Array.ext
  apply List.ext_get
  · simp [zeroLimbs, MacCampaign.Array.replicate, a.hlen]
  · intro n ha hz
    have hn : n < 6 := by simpa [a.hlen] using ha
    interval_cases n <;>
      simp [zeroLimbs, MacCampaign.Array.replicate, limbWord] at hz ⊢ <;>
      apply u64_eq_of_val_eq
    all_goals first
      | simpa [limbWord, MacCampaign.U64.ofNat] using h0
      | simpa [limbWord, MacCampaign.U64.ofNat] using h1
      | simpa [limbWord, MacCampaign.U64.ofNat] using h2
      | simpa [limbWord, MacCampaign.U64.ofNat] using h3
      | simpa [limbWord, MacCampaign.U64.ofNat] using h4
      | simpa [limbWord, MacCampaign.U64.ofNat] using h5

theorem extracted_neg_spec (a output : LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.neg a = .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
    limbsToNat output = Ipp.Bls12377.MontgomeryFq.negSem (asRep a) := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.neg] at hrun
  change (let z := zeroLimbs
    ark_ip_proofs.core.array.equality.PartialEqArray.eq
      ark_ip_proofs.core.cmp.PartialEqU64 a z >>= _) = .ok output at hrun
  dsimp only at hrun
  by_cases hzero : limbsToNat a = 0
  · have harr := eq_zeroLimbs_of_value_zero a hzero
    subst a
    simp [ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hrun
    subst output
    refine ⟨by simpa [zeroLimbs_value] using
      (show 0 < Ipp.Bls12377.baseModulus by norm_num [Ipp.Bls12377.baseModulus]), ?_⟩
    rw [Ipp.Bls12377.MontgomeryFq.negSem_zero]
    · exact zeroLimbs_value
    · simp [asRep, zeroLimbs_value]
  · have hne : a.val ≠ zeroLimbs.val := by
      intro hv
      have harr : a = zeroLimbs := by
        apply MacCampaign.Array.ext
        exact hv
      exact hzero (by rw [harr, zeroLimbs_value])
    simp [ark_ip_proofs.core.array.equality.PartialEqArray.eq, hne] at hrun
    change ark_ip_proofs.s3_07_arkworks_fq_spike.sub_raw
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS a >>= _ = .ok output at hrun
    obtain ⟨result, hsub, hreturn⟩ := bind_eq_ok hrun
    simp only [Result.ok.injEq] at hreturn
    subst result
    have hout := extracted_sub_raw_of_le
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS a output
      (by rw [modulus_limbsToNat]; exact ha.le) hsub
    rw [modulus_limbsToNat] at hout
    refine ⟨by rw [hout]; omega, ?_⟩
    rw [Ipp.Bls12377.MontgomeryFq.negSem_nonzero]
    · simpa [asRep] using hout
    · simpa [asRep] using hzero

theorem decode_extracted_neg (a output : LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.neg a = .ok output) :
    Ipp.Extracted.ArkworksFqMul.decode output =
      -Ipp.Extracted.ArkworksFqMul.decode a := by
  have hs := extracted_neg_spec a output ha hexec
  have hspec : Ipp.Bls12377.MontgomeryFq.NegSpec (asRep a) (asRep output) :=
    ⟨(asRep_tight_iff a).2 ha, (asRep_tight_iff output).2 hs.1,
      by simpa [asRep] using hs.2⟩
  have haRep : Ipp.Bls12377.MontgomeryFq.Represents
      (asRep a) (Ipp.Extracted.ArkworksFqMul.decode a) := by
    rw [Ipp.Bls12377.MontgomeryFq.represents_iff]
    exact ⟨(asRep_tight_iff a).2 ha, (decode_eq_rep_decode a).symm⟩
  have hout := Ipp.Bls12377.MontgomeryFq.neg_represents
    (asRep a) (asRep output) _ haRep hspec
  rw [Ipp.Bls12377.MontgomeryFq.represents_iff] at hout
  exact (decode_eq_rep_decode output).trans hout.2

/-! ## Dedicated square -/

abbrev WideArray :=
  MacCampaign.Array MacCampaign.U64 (Usize.ofNat 12)

def wideWord (value : WideArray) (i : Fin 12) : MacCampaign.U64 :=
  value.val.get ⟨i.val, by simpa [value.hlen] using i.isLt⟩

def wideToNat (value : WideArray) : Nat :=
  ∑ i : Fin 12, (wideWord value i).val * wordBase ^ i.val

@[simp] theorem wide_index (value : WideArray) (i : Usize) (hi : i.val < 12) :
    MacCampaign.Array.index_usize value i =
      .ok (wideWord value ⟨i.val, hi⟩) := by
  simp [MacCampaign.Array.index_usize, wideWord, List.getElem?_eq_getElem,
    value.hlen, hi]

@[simp] theorem limb_index (value : LimbArray) (i : Usize) (hi : i.val < 6) :
    MacCampaign.Array.index_usize value i =
      .ok (limbWord value ⟨i.val, by simpa [limbCount] using hi⟩) := by
  simp [MacCampaign.Array.index_usize, limbWord, List.getElem?_eq_getElem,
    value.hlen, hi, limbCount]

private theorem wideWord_update (value output : WideArray) (i : Usize)
    (word : MacCampaign.U64) (hi : i.val < 12)
    (hexec : MacCampaign.Array.update value i word = .ok output)
    (j : Fin 12) :
    wideWord output j =
      if i.val = j.val then word else wideWord value j := by
  simp only [MacCampaign.Array.update] at hexec
  rw [dif_pos (by simpa [value.hlen] using hi)] at hexec
  simp only [Result.ok.injEq] at hexec
  subst output
  apply u64_eq_of_val_eq
  simp [wideWord, List.getElem_set]

theorem wideToNat_update (value output : WideArray) (i : Usize)
    (word : MacCampaign.U64) (hi : i.val < 12)
    (hexec : MacCampaign.Array.update value i word = .ok output) :
    wideToNat output +
        (wideWord value ⟨i.val, hi⟩).val * wordBase ^ i.val =
      wideToNat value + word.val * wordBase ^ i.val := by
  classical
  let fi : Fin 12 := ⟨i.val, hi⟩
  have hword := wideWord_update value output i word hi hexec
  simp only [wideToNat]
  rw [Finset.sum_eq_add_sum_diff_singleton (s := Finset.univ) (f := fun j : Fin 12 =>
      (wideWord output j).val * wordBase ^ j.val) (i := fi) (by simp)]
  rw [Finset.sum_eq_add_sum_diff_singleton (s := Finset.univ) (f := fun j : Fin 12 =>
      (wideWord value j).val * wordBase ^ j.val) (i := fi) (by simp)]
  have hself : wideWord output fi = word := by
    simpa [fi] using hword fi
  have hrest :
      ∑ j ∈ Finset.univ \ {fi},
          (wideWord output j).val * wordBase ^ j.val =
        ∑ j ∈ Finset.univ \ {fi},
          (wideWord value j).val * wordBase ^ j.val := by
    apply Finset.sum_congr rfl
    intro j hj
    have hne : i.val ≠ j.val := by
      intro hval
      apply (Finset.mem_sdiff.mp hj).2
      simp only [Finset.mem_singleton]
      apply Fin.ext
      exact hval.symm
    rw [hword j, if_neg hne]
  rw [hself, hrest]
  simp [fi, Nat.add_assoc, Nat.add_left_comm, Nat.add_comm]

theorem wide_mac_update (value output : WideArray) (i : Usize)
    (left right carry : MacCampaign.U64) (product : ExtractedMac)
    (hi : i.val < 12)
    (hmac : ark_ip_proofs.s3_07_arkworks_fq_spike.mac
      (wideWord value ⟨i.val, hi⟩) left right carry = .ok product)
    (hupdate : MacCampaign.Array.update value i product.low = .ok output) :
    wideToNat output + product.carry.val * wordBase ^ (i.val + 1) =
      wideToNat value + (left.val * right.val + carry.val) * wordBase ^ i.val := by
  have hu := wideToNat_update value output i product.low hi hupdate
  have hm := extracted_mac_result_spec
    (wideWord value ⟨i.val, hi⟩) left right carry product hmac
  have hcancel :
      (wideToNat output + product.carry.val * wordBase ^ (i.val + 1)) +
          (wideWord value ⟨i.val, hi⟩).val * wordBase ^ i.val =
        (wideToNat value + (left.val * right.val + carry.val) * wordBase ^ i.val) +
          (wideWord value ⟨i.val, hi⟩).val * wordBase ^ i.val := by
    calc
      wideToNat output + product.carry.val * wordBase ^ (i.val + 1) +
          (wideWord value ⟨i.val, hi⟩).val * wordBase ^ i.val =
        (wideToNat output +
          (wideWord value ⟨i.val, hi⟩).val * wordBase ^ i.val) +
          product.carry.val * wordBase ^ (i.val + 1) := by ring
      _ = (wideToNat value + product.low.val * wordBase ^ i.val) +
          product.carry.val * wordBase ^ (i.val + 1) := by rw [hu]
      _ = wideToNat value +
          (product.carry.val * wordBase + product.low.val) * wordBase ^ i.val := by
        rw [pow_succ]
        ring
      _ = wideToNat value +
          ((wideWord value ⟨i.val, hi⟩).val + left.val * right.val + carry.val) *
            wordBase ^ i.val := by rw [← hm.equation]
      _ = (wideToNat value + (left.val * right.val + carry.val) *
          wordBase ^ i.val) +
          (wideWord value ⟨i.val, hi⟩).val * wordBase ^ i.val := by ring
  exact Nat.add_right_cancel hcancel

def limbAt (value : LimbArray) (i : Nat) : Nat :=
  if h : i < 6 then limb value ⟨i, by simpa [limbCount] using h⟩ else 0

def crossTail (value : LimbArray) (row start : Nat) : Nat :=
  ∑ j ∈ Finset.Ico start 6,
    limbAt value row * limbAt value j * wordBase ^ (row + j)

theorem crossTail_step (value : LimbArray) (row start : Nat)
    (hstart : start < 6) :
    crossTail value row start =
      limbAt value row * limbAt value start * wordBase ^ (row + start) +
        crossTail value row (start + 1) := by
  classical
  have hmem : start ∈ Finset.Ico start 6 := by simp [hstart]
  have hset : Finset.Ico start 6 \ {start} = Finset.Ico (start + 1) 6 := by
    ext j
    simp only [Finset.mem_sdiff, Finset.mem_Ico, Finset.mem_singleton]
    omega
  unfold crossTail
  rw [Finset.sum_eq_add_sum_diff_singleton (s := Finset.Ico start 6)
    (f := fun j => limbAt value row * limbAt value j * wordBase ^ (row + j))
    (i := start) (by simp [hmem])]
  rw [hset]

end Ipp.Extracted.ArkworksFqOps

#print axioms Ipp.Extracted.ArkworksFqOps.extracted_adc_spec
#print axioms Ipp.Extracted.ArkworksFqOps.extracted_add_raw_spec
#print axioms Ipp.Extracted.ArkworksFqOps.extracted_add_spec
#print axioms Ipp.Extracted.ArkworksFqOps.decode_extracted_add
#print axioms Ipp.Extracted.ArkworksFqOps.extracted_sub_spec
#print axioms Ipp.Extracted.ArkworksFqOps.decode_extracted_sub
#print axioms Ipp.Extracted.ArkworksFqOps.extracted_neg_spec
#print axioms Ipp.Extracted.ArkworksFqOps.decode_extracted_neg
