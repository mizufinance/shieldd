import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def rvkAccX211 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 62
theorem rvkAccX211_succ (rho : Nat -> F) :
    rvkAccX211 rho = rvkAccX210 rho + rho 1492 := by
  unfold rvkAccX211 rvkAccX210
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 61]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX212 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 63
theorem rvkAccX212_succ (rho : Nat -> F) :
    rvkAccX212 rho = rvkAccX211 rho + rho 1500 := by
  unfold rvkAccX212 rvkAccX211
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 62]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX213 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 64
theorem rvkAccX213_succ (rho : Nat -> F) :
    rvkAccX213 rho = rvkAccX212 rho + rho 1508 := by
  unfold rvkAccX213 rvkAccX212
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 63]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX214 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 65
theorem rvkAccX214_succ (rho : Nat -> F) :
    rvkAccX214 rho = rvkAccX213 rho + rho 1516 := by
  unfold rvkAccX214 rvkAccX213
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 64]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX215 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 66
theorem rvkAccX215_succ (rho : Nat -> F) :
    rvkAccX215 rho = rvkAccX214 rho + rho 1524 := by
  unfold rvkAccX215 rvkAccX214
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 65]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX216 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 67
theorem rvkAccX216_succ (rho : Nat -> F) :
    rvkAccX216 rho = rvkAccX215 rho + rho 1532 := by
  unfold rvkAccX216 rvkAccX215
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 66]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX217 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 68
theorem rvkAccX217_succ (rho : Nat -> F) :
    rvkAccX217 rho = rvkAccX216 rho + rho 1540 := by
  unfold rvkAccX217 rvkAccX216
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 67]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX218 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 69
theorem rvkAccX218_succ (rho : Nat -> F) :
    rvkAccX218 rho = rvkAccX217 rho + rho 1548 := by
  unfold rvkAccX218 rvkAccX217
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 68]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX219 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 70
theorem rvkAccX219_succ (rho : Nat -> F) :
    rvkAccX219 rho = rvkAccX218 rho + rho 1556 := by
  unfold rvkAccX219 rvkAccX218
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 69]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX220 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 71
theorem rvkAccX220_succ (rho : Nat -> F) :
    rvkAccX220 rho = rvkAccX219 rho + rho 1564 := by
  unfold rvkAccX220 rvkAccX219
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 70]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
