import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccX151 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 2
theorem rvkAccX151_succ (rho : Nat -> F) :
    rvkAccX151 rho = rvkAccX150 rho + rho 1012 := by
  unfold rvkAccX151 rvkAccX150
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 1]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccX151_flat (rho : Nat -> F) :
    rvkAccX151 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + rho 1004 + rho 1012 := by
  rw [rvkAccX151_succ, rvkAccX150_flat]
def rvkAccX152 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 3
theorem rvkAccX152_succ (rho : Nat -> F) :
    rvkAccX152 rho = rvkAccX151 rho + rho 1020 := by
  unfold rvkAccX152 rvkAccX151
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 2]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccX152_flat (rho : Nat -> F) :
    rvkAccX152 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + rho 1004 + rho 1012 + rho 1020 := by
  rw [rvkAccX152_succ, rvkAccX151_flat]
def rvkAccX153 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 4
theorem rvkAccX153_succ (rho : Nat -> F) :
    rvkAccX153 rho = rvkAccX152 rho + rho 1028 := by
  unfold rvkAccX153 rvkAccX152
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 3]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccX153_flat (rho : Nat -> F) :
    rvkAccX153 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + rho 1004 + rho 1012 + rho 1020 + rho 1028 := by
  rw [rvkAccX153_succ, rvkAccX152_flat]
def rvkAccX154 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 5
theorem rvkAccX154_succ (rho : Nat -> F) :
    rvkAccX154 rho = rvkAccX153 rho + rho 1036 := by
  unfold rvkAccX154 rvkAccX153
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 4]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccX154_flat (rho : Nat -> F) :
    rvkAccX154 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + rho 1004 + rho 1012 + rho 1020 + rho 1028 + rho 1036 := by
  rw [rvkAccX154_succ, rvkAccX153_flat]
def rvkAccX155 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 6
theorem rvkAccX155_succ (rho : Nat -> F) :
    rvkAccX155 rho = rvkAccX154 rho + rho 1044 := by
  unfold rvkAccX155 rvkAccX154
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 5]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccX155_flat (rho : Nat -> F) :
    rvkAccX155 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + rho 1004 + rho 1012 + rho 1020 + rho 1028 + rho 1036 + rho 1044 := by
  rw [rvkAccX155_succ, rvkAccX154_flat]
def rvkAccX156 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 7
theorem rvkAccX156_succ (rho : Nat -> F) :
    rvkAccX156 rho = rvkAccX155 rho + rho 1052 := by
  unfold rvkAccX156 rvkAccX155
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 6]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccX156_flat (rho : Nat -> F) :
    rvkAccX156 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + rho 1004 + rho 1012 + rho 1020 + rho 1028 + rho 1036 + rho 1044 + rho 1052 := by
  rw [rvkAccX156_succ, rvkAccX155_flat]
def rvkAccX157 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 8
theorem rvkAccX157_succ (rho : Nat -> F) :
    rvkAccX157 rho = rvkAccX156 rho + rho 1060 := by
  unfold rvkAccX157 rvkAccX156
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 7]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX158 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 9
theorem rvkAccX158_succ (rho : Nat -> F) :
    rvkAccX158 rho = rvkAccX157 rho + rho 1068 := by
  unfold rvkAccX158 rvkAccX157
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 8]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX159 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 10
theorem rvkAccX159_succ (rho : Nat -> F) :
    rvkAccX159 rho = rvkAccX158 rho + rho 1076 := by
  unfold rvkAccX159 rvkAccX158
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 9]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX160 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 11
theorem rvkAccX160_succ (rho : Nat -> F) :
    rvkAccX160 rho = rvkAccX159 rho + rho 1084 := by
  unfold rvkAccX160 rvkAccX159
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 10]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
