import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

def rvkAccY41 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 41
theorem rvkAccY41_succ (rho : Nat -> F) :
    rvkAccY41 rho = rvkAccY40 rho + rho 457 := by
  unfold rvkAccY41 rvkAccY40
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 40]
def rvkAccY42 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 42
theorem rvkAccY42_succ (rho : Nat -> F) :
    rvkAccY42 rho = rvkAccY41 rho + rho 462 := by
  unfold rvkAccY42 rvkAccY41
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 41]
def rvkAccY43 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 43
theorem rvkAccY43_succ (rho : Nat -> F) :
    rvkAccY43 rho = rvkAccY42 rho + rho 467 := by
  unfold rvkAccY43 rvkAccY42
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 42]
def rvkAccY44 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 44
theorem rvkAccY44_succ (rho : Nat -> F) :
    rvkAccY44 rho = rvkAccY43 rho + rho 472 := by
  unfold rvkAccY44 rvkAccY43
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 43]
def rvkAccY45 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 45
theorem rvkAccY45_succ (rho : Nat -> F) :
    rvkAccY45 rho = rvkAccY44 rho + rho 477 := by
  unfold rvkAccY45 rvkAccY44
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 44]
def rvkAccY46 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 46
theorem rvkAccY46_succ (rho : Nat -> F) :
    rvkAccY46 rho = rvkAccY45 rho + rho 482 := by
  unfold rvkAccY46 rvkAccY45
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 45]
def rvkAccY47 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 47
theorem rvkAccY47_succ (rho : Nat -> F) :
    rvkAccY47 rho = rvkAccY46 rho + rho 487 := by
  unfold rvkAccY47 rvkAccY46
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 46]
def rvkAccY48 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 48
theorem rvkAccY48_succ (rho : Nat -> F) :
    rvkAccY48 rho = rvkAccY47 rho + rho 492 := by
  unfold rvkAccY48 rvkAccY47
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 47]
def rvkAccY49 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 49
theorem rvkAccY49_succ (rho : Nat -> F) :
    rvkAccY49 rho = rvkAccY48 rho + rho 497 := by
  unfold rvkAccY49 rvkAccY48
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 48]
def rvkAccY50 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 50
theorem rvkAccY50_succ (rho : Nat -> F) :
    rvkAccY50 rho = rvkAccY49 rho + rho 502 := by
  unfold rvkAccY50 rvkAccY49
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 49]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport
