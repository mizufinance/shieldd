import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def rvkAccX111 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 111
theorem rvkAccX111_succ (rho : Nat -> F) :
    rvkAccX111 rho = rvkAccX110 rho + rho 806 := by
  unfold rvkAccX111 rvkAccX110
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 110]
def rvkAccX112 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 112
theorem rvkAccX112_succ (rho : Nat -> F) :
    rvkAccX112 rho = rvkAccX111 rho + rho 811 := by
  unfold rvkAccX112 rvkAccX111
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 111]
def rvkAccX113 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 113
theorem rvkAccX113_succ (rho : Nat -> F) :
    rvkAccX113 rho = rvkAccX112 rho + rho 816 := by
  unfold rvkAccX113 rvkAccX112
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 112]
def rvkAccX114 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 114
theorem rvkAccX114_succ (rho : Nat -> F) :
    rvkAccX114 rho = rvkAccX113 rho + rho 821 := by
  unfold rvkAccX114 rvkAccX113
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 113]
def rvkAccX115 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 115
theorem rvkAccX115_succ (rho : Nat -> F) :
    rvkAccX115 rho = rvkAccX114 rho + rho 826 := by
  unfold rvkAccX115 rvkAccX114
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 114]
def rvkAccX116 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 116
theorem rvkAccX116_succ (rho : Nat -> F) :
    rvkAccX116 rho = rvkAccX115 rho + rho 831 := by
  unfold rvkAccX116 rvkAccX115
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 115]
def rvkAccX117 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 117
theorem rvkAccX117_succ (rho : Nat -> F) :
    rvkAccX117 rho = rvkAccX116 rho + rho 836 := by
  unfold rvkAccX117 rvkAccX116
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 116]
def rvkAccX118 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 118
theorem rvkAccX118_succ (rho : Nat -> F) :
    rvkAccX118 rho = rvkAccX117 rho + rho 841 := by
  unfold rvkAccX118 rvkAccX117
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 117]
def rvkAccX119 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 119
theorem rvkAccX119_succ (rho : Nat -> F) :
    rvkAccX119 rho = rvkAccX118 rho + rho 846 := by
  unfold rvkAccX119 rvkAccX118
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 118]
def rvkAccX120 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 120
theorem rvkAccX120_succ (rho : Nat -> F) :
    rvkAccX120 rho = rvkAccX119 rho + rho 851 := by
  unfold rvkAccX120 rvkAccX119
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 119]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
