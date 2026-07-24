import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccX61 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 61
theorem rvkAccX61_succ (rho : Nat -> F) :
    rvkAccX61 rho = rvkAccX60 rho + rho 556 := by
  unfold rvkAccX61 rvkAccX60
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 60]
def rvkAccX62 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 62
theorem rvkAccX62_succ (rho : Nat -> F) :
    rvkAccX62 rho = rvkAccX61 rho + rho 561 := by
  unfold rvkAccX62 rvkAccX61
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 61]
def rvkAccX63 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 63
theorem rvkAccX63_succ (rho : Nat -> F) :
    rvkAccX63 rho = rvkAccX62 rho + rho 566 := by
  unfold rvkAccX63 rvkAccX62
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 62]
def rvkAccX64 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 64
theorem rvkAccX64_succ (rho : Nat -> F) :
    rvkAccX64 rho = rvkAccX63 rho + rho 571 := by
  unfold rvkAccX64 rvkAccX63
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 63]
def rvkAccX65 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 65
theorem rvkAccX65_succ (rho : Nat -> F) :
    rvkAccX65 rho = rvkAccX64 rho + rho 576 := by
  unfold rvkAccX65 rvkAccX64
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 64]
def rvkAccX66 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 66
theorem rvkAccX66_succ (rho : Nat -> F) :
    rvkAccX66 rho = rvkAccX65 rho + rho 581 := by
  unfold rvkAccX66 rvkAccX65
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 65]
def rvkAccX67 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 67
theorem rvkAccX67_succ (rho : Nat -> F) :
    rvkAccX67 rho = rvkAccX66 rho + rho 586 := by
  unfold rvkAccX67 rvkAccX66
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 66]
def rvkAccX68 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 68
theorem rvkAccX68_succ (rho : Nat -> F) :
    rvkAccX68 rho = rvkAccX67 rho + rho 591 := by
  unfold rvkAccX68 rvkAccX67
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 67]
def rvkAccX69 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 69
theorem rvkAccX69_succ (rho : Nat -> F) :
    rvkAccX69 rho = rvkAccX68 rho + rho 596 := by
  unfold rvkAccX69 rvkAccX68
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 68]
def rvkAccX70 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 70
theorem rvkAccX70_succ (rho : Nat -> F) :
    rvkAccX70 rho = rvkAccX69 rho + rho 601 := by
  unfold rvkAccX70 rvkAccX69
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 69]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
