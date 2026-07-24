import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccX41 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 41
theorem rvkAccX41_succ (rho : Nat -> F) :
    rvkAccX41 rho = rvkAccX40 rho + rho 456 := by
  unfold rvkAccX41 rvkAccX40
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 40]
def rvkAccX42 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 42
theorem rvkAccX42_succ (rho : Nat -> F) :
    rvkAccX42 rho = rvkAccX41 rho + rho 461 := by
  unfold rvkAccX42 rvkAccX41
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 41]
def rvkAccX43 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 43
theorem rvkAccX43_succ (rho : Nat -> F) :
    rvkAccX43 rho = rvkAccX42 rho + rho 466 := by
  unfold rvkAccX43 rvkAccX42
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 42]
def rvkAccX44 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 44
theorem rvkAccX44_succ (rho : Nat -> F) :
    rvkAccX44 rho = rvkAccX43 rho + rho 471 := by
  unfold rvkAccX44 rvkAccX43
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 43]
def rvkAccX45 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 45
theorem rvkAccX45_succ (rho : Nat -> F) :
    rvkAccX45 rho = rvkAccX44 rho + rho 476 := by
  unfold rvkAccX45 rvkAccX44
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 44]
def rvkAccX46 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 46
theorem rvkAccX46_succ (rho : Nat -> F) :
    rvkAccX46 rho = rvkAccX45 rho + rho 481 := by
  unfold rvkAccX46 rvkAccX45
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 45]
def rvkAccX47 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 47
theorem rvkAccX47_succ (rho : Nat -> F) :
    rvkAccX47 rho = rvkAccX46 rho + rho 486 := by
  unfold rvkAccX47 rvkAccX46
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 46]
def rvkAccX48 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 48
theorem rvkAccX48_succ (rho : Nat -> F) :
    rvkAccX48 rho = rvkAccX47 rho + rho 491 := by
  unfold rvkAccX48 rvkAccX47
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 47]
def rvkAccX49 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 49
theorem rvkAccX49_succ (rho : Nat -> F) :
    rvkAccX49 rho = rvkAccX48 rho + rho 496 := by
  unfold rvkAccX49 rvkAccX48
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 48]
def rvkAccX50 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 50
theorem rvkAccX50_succ (rho : Nat -> F) :
    rvkAccX50 rho = rvkAccX49 rho + rho 501 := by
  unfold rvkAccX50 rvkAccX49
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 49]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
