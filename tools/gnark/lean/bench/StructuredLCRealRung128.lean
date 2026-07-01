import ShielddGnarkFormal.RvkDeployedRung
import ShielddGnarkFormal.StructuredLC

/-!
Real DTK scalar rung 128 over the exact row shapes emitted by the StructuredLC
extractor. The theorem proves the full EC-add/select/double `StepRel`; no flat
`relationLc` definition or literal-count accumulator is unfolded.
-/

namespace Shieldd.GnarkFormal.StructuredLCRealRung128

open Shieldd.GnarkFormal

set_option maxHeartbeats 1000000
set_option maxRecDepth 100000

abbrev F := EdwardsBridge.F

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order)]

def accX (rho : Nat -> F) : F := StrideRun.sumAux rho 15543 13 128
def accY (rho : Nat -> F) : F := 1 + StrideRun.sumAux rho 15544 13 128
def nextAccX (rho : Nat -> F) : F := StrideRun.sumAux rho 15543 13 129
def nextAccY (rho : Nat -> F) : F := 1 + StrideRun.sumAux rho 15544 13 129

theorem evalX (rho : Nat -> F) :
    StructuredLC.eval rho
      { const := 0, runs := [⟨1, 15543, 13, 128⟩], residual := [] } = accX rho := by
  simp only [StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval]
  unfold accX
  ring

theorem evalY (rho : Nat -> F) :
    StructuredLC.eval rho
      { const := 1, runs := [⟨1, 15544, 13, 128⟩], residual := [] } = accY rho := by
  simp only [StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval]
  unfold accY
  ring

theorem evalXY (rho : Nat -> F) :
    StructuredLC.eval rho
      { const := 1,
        runs := [⟨1, 15543, 13, 128⟩, ⟨1, 15544, 13, 128⟩],
        residual := [] } = accX rho + accY rho := by
  simp only [StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval]
  unfold accX accY
  ring

theorem evalSelectX (rho : Nat -> F) :
    StructuredLC.eval rho
      { const := 0, runs := [⟨-1, 15543, 13, 128⟩], residual := [(1, 17205)] } =
      rho 17205 - accX rho := by
  simp only [StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval]
  unfold accX
  ring

theorem evalSelectY (rho : Nat -> F) :
    StructuredLC.eval rho
      { const := -1, runs := [⟨-1, 15544, 13, 128⟩], residual := [(1, 17206)] } =
      rho 17206 - accY rho := by
  simp only [StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval]
  unfold accY
  ring

theorem nextAccX_eq (rho : Nat -> F) :
    nextAccX rho = accX rho + rho 17207 := by
  unfold nextAccX accX
  calc
    StrideRun.sumAux rho 15543 13 129 =
        StrideRun.sumAux rho 15543 13 128 + rho (15543 + 128 * 13) :=
      StrideRun.sumAux_succ rho 15543 13 128
    _ = StrideRun.sumAux rho 15543 13 128 + rho 17207 := by norm_num

theorem nextAccY_eq (rho : Nat -> F) :
    nextAccY rho = accY rho + rho 17208 := by
  unfold nextAccY accY
  rw [StrideRun.sumAux_succ]
  norm_num
  ring

def row4629 (rho : Nat -> F) : Prop :=
  (rho 17199 + rho 17200) *
      StructuredLC.eval rho
        { const := 1,
          runs := [⟨1, 15543, 13, 128⟩, ⟨1, 15544, 13, 128⟩],
          residual := [] } = rho 17201

def row4630 (rho : Nat -> F) : Prop :=
  rho 17200 * StructuredLC.eval rho
    { const := 0, runs := [⟨1, 15543, 13, 128⟩], residual := [] } = rho 17202

def row4631 (rho : Nat -> F) : Prop :=
  rho 17199 * StructuredLC.eval rho
    { const := 1, runs := [⟨1, 15544, 13, 128⟩], residual := [] } = rho 17203

def row4632 (rho : Nat -> F) : Prop := 3021 * rho 17202 * rho 17203 = rho 17204
def row4633 (rho : Nat -> F) : Prop :=
  rho 17205 * (1 + rho 17204) = rho 17202 + rho 17203
def row4634 (rho : Nat -> F) : Prop :=
  rho 17206 * (1 - rho 17204) = rho 17201 - rho 17202 - rho 17203

def row4635 (rho : Nat -> F) : Prop :=
  rho 15420 * StructuredLC.eval rho
    { const := 0, runs := [⟨-1, 15543, 13, 128⟩], residual := [(1, 17205)] } =
      rho 17207

def row4636 (rho : Nat -> F) : Prop :=
  rho 15420 * StructuredLC.eval rho
    { const := -1, runs := [⟨-1, 15544, 13, 128⟩], residual := [(1, 17206)] } =
      rho 17208

def row4637 (rho : Nat -> F) : Prop := rho 17199 * rho 17200 = rho 17209
def row4638 (rho : Nat -> F) : Prop := rho 17199 * rho 17199 = rho 17210
def row4639 (rho : Nat -> F) : Prop := rho 17200 * rho 17200 = rho 17211
def row4640 (rho : Nat -> F) : Prop :=
  rho 17212 * (-rho 17210 + rho 17211) = 2 * rho 17209
def row4641 (rho : Nat -> F) : Prop :=
  rho 17213 * (2 + rho 17210 - rho 17211) = rho 17210 + rho 17211

theorem rung128 (rho : Nat -> F)
    (r4629 : row4629 rho) (r4630 : row4630 rho) (r4631 : row4631 rho)
    (r4632 : row4632 rho) (r4633 : row4633 rho) (r4634 : row4634 rho)
    (r4635 : row4635 rho) (r4636 : row4636 rho) (r4637 : row4637 rho)
    (r4638 : row4638 rho) (r4639 : row4639 rho) (r4640 : row4640 rho)
    (r4641 : row4641 rho) (bit : Bool) (hbit : rho 15420 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve ⟨accX rho, accY rho⟩)
    (hcur : EdwardsBridge.onCurve ⟨rho 17199, rho 17200⟩) :
    ScalarMulBridge.StepRel (Bool.toZMod bit)
      ⟨accX rho, accY rho⟩ ⟨rho 17199, rho 17200⟩
      ⟨nextAccX rho, nextAccY rho⟩ ⟨rho 17212, rho 17213⟩ := by
  unfold row4629 at r4629
  unfold row4630 at r4630
  unfold row4631 at r4631
  unfold row4632 at r4632
  unfold row4633 at r4633
  unfold row4634 at r4634
  unfold row4635 at r4635
  unfold row4636 at r4636
  unfold row4637 at r4637
  unfold row4638 at r4638
  unfold row4639 at r4639
  unfold row4640 at r4640
  unfold row4641 at r4641
  rw [evalXY] at r4629
  rw [evalX] at r4630
  rw [evalY] at r4631
  rw [evalSelectX] at r4635
  rw [evalSelectY] at r4636
  have ha0 : (rho 17199 + rho 17200) * (accX rho + accY rho) = rho 17201 := by
    exact r4629
  have ha1 : rho 17200 * accX rho = rho 17202 := r4630
  have ha2 : rho 17199 * accY rho = rho 17203 := r4631
  have ha3 : 3021 * rho 17202 * rho 17203 = rho 17204 := r4632
  have haddx :
      rho 17205 * (1 + 3021 * (rho 17200 * accX rho) * (rho 17199 * accY rho)) =
        rho 17200 * accX rho + rho 17199 * accY rho := by
    rw [ha1, ha2, ha3]
    exact r4633
  have haddy :
      rho 17206 * (1 - 3021 * (rho 17200 * accX rho) * (rho 17199 * accY rho)) =
        (-1) * (rho 17200 * accX rho) - rho 17199 * accY rho +
          (accY rho - accX rho * (-1)) * (rho 17199 + rho 17200) := by
    rw [ha1, ha2, ha3]
    calc
      rho 17206 * (1 - rho 17204) = rho 17201 - rho 17202 - rho 17203 := r4634
      _ = (-1) * rho 17202 - rho 17203 +
          (accY rho - accX rho * (-1)) * (rho 17199 + rho 17200) := by
        rw [← ha0]
        ring
  have hselx :
      nextAccX rho = accX rho - Bool.toZMod bit * (accX rho - rho 17205) := by
    rw [nextAccX_eq]
    have hd : rho 17207 = Bool.toZMod bit * (rho 17205 - accX rho) := by
      rw [← hbit]
      linear_combination -r4635
    linear_combination hd
  have hsely :
      nextAccY rho = accY rho - Bool.toZMod bit * (accY rho - rho 17206) := by
    rw [nextAccY_eq]
    have hd : rho 17208 = Bool.toZMod bit * (rho 17206 - accY rho) := by
      rw [← hbit]
      linear_combination -r4636
    linear_combination hd
  have hd3 :
      rho 17212 * (rho 17200 * rho 17200 + rho 17199 * rho 17199 * (-1)) =
        2 * (rho 17199 * rho 17200) := by
    rw [r4637, r4638, r4639]
    linear_combination r4640
  have hd4 :
      rho 17213 * (2 - (rho 17200 * rho 17200 + rho 17199 * rho 17199 * (-1))) =
        rho 17200 * rho 17200 - rho 17199 * rho 17199 * (-1) := by
    rw [r4638, r4639]
    linear_combination r4641
  apply RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨accX rho, accY rho⟩ ⟨rho 17199, rho 17200⟩
    ⟨rho 17205, rho 17206⟩ ⟨nextAccX rho, nextAccY rho⟩
    ⟨rho 17212, rho 17213⟩ hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

end Shieldd.GnarkFormal.StructuredLCRealRung128
