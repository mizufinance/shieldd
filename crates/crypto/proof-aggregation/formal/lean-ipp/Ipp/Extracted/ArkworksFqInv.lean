import Ipp.Extracted.ArkworksFqInvGenerated
import Ipp.Extracted.ArkworksFqOps
import Ipp.Bls12377
import Mathlib.Data.Nat.Bitwise
import Mathlib.Tactic

namespace Ipp.Extracted.ArkworksFqInv

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksFqOps

set_option maxHeartbeats 1000000
set_option maxRecDepth 8192
set_option exponentiation.threshold 1000

abbrev LimbArray := ark_ip_proofs.s3_07_arkworks_fq_spike.LimbArray

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action <;> simp_all

private theorem u64_eq_of_val_eq (left right : MacCampaign.U64)
    (h : left.val = right.val) : left = right := by
  cases left
  cases right
  simp_all

def zeroArray : LimbArray :=
  MacCampaign.Array.replicate (Usize.ofNat 6) (MacCampaign.U64.ofNat 0)

def oneArray : LimbArray :=
  MacCampaign.Array.make (Usize.ofNat 6)
    [MacCampaign.U64.ofNat 1, MacCampaign.U64.ofNat 0,
     MacCampaign.U64.ofNat 0, MacCampaign.U64.ofNat 0,
     MacCampaign.U64.ofNat 0, MacCampaign.U64.ofNat 0]

theorem limbsToNat_zeroArray : limbsToNat zeroArray = 0 := by decide

theorem limbsToNat_oneArray : limbsToNat oneArray = 1 := by decide

theorem limbsToNat_R2_lt :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.R2 <
      Ipp.Bls12377.baseModulus := by
  norm_num [limbsToNat, prefixToNat, limbCount, limb, limbWord,
    ark_ip_proofs.s3_07_arkworks_fq_spike.R2, MacCampaign.Array.make,
    MacCampaign.U64.ofNat, MacCampaign.u64Base, wordBase,
    Ipp.Bls12377.baseModulus]

theorem R2_modEq : Nat.ModEq Ipp.Bls12377.baseModulus
    (limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.R2)
    (Ipp.Bls12377.baseMontgomeryRadix ^ 2) := by
  norm_num [Nat.ModEq, limbsToNat, prefixToNat, limbCount, limb, limbWord,
    ark_ip_proofs.s3_07_arkworks_fq_spike.R2, MacCampaign.Array.make,
    MacCampaign.U64.ofNat, MacCampaign.u64Base, wordBase,
    Ipp.Bls12377.baseModulus,
    Ipp.Bls12377.baseMontgomeryRadix]

private theorem lor_two_pow_eq_add {value bit : Nat} (hvalue : value < 2 ^ bit) :
    value ||| 2 ^ bit = value + 2 ^ bit := by
  induction bit generalizing value with
  | zero => simp_all
  | succ bit ih =>
      have hhalf : value / 2 < 2 ^ bit := by
        rw [Nat.div_lt_iff_lt_mul (by decide)]
        simpa [pow_succ, Nat.mul_comm] using hvalue
      calc
        value ||| 2 ^ (bit + 1) =
            Nat.bit value.bodd value.div2 ||| Nat.bit false (2 ^ bit) := by
          rw [Nat.bit_bodd_div2]
          congr 1
          simp [Nat.bit, pow_succ, Nat.mul_comm]
        _ = Nat.bit value.bodd (value.div2 ||| 2 ^ bit) := by
          simp only [Nat.lor_bit, Bool.or_false]
        _ = Nat.bit value.bodd (value.div2 + 2 ^ bit) := by
          rw [ih (by simpa [Nat.div2] using hhalf)]
        _ = value + 2 ^ (bit + 1) := by
          rw [Nat.bit_val]
          have hdecomp := Nat.bodd_add_div2 value
          simp only [pow_succ]
          omega

private theorem u64_shift_join (low high : MacCampaign.U64) :
    MacCampaign.or64
      (MacCampaign.U64.ofNat (low.val / 2))
      (MacCampaign.U64.ofNat (high.val * 2 ^ 63)) =
    MacCampaign.U64.ofNat (low.val / 2 + (high.val % 2) * 2 ^ 63) := by
  rcases low with ⟨low, hlow⟩
  rcases high with ⟨high, hhigh⟩
  simp only [MacCampaign.or64, MacCampaign.U64.ofNat, MacCampaign.U64.mk.injEq]
  have hlow' : low / 2 < 2 ^ 63 := by
    change low < 2 ^ 64 at hlow
    omega
  have hbit : high % 2 = 0 ∨ high % 2 = 1 := by omega
  have hlowMod : low / 2 % 2 ^ 64 = low / 2 :=
    Nat.mod_eq_of_lt (lt_trans hlow' (by omega))
  have hhighShift : high * 2 ^ 63 % 2 ^ 64 = (high % 2) * 2 ^ 63 := by
    omega
  rcases hbit with hbit | hbit
  · rw [show MacCampaign.u64Base = 2 ^ 64 by rfl, hlowMod, hhighShift, hbit]
    simp
  · rw [show MacCampaign.u64Base = 2 ^ 64 by rfl, hlowMod, hhighShift, hbit,
      one_mul]
    rw [lor_two_pow_eq_add hlow']

@[simp] private theorem u64_shift_join_op (low high : MacCampaign.U64) :
    (MacCampaign.U64.ofNat (low.val / 2) |||
      MacCampaign.U64.ofNat (high.val * 2 ^ 63)) =
    MacCampaign.U64.ofNat (low.val / 2 + (high.val % 2) * 2 ^ 63) :=
  u64_shift_join low high

@[simp] private theorem shr64_one (value : MacCampaign.U64) :
    (value >>> (MacCampaign.I32.ofNat 1) : Result MacCampaign.U64) =
      .ok (MacCampaign.U64.ofNat (value.val / 2)) := by
  change MacCampaign.shr64 value (MacCampaign.I32.ofNat 1) = _
  simp [MacCampaign.shr64, MacCampaign.I32.ofNat, MacCampaign.i32Base]

@[simp] private theorem shl64_sixtyThree (value : MacCampaign.U64) :
    (value <<< (MacCampaign.I32.ofNat 63) : Result MacCampaign.U64) =
      .ok (MacCampaign.U64.ofNat (value.val * 2 ^ 63)) := by
  change MacCampaign.shl64 value (MacCampaign.I32.ofNat 63) = _
  simp [MacCampaign.shl64, MacCampaign.I32.ofNat, MacCampaign.i32Base]

@[simp] theorem extracted_shr_join (low high : MacCampaign.U64) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.shr_join low high =
      .ok (MacCampaign.U64.ofNat
        (low.val / 2 + (high.val % 2) * 2 ^ 63)) := by
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.shr_join, shr64_one,
    Result.bind_ok, shl64_sixtyThree]
  rw [u64_shift_join_op]

@[simp] private theorem shift_join_val (low high : MacCampaign.U64) :
    (MacCampaign.U64.ofNat
      (low.val / 2 + high.val % 2 * 2 ^ 63)).val =
      low.val / 2 + high.val % 2 * 2 ^ 63 := by
  simp only [MacCampaign.U64.ofNat]
  change (low.val / 2 + high.val % 2 * 2 ^ 63) % 2 ^ 64 = _
  apply Nat.mod_eq_of_lt
  have hlow : low.val < 2 ^ 64 := low.isLt
  have hhigh : high.val % 2 < 2 := Nat.mod_lt _ (by decide)
  omega

@[simp] private theorem half_val (value : MacCampaign.U64) :
    (MacCampaign.U64.ofNat (value.val / 2)).val = value.val / 2 := by
  simp only [MacCampaign.U64.ofNat]
  change (value.val / 2) % 2 ^ 64 = _
  apply Nat.mod_eq_of_lt
  have := value.isLt
  change value.val < 2 ^ 64 at this
  omega

private theorem div2_telescope (base half x0 x1 x2 x3 x4 x5 : Nat)
    (hbase : base = 2 * half) :
    x0 + x1 * base + x2 * base ^ 2 + x3 * base ^ 3 +
        x4 * base ^ 4 + x5 * base ^ 5 =
      2 * (x0 / 2 + x1 % 2 * half +
        (x1 / 2 + x2 % 2 * half) * base +
        (x2 / 2 + x3 % 2 * half) * base ^ 2 +
        (x3 / 2 + x4 % 2 * half) * base ^ 3 +
        (x4 / 2 + x5 % 2 * half) * base ^ 4 +
        (x5 / 2) * base ^ 5) + x0 % 2 := by
  calc
    x0 + x1 * base + x2 * base ^ 2 + x3 * base ^ 3 +
        x4 * base ^ 4 + x5 * base ^ 5 =
      (x0 % 2 + 2 * (x0 / 2)) +
        (x1 % 2 + 2 * (x1 / 2)) * base +
        (x2 % 2 + 2 * (x2 / 2)) * base ^ 2 +
        (x3 % 2 + 2 * (x3 / 2)) * base ^ 3 +
        (x4 % 2 + 2 * (x4 / 2)) * base ^ 4 +
        (x5 % 2 + 2 * (x5 / 2)) * base ^ 5 := by
          simp only [Nat.mod_add_div]
    _ = 2 * (x0 / 2 + x1 % 2 * half +
        (x1 / 2 + x2 % 2 * half) * base +
        (x2 / 2 + x3 % 2 * half) * base ^ 2 +
        (x3 / 2 + x4 % 2 * half) * base ^ 3 +
        (x4 / 2 + x5 % 2 * half) * base ^ 4 +
        (x5 / 2) * base ^ 5) + x0 % 2 := by
          subst base
          ring

private theorem limbsToNat_make_six
    (x0 x1 x2 x3 x4 x5 : MacCampaign.U64) :
    limbsToNat (MacCampaign.Array.make (Usize.ofNat 6)
      [x0, x1, x2, x3, x4, x5]) =
      x0.val + x1.val * wordBase + x2.val * wordBase ^ 2 +
      x3.val * wordBase ^ 3 + x4.val * wordBase ^ 4 +
      x5.val * wordBase ^ 5 := by
  simp [limbsToNat, prefixToNat, limb, limbWord,
    MacCampaign.Array.make, limbCount]

private theorem two_mul_add_div (value remainder : Nat) (hrem : remainder < 2) :
    (2 * value + remainder) / 2 = value := by
  omega

set_option maxHeartbeats 50000 in
theorem extracted_div2_spec (input output : LimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.div2 input = .ok output) :
    limbsToNat output = limbsToNat input / 2 := by
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.div2] at hexec
  obtain ⟨w0, hw0, hexec⟩ := bind_eq_ok hexec
  rw [limb_index input (Usize.ofNat 0) (by decide)] at hw0
  simp only [Result.ok.injEq] at hw0
  subst w0
  obtain ⟨w1, hw1, hexec⟩ := bind_eq_ok hexec
  rw [limb_index input (Usize.ofNat 1) (by decide)] at hw1
  simp only [Result.ok.injEq] at hw1
  subst w1
  obtain ⟨y0, hy0, hexec⟩ := bind_eq_ok hexec
  rw [extracted_shr_join] at hy0
  simp only [Result.ok.injEq] at hy0
  subst y0
  obtain ⟨w2, hw2, hexec⟩ := bind_eq_ok hexec
  rw [limb_index input (Usize.ofNat 2) (by decide)] at hw2
  simp only [Result.ok.injEq] at hw2
  subst w2
  obtain ⟨y1, hy1, hexec⟩ := bind_eq_ok hexec
  rw [extracted_shr_join] at hy1
  simp only [Result.ok.injEq] at hy1
  subst y1
  obtain ⟨w3, hw3, hexec⟩ := bind_eq_ok hexec
  rw [limb_index input (Usize.ofNat 3) (by decide)] at hw3
  simp only [Result.ok.injEq] at hw3
  subst w3
  obtain ⟨y2, hy2, hexec⟩ := bind_eq_ok hexec
  rw [extracted_shr_join] at hy2
  simp only [Result.ok.injEq] at hy2
  subst y2
  obtain ⟨w4, hw4, hexec⟩ := bind_eq_ok hexec
  rw [limb_index input (Usize.ofNat 4) (by decide)] at hw4
  simp only [Result.ok.injEq] at hw4
  subst w4
  obtain ⟨y3, hy3, hexec⟩ := bind_eq_ok hexec
  rw [extracted_shr_join] at hy3
  simp only [Result.ok.injEq] at hy3
  subst y3
  obtain ⟨w5, hw5, hexec⟩ := bind_eq_ok hexec
  rw [limb_index input (Usize.ofNat 5) (by decide)] at hw5
  simp only [Result.ok.injEq] at hw5
  subst w5
  obtain ⟨y4, hy4, hexec⟩ := bind_eq_ok hexec
  rw [extracted_shr_join] at hy4
  simp only [Result.ok.injEq] at hy4
  subst y4
  obtain ⟨y5, hy5, hexec⟩ := bind_eq_ok hexec
  rw [shr64_one] at hy5
  simp only [Result.ok.injEq] at hy5
  subst y5
  simp only [Result.ok.injEq] at hexec
  subst output
  rw [limbsToNat_make_six, limbsToNat_six]
  simp only [shift_join_val, half_val]
  let x0 := (limbWord input ⟨0, by decide⟩).val
  let x1 := (limbWord input ⟨1, by decide⟩).val
  let x2 := (limbWord input ⟨2, by decide⟩).val
  let x3 := (limbWord input ⟨3, by decide⟩).val
  let x4 := (limbWord input ⟨4, by decide⟩).val
  let x5 := (limbWord input ⟨5, by decide⟩).val
  change
    x0 / 2 + x1 % 2 * 2 ^ 63 +
        (x1 / 2 + x2 % 2 * 2 ^ 63) * wordBase +
        (x2 / 2 + x3 % 2 * 2 ^ 63) * wordBase ^ 2 +
        (x3 / 2 + x4 % 2 * 2 ^ 63) * wordBase ^ 3 +
        (x4 / 2 + x5 % 2 * 2 ^ 63) * wordBase ^ 4 +
        (x5 / 2) * wordBase ^ 5 =
      (x0 + x1 * wordBase + x2 * wordBase ^ 2 + x3 * wordBase ^ 3 +
        x4 * wordBase ^ 4 + x5 * wordBase ^ 5) / 2
  have htwice :
      x0 + x1 * wordBase + x2 * wordBase ^ 2 + x3 * wordBase ^ 3 +
          x4 * wordBase ^ 4 + x5 * wordBase ^ 5 =
        2 * (x0 / 2 + x1 % 2 * 2 ^ 63 +
          (x1 / 2 + x2 % 2 * 2 ^ 63) * wordBase +
          (x2 / 2 + x3 % 2 * 2 ^ 63) * wordBase ^ 2 +
          (x3 / 2 + x4 % 2 * 2 ^ 63) * wordBase ^ 3 +
          (x4 / 2 + x5 % 2 * 2 ^ 63) * wordBase ^ 4 +
          (x5 / 2) * wordBase ^ 5) + x0 % 2 :=
    div2_telescope wordBase (2 ^ 63) x0 x1 x2 x3 x4 x5
      (by norm_num [wordBase])
  rw [htwice]
  exact (two_mul_add_div _ _ (Nat.mod_lt _ (by decide))).symm

@[simp] private theorem shl64_one (value : MacCampaign.U64) :
    (value <<< (MacCampaign.I32.ofNat 1) : Result MacCampaign.U64) =
      .ok (MacCampaign.U64.ofNat (value.val * 2)) := by
  change MacCampaign.shl64 value (MacCampaign.I32.ofNat 1) = _
  simp [MacCampaign.shl64, MacCampaign.I32.ofNat, MacCampaign.i32Base]

private theorem limbsToNat_mod_two (value : LimbArray) :
    limbsToNat value % 2 = (limbWord value ⟨0, by decide⟩).val % 2 := by
  rw [limbsToNat_six]
  simp [limb, wordBase, Nat.add_mod, Nat.mul_mod]

private theorem shifted_half_eq_iff_even (value : MacCampaign.U64) :
    MacCampaign.U64.ofNat
        ((MacCampaign.U64.ofNat (value.val / 2)).val * 2) = value ↔
      Even value.val := by
  constructor
  · intro h
    have hv := congrArg MacCampaign.U64.val h
    simp only [MacCampaign.U64.ofNat] at hv
    change ((value.val / 2 % 2 ^ 64) * 2) % 2 ^ 64 = value.val at hv
    have hlt : value.val < 2 ^ 64 := value.isLt
    rw [Nat.even_iff]
    omega
  · intro heven
    rcases value with ⟨value, hvalue⟩
    apply u64_eq_of_val_eq
    simp only [MacCampaign.U64.ofNat]
    change ((value / 2 % 2 ^ 64) * 2) % 2 ^ 64 = value
    change value < 2 ^ 64 at hvalue
    change Even value at heven
    have hlt : value < 2 ^ 64 := hvalue
    rw [Nat.even_iff] at heven
    have hhalf : value / 2 < 2 ^ 64 := by omega
    rw [Nat.mod_eq_of_lt hhalf]
    have hdouble : value / 2 * 2 = value := by omega
    rw [hdouble, Nat.mod_eq_of_lt hlt]

theorem extracted_is_even_spec (input : LimbArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.is_even input =
      .ok (decide (Even (limbsToNat input))) := by
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.is_even,
    limb_index input (Usize.ofNat 0) (by decide), Result.bind_ok,
    shr64_one, shl64_one, Usize.ofNat_val]
  simp only [shifted_half_eq_iff_even, Nat.even_iff, limbsToNat_mod_two]

private theorem twice_div_two_of_even {value half : Nat}
    (heven : value = half + half) : 2 * (value / 2) = value := by
  omega

private theorem eq_one_of_le_one_of_ne_zero {value : Nat}
    (hle : value ≤ 1) (hne : value ≠ 0) : value = 1 := by
  omega

private theorem mod_two_eq_one_of_not_even {value : Nat}
    (h : ¬Even value) : value % 2 = 1 := by
  rw [Nat.even_iff] at h
  have hlt := Nat.mod_lt value (by decide : 0 < 2)
  omega

private theorem half_sum_lt_right {left right : Nat} (h : left < right) :
    (left + right) / 2 < right := by
  omega

private theorem add_modulus_raw_eq_generated (input : LimbArray) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.add_modulus_raw input =
      ark_ip_proofs.s3_07_arkworks_fq_spike.add_raw input
        ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS := rfl

private theorem add_raw_modulus_exact (input sum : LimbArray)
    (hinput : limbsToNat input < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.add_modulus_raw input =
      .ok sum) :
    limbsToNat sum = limbsToNat input + Ipp.Bls12377.baseModulus := by
  have hgenerated : ark_ip_proofs.s3_07_arkworks_fq_spike.add_raw input
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS = .ok sum := by
    rw [← add_modulus_raw_eq_generated]
    exact hexec
  obtain ⟨carry, hcarry, heq⟩ := extracted_add_raw_spec input
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS sum hgenerated
  rw [modulus_limbsToNat] at heq
  have hsumLt : limbsToNat input + Ipp.Bls12377.baseModulus <
      wordBase ^ limbCount := by
    apply lt_trans _ two_modulus_lt_radix
    simpa [two_mul] using
      Nat.add_lt_add_right hinput Ipp.Bls12377.baseModulus
  have hcarryZero : carry = 0 := by
    by_cases hz : carry = 0
    · exact hz
    have hc : carry = 1 := eq_one_of_le_one_of_ne_zero hcarry hz
    rw [hc, one_mul] at heq
    exfalso
    have hradixLe : wordBase ^ limbCount ≤
        limbsToNat input + Ipp.Bls12377.baseModulus := by
      rw [← heq]
      exact Nat.le_add_left _ _
    exact (Nat.not_le_of_lt hsumLt) hradixLe
  simpa [hcarryZero] using heq

private theorem half_coefficient_odd_spec (input sum output : LimbArray)
    (hinput : limbsToNat input < Ipp.Bls12377.baseModulus)
    (hnotEven : ¬Even (limbsToNat input))
    (hsumExec : ark_ip_proofs.s3_07_arkworks_fq_spike.add_modulus_raw input =
      .ok sum)
    (hdivExec : ark_ip_proofs.s3_07_arkworks_fq_spike.div2 sum = .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
      ∃ k ≤ 1, 2 * limbsToNat output =
        limbsToNat input + k * Ipp.Bls12377.baseModulus := by
  have hsum := add_raw_modulus_exact input sum hinput hsumExec
  have hout := extracted_div2_spec sum output hdivExec
  have hinputOdd : limbsToNat input % 2 = 1 :=
    mod_two_eq_one_of_not_even hnotEven
  have hmodulusOdd : Ipp.Bls12377.baseModulus % 2 = 1 := by
    norm_num [Ipp.Bls12377.baseModulus]
  have hsumEven :
      (limbsToNat input + Ipp.Bls12377.baseModulus) % 2 = 0 := by
    rw [Nat.add_mod, hinputOdd, hmodulusOdd]
  have heq : 2 * ((limbsToNat input + Ipp.Bls12377.baseModulus) / 2) =
      limbsToNat input + Ipp.Bls12377.baseModulus := by
    rcases Nat.even_iff.mpr hsumEven with ⟨half, hhalf⟩
    exact twice_div_two_of_even hhalf
  rw [hout, hsum]
  exact ⟨half_sum_lt_right hinput, 1, by decide, by simpa using heq⟩

private theorem not_even_of_exec_false (input : LimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.is_even input = .ok false) :
    ¬Even (limbsToNat input) := by
  rw [extracted_is_even_spec] at hexec
  exact decide_eq_false_iff_not.mp (Result.ok.inj hexec)

private theorem even_of_exec_true (input : LimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.is_even input = .ok true) :
    Even (limbsToNat input) := by
  rw [extracted_is_even_spec] at hexec
  exact decide_eq_true_eq.mp (Result.ok.inj hexec)

attribute [local irreducible]
  ark_ip_proofs.s3_07_arkworks_fq_spike.add_modulus_raw

private theorem half_coefficient_odd_exec_spec (input output : LimbArray)
    (hinput : limbsToNat input < Ipp.Bls12377.baseModulus)
    (hnotEven : ¬Even (limbsToNat input))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.half_coefficient_odd input =
      .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
      ∃ k ≤ 1, 2 * limbsToNat output =
        limbsToNat input + k * Ipp.Bls12377.baseModulus := by
  have hrun := hexec
  simp only [ark_ip_proofs.s3_07_arkworks_fq_spike.half_coefficient_odd] at hrun
  cases hsum : ark_ip_proofs.s3_07_arkworks_fq_spike.add_modulus_raw input with
  | ok sum =>
      rw [hsum] at hrun
      simp only [Result.bind_ok] at hrun
      exact half_coefficient_odd_spec input sum output hinput hnotEven hsum hrun
  | fail error =>
      rw [hsum] at hrun
      simp at hrun
  | div =>
      rw [hsum] at hrun
      simp at hrun

private theorem half_coefficient_false_spec (input output : LimbArray)
    (hinput : limbsToNat input < Ipp.Bls12377.baseModulus)
    (hnotEven : ¬Even (limbsToNat input))
    (hevenExec : ark_ip_proofs.s3_07_arkworks_fq_spike.is_even input = .ok false)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.half_coefficient input =
      .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
      ∃ k ≤ 1, 2 * limbsToNat output =
        limbsToNat input + k * Ipp.Bls12377.baseModulus := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.half_coefficient at hexec
  obtain ⟨even, hev, hrest⟩ := bind_eq_ok hexec
  have heq : even = false := by
    rw [hevenExec] at hev
    exact (Result.ok.inj hev).symm
  subst heq
  rw [if_neg (by simp)] at hrest
  exact half_coefficient_odd_exec_spec input output hinput hnotEven hrest

private theorem half_coefficient_true_spec (input output : LimbArray)
    (hinput : limbsToNat input < Ipp.Bls12377.baseModulus)
    (heven : Even (limbsToNat input))
    (hevenExec : ark_ip_proofs.s3_07_arkworks_fq_spike.is_even input = .ok true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.half_coefficient input =
      .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
      ∃ k ≤ 1, 2 * limbsToNat output =
        limbsToNat input + k * Ipp.Bls12377.baseModulus := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.half_coefficient at hexec
  obtain ⟨even, hev, hrest⟩ := bind_eq_ok hexec
  have heq : even = true := by
    rw [hevenExec] at hev
    exact (Result.ok.inj hev).symm
  subst heq
  rw [if_pos rfl] at hrest
  have hout := extracted_div2_spec input output hrest
  rcases heven with ⟨half, hhalf⟩
  refine ⟨?_, 0, Nat.zero_le 1, ?_⟩
  · rw [hout]
    exact lt_of_le_of_lt (Nat.div_le_self (limbsToNat input) 2) hinput
  · rw [Nat.zero_mul, Nat.add_zero, hout]
    exact twice_div_two_of_even hhalf

theorem extracted_half_coefficient_spec (input output : LimbArray)
    (hinput : limbsToNat input < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.half_coefficient input =
      .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
      ∃ k ≤ 1, 2 * limbsToNat output =
        limbsToNat input + k * Ipp.Bls12377.baseModulus := by
  have hevenModel := extracted_is_even_spec input
  cases hevenExec : ark_ip_proofs.s3_07_arkworks_fq_spike.is_even input with
  | fail error => simp [hevenModel] at hevenExec
  | div => simp [hevenModel] at hevenExec
  | ok even =>
    cases even with
    | false =>
        exact half_coefficient_false_spec input output hinput
          (not_even_of_exec_false input hevenExec) hevenExec hexec
    | true =>
        exact half_coefficient_true_spec input output hinput
          (even_of_exec_true input hevenExec) hevenExec hexec

private abbrev modulus : Nat := Ipp.Bls12377.baseModulus

private abbrev radixSquared : Nat :=
  Ipp.Bls12377.baseMontgomeryRadix ^ 2

/-- Facts preserved while one binary-GCD lane strips factors of two. -/
structure CoefficientInvariant (a0 value coefficient : LimbArray) : Prop where
  congruent : Nat.ModEq modulus
    (limbsToNat coefficient * limbsToNat a0)
    (limbsToNat value * radixSquared)
  coefficient_lt : limbsToNat coefficient < modulus
  value_pos : 0 < limbsToNat value

/-- The extended binary-GCD state, entirely in canonical limb integers. -/
structure InvInvariant (a0 u v b c : LimbArray) : Prop where
  u_lane : CoefficientInvariant a0 u b
  v_lane : CoefficientInvariant a0 v c
  coprime : Nat.Coprime (limbsToNat u) (limbsToNat v)

private theorem modulus_coprime_two : Nat.gcd modulus 2 = 1 := by
  norm_num [modulus, Ipp.Bls12377.baseModulus]

theorem inv_loop0_loop0_body_spec (a0 u b : LimbArray)
    (hinvariant : CoefficientInvariant a0 u b)
    {flow : ControlFlow (LimbArray × LimbArray) (LimbArray × LimbArray)}
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0_loop0.body u b =
      .ok flow) :
    match flow with
    | .done state => state = (u, b) ∧ ¬Even (limbsToNat u)
    | .cont state =>
        CoefficientInvariant a0 state.1 state.2 ∧
        limbsToNat state.1 < limbsToNat u ∧
        limbsToNat state.1 ∣ limbsToNat u ∧
        Even (limbsToNat u) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0_loop0.body at hexec
  obtain ⟨even, hevenExec, hrest⟩ := bind_eq_ok hexec
  rw [extracted_is_even_spec] at hevenExec
  by_cases heven : Even (limbsToNat u)
  · have heq : even = true := by
      rw [decide_eq_true_eq.mpr heven] at hevenExec
      exact (Result.ok.inj hevenExec).symm
    subst even
    rw [if_pos rfl] at hrest
    obtain ⟨u1, hu1, hrest⟩ := bind_eq_ok hrest
    obtain ⟨b1, hb1, hreturn⟩ := bind_eq_ok hrest
    simp only [Result.ok.injEq] at hreturn
    subst flow
    have hvalue := extracted_div2_spec u u1 hu1
    have hcoefficient := extracted_half_coefficient_spec b b1
      hinvariant.coefficient_lt hb1
    refine ⟨?_, ?_, ?_, heven⟩
    · refine ⟨?_, hcoefficient.1, ?_⟩
      · rw [hvalue]
        obtain ⟨k, _, hk⟩ := hcoefficient.2
        have hdouble : 2 * (limbsToNat u / 2) = limbsToNat u := by
          rcases heven with ⟨half, hhalfValue⟩
          exact twice_div_two_of_even hhalfValue
        apply Nat.ModEq.cancel_left_of_coprime modulus_coprime_two
        calc
          2 * (limbsToNat b1 * limbsToNat a0) =
              (limbsToNat b + k * modulus) * limbsToNat a0 := by
            rw [← hk]
            ring
          _ = modulus * (k * limbsToNat a0) +
              limbsToNat b * limbsToNat a0 := by ring
          _ ≡ limbsToNat b * limbsToNat a0 [MOD modulus] :=
            Nat.ModEq.modulus_mul_add
          _ ≡ limbsToNat u * radixSquared [MOD modulus] :=
            hinvariant.congruent
          _ = (2 * (limbsToNat u / 2)) * radixSquared := by
            rw [hdouble]
          _ = 2 * ((limbsToNat u / 2) * radixSquared) := by ring
      · rw [hvalue]
        clear hcoefficient
        have hpos : 0 < limbsToNat u := hinvariant.value_pos
        have htwoLe : 2 ≤ limbsToNat u := by
          rcases heven with ⟨half, hhalfValue⟩
          omega
        omega
    · rw [hvalue]
      clear hcoefficient
      have hpos : 0 < limbsToNat u := hinvariant.value_pos
      have htwoLe : 2 ≤ limbsToNat u := by
        rcases heven with ⟨half, hhalfValue⟩
        omega
      omega
    · rw [hvalue]
      exact Nat.div_dvd_of_dvd (by
        rcases heven with ⟨half, hhalfValue⟩
        use half
        omega)
  · have heq : even = false := by
      rw [decide_eq_false_iff_not.mpr heven] at hevenExec
      exact (Result.ok.inj hevenExec).symm
    subst even
    rw [if_neg (by simp)] at hrest
    simp only [Result.ok.injEq] at hrest
    subst flow
    exact ⟨rfl, heven⟩

theorem inv_loop0_loop1_body_spec (a0 v c : LimbArray)
    (hinvariant : CoefficientInvariant a0 v c)
    {flow : ControlFlow (LimbArray × LimbArray) (LimbArray × LimbArray)}
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0_loop1.body v c =
      .ok flow) :
    match flow with
    | .done state => state = (v, c) ∧ ¬Even (limbsToNat v)
    | .cont state =>
        CoefficientInvariant a0 state.1 state.2 ∧
        limbsToNat state.1 < limbsToNat v ∧
        limbsToNat state.1 ∣ limbsToNat v ∧
        Even (limbsToNat v) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0_loop1.body at hexec
  obtain ⟨even, hevenExec, hrest⟩ := bind_eq_ok hexec
  rw [extracted_is_even_spec] at hevenExec
  by_cases heven : Even (limbsToNat v)
  · have heq : even = true := by
      rw [decide_eq_true_eq.mpr heven] at hevenExec
      exact (Result.ok.inj hevenExec).symm
    subst even
    rw [if_pos rfl] at hrest
    obtain ⟨v1, hv1, hrest⟩ := bind_eq_ok hrest
    obtain ⟨c1, hc1, hreturn⟩ := bind_eq_ok hrest
    simp only [Result.ok.injEq] at hreturn
    subst flow
    have hvalue := extracted_div2_spec v v1 hv1
    have hcoefficient := extracted_half_coefficient_spec c c1
      hinvariant.coefficient_lt hc1
    refine ⟨?_, ?_, ?_, heven⟩
    · refine ⟨?_, hcoefficient.1, ?_⟩
      · rw [hvalue]
        obtain ⟨k, _, hk⟩ := hcoefficient.2
        have hdouble : 2 * (limbsToNat v / 2) = limbsToNat v := by
          rcases heven with ⟨half, hhalfValue⟩
          exact twice_div_two_of_even hhalfValue
        apply Nat.ModEq.cancel_left_of_coprime modulus_coprime_two
        calc
          2 * (limbsToNat c1 * limbsToNat a0) =
              (limbsToNat c + k * modulus) * limbsToNat a0 := by
            rw [← hk]
            ring
          _ = modulus * (k * limbsToNat a0) +
              limbsToNat c * limbsToNat a0 := by ring
          _ ≡ limbsToNat c * limbsToNat a0 [MOD modulus] :=
            Nat.ModEq.modulus_mul_add
          _ ≡ limbsToNat v * radixSquared [MOD modulus] :=
            hinvariant.congruent
          _ = (2 * (limbsToNat v / 2)) * radixSquared := by
            rw [hdouble]
          _ = 2 * ((limbsToNat v / 2) * radixSquared) := by ring
      · rw [hvalue]
        clear hcoefficient
        have hpos : 0 < limbsToNat v := hinvariant.value_pos
        have htwoLe : 2 ≤ limbsToNat v := by
          rcases heven with ⟨half, hhalfValue⟩
          omega
        omega
    · rw [hvalue]
      clear hcoefficient
      have hpos : 0 < limbsToNat v := hinvariant.value_pos
      have htwoLe : 2 ≤ limbsToNat v := by
        rcases heven with ⟨half, hhalfValue⟩
        omega
      omega
    · rw [hvalue]
      exact Nat.div_dvd_of_dvd (by
        rcases heven with ⟨half, hhalfValue⟩
        use half
        omega)
  · have heq : even = false := by
      rw [decide_eq_false_iff_not.mpr heven] at hevenExec
      exact (Result.ok.inj hevenExec).symm
    subst even
    rw [if_neg (by simp)] at hrest
    simp only [Result.ok.injEq] at hrest
    subst flow
    exact ⟨rfl, heven⟩

private theorem loopFuel_exists_of_result {A B : Type}
    {body : A → Result (ControlFlow A B)} {state : A} {result : Result B}
    (hresult : LoopResult body state result) :
    ∃ fuel, loopFuel body fuel state = result := by
  induction hresult with
  | done hbody => exact ⟨1, by rw [loopFuel, hbody]⟩
  | next hbody _ ih =>
      obtain ⟨fuel, hfuel⟩ := ih
      exact ⟨fuel + 1, by rw [loopFuel, hbody]; exact hfuel⟩
  | fail hbody => exact ⟨1, by rw [loopFuel, hbody]⟩
  | div hbody => exact ⟨1, by rw [loopFuel, hbody]⟩

private theorem loopFuel_exists_of_loop_eq {A B : Type}
    {body : A → Result (ControlFlow A B)} {state : A} {output : B}
    (hexec : loop body state = .ok output) :
    ∃ fuel, loopFuel body fuel state = .ok output := by
  exact loopFuel_exists_of_result (loopResult_of_eq (by simp) hexec)

theorem inv_loop0_loop0_fuel_spec (fuel : Nat) (a0 u b uOut bOut : LimbArray)
    (hinvariant : CoefficientInvariant a0 u b)
    (hexec : loopFuel
      (fun state : LimbArray × LimbArray =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0_loop0.body
          state.1 state.2)
      fuel (u, b) = .ok (uOut, bOut)) :
    CoefficientInvariant a0 uOut bOut ∧
      ¬Even (limbsToNat uOut) ∧
      limbsToNat uOut ∣ limbsToNat u ∧
      (¬Even (limbsToNat u) → uOut = u) := by
  induction fuel generalizing u b with
  | zero => rw [loopFuel] at hexec; cases hexec
  | succ fuel ih =>
      cases hbody :
          ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0_loop0.body u b with
      | fail error => rw [loopFuel, hbody] at hexec; cases hexec
      | div => rw [loopFuel, hbody] at hexec; cases hexec
      | ok flow =>
          cases flow with
          | done state =>
              rw [loopFuel, hbody] at hexec
              have hspec := inv_loop0_loop0_body_spec a0 u b hinvariant hbody
              rcases hspec with ⟨hstate, hodd⟩
              rw [hstate] at hexec
              cases hexec
              exact ⟨hinvariant, hodd, dvd_rfl, fun _ => rfl⟩
          | cont state =>
              rw [loopFuel, hbody] at hexec
              have hspec := inv_loop0_loop0_body_spec a0 u b hinvariant hbody
              rcases hspec with ⟨hnext, _, hdivides, heven⟩
              have hfinal := ih state.1 state.2 hnext hexec
              exact ⟨hfinal.1, hfinal.2.1, hfinal.2.2.1.trans hdivides,
                fun hodd => (hodd heven).elim⟩

theorem inv_loop0_loop1_fuel_spec (fuel : Nat) (a0 v c vOut cOut : LimbArray)
    (hinvariant : CoefficientInvariant a0 v c)
    (hexec : loopFuel
      (fun state : LimbArray × LimbArray =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0_loop1.body
          state.1 state.2)
      fuel (v, c) = .ok (vOut, cOut)) :
    CoefficientInvariant a0 vOut cOut ∧
      ¬Even (limbsToNat vOut) ∧
      limbsToNat vOut ∣ limbsToNat v ∧
      (¬Even (limbsToNat v) → vOut = v) := by
  induction fuel generalizing v c with
  | zero => rw [loopFuel] at hexec; cases hexec
  | succ fuel ih =>
      cases hbody :
          ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0_loop1.body v c with
      | fail error => rw [loopFuel, hbody] at hexec; cases hexec
      | div => rw [loopFuel, hbody] at hexec; cases hexec
      | ok flow =>
          cases flow with
          | done state =>
              rw [loopFuel, hbody] at hexec
              have hspec := inv_loop0_loop1_body_spec a0 v c hinvariant hbody
              rcases hspec with ⟨hstate, hodd⟩
              rw [hstate] at hexec
              cases hexec
              exact ⟨hinvariant, hodd, dvd_rfl, fun _ => rfl⟩
          | cont state =>
              rw [loopFuel, hbody] at hexec
              have hspec := inv_loop0_loop1_body_spec a0 v c hinvariant hbody
              rcases hspec with ⟨hnext, _, hdivides, heven⟩
              have hfinal := ih state.1 state.2 hnext hexec
              exact ⟨hfinal.1, hfinal.2.1, hfinal.2.2.1.trans hdivides,
                fun hodd => (hodd heven).elim⟩

theorem inv_loop0_loop0_spec (a0 u b uOut bOut : LimbArray)
    (hinvariant : CoefficientInvariant a0 u b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0_loop0 u b =
      .ok (uOut, bOut)) :
    CoefficientInvariant a0 uOut bOut ∧
      ¬Even (limbsToNat uOut) ∧
      limbsToNat uOut ∣ limbsToNat u ∧
      (¬Even (limbsToNat u) → uOut = u) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0_loop0 at hexec
  obtain ⟨fuel, hfuel⟩ := loopFuel_exists_of_loop_eq hexec
  exact inv_loop0_loop0_fuel_spec fuel a0 u b uOut bOut hinvariant hfuel

theorem inv_loop0_loop1_spec (a0 v c vOut cOut : LimbArray)
    (hinvariant : CoefficientInvariant a0 v c)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0_loop1 v c =
      .ok (vOut, cOut)) :
    CoefficientInvariant a0 vOut cOut ∧
      ¬Even (limbsToNat vOut) ∧
      limbsToNat vOut ∣ limbsToNat v ∧
      (¬Even (limbsToNat v) → vOut = v) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0_loop1 at hexec
  obtain ⟨fuel, hfuel⟩ := loopFuel_exists_of_loop_eq hexec
  exact inv_loop0_loop1_fuel_spec fuel a0 v c vOut cOut hinvariant hfuel

private theorem extracted_array_eq (left right : LimbArray) :
    ark_ip_proofs.core.array.equality.PartialEqArray.eq
      ark_ip_proofs.core.cmp.PartialEqU64 left right =
      .ok (decide (left.val = right.val)) := by
  simp [ark_ip_proofs.core.array.equality.PartialEqArray.eq]

private theorem eq_oneArray_of_value_one (value : LimbArray)
    (hvalue : limbsToNat value = 1) : value = oneArray := by
  have hsix := limbsToNat_six value
  have h0 : (limbWord value ⟨0, by decide⟩).val = 1 := by
    have hlowLe : (limbWord value ⟨0, by decide⟩).val ≤ 1 := by
      rw [limbsToNat_six] at hvalue
      change
        (limbWord value ⟨0, by decide⟩).val +
          (limbWord value ⟨1, by decide⟩).val * wordBase +
          (limbWord value ⟨2, by decide⟩).val * wordBase ^ 2 +
          (limbWord value ⟨3, by decide⟩).val * wordBase ^ 3 +
          (limbWord value ⟨4, by decide⟩).val * wordBase ^ 4 +
          (limbWord value ⟨5, by decide⟩).val * wordBase ^ 5 = 1 at hvalue
      omega
    have hparity := limbsToNat_mod_two value
    rw [hvalue] at hparity
    omega
  have hsum :
      (limbWord value ⟨1, by decide⟩).val * wordBase +
        (limbWord value ⟨2, by decide⟩).val * wordBase ^ 2 +
        (limbWord value ⟨3, by decide⟩).val * wordBase ^ 3 +
        (limbWord value ⟨4, by decide⟩).val * wordBase ^ 4 +
        (limbWord value ⟨5, by decide⟩).val * wordBase ^ 5 = 0 := by
    rw [hvalue] at hsix
    change
      1 = (limbWord value ⟨0, by decide⟩).val +
        (limbWord value ⟨1, by decide⟩).val * wordBase +
        (limbWord value ⟨2, by decide⟩).val * wordBase ^ 2 +
        (limbWord value ⟨3, by decide⟩).val * wordBase ^ 3 +
        (limbWord value ⟨4, by decide⟩).val * wordBase ^ 4 +
        (limbWord value ⟨5, by decide⟩).val * wordBase ^ 5 at hsix
    omega
  obtain ⟨hsum4, hterm5⟩ := Nat.eq_zero_of_add_eq_zero hsum
  obtain ⟨hsum3, hterm4⟩ := Nat.eq_zero_of_add_eq_zero hsum4
  obtain ⟨hsum2, hterm3⟩ := Nat.eq_zero_of_add_eq_zero hsum3
  obtain ⟨hsum1, hterm2⟩ := Nat.eq_zero_of_add_eq_zero hsum2
  have hterm1 := hsum1
  have h1 : (limbWord value ⟨1, by decide⟩).val = 0 := by
    exact (Nat.mul_eq_zero.mp hterm1).resolve_right
      (ne_of_gt wordBase_pos)
  have h2 : (limbWord value ⟨2, by decide⟩).val = 0 := by
    exact (Nat.mul_eq_zero.mp hterm2).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  have h3 : (limbWord value ⟨3, by decide⟩).val = 0 := by
    exact (Nat.mul_eq_zero.mp hterm3).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  have h4 : (limbWord value ⟨4, by decide⟩).val = 0 := by
    exact (Nat.mul_eq_zero.mp hterm4).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  have h5 : (limbWord value ⟨5, by decide⟩).val = 0 := by
    exact (Nat.mul_eq_zero.mp hterm5).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  apply MacCampaign.Array.ext
  apply List.ext_get
  · simp [oneArray, MacCampaign.Array.make, value.hlen]
  · intro n hv ho
    have hn : n < 6 := by simpa [value.hlen] using hv
    interval_cases n <;>
      simp [oneArray, MacCampaign.Array.make, limbWord] at ho ⊢ <;>
      apply u64_eq_of_val_eq
    all_goals first
      | simpa [limbWord, MacCampaign.U64.ofNat] using h0
      | simpa [limbWord, MacCampaign.U64.ofNat] using h1
      | simpa [limbWord, MacCampaign.U64.ofNat] using h2
      | simpa [limbWord, MacCampaign.U64.ofNat] using h3
      | simpa [limbWord, MacCampaign.U64.ofNat] using h4
      | simpa [limbWord, MacCampaign.U64.ofNat] using h5

private theorem extracted_sub_add_modEq (left right output : LimbArray)
    (hleft : limbsToNat left < modulus)
    (hright : limbsToNat right < modulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sub left right =
      .ok output) :
    Nat.ModEq modulus
      (limbsToNat output + limbsToNat right) (limbsToNat left) := by
  have hspec := extracted_sub_spec left right output hleft hright hexec
  by_cases hle : limbsToNat right ≤ limbsToNat left
  · have heq := hspec.2
    rw [Ipp.Bls12377.MontgomeryFq.subSem_no_borrow] at heq
    · change limbsToNat output =
        limbsToNat left - limbsToNat right at heq
      rw [heq, Nat.sub_add_cancel hle]
    · simpa [asRep] using hle
  · have hlt : limbsToNat left < limbsToNat right := Nat.lt_of_not_ge hle
    have heq := hspec.2
    rw [Ipp.Bls12377.MontgomeryFq.subSem_borrow] at heq
    · change limbsToNat output =
        limbsToNat left + modulus - limbsToNat right at heq
      have hrightLe : limbsToNat right ≤ limbsToNat left + modulus := by
        omega
      rw [heq, Nat.sub_add_cancel hrightLe]
      exact Nat.add_modEq_right
    · simpa [asRep] using hlt

private theorem coefficient_sub_spec (a0 leftValue rightValue
    leftCoefficient rightCoefficient valueOut coefficientOut : LimbArray)
    (hleft : CoefficientInvariant a0 leftValue leftCoefficient)
    (hright : CoefficientInvariant a0 rightValue rightCoefficient)
    (hvalueLe : limbsToNat rightValue ≤ limbsToNat leftValue)
    (hvalueLt : limbsToNat rightValue < limbsToNat leftValue)
    (hvalueExec : ark_ip_proofs.s3_07_arkworks_fq_spike.sub_raw
      leftValue rightValue = .ok valueOut)
    (hcoefficientExec : ark_ip_proofs.s3_07_arkworks_fq_spike.sub
      leftCoefficient rightCoefficient = .ok coefficientOut) :
    CoefficientInvariant a0 valueOut coefficientOut := by
  have hvalue := extracted_sub_raw_of_le leftValue rightValue valueOut
    hvalueLe hvalueExec
  have hcoefficient := extracted_sub_spec leftCoefficient rightCoefficient
    coefficientOut hleft.coefficient_lt hright.coefficient_lt hcoefficientExec
  have hadd := extracted_sub_add_modEq leftCoefficient rightCoefficient
    coefficientOut hleft.coefficient_lt hright.coefficient_lt hcoefficientExec
  refine ⟨?_, hcoefficient.1, ?_⟩
  · rw [hvalue]
    apply Nat.ModEq.add_right_cancel'
      (limbsToNat rightValue * radixSquared)
    calc
      limbsToNat coefficientOut * limbsToNat a0 +
          limbsToNat rightValue * radixSquared
          ≡ limbsToNat coefficientOut * limbsToNat a0 +
            limbsToNat rightCoefficient * limbsToNat a0 [MOD modulus] :=
        (Nat.ModEq.refl _).add hright.congruent.symm
      _ = (limbsToNat coefficientOut + limbsToNat rightCoefficient) *
          limbsToNat a0 := by ring
      _ ≡ limbsToNat leftCoefficient * limbsToNat a0 [MOD modulus] :=
        hadd.mul_right (limbsToNat a0)
      _ ≡ limbsToNat leftValue * radixSquared [MOD modulus] :=
        hleft.congruent
      _ = (limbsToNat leftValue - limbsToNat rightValue) * radixSquared +
          limbsToNat rightValue * radixSquared := by
        rw [← Nat.add_mul, Nat.sub_add_cancel hvalueLe]
  · rw [hvalue]
    omega

/-- A terminal outer-loop state identifies the coefficient selected by `inv`. -/
def InvExit (a0 u b c : LimbArray) : Prop :=
  (u = oneArray ∧ CoefficientInvariant a0 oneArray b) ∨
  (u ≠ oneArray ∧ CoefficientInvariant a0 oneArray c)

theorem inv_loop0_body_spec (a0 u v b c : LimbArray)
    (hinvariant : InvInvariant a0 u v b c)
    {flow : ControlFlow
      (LimbArray × LimbArray × LimbArray × LimbArray)
      (LimbArray × LimbArray × LimbArray)}
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0.body
      oneArray u v b c = .ok flow) :
    match flow with
    | .done state => InvExit a0 state.1 state.2.1 state.2.2
    | .cont state =>
        InvInvariant a0 state.1 state.2.1 state.2.2.1 state.2.2.2 ∧
        limbsToNat state.1 + limbsToNat state.2.1 <
          limbsToNat u + limbsToNat v := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0.body at hexec
  obtain ⟨ueq, hueq, hrest⟩ := bind_eq_ok hexec
  rw [extracted_array_eq] at hueq
  by_cases hu : u.val = oneArray.val
  · have hueqValue : ueq = true := by
      rw [decide_eq_true_eq.mpr hu] at hueq
      exact (Result.ok.inj hueq).symm
    subst ueq
    rw [if_neg (by simp)] at hrest
    simp only [Result.ok.injEq] at hrest
    subst flow
    left
    have huArray : u = oneArray := by
      apply MacCampaign.Array.ext
      exact hu
    exact ⟨huArray, by simpa [huArray] using hinvariant.u_lane⟩
  · have hueqValue : ueq = false := by
      rw [decide_eq_false_iff_not.mpr hu] at hueq
      exact (Result.ok.inj hueq).symm
    subst ueq
    rw [if_pos (by simp)] at hrest
    obtain ⟨veq, hveq, hrest⟩ := bind_eq_ok hrest
    rw [extracted_array_eq] at hveq
    by_cases hv : v.val = oneArray.val
    · have hveqValue : veq = true := by
        rw [decide_eq_true_eq.mpr hv] at hveq
        exact (Result.ok.inj hveq).symm
      subst veq
      rw [if_neg (by simp)] at hrest
      simp only [Result.ok.injEq] at hrest
      subst flow
      right
      have hvArray : v = oneArray := by
        apply MacCampaign.Array.ext
        exact hv
      refine ⟨?_, by simpa [hvArray] using hinvariant.v_lane⟩
      intro huArray
      exact hu (congrArg MacCampaign.Array.val huArray)
    · have hveqValue : veq = false := by
        rw [decide_eq_false_iff_not.mpr hv] at hveq
        exact (Result.ok.inj hveq).symm
      subst veq
      rw [if_pos (by simp)] at hrest
      obtain ⟨ub, hub, hrest⟩ := bind_eq_ok hrest
      rcases ub with ⟨u1, b1⟩
      obtain ⟨vc, hvc, hrest⟩ := bind_eq_ok hrest
      rcases vc with ⟨v1, c1⟩
      have huStrip := inv_loop0_loop0_spec a0 u b u1 b1
        hinvariant.u_lane hub
      have hvStrip := inv_loop0_loop1_spec a0 v c v1 c1
        hinvariant.v_lane hvc
      have hcoprimeU : Nat.Coprime (limbsToNat u1) (limbsToNat v) :=
        hinvariant.coprime.coprime_dvd_left huStrip.2.2.1
      have hcoprime : Nat.Coprime (limbsToNat u1) (limbsToNat v1) :=
        hcoprimeU.coprime_dvd_right hvStrip.2.2.1
      have hnotBothEven : ¬(Even (limbsToNat u) ∧ Even (limbsToNat v)) := by
        rintro ⟨huEven, hvEven⟩
        have huDvd : 2 ∣ limbsToNat u := by
          rcases huEven with ⟨half, hhalf⟩
          use half
          omega
        have hvDvd : 2 ∣ limbsToNat v := by
          rcases hvEven with ⟨half, hhalf⟩
          use half
          omega
        have hgcd : 2 ∣ Nat.gcd (limbsToNat u) (limbsToNat v) :=
          Nat.dvd_gcd huDvd hvDvd
        have hcopInitial := hinvariant.coprime
        rw [Nat.coprime_iff_gcd_eq_one] at hcopInitial
        rw [hcopInitial] at hgcd
        norm_num at hgcd
      have hne : limbsToNat u1 ≠ limbsToNat v1 := by
        intro heq
        have hself : Nat.Coprime (limbsToNat u1) (limbsToNat u1) := by
          simpa [heq] using hcoprime
        rw [Nat.coprime_iff_gcd_eq_one, Nat.gcd_self] at hself
        have huOne := eq_oneArray_of_value_one u1 hself
        have hvOne := eq_oneArray_of_value_one v1 (by omega)
        by_cases huEven : Even (limbsToNat u)
        · have hvOdd : ¬Even (limbsToNat v) := by
            intro hvEven
            exact hnotBothEven ⟨huEven, hvEven⟩
          have hvUnchanged := hvStrip.2.2.2 hvOdd
          have hvArray : v = oneArray := hvUnchanged.symm.trans hvOne
          exact hv (congrArg MacCampaign.Array.val hvArray)
        · have huUnchanged := huStrip.2.2.2 huEven
          have huArray : u = oneArray := huUnchanged.symm.trans huOne
          exact hu (congrArg MacCampaign.Array.val huArray)
      have hu1Le : limbsToNat u1 ≤ limbsToNat u :=
        Nat.le_of_dvd hinvariant.u_lane.value_pos huStrip.2.2.1
      have hv1Le : limbsToNat v1 ≤ limbsToNat v :=
        Nat.le_of_dvd hinvariant.v_lane.value_pos hvStrip.2.2.1
      obtain ⟨ugt, hugt, hrest⟩ := bind_eq_ok hrest
      rw [extracted_gt_spec] at hugt
      by_cases hgt : limbsToNat v1 < limbsToNat u1
      · have hugtValue : ugt = true := by
          rw [decide_eq_true_eq.mpr hgt] at hugt
          exact (Result.ok.inj hugt).symm
        subst ugt
        rw [if_pos rfl] at hrest
        obtain ⟨u2, hu2, hrest⟩ := bind_eq_ok hrest
        obtain ⟨b2, hb2, hreturn⟩ := bind_eq_ok hrest
        simp only [Result.ok.injEq] at hreturn
        subst flow
        have hvalue := extracted_sub_raw_of_le u1 v1 u2 hgt.le hu2
        have huLane := coefficient_sub_spec a0 u1 v1 b1 c1 u2 b2
          huStrip.1 hvStrip.1 hgt.le hgt hu2 hb2
        have hcoprimeNext : Nat.Coprime (limbsToNat u2) (limbsToNat v1) := by
          rw [hvalue]
          exact (Nat.coprime_sub_self_left hgt.le).2 hcoprime
        refine ⟨⟨huLane, hvStrip.1, hcoprimeNext⟩, ?_⟩
        rw [hvalue, Nat.sub_add_cancel hgt.le]
        have hvPos := hinvariant.v_lane.value_pos
        omega
      · have hlt : limbsToNat u1 < limbsToNat v1 := by omega
        have hugtValue : ugt = false := by
          rw [decide_eq_false_iff_not.mpr hgt] at hugt
          exact (Result.ok.inj hugt).symm
        subst ugt
        rw [if_neg (by simp)] at hrest
        obtain ⟨v2, hv2, hrest⟩ := bind_eq_ok hrest
        obtain ⟨c2, hc2, hreturn⟩ := bind_eq_ok hrest
        simp only [Result.ok.injEq] at hreturn
        subst flow
        have hvalue := extracted_sub_raw_of_le v1 u1 v2 hlt.le hv2
        have hvLane := coefficient_sub_spec a0 v1 u1 c1 b1 v2 c2
          hvStrip.1 huStrip.1 hlt.le hlt hv2 hc2
        have hcoprimeNext : Nat.Coprime (limbsToNat u1) (limbsToNat v2) := by
          rw [hvalue]
          exact (Nat.coprime_sub_self_right hlt.le).2 hcoprime
        refine ⟨⟨huStrip.1, hvLane, hcoprimeNext⟩, ?_⟩
        change limbsToNat u1 + limbsToNat v2 < limbsToNat u + limbsToNat v
        rw [hvalue]
        have huPos := hinvariant.u_lane.value_pos
        omega

theorem inv_loop0_fuel_spec (fuel : Nat)
    (a0 u v b c uOut bOut cOut : LimbArray)
    (hinvariant : InvInvariant a0 u v b c)
    (hexec : loopFuel
      (fun state : LimbArray × LimbArray × LimbArray × LimbArray =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0.body oneArray
          state.1 state.2.1 state.2.2.1 state.2.2.2)
      fuel (u, v, b, c) = .ok (uOut, bOut, cOut)) :
    InvExit a0 uOut bOut cOut := by
  induction fuel generalizing u v b c with
  | zero => rw [loopFuel] at hexec; cases hexec
  | succ fuel ih =>
      cases hbody : ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0.body
          oneArray u v b c with
      | fail error => rw [loopFuel, hbody] at hexec; cases hexec
      | div => rw [loopFuel, hbody] at hexec; cases hexec
      | ok flow =>
          cases flow with
          | done state =>
              rw [loopFuel, hbody] at hexec
              have hspec := inv_loop0_body_spec a0 u v b c hinvariant hbody
              cases hexec
              exact hspec
          | cont state =>
              rw [loopFuel, hbody] at hexec
              have hspec := inv_loop0_body_spec a0 u v b c hinvariant hbody
              exact ih state.1 state.2.1 state.2.2.1 state.2.2.2
                hspec.1 hexec

theorem inv_loop0_spec (a0 u v b c uOut bOut cOut : LimbArray)
    (hinvariant : InvInvariant a0 u v b c)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0
      oneArray u v b c = .ok (uOut, bOut, cOut)) :
    InvExit a0 uOut bOut cOut := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0 at hexec
  obtain ⟨fuel, hfuel⟩ := loopFuel_exists_of_loop_eq hexec
  exact inv_loop0_fuel_spec fuel a0 u v b c uOut bOut cOut
    hinvariant hfuel

private theorem eq_zeroArray_of_value_zero (value : LimbArray)
    (hvalue : limbsToNat value = 0) : value = zeroArray := by
  have hsix := limbsToNat_six value
  rw [hvalue] at hsix
  have hsum := hsix.symm
  obtain ⟨hsum4, hterm5⟩ := Nat.eq_zero_of_add_eq_zero hsum
  obtain ⟨hsum3, hterm4⟩ := Nat.eq_zero_of_add_eq_zero hsum4
  obtain ⟨hsum2, hterm3⟩ := Nat.eq_zero_of_add_eq_zero hsum3
  obtain ⟨hsum1, hterm2⟩ := Nat.eq_zero_of_add_eq_zero hsum2
  obtain ⟨hterm0, hterm1⟩ := Nat.eq_zero_of_add_eq_zero hsum1
  have h0 : (limbWord value ⟨0, by decide⟩).val = 0 := by
    change limb value ⟨0, by decide⟩ = 0
    exact hterm0
  have h1 : (limbWord value ⟨1, by decide⟩).val = 0 := by
    change limb value ⟨1, by decide⟩ = 0
    exact (Nat.mul_eq_zero.mp hterm1).resolve_right
      (ne_of_gt wordBase_pos)
  have h2 : (limbWord value ⟨2, by decide⟩).val = 0 := by
    change limb value ⟨2, by decide⟩ = 0
    exact (Nat.mul_eq_zero.mp hterm2).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  have h3 : (limbWord value ⟨3, by decide⟩).val = 0 := by
    change limb value ⟨3, by decide⟩ = 0
    exact (Nat.mul_eq_zero.mp hterm3).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  have h4 : (limbWord value ⟨4, by decide⟩).val = 0 := by
    change limb value ⟨4, by decide⟩ = 0
    exact (Nat.mul_eq_zero.mp hterm4).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  have h5 : (limbWord value ⟨5, by decide⟩).val = 0 := by
    change limb value ⟨5, by decide⟩ = 0
    exact (Nat.mul_eq_zero.mp hterm5).resolve_right
      (pow_ne_zero _ (ne_of_gt wordBase_pos))
  apply MacCampaign.Array.ext
  apply List.ext_get
  · simp [zeroArray, MacCampaign.Array.replicate, value.hlen]
  · intro n hv hz
    have hn : n < 6 := by simpa [value.hlen] using hv
    interval_cases n <;>
      simp [zeroArray, MacCampaign.Array.replicate, limbWord] at hz ⊢ <;>
      apply u64_eq_of_val_eq
    all_goals first
      | simpa [limbWord, MacCampaign.U64.ofNat] using h0
      | simpa [limbWord, MacCampaign.U64.ofNat] using h1
      | simpa [limbWord, MacCampaign.U64.ofNat] using h2
      | simpa [limbWord, MacCampaign.U64.ofNat] using h3
      | simpa [limbWord, MacCampaign.U64.ofNat] using h4
      | simpa [limbWord, MacCampaign.U64.ofNat] using h5

private theorem initial_inv_invariant (a : LimbArray)
    (ha : limbsToNat a < modulus) (hne : a ≠ zeroArray) :
    InvInvariant a a ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ark_ip_proofs.s3_07_arkworks_fq_spike.R2 zeroArray := by
  have haPos : 0 < limbsToNat a := by
    by_contra hzero
    have haZero : limbsToNat a = 0 := by omega
    exact hne (eq_zeroArray_of_value_zero a haZero)
  have hprime := Ipp.Bls12377.arithmeticFacts.basePrime
  have hcoprime : Nat.Coprime (limbsToNat a) modulus := by
    apply Nat.Coprime.symm
    rw [hprime.coprime_iff_not_dvd]
    intro hdvd
    have hle := Nat.le_of_dvd haPos hdvd
    exact (Nat.not_le_of_lt ha) hle
  refine ⟨?_, ?_, hcoprime⟩
  · refine ⟨?_, limbsToNat_R2_lt, haPos⟩
    simpa only [Nat.mul_comm] using R2_modEq.mul_right (limbsToNat a)
  · refine ⟨?_, ?_, ?_⟩
    · rw [limbsToNat_zeroArray, modulus_limbsToNat]
      simpa only [Nat.zero_mul, Nat.add_zero] using
        (Nat.ModEq.modulus_mul_add (m := modulus)
          (a := radixSquared) (b := 0)).symm
    · rw [limbsToNat_zeroArray]
      norm_num [modulus, Ipp.Bls12377.baseModulus]
    · rw [modulus_limbsToNat]
      norm_num [modulus, Ipp.Bls12377.baseModulus]

theorem extracted_inv_spec (a output : LimbArray)
    (ha : limbsToNat a < modulus) (hne : a ≠ zeroArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.inv a =
      .ok (some output)) :
    CoefficientInvariant a oneArray output := by
  have hinitial := initial_inv_invariant a ha hne
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.inv at hexec
  change (do
    let isZero ← ark_ip_proofs.core.array.equality.PartialEqArray.eq
      ark_ip_proofs.core.cmp.PartialEqU64 a zeroArray
    if isZero then
      ok none
    else
      let state ← ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0
        oneArray a ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
          ark_ip_proofs.s3_07_arkworks_fq_spike.R2 zeroArray
      let uIsOne ← ark_ip_proofs.core.array.equality.PartialEqArray.eq
        ark_ip_proofs.core.cmp.PartialEqU64 state.1 oneArray
      if uIsOne then ok (some state.2.1) else ok (some state.2.2)) =
        .ok (some output) at hexec
  obtain ⟨isZero, hzero, hrest⟩ := bind_eq_ok hexec
  rw [extracted_array_eq] at hzero
  have hzeroVal : a.val ≠ zeroArray.val := by
    intro hval
    apply hne
    apply MacCampaign.Array.ext
    exact hval
  have hisZero : isZero = false := by
    rw [decide_eq_false_iff_not.mpr hzeroVal] at hzero
    exact (Result.ok.inj hzero).symm
  subst isZero
  rw [if_neg (by simp)] at hrest
  obtain ⟨state, hloop, hrest⟩ := bind_eq_ok hrest
  rcases state with ⟨uOut, bOut, cOut⟩
  have hexit := inv_loop0_spec a a
    ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
    ark_ip_proofs.s3_07_arkworks_fq_spike.R2 zeroArray
    uOut bOut cOut hinitial hloop
  obtain ⟨uIsOne, huIsOne, hreturn⟩ := bind_eq_ok hrest
  rw [extracted_array_eq] at huIsOne
  rcases hexit with hexit | hexit
  · have huVal : uOut.val = oneArray.val :=
      congrArg MacCampaign.Array.val hexit.1
    have huIsOneValue : uIsOne = true := by
      rw [decide_eq_true_eq.mpr huVal] at huIsOne
      exact (Result.ok.inj huIsOne).symm
    subst uIsOne
    rw [if_pos rfl] at hreturn
    simp only [Result.ok.injEq, Option.some.injEq] at hreturn
    subst output
    exact hexit.2
  · have huVal : uOut.val ≠ oneArray.val := by
      intro hval
      apply hexit.1
      apply MacCampaign.Array.ext
      exact hval
    have huIsOneValue : uIsOne = false := by
      rw [decide_eq_false_iff_not.mpr huVal] at huIsOne
      exact (Result.ok.inj huIsOne).symm
    subst uIsOne
    rw [if_neg (by simp)] at hreturn
    simp only [Result.ok.injEq, Option.some.injEq] at hreturn
    subst output
    exact hexit.2

private theorem baseMontgomeryRadix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix modulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [modulus, Ipp.Bls12377.baseModulus]

theorem decode_extracted_inv (a output : LimbArray)
    (ha : limbsToNat a < modulus) (hne : a ≠ zeroArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.inv a =
      .ok (some output)) :
    decode output * decode a = 1 := by
  have hspec := extracted_inv_spec a output ha hne hexec
  have hmod : Nat.ModEq modulus
      (limbsToNat output * limbsToNat a) radixSquared := by
    simpa only [limbsToNat_oneArray, Nat.one_mul] using hspec.congruent
  have hcastNat :
      ((limbsToNat output * limbsToNat a : Nat) : Ipp.Bls12377.Fq) =
        ((Ipp.Bls12377.baseMontgomeryRadix ^ 2 : Nat) :
          Ipp.Bls12377.Fq) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).2 hmod
  have hcast :
      (limbsToNat output : Ipp.Bls12377.Fq) *
          (limbsToNat a : Ipp.Bls12377.Fq) =
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) ^ 2 := by
    simpa only [Nat.cast_mul, Nat.cast_pow] using hcastNat
  have hcancel :
      (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) *
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ = 1 :=
    ZMod.coe_mul_inv_eq_one Ipp.Bls12377.baseMontgomeryRadix
      baseMontgomeryRadix_coprime
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv]
  calc
    ((limbsToNat output : Ipp.Bls12377.Fq) *
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) *
        ((limbsToNat a : Ipp.Bls12377.Fq) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) =
      ((limbsToNat output : Ipp.Bls12377.Fq) *
        (limbsToNat a : Ipp.Bls12377.Fq)) *
        ((Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) := by
            ring
    _ = (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) ^ 2 *
        ((Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) := by
            rw [hcast]
    _ = ((Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) *
        ((Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) := by
            ring
    _ = 1 := by rw [hcancel]; norm_num

theorem extracted_inv_zero :
    ark_ip_proofs.s3_07_arkworks_fq_spike.inv zeroArray = .ok none := by
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.inv, zeroArray,
    ark_ip_proofs.core.array.equality.PartialEqArray.eq,
    MacCampaign.Array.replicate]

end Ipp.Extracted.ArkworksFqInv

#print axioms Ipp.Extracted.ArkworksFqInv.inv_loop0_loop0_body_spec
#print axioms Ipp.Extracted.ArkworksFqInv.inv_loop0_loop1_body_spec
#print axioms Ipp.Extracted.ArkworksFqInv.inv_loop0_body_spec
#print axioms Ipp.Extracted.ArkworksFqInv.inv_loop0_spec
#print axioms Ipp.Extracted.ArkworksFqInv.decode_extracted_inv
