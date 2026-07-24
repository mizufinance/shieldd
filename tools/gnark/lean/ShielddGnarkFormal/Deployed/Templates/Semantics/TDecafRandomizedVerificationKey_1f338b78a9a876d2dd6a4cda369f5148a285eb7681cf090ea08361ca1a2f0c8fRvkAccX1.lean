import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccX11 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 11
theorem rvkAccX11_succ (rho : Nat -> F) :
    rvkAccX11 rho = rvkAccX10 rho + rho 306 := by
  unfold rvkAccX11 rvkAccX10
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 10]
def rvkAccX12 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 12
theorem rvkAccX12_succ (rho : Nat -> F) :
    rvkAccX12 rho = rvkAccX11 rho + rho 311 := by
  unfold rvkAccX12 rvkAccX11
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 11]
def rvkAccX13 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 13
theorem rvkAccX13_succ (rho : Nat -> F) :
    rvkAccX13 rho = rvkAccX12 rho + rho 316 := by
  unfold rvkAccX13 rvkAccX12
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 12]
def rvkAccX14 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 14
theorem rvkAccX14_succ (rho : Nat -> F) :
    rvkAccX14 rho = rvkAccX13 rho + rho 321 := by
  unfold rvkAccX14 rvkAccX13
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 13]
def rvkAccX15 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 15
theorem rvkAccX15_succ (rho : Nat -> F) :
    rvkAccX15 rho = rvkAccX14 rho + rho 326 := by
  unfold rvkAccX15 rvkAccX14
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 14]
def rvkAccX16 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 16
theorem rvkAccX16_succ (rho : Nat -> F) :
    rvkAccX16 rho = rvkAccX15 rho + rho 331 := by
  unfold rvkAccX16 rvkAccX15
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 15]
def rvkAccX17 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 17
theorem rvkAccX17_succ (rho : Nat -> F) :
    rvkAccX17 rho = rvkAccX16 rho + rho 336 := by
  unfold rvkAccX17 rvkAccX16
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 16]
def rvkAccX18 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 18
theorem rvkAccX18_succ (rho : Nat -> F) :
    rvkAccX18 rho = rvkAccX17 rho + rho 341 := by
  unfold rvkAccX18 rvkAccX17
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 17]
def rvkAccX19 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 19
theorem rvkAccX19_succ (rho : Nat -> F) :
    rvkAccX19 rho = rvkAccX18 rho + rho 346 := by
  unfold rvkAccX19 rvkAccX18
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 18]
def rvkAccX20 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 20
theorem rvkAccX20_succ (rho : Nat -> F) :
    rvkAccX20 rho = rvkAccX19 rho + rho 351 := by
  unfold rvkAccX20 rvkAccX19
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 19]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
