import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccY1 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 1
def rvkAccY2 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 2
theorem rvkAccY2_succ (rho : Nat -> F) :
    rvkAccY2 rho = rvkAccY1 rho + rho 262 := by
  unfold rvkAccY2 rvkAccY1
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 1]
def rvkAccY3 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 3
theorem rvkAccY3_succ (rho : Nat -> F) :
    rvkAccY3 rho = rvkAccY2 rho + rho 267 := by
  unfold rvkAccY3 rvkAccY2
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 2]
def rvkAccY4 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 4
theorem rvkAccY4_succ (rho : Nat -> F) :
    rvkAccY4 rho = rvkAccY3 rho + rho 272 := by
  unfold rvkAccY4 rvkAccY3
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 3]
def rvkAccY5 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 5
theorem rvkAccY5_succ (rho : Nat -> F) :
    rvkAccY5 rho = rvkAccY4 rho + rho 277 := by
  unfold rvkAccY5 rvkAccY4
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 4]
def rvkAccY6 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 6
theorem rvkAccY6_succ (rho : Nat -> F) :
    rvkAccY6 rho = rvkAccY5 rho + rho 282 := by
  unfold rvkAccY6 rvkAccY5
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 5]
def rvkAccY7 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 7
theorem rvkAccY7_succ (rho : Nat -> F) :
    rvkAccY7 rho = rvkAccY6 rho + rho 287 := by
  unfold rvkAccY7 rvkAccY6
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 6]
def rvkAccY8 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 8
theorem rvkAccY8_succ (rho : Nat -> F) :
    rvkAccY8 rho = rvkAccY7 rho + rho 292 := by
  unfold rvkAccY8 rvkAccY7
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 7]
def rvkAccY9 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 9
theorem rvkAccY9_succ (rho : Nat -> F) :
    rvkAccY9 rho = rvkAccY8 rho + rho 297 := by
  unfold rvkAccY9 rvkAccY8
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 8]
def rvkAccY10 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 10
theorem rvkAccY10_succ (rho : Nat -> F) :
    rvkAccY10 rho = rvkAccY9 rho + rho 302 := by
  unfold rvkAccY10 rvkAccY9
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 9]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
