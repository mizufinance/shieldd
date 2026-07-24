import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccY31 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 31
theorem rvkAccY31_succ (rho : Nat -> F) :
    rvkAccY31 rho = rvkAccY30 rho + rho 407 := by
  unfold rvkAccY31 rvkAccY30
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 30]
def rvkAccY32 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 32
theorem rvkAccY32_succ (rho : Nat -> F) :
    rvkAccY32 rho = rvkAccY31 rho + rho 412 := by
  unfold rvkAccY32 rvkAccY31
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 31]
def rvkAccY33 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 33
theorem rvkAccY33_succ (rho : Nat -> F) :
    rvkAccY33 rho = rvkAccY32 rho + rho 417 := by
  unfold rvkAccY33 rvkAccY32
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 32]
def rvkAccY34 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 34
theorem rvkAccY34_succ (rho : Nat -> F) :
    rvkAccY34 rho = rvkAccY33 rho + rho 422 := by
  unfold rvkAccY34 rvkAccY33
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 33]
def rvkAccY35 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 35
theorem rvkAccY35_succ (rho : Nat -> F) :
    rvkAccY35 rho = rvkAccY34 rho + rho 427 := by
  unfold rvkAccY35 rvkAccY34
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 34]
def rvkAccY36 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 36
theorem rvkAccY36_succ (rho : Nat -> F) :
    rvkAccY36 rho = rvkAccY35 rho + rho 432 := by
  unfold rvkAccY36 rvkAccY35
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 35]
def rvkAccY37 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 37
theorem rvkAccY37_succ (rho : Nat -> F) :
    rvkAccY37 rho = rvkAccY36 rho + rho 437 := by
  unfold rvkAccY37 rvkAccY36
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 36]
def rvkAccY38 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 38
theorem rvkAccY38_succ (rho : Nat -> F) :
    rvkAccY38 rho = rvkAccY37 rho + rho 442 := by
  unfold rvkAccY38 rvkAccY37
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 37]
def rvkAccY39 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 39
theorem rvkAccY39_succ (rho : Nat -> F) :
    rvkAccY39 rho = rvkAccY38 rho + rho 447 := by
  unfold rvkAccY39 rvkAccY38
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 38]
def rvkAccY40 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 40
theorem rvkAccY40_succ (rho : Nat -> F) :
    rvkAccY40 rho = rvkAccY39 rho + rho 452 := by
  unfold rvkAccY40 rvkAccY39
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 39]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
