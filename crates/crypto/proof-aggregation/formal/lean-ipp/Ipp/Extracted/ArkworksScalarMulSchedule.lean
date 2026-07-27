import Ipp.Extracted.ArkworksScalarMulScalar

/-! Symbolic values of the generated four-word countdown schedule. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std

private abbrev wordBase : Nat := Ipp.Extracted.ArkworksFr.wordBase

/-- A scalar word, extended by zero outside the four-word array. -/
def scalarWord (scalar : ScalarArray) (index : Nat) : Nat :=
  if h : index < 4 then
    Ipp.Extracted.ArkworksFr.limb scalar
      ⟨index, by simpa [Ipp.Extracted.ArkworksFr.limbCount] using h⟩
  else 0

theorem scalarWord_lt (scalar : ScalarArray) {index : Nat} (hindex : index < 4) :
    scalarWord scalar index < wordBase := by
  rw [scalarWord, dif_pos hindex]
  exact Ipp.Extracted.ArkworksFr.limb_lt_wordBase scalar _

/-- Value of the already processed high words when `limb` low words remain. -/
def highPrefix (scalar : ScalarArray) : Nat → Nat
  | 0 => scalarWord scalar 0 + scalarWord scalar 1 * wordBase +
      scalarWord scalar 2 * wordBase ^ 2 + scalarWord scalar 3 * wordBase ^ 3
  | 1 => scalarWord scalar 1 + scalarWord scalar 2 * wordBase +
      scalarWord scalar 3 * wordBase ^ 2
  | 2 => scalarWord scalar 2 + scalarWord scalar 3 * wordBase
  | 3 => scalarWord scalar 3
  | _ => 0

@[simp] theorem highPrefix_four (scalar : ScalarArray) : highPrefix scalar 4 = 0 := rfl

theorem highPrefix_zero (scalar : ScalarArray) :
    highPrefix scalar 0 = scalarToNat scalar := by
  change highPrefix scalar 0 = Ipp.Extracted.ArkworksFr.limbsToNat scalar
  rw [Ipp.Extracted.ArkworksFr.limbsToNat_four]
  simp only [highPrefix, scalarWord, dif_pos (by decide : 0 < 4),
    dif_pos (by decide : 1 < 4), dif_pos (by decide : 2 < 4),
    dif_pos (by decide : 3 < 4)]

/-- One symbolic outer countdown incorporates exactly the selected low word. -/
theorem highPrefix_pred (scalar : ScalarArray) {limb : Nat}
    (hpos : 0 < limb) (hle : limb ≤ 4) :
    highPrefix scalar (limb - 1) =
      highPrefix scalar limb * wordBase + scalarWord scalar (limb - 1) := by
  interval_cases limb <;> simp_all [highPrefix, pow_succ] <;> ring

/-- Prefix value during the selected word's symbolic inner countdown. -/
def partialValue (scalar : ScalarArray) (limb bitIndex : Nat) : Nat :=
  highPrefix scalar (limb + 1) * 2 ^ (64 - bitIndex) +
    scalarWord scalar limb / 2 ^ bitIndex

theorem partialValue_start (scalar : ScalarArray) {limb : Nat}
    (hlimb : limb < 4) :
    partialValue scalar limb 64 = highPrefix scalar (limb + 1) := by
  have hword := scalarWord_lt scalar hlimb
  rw [partialValue, Nat.sub_self, pow_zero,
    Nat.div_eq_of_lt (by simpa [wordBase, Ipp.Extracted.ArkworksFqMul.wordBase]
      using hword)]
  omega

theorem partialValue_done (scalar : ScalarArray) {limb : Nat}
    (hlimb : limb < 4) :
    partialValue scalar limb 0 = highPrefix scalar limb := by
  have hp := highPrefix_pred scalar (limb := limb + 1) (by omega) (by omega)
  simpa [partialValue, wordBase, Ipp.Extracted.ArkworksFqMul.wordBase,
    Nat.add_comm, Nat.mul_comm] using hp.symm

theorem wordPrefix_step (word bitIndex : Nat) (hpos : 0 < bitIndex) :
    word / 2 ^ (bitIndex - 1) =
      2 * (word / 2 ^ bitIndex) +
        bitNat (decide (word / 2 ^ (bitIndex - 1) % 2 = 1)) := by
  have hbit : bitIndex = (bitIndex - 1) + 1 := by omega
  have hpow : 2 ^ (bitIndex - 1) * 2 = 2 ^ bitIndex := by
    conv_rhs => rw [hbit, pow_succ]
  have hdiv : word / 2 ^ (bitIndex - 1) / 2 = word / 2 ^ bitIndex := by
    rw [Nat.div_div_eq_div_mul, hpow]
  have hsplit := Nat.mod_add_div (word / 2 ^ (bitIndex - 1)) 2
  rw [hdiv] at hsplit
  rw [bitNat_decide_mod_two]
  omega

/-- Every symbolic inner countdown is one MSB-first double-and-add step. -/
theorem partialValue_pred (scalar : ScalarArray) {limb bitIndex : Nat}
    (hpos : 0 < bitIndex) (hle : bitIndex ≤ 64) :
    partialValue scalar limb (bitIndex - 1) =
      2 * partialValue scalar limb bitIndex +
        bitNat (decide
          (scalarWord scalar limb / 2 ^ (bitIndex - 1) % 2 = 1)) := by
  have hsub : 64 - (bitIndex - 1) = (64 - bitIndex) + 1 := by omega
  rw [partialValue, partialValue, hsub, pow_succ]
  have hw := wordPrefix_step (scalarWord scalar limb) bitIndex hpos
  calc
    highPrefix scalar (limb + 1) * (2 ^ (64 - bitIndex) * 2) +
          scalarWord scalar limb / 2 ^ (bitIndex - 1) =
        highPrefix scalar (limb + 1) * (2 ^ (64 - bitIndex) * 2) +
          (2 * (scalarWord scalar limb / 2 ^ bitIndex) +
            bitNat (decide
              (scalarWord scalar limb / 2 ^ (bitIndex - 1) % 2 = 1))) :=
      congrArg (highPrefix scalar (limb + 1) * (2 ^ (64 - bitIndex) * 2) + ·) hw
    _ = 2 *
          (highPrefix scalar (limb + 1) * 2 ^ (64 - bitIndex) +
            scalarWord scalar limb / 2 ^ bitIndex) +
          bitNat (decide
            (scalarWord scalar limb / 2 ^ (bitIndex - 1) % 2 = 1)) := by ring

theorem scalarToNat_lt_256 (scalar : ScalarArray) : scalarToNat scalar < 2 ^ 256 := by
  have h := Ipp.Extracted.ArkworksFr.limbsToNat_lt_radix scalar
  simpa [scalarToNat, Ipp.Extracted.ArkworksFr.limbCount,
    Ipp.Extracted.ArkworksFqMul.wordBase, ← pow_mul] using h

/-- The executed four-word schedule is the full 256-bit `msbValue` schedule. -/
theorem highPrefix_eq_msbValue_256 (scalar : ScalarArray) :
    highPrefix scalar 0 = msbValue 256 (scalarBits 256 scalar) := by
  rw [highPrefix_zero, msbValue_scalarBits,
    Nat.mod_eq_of_lt (scalarToNat_lt_256 scalar)]

/-- Suppressing the three leading zero positions of a 253-bit Fr value is semantic. -/
theorem runBits_256_eq_253 {G : Type} [AddCommMonoid G]
    (scalar : ScalarArray) (base : G)
    (hscalar : scalarToNat scalar < 2 ^ 253) :
    runBits 256 (scalarBits 256 scalar) base 0 =
      runBits 253 (scalarBits 253 scalar) base 0 := by
  rw [runBits_scalarBits, runBits_scalarBits,
    Nat.mod_eq_of_lt (lt_trans hscalar (by norm_num)),
    Nat.mod_eq_of_lt hscalar]

#print axioms highPrefix_pred
#print axioms scalarWord_lt
#print axioms highPrefix_four
#print axioms partialValue_pred
#print axioms partialValue_start
#print axioms partialValue_done
#print axioms wordPrefix_step
#print axioms highPrefix_zero
#print axioms scalarToNat_lt_256
#print axioms highPrefix_eq_msbValue_256
#print axioms runBits_256_eq_253

end Ipp.Extracted.ArkworksScalarMul
