import Ipp.Extracted.ArkworksMsmDigitsValue
import Ipp.Extracted.ArkworksScalarMulGlvScheduleValue
import Mathlib.Data.Nat.Bitwise

/-! Scalar-window extraction used by the generated wNAF digit loop. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksScalarMul

/-- The two-word little-endian bit buffer assembled by the extracted loop. -/
def scalarWindowBuffer (scalar : ScalarArray) (bit : Nat) : Nat :=
  (scalarWord scalar (bit / 64) >>> (bit % 64)) |||
    (scalarWord scalar (bit / 64 + 1) <<< (64 - bit % 64))

theorem scalar_index_value (scalar : ScalarArray) (index : Usize)
    (word : MacCampaign.U64) (hindex : index.val < 4)
    (hexec : MacCampaign.Array.index_usize scalar index = .ok word) :
    word.val = scalarWord scalar index.val := by
  unfold MacCampaign.Array.index_usize at hexec
  have hlist : index.val < scalar.val.length := by
    simpa [scalar.hlen] using hindex
  simp only [List.getElem?_eq_getElem hlist, Result.ok.injEq] at hexec
  subst word
  simp [scalarWord, hindex, Ipp.Extracted.ArkworksFr.limb,
    Ipp.Extracted.ArkworksFr.limbWord]

theorem scalarWindowBuffer_spec (scalar : ScalarArray) (bit width : Nat)
    (hwidth : 0 < width) (hwidth64 : width ≤ 64)
    (hcovered : bit + width ≤ 256) :
    scalarWindowBuffer scalar bit % 2 ^ width =
      scalarToNat scalar / 2 ^ bit % 2 ^ width := by
  apply Nat.eq_of_testBit_eq
  intro index
  rw [Nat.testBit_mod_two_pow, Nat.testBit_mod_two_pow]
  by_cases hindex : index < width
  · simp only [hindex, decide_true, Bool.true_and]
    have hbit : bit < 256 := by omega
    have hglobal : bit + index < 256 := by omega
    have hlocal : bit % 64 < 64 := Nat.mod_lt _ (by decide)
    have hindex64 : index < 64 := by omega
    have hsplit := Nat.mod_add_div bit 64
    have hsplitGlobal := Nat.mod_add_div (bit + index) 64
    have hglobalMod : (bit + index) % 64 < 64 :=
      Nat.mod_lt _ (by decide)
    have hspec := scalar_bit_spec scalar (bit + index) hglobal
    rw [scalarWindowBuffer, Nat.testBit_lor,
      Nat.testBit_shiftRight, Nat.testBit_shiftLeft]
    rw [@Nat.testBit_eq_decide_div_mod_eq index
      (scalarToNat scalar / 2 ^ bit)]
    have hpow :
        2 ^ bit * 2 ^ index = 2 ^ (bit + index) := by
      rw [← pow_add]
    rw [Nat.div_div_eq_div_mul, hpow]
    by_cases hlower : bit % 64 + index < 64
    · have hwordIndex : (bit + index) / 64 = bit / 64 := by omega
      have hwordBit : (bit + index) % 64 = bit % 64 + index := by omega
      have hshiftFalse : ¬64 - bit % 64 ≤ index := by omega
      simp only [hshiftFalse, decide_false, Bool.false_and, Bool.or_false]
      rw [Nat.testBit_eq_decide_div_mod_eq, ← hwordIndex, ← hwordBit]
      exact congrArg (fun value => decide (value = 1)) hspec.symm
    · have hupper : 64 ≤ bit % 64 + index := by omega
      have hwordIndex : (bit + index) / 64 = bit / 64 + 1 := by omega
      have hwordBit :
          (bit + index) % 64 = bit % 64 + index - 64 := by omega
      have hshiftTrue : 64 - bit % 64 ≤ index := by omega
      simp only [hshiftTrue, decide_true, Bool.true_and]
      have hcurrentIndex : bit / 64 < 4 := by omega
      have hcurrentWord := scalarWord_lt scalar hcurrentIndex
      have hcurrentFalse :
          (scalarWord scalar (bit / 64)).testBit (bit % 64 + index) = false := by
        apply Nat.testBit_eq_false_of_lt
        exact lt_of_lt_of_le hcurrentWord
          (Nat.pow_le_pow_right (by decide) hupper)
      rw [hcurrentFalse, Bool.false_or]
      have hsub :
          index - (64 - bit % 64) = bit % 64 + index - 64 := by omega
      rw [hsub, Nat.testBit_eq_decide_div_mod_eq,
        ← hwordIndex, ← hwordBit]
      exact congrArg (fun value => decide (value = 1)) hspec.symm
  · simp [hindex]

theorem scalarWindowBuffer_windows (scalar : ScalarArray) (width count index : Nat)
    (hwidth : 0 < width) (hwidth64 : width ≤ 64)
    (hindex : index < count) (hcovered : index * width + width ≤ 256) :
    scalarWindowBuffer scalar (index * width) % 2 ^ width =
      (scalarWindows (2 ^ width) (scalarToNat scalar) count)[index]'(by
        simpa only [scalarWindows_length] using hindex) := by
  calc
    scalarWindowBuffer scalar (index * width) % 2 ^ width =
        scalarToNat scalar / 2 ^ (index * width) % 2 ^ width :=
      scalarWindowBuffer_spec scalar (index * width) width hwidth hwidth64
        hcovered
    _ = scalarToNat scalar / (2 ^ width) ^ index % 2 ^ width := by
      rw [← pow_mul, Nat.mul_comm width index]
    _ = (scalarWindows (2 ^ width) (scalarToNat scalar) count)[index]'(by
          simpa only [scalarWindows_length] using hindex) :=
      (scalarWindows_get (2 ^ width) (scalarToNat scalar) count index
        hindex).symm

#print axioms scalarWindowBuffer_spec
#print axioms scalarWindowBuffer_windows
#print axioms scalar_index_value

end Ipp.Extracted.ArkworksMsm
