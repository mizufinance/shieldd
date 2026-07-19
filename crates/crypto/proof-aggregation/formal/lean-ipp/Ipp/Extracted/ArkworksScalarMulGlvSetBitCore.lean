import Ipp.Extracted.ArkworksScalarMulGlvClearBelow

/-! Exact effect of setting the next, known-clear quotient bit. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvSetBitCore

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksScalarMul.GlvWideUpdateCore
open Ipp.Extracted.ArkworksScalarMul.GlvClearBelow

set_option maxHeartbeats 300000
set_option maxRecDepth 4096

abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

def setBit (value : WideArray) (bit : Nat) : Result WideArray := do
  let limb := bit / 64
  let offset := bit % 64
  let mask <- MacCampaign.shl64 1#u64 (MacCampaign.I32.ofNat offset)
  let word <- MacCampaign.Array.index_usize value (Usize.ofNat limb)
  let updated := MacCampaign.or64 word mask
  MacCampaign.Array.update value (Usize.ofNat limb) updated

private theorem mask_spec (offset : Nat) (hoffset : offset < 64) :
    MacCampaign.shl64 1#u64 (MacCampaign.I32.ofNat offset) =
      .ok (MacCampaign.U64.ofNat (2 ^ offset)) := by
  have hoff32 : offset % MacCampaign.i32Base = offset := by
    apply Nat.mod_eq_of_lt
    exact lt_trans hoffset (by norm_num [MacCampaign.i32Base])
  have hpow : 2 ^ offset < MacCampaign.u64Base := by
    rw [MacCampaign.u64Base]
    exact (Nat.pow_lt_pow_iff_right (by decide : 1 < 2)).2 hoffset
  simp [MacCampaign.shl64, MacCampaign.I32.ofNat, hoff32, hoffset,
    MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hpow,
    MacCampaign.u64Base]

private theorem or_clear_bit (word : MacCampaign.U64) (offset : Nat)
    (hoffset : offset < 64) (hclear : 2 ^ (offset + 1) ∣ word.val) :
    (MacCampaign.or64 word (MacCampaign.U64.ofNat (2 ^ offset))).val =
      word.val + 2 ^ offset := by
  obtain ⟨high, hword⟩ := hclear
  have hpowlt : 2 ^ offset < 2 ^ (offset + 1) := by
    exact (Nat.pow_lt_pow_iff_right (by decide : 1 < 2)).2 (by omega)
  have hor : 2 ^ (offset + 1) * high + 2 ^ offset =
      2 ^ (offset + 1) * high ||| 2 ^ offset :=
    Nat.two_pow_add_eq_or_of_lt hpowlt high
  have hmasklt : 2 ^ offset < MacCampaign.u64Base := by
    rw [MacCampaign.u64Base]
    exact (Nat.pow_lt_pow_iff_right (by decide : 1 < 2)).2 hoffset
  have hwordlt : word.val < MacCampaign.u64Base := word.isLt
  have horlt : word.val ||| 2 ^ offset < MacCampaign.u64Base := by
    rw [show MacCampaign.u64Base = 2 ^ 64 by rfl]
    exact Nat.or_lt_two_pow (by simpa [MacCampaign.u64Base] using hwordlt)
      (by simpa [MacCampaign.u64Base] using hmasklt)
  simp only [MacCampaign.or64]
  change (word.val ||| 2 ^ offset % MacCampaign.u64Base) %
      MacCampaign.u64Base = word.val + 2 ^ offset
  rw [Nat.mod_eq_of_lt hmasklt, Nat.mod_eq_of_lt horlt, hword]
  exact hor.symm

private theorem bit_power (bit : Nat) :
    2 ^ (bit % 64) * wordBase ^ (bit / 64) = 2 ^ bit := by
  rw [wordBase, ← pow_mul, mul_comm, ← pow_add]
  congr 1
  omega

theorem setBit_spec (value output : WideArray) (bit : Nat)
    (hbit : bit < 384)
    (hclear : 2 ^ (bit % 64 + 1) ∣
      (wideWord value ⟨bit / 64, by omega⟩).val)
    (hexec : setBit value bit = .ok output) :
    wideToNat output = wideToNat value + 2 ^ bit := by
  have hlimb : bit / 64 < 6 := by omega
  have hlocal : bit % 64 < 64 := Nat.mod_lt _ (by decide)
  have hmask := mask_spec (bit % 64) hlocal
  have hindex := array_index_limbWord value ⟨bit / 64, hlimb⟩
  have hrun := hexec
  simp only [setBit] at hrun
  rw [hmask] at hrun
  simp only [Result.bind_ok] at hrun
  rw [hindex] at hrun
  simp only [Result.bind_ok] at hrun
  have hup := update_spec value output (bit / 64) hlimb
    (MacCampaign.or64 (wideWord value ⟨bit / 64, hlimb⟩)
      (MacCampaign.U64.ofNat (2 ^ (bit % 64)))) hrun
  have hor := or_clear_bit (wideWord value ⟨bit / 64, hlimb⟩)
    (bit % 64) hlocal hclear
  rw [hor, Nat.add_mul] at hup
  have hp := bit_power bit
  omega

theorem setBit_effect (value output : WideArray) (bit : Nat)
    (hbit : bit < 384)
    (hclear : 2 ^ (bit % 64 + 1) ∣ word value (bit / 64))
    (hexec : setBit value bit = .ok output) :
    SetEffect value output bit := by
  have hlimb : bit / 64 < 6 := by omega
  have hoffset : bit % 64 < 64 := Nat.mod_lt _ (by decide)
  have hmask := mask_spec (bit % 64) hoffset
  have hindex := array_index_limbWord value ⟨bit / 64, hlimb⟩
  have hrun := hexec
  simp only [setBit] at hrun
  rw [hmask] at hrun
  simp only [Result.bind_ok] at hrun
  rw [hindex] at hrun
  simp only [Result.bind_ok] at hrun
  have hword : word value (bit / 64) =
      (wideWord value ⟨bit / 64, hlimb⟩).val := by
    simp [word, wideWordAt, hlimb]
  have hor := or_clear_bit (wideWord value ⟨bit / 64, hlimb⟩)
    (bit % 64) hoffset (by simpa [hword] using hclear)
  have hu := update_word_spec value output (bit / 64) hlimb
    (MacCampaign.or64 (wideWord value ⟨bit / 64, hlimb⟩)
      (MacCampaign.U64.ofNat (2 ^ (bit % 64)))) hrun
  constructor
  · have hutarget := hu (bit / 64)
    rw [if_pos rfl, hor, ← hword] at hutarget
    exact hutarget
  · intro i hne
    have hui := hu i
    rw [if_neg (Ne.symm hne)] at hui
    exact hui

#print axioms setBit_spec
#print axioms setBit_effect

end Ipp.Extracted.ArkworksScalarMul.GlvSetBitCore
