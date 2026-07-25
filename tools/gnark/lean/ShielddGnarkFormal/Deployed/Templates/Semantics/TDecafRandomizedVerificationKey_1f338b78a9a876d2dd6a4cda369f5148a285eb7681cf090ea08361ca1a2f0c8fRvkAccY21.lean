import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def rvkAccY211 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 62
theorem rvkAccY211_succ (rho : Nat -> F) :
    rvkAccY211 rho = rvkAccY210 rho + rho 1493 := by
  unfold rvkAccY211 rvkAccY210
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 61]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY212 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 63
theorem rvkAccY212_succ (rho : Nat -> F) :
    rvkAccY212 rho = rvkAccY211 rho + rho 1501 := by
  unfold rvkAccY212 rvkAccY211
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 62]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY213 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 64
theorem rvkAccY213_succ (rho : Nat -> F) :
    rvkAccY213 rho = rvkAccY212 rho + rho 1509 := by
  unfold rvkAccY213 rvkAccY212
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 63]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY214 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 65
theorem rvkAccY214_succ (rho : Nat -> F) :
    rvkAccY214 rho = rvkAccY213 rho + rho 1517 := by
  unfold rvkAccY214 rvkAccY213
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 64]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY215 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 66
theorem rvkAccY215_succ (rho : Nat -> F) :
    rvkAccY215 rho = rvkAccY214 rho + rho 1525 := by
  unfold rvkAccY215 rvkAccY214
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 65]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY216 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 67
theorem rvkAccY216_succ (rho : Nat -> F) :
    rvkAccY216 rho = rvkAccY215 rho + rho 1533 := by
  unfold rvkAccY216 rvkAccY215
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 66]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY217 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 68
theorem rvkAccY217_succ (rho : Nat -> F) :
    rvkAccY217 rho = rvkAccY216 rho + rho 1541 := by
  unfold rvkAccY217 rvkAccY216
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 67]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY218 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 69
theorem rvkAccY218_succ (rho : Nat -> F) :
    rvkAccY218 rho = rvkAccY217 rho + rho 1549 := by
  unfold rvkAccY218 rvkAccY217
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 68]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY219 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 70
theorem rvkAccY219_succ (rho : Nat -> F) :
    rvkAccY219 rho = rvkAccY218 rho + rho 1557 := by
  unfold rvkAccY219 rvkAccY218
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 69]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY220 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 71
theorem rvkAccY220_succ (rho : Nat -> F) :
    rvkAccY220 rho = rvkAccY219 rho + rho 1565 := by
  unfold rvkAccY220 rvkAccY219
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 70]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
