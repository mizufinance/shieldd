import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccY121 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 121
theorem rvkAccY121_succ (rho : Nat -> F) :
    rvkAccY121 rho = rvkAccY120 rho + rho 857 := by
  unfold rvkAccY121 rvkAccY120
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 120]
def rvkAccY122 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 122
theorem rvkAccY122_succ (rho : Nat -> F) :
    rvkAccY122 rho = rvkAccY121 rho + rho 862 := by
  unfold rvkAccY122 rvkAccY121
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 121]
def rvkAccY123 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 123
theorem rvkAccY123_succ (rho : Nat -> F) :
    rvkAccY123 rho = rvkAccY122 rho + rho 867 := by
  unfold rvkAccY123 rvkAccY122
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 122]
def rvkAccY124 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 124
theorem rvkAccY124_succ (rho : Nat -> F) :
    rvkAccY124 rho = rvkAccY123 rho + rho 872 := by
  unfold rvkAccY124 rvkAccY123
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 123]
def rvkAccY125 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 125
theorem rvkAccY125_succ (rho : Nat -> F) :
    rvkAccY125 rho = rvkAccY124 rho + rho 877 := by
  unfold rvkAccY125 rvkAccY124
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 124]
def rvkAccY126 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 126
theorem rvkAccY126_succ (rho : Nat -> F) :
    rvkAccY126 rho = rvkAccY125 rho + rho 882 := by
  unfold rvkAccY126 rvkAccY125
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 125]
def rvkAccY127 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 127
theorem rvkAccY127_succ (rho : Nat -> F) :
    rvkAccY127 rho = rvkAccY126 rho + rho 887 := by
  unfold rvkAccY127 rvkAccY126
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 126]
def rvkAccY128 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 128
theorem rvkAccY128_succ (rho : Nat -> F) :
    rvkAccY128 rho = rvkAccY127 rho + rho 892 := by
  unfold rvkAccY128 rvkAccY127
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 127]
def rvkAccY129 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 129
theorem rvkAccY129_succ (rho : Nat -> F) :
    rvkAccY129 rho = rvkAccY128 rho + rho 897 := by
  unfold rvkAccY129 rvkAccY128
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 128]
def rvkAccY130 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 130
theorem rvkAccY130_succ (rho : Nat -> F) :
    rvkAccY130 rho = rvkAccY129 rho + rho 902 := by
  unfold rvkAccY130 rvkAccY129
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 129]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
