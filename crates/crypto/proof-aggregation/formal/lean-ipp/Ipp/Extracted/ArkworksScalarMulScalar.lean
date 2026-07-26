import Ipp.Extracted.ArkworksScalarMulInvariant
import Ipp.Extracted.ArkworksFr

/-! Four-limb scalar values and their MSB-first bit schedule. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std

/-- Exactly `width` bits of `value`, from most to least significant. -/
def msbBits : Nat → Nat → List Bool
  | 0, _ => []
  | width + 1, value => decide (value / 2 ^ width % 2 = 1) :: msbBits width value

@[simp] theorem msbBits_length (width value : Nat) :
    (msbBits width value).length = width := by
  induction width with
  | zero => rfl
  | succ width ih => simp [msbBits, ih]

private theorem bitNat_div_pow_mod_two (width value : Nat) :
    bitNat (decide (value / 2 ^ width % 2 = 1)) = value / 2 ^ width % 2 := by
  have hlt : value / 2 ^ width % 2 < 2 := Nat.mod_lt _ (by decide)
  unfold bitNat
  split <;> rename_i h
  · exact (of_decide_eq_true h).symm
  · have hne : value / 2 ^ width % 2 ≠ 1 := by
      intro he
      apply h
      simp [he]
    have hz : value / 2 ^ width % 2 = 0 := by omega
    simp [hz]

theorem bitNat_decide_mod_two (value : Nat) :
    bitNat (decide (value % 2 = 1)) = value % 2 := by
  simpa using bitNat_div_pow_mod_two 0 value

/-- MSB evaluation of a fixed-width schedule is reduction modulo that width. -/
theorem msbValue_msbBits (width value : Nat) :
    msbValue width (msbBits width value) = value % 2 ^ width := by
  induction width with
  | zero => rw [msbValue, pow_zero, Nat.mod_one]
  | succ width ih =>
      rw [msbBits, msbValue, msbBits_length, Nat.min_self, ih,
        bitNat_div_pow_mod_two]
      rw [pow_succ]
      have hsplit := Nat.mod_add_div (value % (2 ^ width * 2)) (2 ^ width)
      rw [Nat.mod_mul_right_mod value (2 ^ width) 2,
        Nat.mod_mul_right_div_self value (2 ^ width) 2] at hsplit
      simpa [Nat.mul_comm, Nat.add_comm] using hsplit

abbrev ScalarArray := MacCampaign.Array MacCampaign.U64 4#usize

/-- The canonical little-endian four-word natural represented by a scalar array. -/
def scalarToNat (scalar : ScalarArray) : Nat :=
  Ipp.Extracted.ArkworksFr.limbsToNat scalar

/-- The concrete scalar-array schedule, restricted to `width` low bits. -/
def scalarBits (width : Nat) (scalar : ScalarArray) : List Bool :=
  msbBits width (scalarToNat scalar)

/-- Four-limb scalar bridge used by the executed loop proofs. -/
theorem msbValue_scalarBits (width : Nat) (scalar : ScalarArray) :
    msbValue width (scalarBits width scalar) =
      scalarToNat scalar % 2 ^ width :=
  msbValue_msbBits width (scalarToNat scalar)

/-- A 253-bit Fr value is unchanged by the concrete width bridge. -/
theorem msbValue_scalarBits_253 (scalar : ScalarArray)
    (hscalar : scalarToNat scalar < 2 ^ 253) :
    msbValue 253 (scalarBits 253 scalar) = scalarToNat scalar := by
  rw [msbValue_scalarBits, Nat.mod_eq_of_lt hscalar]

/-- The algebraic loop on the scalar array computes its reduced scalar action. -/
theorem runBits_scalarBits {G : Type} [AddCommMonoid G]
    (width : Nat) (scalar : ScalarArray) (base : G) :
    runBits width (scalarBits width scalar) base 0 =
      (scalarToNat scalar % 2 ^ width) • base := by
  rw [runBits_zero, msbValue_scalarBits]

/-- The full Fr-width algebraic schedule computes the input scalar action. -/
theorem runBits_scalarBits_253 {G : Type} [AddCommMonoid G]
    (scalar : ScalarArray) (base : G)
    (hscalar : scalarToNat scalar < 2 ^ 253) :
    runBits 253 (scalarBits 253 scalar) base 0 = scalarToNat scalar • base := by
  rw [runBits_scalarBits, Nat.mod_eq_of_lt hscalar]

#print axioms msbValue_msbBits
#print axioms msbBits_length
#print axioms bitNat_decide_mod_two
#print axioms msbValue_scalarBits
#print axioms msbValue_scalarBits_253
#print axioms runBits_scalarBits
#print axioms runBits_scalarBits_253

end Ipp.Extracted.ArkworksScalarMul
