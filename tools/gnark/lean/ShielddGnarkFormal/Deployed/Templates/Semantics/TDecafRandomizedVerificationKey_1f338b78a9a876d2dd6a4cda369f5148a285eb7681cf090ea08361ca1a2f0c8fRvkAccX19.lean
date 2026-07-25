import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def rvkAccX191 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 42
theorem rvkAccX191_succ (rho : Nat -> F) :
    rvkAccX191 rho = rvkAccX190 rho + rho 1332 := by
  unfold rvkAccX191 rvkAccX190
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 41]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX192 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 43
theorem rvkAccX192_succ (rho : Nat -> F) :
    rvkAccX192 rho = rvkAccX191 rho + rho 1340 := by
  unfold rvkAccX192 rvkAccX191
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 42]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX193 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 44
theorem rvkAccX193_succ (rho : Nat -> F) :
    rvkAccX193 rho = rvkAccX192 rho + rho 1348 := by
  unfold rvkAccX193 rvkAccX192
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 43]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX194 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 45
theorem rvkAccX194_succ (rho : Nat -> F) :
    rvkAccX194 rho = rvkAccX193 rho + rho 1356 := by
  unfold rvkAccX194 rvkAccX193
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 44]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX195 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 46
theorem rvkAccX195_succ (rho : Nat -> F) :
    rvkAccX195 rho = rvkAccX194 rho + rho 1364 := by
  unfold rvkAccX195 rvkAccX194
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 45]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX196 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 47
theorem rvkAccX196_succ (rho : Nat -> F) :
    rvkAccX196 rho = rvkAccX195 rho + rho 1372 := by
  unfold rvkAccX196 rvkAccX195
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 46]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX197 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 48
theorem rvkAccX197_succ (rho : Nat -> F) :
    rvkAccX197 rho = rvkAccX196 rho + rho 1380 := by
  unfold rvkAccX197 rvkAccX196
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 47]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX198 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 49
theorem rvkAccX198_succ (rho : Nat -> F) :
    rvkAccX198 rho = rvkAccX197 rho + rho 1388 := by
  unfold rvkAccX198 rvkAccX197
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 48]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX199 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 50
theorem rvkAccX199_succ (rho : Nat -> F) :
    rvkAccX199 rho = rvkAccX198 rho + rho 1396 := by
  unfold rvkAccX199 rvkAccX198
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 49]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX200 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 51
theorem rvkAccX200_succ (rho : Nat -> F) :
    rvkAccX200 rho = rvkAccX199 rho + rho 1404 := by
  unfold rvkAccX200 rvkAccX199
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 50]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
