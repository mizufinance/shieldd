import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

def rvkAccY51 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 51
theorem rvkAccY51_succ (rho : Nat -> F) :
    rvkAccY51 rho = rvkAccY50 rho + rho 507 := by
  unfold rvkAccY51 rvkAccY50
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 50]
def rvkAccY52 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 52
theorem rvkAccY52_succ (rho : Nat -> F) :
    rvkAccY52 rho = rvkAccY51 rho + rho 512 := by
  unfold rvkAccY52 rvkAccY51
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 51]
def rvkAccY53 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 53
theorem rvkAccY53_succ (rho : Nat -> F) :
    rvkAccY53 rho = rvkAccY52 rho + rho 517 := by
  unfold rvkAccY53 rvkAccY52
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 52]
def rvkAccY54 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 54
theorem rvkAccY54_succ (rho : Nat -> F) :
    rvkAccY54 rho = rvkAccY53 rho + rho 522 := by
  unfold rvkAccY54 rvkAccY53
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 53]
def rvkAccY55 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 55
theorem rvkAccY55_succ (rho : Nat -> F) :
    rvkAccY55 rho = rvkAccY54 rho + rho 527 := by
  unfold rvkAccY55 rvkAccY54
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 54]
def rvkAccY56 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 56
theorem rvkAccY56_succ (rho : Nat -> F) :
    rvkAccY56 rho = rvkAccY55 rho + rho 532 := by
  unfold rvkAccY56 rvkAccY55
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 55]
def rvkAccY57 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 57
theorem rvkAccY57_succ (rho : Nat -> F) :
    rvkAccY57 rho = rvkAccY56 rho + rho 537 := by
  unfold rvkAccY57 rvkAccY56
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 56]
def rvkAccY58 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 58
theorem rvkAccY58_succ (rho : Nat -> F) :
    rvkAccY58 rho = rvkAccY57 rho + rho 542 := by
  unfold rvkAccY58 rvkAccY57
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 57]
def rvkAccY59 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 59
theorem rvkAccY59_succ (rho : Nat -> F) :
    rvkAccY59 rho = rvkAccY58 rho + rho 547 := by
  unfold rvkAccY59 rvkAccY58
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 58]
def rvkAccY60 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 60
theorem rvkAccY60_succ (rho : Nat -> F) :
    rvkAccY60 rho = rvkAccY59 rho + rho 552 := by
  unfold rvkAccY60 rvkAccY59
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 59]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport
