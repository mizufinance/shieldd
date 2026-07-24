import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccX51 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 51
theorem rvkAccX51_succ (rho : Nat -> F) :
    rvkAccX51 rho = rvkAccX50 rho + rho 506 := by
  unfold rvkAccX51 rvkAccX50
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 50]
def rvkAccX52 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 52
theorem rvkAccX52_succ (rho : Nat -> F) :
    rvkAccX52 rho = rvkAccX51 rho + rho 511 := by
  unfold rvkAccX52 rvkAccX51
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 51]
def rvkAccX53 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 53
theorem rvkAccX53_succ (rho : Nat -> F) :
    rvkAccX53 rho = rvkAccX52 rho + rho 516 := by
  unfold rvkAccX53 rvkAccX52
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 52]
def rvkAccX54 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 54
theorem rvkAccX54_succ (rho : Nat -> F) :
    rvkAccX54 rho = rvkAccX53 rho + rho 521 := by
  unfold rvkAccX54 rvkAccX53
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 53]
def rvkAccX55 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 55
theorem rvkAccX55_succ (rho : Nat -> F) :
    rvkAccX55 rho = rvkAccX54 rho + rho 526 := by
  unfold rvkAccX55 rvkAccX54
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 54]
def rvkAccX56 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 56
theorem rvkAccX56_succ (rho : Nat -> F) :
    rvkAccX56 rho = rvkAccX55 rho + rho 531 := by
  unfold rvkAccX56 rvkAccX55
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 55]
def rvkAccX57 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 57
theorem rvkAccX57_succ (rho : Nat -> F) :
    rvkAccX57 rho = rvkAccX56 rho + rho 536 := by
  unfold rvkAccX57 rvkAccX56
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 56]
def rvkAccX58 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 58
theorem rvkAccX58_succ (rho : Nat -> F) :
    rvkAccX58 rho = rvkAccX57 rho + rho 541 := by
  unfold rvkAccX58 rvkAccX57
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 57]
def rvkAccX59 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 59
theorem rvkAccX59_succ (rho : Nat -> F) :
    rvkAccX59 rho = rvkAccX58 rho + rho 546 := by
  unfold rvkAccX59 rvkAccX58
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 58]
def rvkAccX60 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 60
theorem rvkAccX60_succ (rho : Nat -> F) :
    rvkAccX60 rho = rvkAccX59 rho + rho 551 := by
  unfold rvkAccX60 rvkAccX59
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 59]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
