import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def rvkAccY11 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 11
theorem rvkAccY11_succ (rho : Nat -> F) :
    rvkAccY11 rho = rvkAccY10 rho + rho 307 := by
  unfold rvkAccY11 rvkAccY10
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 10]
def rvkAccY12 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 12
theorem rvkAccY12_succ (rho : Nat -> F) :
    rvkAccY12 rho = rvkAccY11 rho + rho 312 := by
  unfold rvkAccY12 rvkAccY11
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 11]
def rvkAccY13 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 13
theorem rvkAccY13_succ (rho : Nat -> F) :
    rvkAccY13 rho = rvkAccY12 rho + rho 317 := by
  unfold rvkAccY13 rvkAccY12
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 12]
def rvkAccY14 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 14
theorem rvkAccY14_succ (rho : Nat -> F) :
    rvkAccY14 rho = rvkAccY13 rho + rho 322 := by
  unfold rvkAccY14 rvkAccY13
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 13]
def rvkAccY15 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 15
theorem rvkAccY15_succ (rho : Nat -> F) :
    rvkAccY15 rho = rvkAccY14 rho + rho 327 := by
  unfold rvkAccY15 rvkAccY14
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 14]
def rvkAccY16 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 16
theorem rvkAccY16_succ (rho : Nat -> F) :
    rvkAccY16 rho = rvkAccY15 rho + rho 332 := by
  unfold rvkAccY16 rvkAccY15
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 15]
def rvkAccY17 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 17
theorem rvkAccY17_succ (rho : Nat -> F) :
    rvkAccY17 rho = rvkAccY16 rho + rho 337 := by
  unfold rvkAccY17 rvkAccY16
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 16]
def rvkAccY18 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 18
theorem rvkAccY18_succ (rho : Nat -> F) :
    rvkAccY18 rho = rvkAccY17 rho + rho 342 := by
  unfold rvkAccY18 rvkAccY17
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 17]
def rvkAccY19 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 19
theorem rvkAccY19_succ (rho : Nat -> F) :
    rvkAccY19 rho = rvkAccY18 rho + rho 347 := by
  unfold rvkAccY19 rvkAccY18
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 18]
def rvkAccY20 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 20
theorem rvkAccY20_succ (rho : Nat -> F) :
    rvkAccY20 rho = rvkAccY19 rho + rho 352 := by
  unfold rvkAccY20 rvkAccY19
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 19]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
