import Ipp.Extracted.ArkworksScalarMulGlvGenerated
import Ipp.Extracted.ArkworksScalarMulSchedule

/-! The paired MSB-first schedule consumed by the extracted GLV loop. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std

/-- The bit selected by the GLV loop's global 256-bit countdown. -/
def glvBit (scalar : ScalarArray) (bit : Nat) : Bool :=
  decide ((scalarWord scalar (bit / 64) / 2 ^ (bit % 64)) &&& 1 = 1)

/-- Paired bits from `width - 1` down to zero. -/
def glvPairs (k1 k2 : ScalarArray) : Nat → List (Bool × Bool)
  | 0 => []
  | width + 1 =>
      (glvBit k1 width, glvBit k2 width) :: glvPairs k1 k2 width

@[simp] theorem glvPairs_length (k1 k2 : ScalarArray) (width : Nat) :
    (glvPairs k1 k2 width).length = width := by
  induction width with
  | zero => rfl
  | succ width ih => simp [glvPairs, ih]

@[simp] theorem glvPairs_succ (k1 k2 : ScalarArray) (width : Nat) :
    glvPairs k1 k2 (width + 1) =
      (glvBit k1 width, glvBit k2 width) :: glvPairs k1 k2 width := rfl

/-- The magnitude bound makes the first executed pair exactly `00`. -/
theorem glvPairs_256_head_false (k1 k2 : ScalarArray)
    (hk1 : scalarToNat k1 < 2 ^ 255) (hk2 : scalarToNat k2 < 2 ^ 255) :
    glvPairs k1 k2 256 =
      (false, false) :: glvPairs k1 k2 255 := by
  rw [glvPairs_succ]
  have hbit (scalar : ScalarArray) (hscalar : scalarToNat scalar < 2 ^ 255) :
      glvBit scalar 255 = false := by
    unfold glvBit
    have hword : scalarWord scalar (255 / 64) < 2 ^ 63 := by
      rw [show 255 / 64 = 3 by decide]
      have hle : scalarWord scalar 3 * 2 ^ 192 ≤ scalarToNat scalar := by
        change scalarWord scalar 3 * 2 ^ 192 ≤
          Ipp.Extracted.ArkworksFr.limbsToNat scalar
        rw [Ipp.Extracted.ArkworksFr.limbsToNat_four]
        simp only [scalarWord, dif_pos (by decide : 3 < 4),
          Ipp.Extracted.ArkworksFqMul.wordBase]
        omega
      by_contra hnot
      have hge : 2 ^ 63 ≤ scalarWord scalar 3 := Nat.le_of_not_gt hnot
      have hpow : 2 ^ 255 = 2 ^ 63 * 2 ^ 192 := by norm_num [pow_add]
      have hlarge : 2 ^ 255 ≤ scalarToNat scalar := by
        rw [hpow]
        exact le_trans (Nat.mul_le_mul_right (2 ^ 192) hge) hle
      omega
    simp only [show 255 / 64 = 3 by decide, show 255 % 64 = 63 by decide]
    have hzero : scalarWord scalar 3 / 2 ^ 63 = 0 := Nat.div_eq_of_lt hword
    rw [hzero]
    decide
  rw [hbit k1 hk1, hbit k2 hk2]

/-- The symbolic 256-pair schedule reaches the landed one-skip invariant. -/
theorem runJoint_glvPairs_256_skip {G : Type} [AddCommMonoid G]
    (k1 k2 : ScalarArray) (b1 b2 : G)
    (hk1 : scalarToNat k1 < 2 ^ 255) (hk2 : scalarToNat k2 < 2 ^ 255) :
    let value := jointValue 255 (glvPairs k1 k2 255)
    runJoint 256 (glvPairs k1 k2 256) b1 b2 0 =
      value.1 • b1 + value.2 • b2 := by
  rw [glvPairs_256_head_false k1 k2 hk1 hk2]
  exact runJoint_256_skip (glvPairs k1 k2 255)
    (glvPairs_length k1 k2 255) b1 b2

#print axioms glvPairs_length
#print axioms glvPairs_succ
#print axioms glvPairs_256_head_false
#print axioms runJoint_glvPairs_256_skip

end Ipp.Extracted.ArkworksScalarMul
