import Ipp.Extracted.ArkworksFqOps

/-! Bit selection from the six-word little-endian numerator. -/

namespace Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksFqMul

abbrev WideArray := MacCampaign.Array MacCampaign.U64 6#usize

def wideToNat (value : WideArray) : Nat := limbsToNat value

def wideWordAt (value : WideArray) (i : Nat) : Nat :=
  if h : i < 6 then limb value ⟨i, h⟩ else 0

private theorem digit_of_decomposition (value lower digit suffix radix index : Nat)
    (hradix : 0 < radix) (hlower : lower < radix ^ index)
    (hdigit : digit < radix)
    (hvalue : value = lower + radix ^ index * (digit + radix * suffix)) :
    value / radix ^ index % radix = digit := by
  rw [hvalue, Nat.add_mul_div_left _ _ (pow_pos hradix index),
    Nat.div_eq_of_lt hlower, zero_add, Nat.add_mul_mod_self_left,
    Nat.mod_eq_of_lt hdigit]

theorem digit_spec (value : WideArray) (i : Nat) (hi : i < 6) :
    wideToNat value / wordBase ^ i % wordBase = wideWordAt value i := by
  have h0 := limb_lt_wordBase value ⟨0, by decide⟩
  have h1 := limb_lt_wordBase value ⟨1, by decide⟩
  have h2 := limb_lt_wordBase value ⟨2, by decide⟩
  have h3 := limb_lt_wordBase value ⟨3, by decide⟩
  have h4 := limb_lt_wordBase value ⟨4, by decide⟩
  have h5 := limb_lt_wordBase value ⟨5, by decide⟩
  have hp0 := prefixToNat_lt_pow value 0 (by norm_num [limbCount])
  have hp1 := prefixToNat_lt_pow value 1 (by norm_num [limbCount])
  have hp2 := prefixToNat_lt_pow value 2 (by norm_num [limbCount])
  have hp3 := prefixToNat_lt_pow value 3 (by norm_num [limbCount])
  have hp4 := prefixToNat_lt_pow value 4 (by norm_num [limbCount])
  have hp5 := prefixToNat_lt_pow value 5 (by norm_num [limbCount])
  rw [wideToNat, limbsToNat_six]
  interval_cases i
  · apply digit_of_decomposition _ 0 (limb value ⟨0, by decide⟩)
      (limb value ⟨1, by decide⟩ + wordBase *
        (limb value ⟨2, by decide⟩ + wordBase *
          (limb value ⟨3, by decide⟩ + wordBase *
            (limb value ⟨4, by decide⟩ +
              wordBase * limb value ⟨5, by decide⟩)))) wordBase 0
        wordBase_pos (by simpa [prefixToNat] using hp0) h0
    · ring
  · apply digit_of_decomposition _ (limb value ⟨0, by decide⟩)
      (limb value ⟨1, by decide⟩)
      (limb value ⟨2, by decide⟩ + wordBase *
        (limb value ⟨3, by decide⟩ + wordBase *
          (limb value ⟨4, by decide⟩ +
            wordBase * limb value ⟨5, by decide⟩))) wordBase 1
        wordBase_pos (by simpa [prefixToNat] using hp1) h1
    · ring
  · apply digit_of_decomposition _
      (limb value ⟨0, by decide⟩ + limb value ⟨1, by decide⟩ * wordBase)
      (limb value ⟨2, by decide⟩)
      (limb value ⟨3, by decide⟩ + wordBase *
        (limb value ⟨4, by decide⟩ +
          wordBase * limb value ⟨5, by decide⟩)) wordBase 2
        wordBase_pos (by simpa [prefixToNat] using hp2) h2
    · ring
  · apply digit_of_decomposition _
      (limb value ⟨0, by decide⟩ + limb value ⟨1, by decide⟩ * wordBase +
        limb value ⟨2, by decide⟩ * wordBase ^ 2)
      (limb value ⟨3, by decide⟩)
      (limb value ⟨4, by decide⟩ + wordBase * limb value ⟨5, by decide⟩)
      wordBase 3 wordBase_pos (by simpa [prefixToNat] using hp3) h3
    · ring
  · apply digit_of_decomposition _
      (limb value ⟨0, by decide⟩ + limb value ⟨1, by decide⟩ * wordBase +
        limb value ⟨2, by decide⟩ * wordBase ^ 2 +
        limb value ⟨3, by decide⟩ * wordBase ^ 3)
      (limb value ⟨4, by decide⟩) (limb value ⟨5, by decide⟩)
      wordBase 4 wordBase_pos (by simpa [prefixToNat] using hp4) h4
    · ring
  · apply digit_of_decomposition _
      (limb value ⟨0, by decide⟩ + limb value ⟨1, by decide⟩ * wordBase +
        limb value ⟨2, by decide⟩ * wordBase ^ 2 +
        limb value ⟨3, by decide⟩ * wordBase ^ 3 +
        limb value ⟨4, by decide⟩ * wordBase ^ 4)
      (limb value ⟨5, by decide⟩) 0 wordBase 5 wordBase_pos
      (by simpa [prefixToNat] using hp5) h5
    · ring

theorem bit_spec (value : WideArray) (bit : Nat) (hbit : bit < 384) :
    wideToNat value / 2 ^ bit % 2 =
      wideWordAt value (bit / 64) / 2 ^ (bit % 64) % 2 := by
  have hlimb : bit / 64 < 6 := by omega
  have hlocal : bit % 64 < 64 := Nat.mod_lt _ (by decide)
  have hdigit := digit_spec value (bit / 64) hlimb
  have hpow : 2 ^ bit = wordBase ^ (bit / 64) * 2 ^ (bit % 64) := by
    rw [wordBase, ← pow_mul, ← pow_add]
    congr 1
    omega
  rw [hpow, ← Nat.div_div_eq_div_mul]
  have htest := congrArg (fun n => n.testBit (bit % 64)) hdigit
  change (wideToNat value / wordBase ^ (bit / 64) % wordBase).testBit
      (bit % 64) = (wideWordAt value (bit / 64)).testBit (bit % 64) at htest
  rw [show wordBase = 2 ^ 64 by rfl, Nat.testBit_mod_two_pow] at htest
  simp only [decide_eq_true_eq, hlocal, Bool.true_and] at htest
  rw [Nat.testBit_eq_decide_div_mod_eq,
    Nat.testBit_eq_decide_div_mod_eq] at htest
  change (decide True && decide
      (wideToNat value / wordBase ^ (bit / 64) / 2 ^ (bit % 64) % 2 = 1)) =
    decide (wideWordAt value (bit / 64) / 2 ^ (bit % 64) % 2 = 1) at htest
  norm_num at htest
  have hleft := Nat.mod_lt
    ((wideToNat value / wordBase ^ (bit / 64)) / 2 ^ (bit % 64))
    (by decide : 0 < 2)
  have hright := Nat.mod_lt (wideWordAt value (bit / 64) / 2 ^ (bit % 64))
    (by decide : 0 < 2)
  rcases Nat.mod_two_eq_zero_or_one
      ((wideToNat value / wordBase ^ (bit / 64)) / 2 ^ (bit % 64)) with hz | ho <;>
    rcases Nat.mod_two_eq_zero_or_one
      (wideWordAt value (bit / 64) / 2 ^ (bit % 64)) with hz' | ho' <;>
    simp_all

#print axioms digit_spec
#print axioms bit_spec

end Ipp.Extracted.ArkworksScalarMul.GlvWideBitCore
