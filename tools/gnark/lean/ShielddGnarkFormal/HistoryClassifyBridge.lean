import Mathlib.Tactic
import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.Protocol.NullifierHistory.Semantics
import ShielddGnarkFormal.ThresholdRegulatedBridge

/-!
Semantic bridge for the 48-bit nullifier-history classifier.

The generated providers recover this compact predicate from the exact R1CS
rows. This file proves independently that its selected difference cannot wrap
in the scalar field and therefore implements strict natural-number comparison.
-/

namespace Shieldd.GnarkFormal.HistoryClassifyBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev F := Protocol.Common.F

local instance : Fact (Nat.Prime Poseidon377.P) :=
  ⟨Deployed.decaf377ScalarFieldPrime⟩

def bound : Nat := Protocol.NullifierHistory.positionBound

/-- Row-level arithmetic recovered from the comparator template. -/
structure CoreCircuit
    (position recentPositionFloor isOld difference : F) : Prop where
  positionCanonical : position.val < bound
  floorCanonical : recentPositionFloor.val < bound
  differenceCanonical : difference.val < bound
  isOldBoolean : ThresholdRegulatedBridge.BooleanCircuit isOld
  selectedDifference :
    difference =
      position - recentPositionFloor +
        isOld * (2 * (recentPositionFloor - position) - 1)

/-- The classifier returns one exactly when the note predates the floor. -/
def CoreSpec (position recentPositionFloor isOld : F) : Prop :=
  position.val < bound ∧
    recentPositionFloor.val < bound ∧
    isOld = if position.val < recentPositionFloor.val then 1 else 0

/-- Optional-note output gating used by the padded circuit families. -/
def GatedSpec
    (position recentPositionFloor isDummy historyRequired : F) : Prop :=
  position.val < bound ∧
    recentPositionFloor.val < bound ∧
    historyRequired =
      (1 - isDummy) *
        (if position.val < recentPositionFloor.val then 1 else 0)

private theorem twoBoundsFit : bound + bound < Poseidon377.P := by
  decide +kernel

private theorem twoBoundsAndOneFit : bound + bound + 1 < Poseidon377.P := by
  decide +kernel

private theorem nat_eq_of_cast_eq
    {left right : Nat}
    (leftFit : left < Poseidon377.P)
    (rightFit : right < Poseidon377.P)
    (h : (left : F) = (right : F)) :
    left = right := by
  have hval := congrArg ZMod.val h
  simpa [ZMod.val_natCast_of_lt leftFit, ZMod.val_natCast_of_lt rightFit] using hval

private theorem recent_of_zero
    (position recentPositionFloor difference : F)
    (positionCanonical : position.val < bound)
    (floorCanonical : recentPositionFloor.val < bound)
    (differenceCanonical : difference.val < bound)
    (selectedDifference : difference = position - recentPositionFloor) :
    recentPositionFloor.val ≤ position.val := by
  have hfield : difference + recentPositionFloor = position := by
    linear_combination selectedDifference
  have hcast :
      ((difference.val + recentPositionFloor.val : Nat) : F) =
        (position.val : F) := by
    simpa only [Nat.cast_add, ZMod.natCast_zmod_val] using hfield
  have hleftFit : difference.val + recentPositionFloor.val < Poseidon377.P := by
    have hmodulus := twoBoundsFit
    omega
  have hrightFit : position.val < Poseidon377.P := by
    have hmodulus := twoBoundsFit
    omega
  have hnat := nat_eq_of_cast_eq hleftFit hrightFit hcast
  omega

private theorem old_of_one
    (position recentPositionFloor difference : F)
    (positionCanonical : position.val < bound)
    (floorCanonical : recentPositionFloor.val < bound)
    (differenceCanonical : difference.val < bound)
    (selectedDifference :
      difference =
        position - recentPositionFloor +
          (1 : F) * (2 * (recentPositionFloor - position) - 1)) :
    position.val < recentPositionFloor.val := by
  have hfield : difference + position + 1 = recentPositionFloor := by
    linear_combination selectedDifference
  have hcast :
      ((difference.val + position.val + 1 : Nat) : F) =
        (recentPositionFloor.val : F) := by
    simpa only [Nat.cast_add, Nat.cast_one, ZMod.natCast_zmod_val] using hfield
  have hleftFit : difference.val + position.val + 1 < Poseidon377.P := by
    have hmodulus := twoBoundsAndOneFit
    omega
  have hrightFit : recentPositionFloor.val < Poseidon377.P := by
    have hmodulus := twoBoundsAndOneFit
    omega
  have hnat := nat_eq_of_cast_eq hleftFit hrightFit hcast
  omega

theorem core_sound
    (position recentPositionFloor isOld difference : F)
    (h : CoreCircuit position recentPositionFloor isOld difference) :
    CoreSpec position recentPositionFloor isOld := by
  rcases h with ⟨hposition, hfloor, hdifference, hboolean, hselected⟩
  have hisOld := ThresholdRegulatedBridge.boolean_sound isOld hboolean
  refine ⟨hposition, hfloor, ?_⟩
  rcases hisOld with hisOld | hisOld
  · have hrecent : recentPositionFloor.val ≤ position.val := by
      apply recent_of_zero position recentPositionFloor difference
          hposition hfloor hdifference
      simpa [hisOld] using hselected
    simp [hisOld, Nat.not_lt.mpr hrecent]
  · have hold : position.val < recentPositionFloor.val := by
      apply old_of_one position recentPositionFloor difference
          hposition hfloor hdifference
      simpa [hisOld] using hselected
    simp [hisOld, hold]

theorem gated_sound
    (position recentPositionFloor isDummy isOld difference historyRequired : F)
    (hcore : CoreCircuit position recentPositionFloor isOld difference)
    (houtput : historyRequired = (1 - isDummy) * isOld) :
    GatedSpec position recentPositionFloor isDummy historyRequired := by
  obtain ⟨hposition, hfloor, hisOld⟩ :=
    core_sound position recentPositionFloor isOld difference hcore
  refine ⟨hposition, hfloor, ?_⟩
  rw [houtput, hisOld]

end Shieldd.GnarkFormal.HistoryClassifyBridge
