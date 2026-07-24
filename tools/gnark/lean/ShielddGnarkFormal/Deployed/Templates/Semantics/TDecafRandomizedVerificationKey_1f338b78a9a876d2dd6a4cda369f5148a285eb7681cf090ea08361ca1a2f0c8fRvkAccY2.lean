import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccY21 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 21
theorem rvkAccY21_succ (rho : Nat -> F) :
    rvkAccY21 rho = rvkAccY20 rho + rho 357 := by
  unfold rvkAccY21 rvkAccY20
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 20]
def rvkAccY22 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 22
theorem rvkAccY22_succ (rho : Nat -> F) :
    rvkAccY22 rho = rvkAccY21 rho + rho 362 := by
  unfold rvkAccY22 rvkAccY21
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 21]
def rvkAccY23 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 23
theorem rvkAccY23_succ (rho : Nat -> F) :
    rvkAccY23 rho = rvkAccY22 rho + rho 367 := by
  unfold rvkAccY23 rvkAccY22
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 22]
def rvkAccY24 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 24
theorem rvkAccY24_succ (rho : Nat -> F) :
    rvkAccY24 rho = rvkAccY23 rho + rho 372 := by
  unfold rvkAccY24 rvkAccY23
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 23]
def rvkAccY25 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 25
theorem rvkAccY25_succ (rho : Nat -> F) :
    rvkAccY25 rho = rvkAccY24 rho + rho 377 := by
  unfold rvkAccY25 rvkAccY24
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 24]
def rvkAccY26 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 26
theorem rvkAccY26_succ (rho : Nat -> F) :
    rvkAccY26 rho = rvkAccY25 rho + rho 382 := by
  unfold rvkAccY26 rvkAccY25
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 25]
def rvkAccY27 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 27
theorem rvkAccY27_succ (rho : Nat -> F) :
    rvkAccY27 rho = rvkAccY26 rho + rho 387 := by
  unfold rvkAccY27 rvkAccY26
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 26]
def rvkAccY28 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 28
theorem rvkAccY28_succ (rho : Nat -> F) :
    rvkAccY28 rho = rvkAccY27 rho + rho 392 := by
  unfold rvkAccY28 rvkAccY27
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 27]
def rvkAccY29 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 29
theorem rvkAccY29_succ (rho : Nat -> F) :
    rvkAccY29 rho = rvkAccY28 rho + rho 397 := by
  unfold rvkAccY29 rvkAccY28
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 28]
def rvkAccY30 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 30
theorem rvkAccY30_succ (rho : Nat -> F) :
    rvkAccY30 rho = rvkAccY29 rho + rho 402 := by
  unfold rvkAccY30 rvkAccY29
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 29]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
