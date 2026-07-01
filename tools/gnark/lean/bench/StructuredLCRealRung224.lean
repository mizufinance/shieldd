import ShielddGnarkFormal.RvkDeployedRung
import ShielddGnarkFormal.StructuredLC

/-!
Real DTK scalar rung 224 over the exact row shapes emitted by the StructuredLC
extractor. This crosses the wire-allocation transition from stride 13 to stride
14 and proves the full EC-add/select/double `StepRel` without expanding a run.
-/

namespace Shieldd.GnarkFormal.StructuredLCRealRung224

open Shieldd.GnarkFormal

set_option maxHeartbeats 1000000
set_option maxRecDepth 100000

abbrev F := EdwardsBridge.F

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order)]

def accX (rho : Nat -> F) : F :=
  StrideRun.sumAux rho 15543 13 150 + StrideRun.sumAux rho 17494 14 74

def accY (rho : Nat -> F) : F :=
  1 + StrideRun.sumAux rho 15544 13 150 + StrideRun.sumAux rho 17495 14 74

def nextAccX (rho : Nat -> F) : F :=
  StrideRun.sumAux rho 15543 13 150 + StrideRun.sumAux rho 17494 14 75

def nextAccY (rho : Nat -> F) : F :=
  1 + StrideRun.sumAux rho 15544 13 150 + StrideRun.sumAux rho 17495 14 75

theorem evalX (rho : Nat -> F) :
    StructuredLC.eval rho
      { const := 0,
        runs := [⟨1, 15543, 13, 150⟩, ⟨1, 17494, 14, 74⟩],
        residual := [] } = accX rho := by
  simp only [StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval]
  unfold accX
  ring

theorem evalY (rho : Nat -> F) :
    StructuredLC.eval rho
      { const := 1,
        runs := [⟨1, 15544, 13, 150⟩, ⟨1, 17495, 14, 74⟩],
        residual := [] } = accY rho := by
  simp only [StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval]
  unfold accY
  ring

theorem evalXY (rho : Nat -> F) :
    StructuredLC.eval rho
      { const := 1,
        runs := [⟨1, 15543, 13, 150⟩, ⟨1, 15544, 13, 150⟩,
          ⟨1, 17494, 14, 74⟩, ⟨1, 17495, 14, 74⟩],
        residual := [] } = accX rho + accY rho := by
  simp only [StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval]
  unfold accX accY
  ring

theorem evalSelectX (rho : Nat -> F) :
    StructuredLC.eval rho
      { const := 0,
        runs := [⟨-1, 15543, 13, 150⟩, ⟨-1, 17494, 14, 74⟩],
        residual := [(1, 18528)] } = rho 18528 - accX rho := by
  simp only [StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval]
  unfold accX
  ring

theorem evalSelectY (rho : Nat -> F) :
    StructuredLC.eval rho
      { const := -1,
        runs := [⟨-1, 15544, 13, 150⟩, ⟨-1, 17495, 14, 74⟩],
        residual := [(1, 18529)] } = rho 18529 - accY rho := by
  simp only [StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval]
  unfold accY
  ring

theorem nextAccX_eq (rho : Nat -> F) : nextAccX rho = accX rho + rho 18530 := by
  unfold nextAccX accX
  rw [StrideRun.sumAux_succ]
  norm_num
  ring

theorem nextAccY_eq (rho : Nat -> F) : nextAccY rho = accY rho + rho 18531 := by
  unfold nextAccY accY
  rw [StrideRun.sumAux_succ]
  norm_num
  ring

def row5951 (rho : Nat -> F) : Prop :=
  StructuredLC.eval rho
    { const := 1,
      runs := [⟨1, 15543, 13, 150⟩, ⟨1, 15544, 13, 150⟩,
        ⟨1, 17494, 14, 74⟩, ⟨1, 17495, 14, 74⟩],
      residual := [] } = rho 18523

def row5952 (rho : Nat -> F) : Prop :=
  rho 18523 * (rho 18521 + rho 18522) = rho 18524

def row5953 (rho : Nat -> F) : Prop :=
  rho 18522 * StructuredLC.eval rho
    { const := 0,
      runs := [⟨1, 15543, 13, 150⟩, ⟨1, 17494, 14, 74⟩], residual := [] } = rho 18525

def row5954 (rho : Nat -> F) : Prop :=
  rho 18521 * StructuredLC.eval rho
    { const := 1,
      runs := [⟨1, 15544, 13, 150⟩, ⟨1, 17495, 14, 74⟩], residual := [] } = rho 18526

def row5955 (rho : Nat -> F) : Prop := 3021 * rho 18525 * rho 18526 = rho 18527
def row5956 (rho : Nat -> F) : Prop :=
  rho 18528 * (1 + rho 18527) = rho 18525 + rho 18526
def row5957 (rho : Nat -> F) : Prop :=
  rho 18529 * (1 - rho 18527) = rho 18524 - rho 18525 - rho 18526

def row5958 (rho : Nat -> F) : Prop :=
  rho 15516 * StructuredLC.eval rho
    { const := 0,
      runs := [⟨-1, 15543, 13, 150⟩, ⟨-1, 17494, 14, 74⟩],
      residual := [(1, 18528)] } = rho 18530

def row5959 (rho : Nat -> F) : Prop :=
  rho 15516 * StructuredLC.eval rho
    { const := -1,
      runs := [⟨-1, 15544, 13, 150⟩, ⟨-1, 17495, 14, 74⟩],
      residual := [(1, 18529)] } = rho 18531

def row5960 (rho : Nat -> F) : Prop := rho 18521 * rho 18522 = rho 18532
def row5961 (rho : Nat -> F) : Prop := rho 18521 * rho 18521 = rho 18533
def row5962 (rho : Nat -> F) : Prop := rho 18522 * rho 18522 = rho 18534
def row5963 (rho : Nat -> F) : Prop :=
  rho 18535 * (-rho 18533 + rho 18534) = 2 * rho 18532
def row5964 (rho : Nat -> F) : Prop :=
  rho 18536 * (2 + rho 18533 - rho 18534) = rho 18533 + rho 18534

theorem rung224 (rho : Nat -> F)
    (r5951 : row5951 rho) (r5952 : row5952 rho) (r5953 : row5953 rho)
    (r5954 : row5954 rho) (r5955 : row5955 rho) (r5956 : row5956 rho)
    (r5957 : row5957 rho) (r5958 : row5958 rho) (r5959 : row5959 rho)
    (r5960 : row5960 rho) (r5961 : row5961 rho) (r5962 : row5962 rho)
    (r5963 : row5963 rho) (r5964 : row5964 rho)
    (bit : Bool) (hbit : rho 15516 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve ⟨accX rho, accY rho⟩)
    (hcur : EdwardsBridge.onCurve ⟨rho 18521, rho 18522⟩) :
    ScalarMulBridge.StepRel (Bool.toZMod bit)
      ⟨accX rho, accY rho⟩ ⟨rho 18521, rho 18522⟩
      ⟨nextAccX rho, nextAccY rho⟩ ⟨rho 18535, rho 18536⟩ := by
  unfold row5951 at r5951
  unfold row5952 at r5952
  unfold row5953 at r5953
  unfold row5954 at r5954
  unfold row5955 at r5955
  unfold row5956 at r5956
  unfold row5957 at r5957
  unfold row5958 at r5958
  unfold row5959 at r5959
  unfold row5960 at r5960
  unfold row5961 at r5961
  unfold row5962 at r5962
  unfold row5963 at r5963
  unfold row5964 at r5964
  rw [evalXY] at r5951
  rw [evalX] at r5953
  rw [evalY] at r5954
  rw [evalSelectX] at r5958
  rw [evalSelectY] at r5959
  have hsum : accX rho + accY rho = rho 18523 := r5951
  have ha0 : (rho 18521 + rho 18522) * (accX rho + accY rho) = rho 18524 := by
    rw [hsum]
    linear_combination r5952
  have ha1 : rho 18522 * accX rho = rho 18525 := r5953
  have ha2 : rho 18521 * accY rho = rho 18526 := r5954
  have ha3 : 3021 * rho 18525 * rho 18526 = rho 18527 := r5955
  have haddx :
      rho 18528 * (1 + 3021 * (rho 18522 * accX rho) * (rho 18521 * accY rho)) =
        rho 18522 * accX rho + rho 18521 * accY rho := by
    rw [ha1, ha2, ha3]
    exact r5956
  have haddy :
      rho 18529 * (1 - 3021 * (rho 18522 * accX rho) * (rho 18521 * accY rho)) =
        (-1) * (rho 18522 * accX rho) - rho 18521 * accY rho +
          (accY rho - accX rho * (-1)) * (rho 18521 + rho 18522) := by
    rw [ha1, ha2, ha3]
    calc
      rho 18529 * (1 - rho 18527) = rho 18524 - rho 18525 - rho 18526 := r5957
      _ = (-1) * rho 18525 - rho 18526 +
          (accY rho - accX rho * (-1)) * (rho 18521 + rho 18522) := by
        rw [← ha0]
        ring
  have hselx :
      nextAccX rho = accX rho - Bool.toZMod bit * (accX rho - rho 18528) := by
    rw [nextAccX_eq]
    have hd : rho 18530 = Bool.toZMod bit * (rho 18528 - accX rho) := by
      rw [← hbit]
      linear_combination -r5958
    linear_combination hd
  have hsely :
      nextAccY rho = accY rho - Bool.toZMod bit * (accY rho - rho 18529) := by
    rw [nextAccY_eq]
    have hd : rho 18531 = Bool.toZMod bit * (rho 18529 - accY rho) := by
      rw [← hbit]
      linear_combination -r5959
    linear_combination hd
  have hd3 :
      rho 18535 * (rho 18522 * rho 18522 + rho 18521 * rho 18521 * (-1)) =
        2 * (rho 18521 * rho 18522) := by
    rw [r5960, r5961, r5962]
    linear_combination r5963
  have hd4 :
      rho 18536 * (2 - (rho 18522 * rho 18522 + rho 18521 * rho 18521 * (-1))) =
        rho 18522 * rho 18522 - rho 18521 * rho 18521 * (-1) := by
    rw [r5961, r5962]
    linear_combination r5964
  apply RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨accX rho, accY rho⟩ ⟨rho 18521, rho 18522⟩
    ⟨rho 18528, rho 18529⟩ ⟨nextAccX rho, nextAccY rho⟩
    ⟨rho 18535, rho 18536⟩ hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

end Shieldd.GnarkFormal.StructuredLCRealRung224
