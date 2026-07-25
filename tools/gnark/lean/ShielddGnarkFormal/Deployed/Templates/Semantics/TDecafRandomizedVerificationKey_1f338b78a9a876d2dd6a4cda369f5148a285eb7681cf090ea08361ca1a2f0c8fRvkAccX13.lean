import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def rvkAccX131 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 131
theorem rvkAccX131_succ (rho : Nat -> F) :
    rvkAccX131 rho = rvkAccX130 rho + rho 906 := by
  unfold rvkAccX131 rvkAccX130
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 130]
def rvkAccX132 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 132
theorem rvkAccX132_succ (rho : Nat -> F) :
    rvkAccX132 rho = rvkAccX131 rho + rho 911 := by
  unfold rvkAccX132 rvkAccX131
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 131]
def rvkAccX133 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 133
theorem rvkAccX133_succ (rho : Nat -> F) :
    rvkAccX133 rho = rvkAccX132 rho + rho 916 := by
  unfold rvkAccX133 rvkAccX132
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 132]
def rvkAccX134 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 134
theorem rvkAccX134_succ (rho : Nat -> F) :
    rvkAccX134 rho = rvkAccX133 rho + rho 921 := by
  unfold rvkAccX134 rvkAccX133
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 133]
def rvkAccX135 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 135
theorem rvkAccX135_succ (rho : Nat -> F) :
    rvkAccX135 rho = rvkAccX134 rho + rho 926 := by
  unfold rvkAccX135 rvkAccX134
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 134]
def rvkAccX136 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 136
theorem rvkAccX136_succ (rho : Nat -> F) :
    rvkAccX136 rho = rvkAccX135 rho + rho 931 := by
  unfold rvkAccX136 rvkAccX135
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 135]
def rvkAccX137 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 137
theorem rvkAccX137_succ (rho : Nat -> F) :
    rvkAccX137 rho = rvkAccX136 rho + rho 936 := by
  unfold rvkAccX137 rvkAccX136
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 136]
def rvkAccX138 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 138
theorem rvkAccX138_succ (rho : Nat -> F) :
    rvkAccX138 rho = rvkAccX137 rho + rho 941 := by
  unfold rvkAccX138 rvkAccX137
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 137]
def rvkAccX139 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 139
theorem rvkAccX139_succ (rho : Nat -> F) :
    rvkAccX139 rho = rvkAccX138 rho + rho 946 := by
  unfold rvkAccX139 rvkAccX138
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 138]
def rvkAccX140 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 140
theorem rvkAccX140_succ (rho : Nat -> F) :
    rvkAccX140 rho = rvkAccX139 rho + rho 951 := by
  unfold rvkAccX140 rvkAccX139
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 139]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
