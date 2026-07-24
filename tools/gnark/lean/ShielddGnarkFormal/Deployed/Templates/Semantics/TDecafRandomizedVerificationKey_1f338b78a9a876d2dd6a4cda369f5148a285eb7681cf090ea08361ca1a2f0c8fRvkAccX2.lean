import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccX21 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 21
theorem rvkAccX21_succ (rho : Nat -> F) :
    rvkAccX21 rho = rvkAccX20 rho + rho 356 := by
  unfold rvkAccX21 rvkAccX20
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 20]
def rvkAccX22 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 22
theorem rvkAccX22_succ (rho : Nat -> F) :
    rvkAccX22 rho = rvkAccX21 rho + rho 361 := by
  unfold rvkAccX22 rvkAccX21
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 21]
def rvkAccX23 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 23
theorem rvkAccX23_succ (rho : Nat -> F) :
    rvkAccX23 rho = rvkAccX22 rho + rho 366 := by
  unfold rvkAccX23 rvkAccX22
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 22]
def rvkAccX24 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 24
theorem rvkAccX24_succ (rho : Nat -> F) :
    rvkAccX24 rho = rvkAccX23 rho + rho 371 := by
  unfold rvkAccX24 rvkAccX23
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 23]
def rvkAccX25 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 25
theorem rvkAccX25_succ (rho : Nat -> F) :
    rvkAccX25 rho = rvkAccX24 rho + rho 376 := by
  unfold rvkAccX25 rvkAccX24
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 24]
def rvkAccX26 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 26
theorem rvkAccX26_succ (rho : Nat -> F) :
    rvkAccX26 rho = rvkAccX25 rho + rho 381 := by
  unfold rvkAccX26 rvkAccX25
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 25]
def rvkAccX27 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 27
theorem rvkAccX27_succ (rho : Nat -> F) :
    rvkAccX27 rho = rvkAccX26 rho + rho 386 := by
  unfold rvkAccX27 rvkAccX26
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 26]
def rvkAccX28 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 28
theorem rvkAccX28_succ (rho : Nat -> F) :
    rvkAccX28 rho = rvkAccX27 rho + rho 391 := by
  unfold rvkAccX28 rvkAccX27
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 27]
def rvkAccX29 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 29
theorem rvkAccX29_succ (rho : Nat -> F) :
    rvkAccX29 rho = rvkAccX28 rho + rho 396 := by
  unfold rvkAccX29 rvkAccX28
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 28]
def rvkAccX30 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 30
theorem rvkAccX30_succ (rho : Nat -> F) :
    rvkAccX30 rho = rvkAccX29 rho + rho 401 := by
  unfold rvkAccX30 rvkAccX29
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 29]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
