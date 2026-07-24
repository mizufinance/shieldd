import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccX81 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 81
theorem rvkAccX81_succ (rho : Nat -> F) :
    rvkAccX81 rho = rvkAccX80 rho + rho 656 := by
  unfold rvkAccX81 rvkAccX80
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 80]
def rvkAccX82 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 82
theorem rvkAccX82_succ (rho : Nat -> F) :
    rvkAccX82 rho = rvkAccX81 rho + rho 661 := by
  unfold rvkAccX82 rvkAccX81
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 81]
def rvkAccX83 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 83
theorem rvkAccX83_succ (rho : Nat -> F) :
    rvkAccX83 rho = rvkAccX82 rho + rho 666 := by
  unfold rvkAccX83 rvkAccX82
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 82]
def rvkAccX84 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 84
theorem rvkAccX84_succ (rho : Nat -> F) :
    rvkAccX84 rho = rvkAccX83 rho + rho 671 := by
  unfold rvkAccX84 rvkAccX83
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 83]
def rvkAccX85 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 85
theorem rvkAccX85_succ (rho : Nat -> F) :
    rvkAccX85 rho = rvkAccX84 rho + rho 676 := by
  unfold rvkAccX85 rvkAccX84
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 84]
def rvkAccX86 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 86
theorem rvkAccX86_succ (rho : Nat -> F) :
    rvkAccX86 rho = rvkAccX85 rho + rho 681 := by
  unfold rvkAccX86 rvkAccX85
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 85]
def rvkAccX87 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 87
theorem rvkAccX87_succ (rho : Nat -> F) :
    rvkAccX87 rho = rvkAccX86 rho + rho 686 := by
  unfold rvkAccX87 rvkAccX86
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 86]
def rvkAccX88 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 88
theorem rvkAccX88_succ (rho : Nat -> F) :
    rvkAccX88 rho = rvkAccX87 rho + rho 691 := by
  unfold rvkAccX88 rvkAccX87
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 87]
def rvkAccX89 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 89
theorem rvkAccX89_succ (rho : Nat -> F) :
    rvkAccX89 rho = rvkAccX88 rho + rho 696 := by
  unfold rvkAccX89 rvkAccX88
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 88]
def rvkAccX90 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 90
theorem rvkAccX90_succ (rho : Nat -> F) :
    rvkAccX90 rho = rvkAccX89 rho + rho 701 := by
  unfold rvkAccX90 rvkAccX89
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 89]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
