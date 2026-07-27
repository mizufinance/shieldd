import Ipp.Extracted.ArkworksMsmModel
import Ipp.Extracted.ArkworksScalarMulScalar

/-! Arithmetic semantics of the signed window digits used by the MSM. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std

def nextCarry (radix carry coefficient : Nat) : Nat :=
  (carry + coefficient + radix / 2) / radix

def nonfinalMagnitude (radix carry coefficient : Nat) : Nat :=
  if nextCarry radix carry coefficient = 0 then carry + coefficient
  else radix - (carry + coefficient)

/-- Pure sign-magnitude form of one non-final extracted `make_digits` step. -/
def nonfinalDigit (radix carry coefficient : Nat) : WnafDigit :=
  let next := nextCarry radix carry coefficient
  let magnitude := nonfinalMagnitude radix carry coefficient
  { negative := decide (next ≠ 0 ∧ magnitude ≠ 0)
    magnitude := MacCampaign.U64.ofNat magnitude }

/-- The last extracted digit is the remaining unsigned coefficient. -/
def finalDigit (carry coefficient : Nat) : WnafDigit :=
  { negative := false
    magnitude := MacCampaign.U64.ofNat (carry + coefficient) }

private theorem u64_ofNat_val_of_lt {value : Nat}
    (hvalue : value < MacCampaign.u64Base) :
    (MacCampaign.U64.ofNat value).val = value := by
  simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hvalue]

theorem finalDigit_magnitude (carry coefficient : Nat)
    (hword : carry + coefficient < MacCampaign.u64Base) :
    (finalDigit carry coefficient).magnitude.val = carry + coefficient := by
  simp [finalDigit, u64_ofNat_val_of_lt hword]

theorem nextCarry_lt_two (radix carry coefficient : Nat)
    (hradix : 2 ≤ radix) (hcarry : carry ≤ 1)
    (hcoefficient : coefficient < radix) :
    nextCarry radix carry coefficient < 2 := by
  have hpositive : 0 < radix := by omega
  have hhalf : radix / 2 < radix := Nat.div_lt_self hpositive (by omega)
  apply (Nat.div_lt_iff_lt_mul hpositive).2
  omega

theorem nextCarry_le_one (radix carry coefficient : Nat)
    (hradix : 2 ≤ radix) (hcarry : carry ≤ 1)
    (hcoefficient : coefficient < radix) :
    nextCarry radix carry coefficient ≤ 1 := by
  have := nextCarry_lt_two radix carry coefficient hradix hcarry hcoefficient
  omega

theorem nonfinalMagnitude_le (radix carry coefficient : Nat)
    (hcarry : carry ≤ 1) (hcoefficient : coefficient < radix) :
    nonfinalMagnitude radix carry coefficient ≤ radix := by
  unfold nonfinalMagnitude
  split
  · omega
  · exact Nat.sub_le _ _

theorem nonfinalDigit_magnitude (radix carry coefficient : Nat)
    (hradixWord : radix < MacCampaign.u64Base)
    (hcarry : carry ≤ 1) (hcoefficient : coefficient < radix) :
    (nonfinalDigit radix carry coefficient).magnitude.val =
      nonfinalMagnitude radix carry coefficient := by
  have hmagnitude := nonfinalMagnitude_le radix carry coefficient
    hcarry hcoefficient
  have hmagnitudeWord :
      nonfinalMagnitude radix carry coefficient < MacCampaign.u64Base :=
    lt_of_le_of_lt hmagnitude hradixWord
  simp [nonfinalDigit, u64_ofNat_val_of_lt hmagnitudeWord]

theorem nonfinalDigit_value (radix carry coefficient : Nat)
    (hradixWord : radix < MacCampaign.u64Base)
    (hcarry : carry ≤ 1) (hcoefficient : coefficient < radix) :
    (nonfinalDigit radix carry coefficient).value =
      if nextCarry radix carry coefficient = 0 then
        Int.ofNat (carry + coefficient)
      else -Int.ofNat (radix - (carry + coefficient)) := by
  rw [WnafDigit.value,
    nonfinalDigit_magnitude radix carry coefficient hradixWord hcarry
      hcoefficient]
  by_cases hnextZero : nextCarry radix carry coefficient = 0
  · simp [nonfinalDigit, nonfinalMagnitude, hnextZero]
  · by_cases hmagnitudeZero :
      nonfinalMagnitude radix carry coefficient = 0
    · have hsubZero :
        radix - (carry + coefficient) = 0 := by
        simpa [nonfinalMagnitude, hnextZero] using hmagnitudeZero
      simp [nonfinalDigit, hnextZero, hmagnitudeZero, hsubZero]
    · have hmagnitudeEq :
        nonfinalMagnitude radix carry coefficient =
          radix - (carry + coefficient) := by
        simp [nonfinalMagnitude, hnextZero]
      simp [nonfinalDigit, hnextZero, hmagnitudeEq]

/-- Exact carry equation for every non-final signed digit. -/
theorem nonfinalDigit_step (radix carry coefficient : Nat)
    (hradix : 2 ≤ radix)
    (hradixWord : radix < MacCampaign.u64Base)
    (hcarry : carry ≤ 1) (hcoefficient : coefficient < radix) :
    (nonfinalDigit radix carry coefficient).value +
        Int.ofNat radix * Int.ofNat (nextCarry radix carry coefficient) =
      Int.ofNat carry + Int.ofNat coefficient := by
  rw [nonfinalDigit_value radix carry coefficient hradixWord hcarry
    hcoefficient]
  have hnext := nextCarry_le_one radix carry coefficient
    hradix hcarry hcoefficient
  by_cases hnextZero : nextCarry radix carry coefficient = 0
  · simp [hnextZero]
  · have hnextOne : nextCarry radix carry coefficient = 1 := by omega
    have hsum : carry + coefficient ≤ radix := by omega
    rw [if_neg hnextZero, hnextOne]
    norm_num
    rw [Int.ofNat_sub hsum, Int.natCast_add]
    ring

/-- Final digit equation: no carry leaves the most-significant window. -/
theorem finalDigit_step (radix carry coefficient : Nat)
    (hradixWord : radix < MacCampaign.u64Base)
    (hcarry : carry ≤ 1) (hcoefficient : coefficient < radix) :
    (finalDigit carry coefficient).value =
      Int.ofNat carry + Int.ofNat coefficient := by
  have hsum : carry + coefficient ≤ radix := by omega
  have hword : carry + coefficient < MacCampaign.u64Base :=
    lt_of_le_of_lt hsum hradixWord
  simp [finalDigit, WnafDigit.value, u64_ofNat_val_of_lt hword]

/-- Non-final digits lie in the centered radix interval. -/
theorem nonfinalDigit_bounds (radix carry coefficient : Nat)
    (hradixEven : radix % 2 = 0) (hradix : 2 ≤ radix)
    (hradixWord : radix < MacCampaign.u64Base)
    (hcarry : carry ≤ 1) (hcoefficient : coefficient < radix) :
    -(Int.ofNat (radix / 2)) ≤
        (nonfinalDigit radix carry coefficient).value ∧
      (nonfinalDigit radix carry coefficient).value <
        Int.ofNat (radix / 2) := by
  rw [nonfinalDigit_value radix carry coefficient hradixWord hcarry
    hcoefficient]
  have hnext := nextCarry_le_one radix carry coefficient
    hradix hcarry hcoefficient
  have hradixEq : radix = 2 * (radix / 2) := by
    omega
  by_cases hnextZero : nextCarry radix carry coefficient = 0
  · rw [if_pos hnextZero]
    have hupper : carry + coefficient < radix / 2 := by
      have hpositive : 0 < radix := by omega
      have hdivision :
          (carry + coefficient + radix / 2) / radix = 0 := by
        simpa [nextCarry] using hnextZero
      have hlt :=
        (Nat.div_eq_zero_iff_lt hpositive).mp hdivision
      omega
    constructor
    · exact le_trans (neg_nonpos.mpr (Int.natCast_nonneg _))
        (Int.natCast_nonneg _)
    · exact Int.ofNat_lt.mpr hupper
  · have hnextOne : nextCarry radix carry coefficient = 1 := by omega
    have hsum : carry + coefficient ≤ radix := by omega
    rw [if_neg hnextZero]
    have hlower : radix / 2 ≤ carry + coefficient := by
      have hpositive : 0 < radix := by omega
      have hdivision :
          (carry + coefficient + radix / 2) / radix = 1 := by
        simpa [nextCarry] using hnextOne
      have hdivisionLe :
          1 ≤ (carry + coefficient + radix / 2) / radix := by
        omega
      have hmul :=
        (Nat.le_div_iff_mul_le hpositive).mp hdivisionLe
      omega
    have hmagnitudeLe :
        radix - (carry + coefficient) ≤ radix / 2 := by
      omega
    have hmagnitudeLeInt :
        Int.ofNat (radix - (carry + coefficient)) ≤
          Int.ofNat (radix / 2) := by
      exact Int.ofNat_le.mpr hmagnitudeLe
    have hhalfPositive : (0 : Int) < Int.ofNat (radix / 2) := by
      have : 0 < radix / 2 := by omega
      exact Int.ofNat_lt.mpr this
    constructor
    · exact neg_le_neg hmagnitudeLeInt
    · exact lt_of_le_of_lt (neg_nonpos.mpr (Int.natCast_nonneg _))
        hhalfPositive

/-- Final digit is nonnegative and at most one radix. -/
theorem finalDigit_bounds (radix carry coefficient : Nat)
    (hradixWord : radix < MacCampaign.u64Base)
    (hcarry : carry ≤ 1) (hcoefficient : coefficient < radix) :
    0 ≤ (finalDigit carry coefficient).value ∧
      (finalDigit carry coefficient).value ≤ Int.ofNat radix := by
  rw [finalDigit_step radix carry coefficient hradixWord hcarry hcoefficient]
  have hsum : carry + coefficient ≤ radix := by omega
  constructor
  · exact add_nonneg (Int.natCast_nonneg _) (Int.natCast_nonneg _)
  · calc
      Int.ofNat carry + Int.ofNat coefficient =
          Int.ofNat (carry + coefficient) := (Int.natCast_add _ _).symm
      _ ≤ Int.ofNat radix := Int.ofNat_le.mpr hsum

theorem nonfinalDigit_canonical (radix carry coefficient : Nat)
    (hradixWord : radix < MacCampaign.u64Base)
    (hcarry : carry ≤ 1) (hcoefficient : coefficient < radix) :
    (nonfinalDigit radix carry coefficient).Canonical := by
  intro hzero
  have hmagnitude := nonfinalMagnitude_le radix carry coefficient
    hcarry hcoefficient
  have hmagnitudeWord :
      nonfinalMagnitude radix carry coefficient < MacCampaign.u64Base :=
    lt_of_le_of_lt hmagnitude hradixWord
  have hmodelZero :
      nonfinalMagnitude radix carry coefficient = 0 := by
    change (MacCampaign.U64.ofNat
      (nonfinalMagnitude radix carry coefficient)).val = 0 at hzero
    rw [u64_ofNat_val_of_lt hmagnitudeWord] at hzero
    exact hzero
  simp [nonfinalDigit, hmodelZero]

theorem finalDigit_canonical (carry coefficient : Nat) :
    (finalDigit carry coefficient).Canonical := by
  intro _
  rfl

#print axioms nextCarry_lt_two
#print axioms nextCarry_le_one
#print axioms nonfinalMagnitude_le
#print axioms finalDigit_magnitude
#print axioms nonfinalDigit_magnitude
#print axioms nonfinalDigit_value
#print axioms nonfinalDigit_step
#print axioms finalDigit_step
#print axioms nonfinalDigit_bounds
#print axioms finalDigit_bounds
#print axioms nonfinalDigit_canonical
#print axioms finalDigit_canonical

end Ipp.Extracted.ArkworksMsm
