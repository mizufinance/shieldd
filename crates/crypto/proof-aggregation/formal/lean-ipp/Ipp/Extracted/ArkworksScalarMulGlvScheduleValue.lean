import Ipp.Extracted.ArkworksScalarMulGlvArrayCore
import Ipp.Extracted.ArkworksScalarMulGlvSchedule
import Ipp.Extracted.ArkworksScalarMulGlvWideBitCore

/-! Numeric value of the extracted paired GLV bit schedule. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std

private theorem widen4_word (scalar : ScalarArray) (i : Nat) (hi : i < 4) :
    GlvWideBitCore.wideWordAt (GlvArrayCore.widen4 scalar) i =
      scalarWord scalar i := by
  rw [GlvWideBitCore.wideWordAt, dif_pos (by omega), scalarWord, dif_pos hi]
  interval_cases i <;>
    simp [GlvArrayCore.widen4, Ipp.Extracted.ArkworksFqMul.limb,
      Ipp.Extracted.ArkworksFqMul.limbWord, Ipp.Extracted.ArkworksFr.limb,
      Ipp.Extracted.ArkworksFr.limbWord, MacCampaign.Array.make]

theorem scalar_bit_spec (scalar : ScalarArray) (bit : Nat)
    (hbit : bit < 256) :
    scalarToNat scalar / 2 ^ bit % 2 =
      scalarWord scalar (bit / 64) / 2 ^ (bit % 64) % 2 := by
  have hspec := GlvWideBitCore.bit_spec (GlvArrayCore.widen4 scalar)
    bit (by omega)
  change GlvArithmetic.wideToNat (GlvArrayCore.widen4 scalar) /
      2 ^ bit % 2 =
    GlvWideBitCore.wideWordAt (GlvArrayCore.widen4 scalar) (bit / 64) /
      2 ^ (bit % 64) % 2 at hspec
  rw [GlvArrayCore.widen4_value,
    widen4_word scalar (bit / 64) (by omega)] at hspec
  exact hspec

private theorem glvBit_eq_scalar_bit (scalar : ScalarArray) (bit : Nat)
    (hbit : bit < 256) :
    glvBit scalar bit =
      decide (scalarToNat scalar / 2 ^ bit % 2 = 1) := by
  unfold glvBit
  rw [show (scalarWord scalar (bit / 64) / 2 ^ (bit % 64)) &&& 1 =
      scalarWord scalar (bit / 64) / 2 ^ (bit % 64) % 2 by
    rw [Nat.and_comm, Nat.one_and_eq_mod_two]]
  rw [← scalar_bit_spec scalar bit hbit]

private theorem glvPairs_map_fst (k1 k2 : ScalarArray) (width : Nat)
    (hwidth : width ≤ 256) :
    (glvPairs k1 k2 width).map Prod.fst =
      msbBits width (scalarToNat k1) := by
  induction width with
  | zero => rfl
  | succ width ih =>
      rw [glvPairs_succ, msbBits, List.map_cons,
        glvBit_eq_scalar_bit k1 width (by omega), ih (by omega)]

private theorem glvPairs_map_snd (k1 k2 : ScalarArray) (width : Nat)
    (hwidth : width ≤ 256) :
    (glvPairs k1 k2 width).map Prod.snd =
      msbBits width (scalarToNat k2) := by
  induction width with
  | zero => rfl
  | succ width ih =>
      rw [glvPairs_succ, msbBits, List.map_cons,
        glvBit_eq_scalar_bit k2 width (by omega), ih (by omega)]

private theorem jointValue_eq_msbValues (fuel : Nat)
    (pairs : List (Bool × Bool)) :
    jointValue fuel pairs =
      (msbValue fuel (pairs.map Prod.fst),
        msbValue fuel (pairs.map Prod.snd)) := by
  induction fuel generalizing pairs with
  | zero => simp [jointValue, msbValue]
  | succ fuel ih =>
      cases pairs with
      | nil => simp [jointValue, msbValue]
      | cons pair pairs =>
          rcases pair with ⟨bit1, bit2⟩
          simp [jointValue, msbValue, ih]

/-- The 255-pair schedule evaluates to the two bounded scalar magnitudes. -/
theorem jointValue_glvPairs_255 (k1 k2 : ScalarArray)
    (hk1 : scalarToNat k1 < 2 ^ 255) (hk2 : scalarToNat k2 < 2 ^ 255) :
    jointValue 255 (glvPairs k1 k2 255) =
      (scalarToNat k1, scalarToNat k2) := by
  rw [jointValue_eq_msbValues,
    glvPairs_map_fst k1 k2 255 (by decide),
    glvPairs_map_snd k1 k2 255 (by decide),
    msbValue_msbBits, msbValue_msbBits,
    Nat.mod_eq_of_lt hk1, Nat.mod_eq_of_lt hk2]

#print axioms jointValue_glvPairs_255
#print axioms scalar_bit_spec

end Ipp.Extracted.ArkworksScalarMul
