import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def rvkAccX161 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 12
theorem rvkAccX161_succ (rho : Nat -> F) :
    rvkAccX161 rho = rvkAccX160 rho + rho 1092 := by
  unfold rvkAccX161 rvkAccX160
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 11]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX162 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 13
theorem rvkAccX162_succ (rho : Nat -> F) :
    rvkAccX162 rho = rvkAccX161 rho + rho 1100 := by
  unfold rvkAccX162 rvkAccX161
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 12]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX163 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 14
theorem rvkAccX163_succ (rho : Nat -> F) :
    rvkAccX163 rho = rvkAccX162 rho + rho 1108 := by
  unfold rvkAccX163 rvkAccX162
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 13]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX164 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 15
theorem rvkAccX164_succ (rho : Nat -> F) :
    rvkAccX164 rho = rvkAccX163 rho + rho 1116 := by
  unfold rvkAccX164 rvkAccX163
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 14]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX165 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 16
theorem rvkAccX165_succ (rho : Nat -> F) :
    rvkAccX165 rho = rvkAccX164 rho + rho 1124 := by
  unfold rvkAccX165 rvkAccX164
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 15]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX166 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 17
theorem rvkAccX166_succ (rho : Nat -> F) :
    rvkAccX166 rho = rvkAccX165 rho + rho 1132 := by
  unfold rvkAccX166 rvkAccX165
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 16]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX167 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 18
theorem rvkAccX167_succ (rho : Nat -> F) :
    rvkAccX167 rho = rvkAccX166 rho + rho 1140 := by
  unfold rvkAccX167 rvkAccX166
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 17]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX168 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 19
theorem rvkAccX168_succ (rho : Nat -> F) :
    rvkAccX168 rho = rvkAccX167 rho + rho 1148 := by
  unfold rvkAccX168 rvkAccX167
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 18]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX169 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 20
theorem rvkAccX169_succ (rho : Nat -> F) :
    rvkAccX169 rho = rvkAccX168 rho + rho 1156 := by
  unfold rvkAccX169 rvkAccX168
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 19]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX170 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 21
theorem rvkAccX170_succ (rho : Nat -> F) :
    rvkAccX170 rho = rvkAccX169 rho + rho 1164 := by
  unfold rvkAccX170 rvkAccX169
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 20]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
