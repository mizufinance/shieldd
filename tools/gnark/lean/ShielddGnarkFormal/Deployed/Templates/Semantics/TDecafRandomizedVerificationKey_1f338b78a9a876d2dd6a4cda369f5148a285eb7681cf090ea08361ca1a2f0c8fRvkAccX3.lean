import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

def rvkAccX31 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 31
theorem rvkAccX31_succ (rho : Nat -> F) :
    rvkAccX31 rho = rvkAccX30 rho + rho 406 := by
  unfold rvkAccX31 rvkAccX30
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 30]
def rvkAccX32 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 32
theorem rvkAccX32_succ (rho : Nat -> F) :
    rvkAccX32 rho = rvkAccX31 rho + rho 411 := by
  unfold rvkAccX32 rvkAccX31
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 31]
def rvkAccX33 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 33
theorem rvkAccX33_succ (rho : Nat -> F) :
    rvkAccX33 rho = rvkAccX32 rho + rho 416 := by
  unfold rvkAccX33 rvkAccX32
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 32]
def rvkAccX34 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 34
theorem rvkAccX34_succ (rho : Nat -> F) :
    rvkAccX34 rho = rvkAccX33 rho + rho 421 := by
  unfold rvkAccX34 rvkAccX33
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 33]
def rvkAccX35 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 35
theorem rvkAccX35_succ (rho : Nat -> F) :
    rvkAccX35 rho = rvkAccX34 rho + rho 426 := by
  unfold rvkAccX35 rvkAccX34
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 34]
def rvkAccX36 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 36
theorem rvkAccX36_succ (rho : Nat -> F) :
    rvkAccX36 rho = rvkAccX35 rho + rho 431 := by
  unfold rvkAccX36 rvkAccX35
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 35]
def rvkAccX37 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 37
theorem rvkAccX37_succ (rho : Nat -> F) :
    rvkAccX37 rho = rvkAccX36 rho + rho 436 := by
  unfold rvkAccX37 rvkAccX36
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 36]
def rvkAccX38 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 38
theorem rvkAccX38_succ (rho : Nat -> F) :
    rvkAccX38 rho = rvkAccX37 rho + rho 441 := by
  unfold rvkAccX38 rvkAccX37
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 37]
def rvkAccX39 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 39
theorem rvkAccX39_succ (rho : Nat -> F) :
    rvkAccX39 rho = rvkAccX38 rho + rho 446 := by
  unfold rvkAccX39 rvkAccX38
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 38]
def rvkAccX40 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 40
theorem rvkAccX40_succ (rho : Nat -> F) :
    rvkAccX40 rho = rvkAccX39 rho + rho 451 := by
  unfold rvkAccX40 rvkAccX39
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 39]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport
