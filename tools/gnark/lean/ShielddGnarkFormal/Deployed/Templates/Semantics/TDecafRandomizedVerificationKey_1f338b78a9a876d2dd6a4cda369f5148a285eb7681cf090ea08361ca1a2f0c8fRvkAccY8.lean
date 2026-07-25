import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def rvkAccY81 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 81
theorem rvkAccY81_succ (rho : Nat -> F) :
    rvkAccY81 rho = rvkAccY80 rho + rho 657 := by
  unfold rvkAccY81 rvkAccY80
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 80]
def rvkAccY82 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 82
theorem rvkAccY82_succ (rho : Nat -> F) :
    rvkAccY82 rho = rvkAccY81 rho + rho 662 := by
  unfold rvkAccY82 rvkAccY81
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 81]
def rvkAccY83 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 83
theorem rvkAccY83_succ (rho : Nat -> F) :
    rvkAccY83 rho = rvkAccY82 rho + rho 667 := by
  unfold rvkAccY83 rvkAccY82
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 82]
def rvkAccY84 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 84
theorem rvkAccY84_succ (rho : Nat -> F) :
    rvkAccY84 rho = rvkAccY83 rho + rho 672 := by
  unfold rvkAccY84 rvkAccY83
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 83]
def rvkAccY85 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 85
theorem rvkAccY85_succ (rho : Nat -> F) :
    rvkAccY85 rho = rvkAccY84 rho + rho 677 := by
  unfold rvkAccY85 rvkAccY84
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 84]
def rvkAccY86 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 86
theorem rvkAccY86_succ (rho : Nat -> F) :
    rvkAccY86 rho = rvkAccY85 rho + rho 682 := by
  unfold rvkAccY86 rvkAccY85
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 85]
def rvkAccY87 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 87
theorem rvkAccY87_succ (rho : Nat -> F) :
    rvkAccY87 rho = rvkAccY86 rho + rho 687 := by
  unfold rvkAccY87 rvkAccY86
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 86]
def rvkAccY88 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 88
theorem rvkAccY88_succ (rho : Nat -> F) :
    rvkAccY88 rho = rvkAccY87 rho + rho 692 := by
  unfold rvkAccY88 rvkAccY87
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 87]
def rvkAccY89 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 89
theorem rvkAccY89_succ (rho : Nat -> F) :
    rvkAccY89 rho = rvkAccY88 rho + rho 697 := by
  unfold rvkAccY89 rvkAccY88
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 88]
def rvkAccY90 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 90
theorem rvkAccY90_succ (rho : Nat -> F) :
    rvkAccY90 rho = rvkAccY89 rho + rho 702 := by
  unfold rvkAccY90 rvkAccY89
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 89]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
