import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY19

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

def rvkAccY201 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 52
theorem rvkAccY201_succ (rho : Nat -> F) :
    rvkAccY201 rho = rvkAccY200 rho + rho 1413 := by
  unfold rvkAccY201 rvkAccY200
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 51]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY202 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 53
theorem rvkAccY202_succ (rho : Nat -> F) :
    rvkAccY202 rho = rvkAccY201 rho + rho 1421 := by
  unfold rvkAccY202 rvkAccY201
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 52]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY203 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 54
theorem rvkAccY203_succ (rho : Nat -> F) :
    rvkAccY203 rho = rvkAccY202 rho + rho 1429 := by
  unfold rvkAccY203 rvkAccY202
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 53]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY204 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 55
theorem rvkAccY204_succ (rho : Nat -> F) :
    rvkAccY204 rho = rvkAccY203 rho + rho 1437 := by
  unfold rvkAccY204 rvkAccY203
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 54]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY205 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 56
theorem rvkAccY205_succ (rho : Nat -> F) :
    rvkAccY205 rho = rvkAccY204 rho + rho 1445 := by
  unfold rvkAccY205 rvkAccY204
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 55]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY206 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 57
theorem rvkAccY206_succ (rho : Nat -> F) :
    rvkAccY206 rho = rvkAccY205 rho + rho 1453 := by
  unfold rvkAccY206 rvkAccY205
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 56]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY207 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 58
theorem rvkAccY207_succ (rho : Nat -> F) :
    rvkAccY207 rho = rvkAccY206 rho + rho 1461 := by
  unfold rvkAccY207 rvkAccY206
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 57]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY208 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 59
theorem rvkAccY208_succ (rho : Nat -> F) :
    rvkAccY208 rho = rvkAccY207 rho + rho 1469 := by
  unfold rvkAccY208 rvkAccY207
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 58]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY209 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 60
theorem rvkAccY209_succ (rho : Nat -> F) :
    rvkAccY209 rho = rvkAccY208 rho + rho 1477 := by
  unfold rvkAccY209 rvkAccY208
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 59]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY210 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 61
theorem rvkAccY210_succ (rho : Nat -> F) :
    rvkAccY210 rho = rvkAccY209 rho + rho 1485 := by
  unfold rvkAccY210 rvkAccY209
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 60]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport
