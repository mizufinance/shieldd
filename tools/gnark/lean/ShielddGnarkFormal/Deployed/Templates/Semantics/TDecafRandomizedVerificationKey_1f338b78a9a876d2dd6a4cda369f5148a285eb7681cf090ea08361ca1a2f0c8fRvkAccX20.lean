import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX19

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

def rvkAccX201 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 52
theorem rvkAccX201_succ (rho : Nat -> F) :
    rvkAccX201 rho = rvkAccX200 rho + rho 1412 := by
  unfold rvkAccX201 rvkAccX200
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 51]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX202 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 53
theorem rvkAccX202_succ (rho : Nat -> F) :
    rvkAccX202 rho = rvkAccX201 rho + rho 1420 := by
  unfold rvkAccX202 rvkAccX201
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 52]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX203 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 54
theorem rvkAccX203_succ (rho : Nat -> F) :
    rvkAccX203 rho = rvkAccX202 rho + rho 1428 := by
  unfold rvkAccX203 rvkAccX202
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 53]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX204 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 55
theorem rvkAccX204_succ (rho : Nat -> F) :
    rvkAccX204 rho = rvkAccX203 rho + rho 1436 := by
  unfold rvkAccX204 rvkAccX203
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 54]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX205 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 56
theorem rvkAccX205_succ (rho : Nat -> F) :
    rvkAccX205 rho = rvkAccX204 rho + rho 1444 := by
  unfold rvkAccX205 rvkAccX204
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 55]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX206 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 57
theorem rvkAccX206_succ (rho : Nat -> F) :
    rvkAccX206 rho = rvkAccX205 rho + rho 1452 := by
  unfold rvkAccX206 rvkAccX205
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 56]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX207 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 58
theorem rvkAccX207_succ (rho : Nat -> F) :
    rvkAccX207 rho = rvkAccX206 rho + rho 1460 := by
  unfold rvkAccX207 rvkAccX206
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 57]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX208 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 59
theorem rvkAccX208_succ (rho : Nat -> F) :
    rvkAccX208 rho = rvkAccX207 rho + rho 1468 := by
  unfold rvkAccX208 rvkAccX207
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 58]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX209 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 60
theorem rvkAccX209_succ (rho : Nat -> F) :
    rvkAccX209 rho = rvkAccX208 rho + rho 1476 := by
  unfold rvkAccX209 rvkAccX208
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 59]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX210 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 61
theorem rvkAccX210_succ (rho : Nat -> F) :
    rvkAccX210 rho = rvkAccX209 rho + rho 1484 := by
  unfold rvkAccX210 rvkAccX209
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 60]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport
