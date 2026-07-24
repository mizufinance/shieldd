import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkBase

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccX1 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 1
def rvkAccX2 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 2
theorem rvkAccX2_succ (rho : Nat -> F) :
    rvkAccX2 rho = rvkAccX1 rho + rho 261 := by
  unfold rvkAccX2 rvkAccX1
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 1]
def rvkAccX3 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 3
theorem rvkAccX3_succ (rho : Nat -> F) :
    rvkAccX3 rho = rvkAccX2 rho + rho 266 := by
  unfold rvkAccX3 rvkAccX2
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 2]
def rvkAccX4 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 4
theorem rvkAccX4_succ (rho : Nat -> F) :
    rvkAccX4 rho = rvkAccX3 rho + rho 271 := by
  unfold rvkAccX4 rvkAccX3
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 3]
def rvkAccX5 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 5
theorem rvkAccX5_succ (rho : Nat -> F) :
    rvkAccX5 rho = rvkAccX4 rho + rho 276 := by
  unfold rvkAccX5 rvkAccX4
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 4]
def rvkAccX6 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 6
theorem rvkAccX6_succ (rho : Nat -> F) :
    rvkAccX6 rho = rvkAccX5 rho + rho 281 := by
  unfold rvkAccX6 rvkAccX5
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 5]
def rvkAccX7 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 7
theorem rvkAccX7_succ (rho : Nat -> F) :
    rvkAccX7 rho = rvkAccX6 rho + rho 286 := by
  unfold rvkAccX7 rvkAccX6
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 6]
def rvkAccX8 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 8
theorem rvkAccX8_succ (rho : Nat -> F) :
    rvkAccX8 rho = rvkAccX7 rho + rho 291 := by
  unfold rvkAccX8 rvkAccX7
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 7]
def rvkAccX9 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 9
theorem rvkAccX9_succ (rho : Nat -> F) :
    rvkAccX9 rho = rvkAccX8 rho + rho 296 := by
  unfold rvkAccX9 rvkAccX8
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 8]
def rvkAccX10 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 10
theorem rvkAccX10_succ (rho : Nat -> F) :
    rvkAccX10 rho = rvkAccX9 rho + rho 301 := by
  unfold rvkAccX10 rvkAccX9
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 9]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
