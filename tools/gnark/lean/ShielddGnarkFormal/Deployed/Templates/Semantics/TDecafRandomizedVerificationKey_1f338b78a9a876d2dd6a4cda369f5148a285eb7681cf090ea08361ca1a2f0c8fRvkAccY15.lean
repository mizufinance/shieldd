import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccY151 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 2
theorem rvkAccY151_succ (rho : Nat -> F) :
    rvkAccY151 rho = rvkAccY150 rho + rho 1013 := by
  unfold rvkAccY151 rvkAccY150
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 1]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccY151_flat (rho : Nat -> F) :
    rvkAccY151 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + rho 1005 + rho 1013 := by
  rw [rvkAccY151_succ, rvkAccY150_flat]
def rvkAccY152 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 3
theorem rvkAccY152_succ (rho : Nat -> F) :
    rvkAccY152 rho = rvkAccY151 rho + rho 1021 := by
  unfold rvkAccY152 rvkAccY151
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 2]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccY152_flat (rho : Nat -> F) :
    rvkAccY152 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + rho 1005 + rho 1013 + rho 1021 := by
  rw [rvkAccY152_succ, rvkAccY151_flat]
def rvkAccY153 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 4
theorem rvkAccY153_succ (rho : Nat -> F) :
    rvkAccY153 rho = rvkAccY152 rho + rho 1029 := by
  unfold rvkAccY153 rvkAccY152
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 3]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccY153_flat (rho : Nat -> F) :
    rvkAccY153 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + rho 1005 + rho 1013 + rho 1021 + rho 1029 := by
  rw [rvkAccY153_succ, rvkAccY152_flat]
def rvkAccY154 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 5
theorem rvkAccY154_succ (rho : Nat -> F) :
    rvkAccY154 rho = rvkAccY153 rho + rho 1037 := by
  unfold rvkAccY154 rvkAccY153
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 4]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccY154_flat (rho : Nat -> F) :
    rvkAccY154 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + rho 1005 + rho 1013 + rho 1021 + rho 1029 + rho 1037 := by
  rw [rvkAccY154_succ, rvkAccY153_flat]
def rvkAccY155 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 6
theorem rvkAccY155_succ (rho : Nat -> F) :
    rvkAccY155 rho = rvkAccY154 rho + rho 1045 := by
  unfold rvkAccY155 rvkAccY154
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 5]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccY155_flat (rho : Nat -> F) :
    rvkAccY155 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + rho 1005 + rho 1013 + rho 1021 + rho 1029 + rho 1037 + rho 1045 := by
  rw [rvkAccY155_succ, rvkAccY154_flat]
def rvkAccY156 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 7
theorem rvkAccY156_succ (rho : Nat -> F) :
    rvkAccY156 rho = rvkAccY155 rho + rho 1053 := by
  unfold rvkAccY156 rvkAccY155
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 6]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccY156_flat (rho : Nat -> F) :
    rvkAccY156 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + rho 1005 + rho 1013 + rho 1021 + rho 1029 + rho 1037 + rho 1045 + rho 1053 := by
  rw [rvkAccY156_succ, rvkAccY155_flat]
def rvkAccY157 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 8
theorem rvkAccY157_succ (rho : Nat -> F) :
    rvkAccY157 rho = rvkAccY156 rho + rho 1061 := by
  unfold rvkAccY157 rvkAccY156
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 7]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY158 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 9
theorem rvkAccY158_succ (rho : Nat -> F) :
    rvkAccY158 rho = rvkAccY157 rho + rho 1069 := by
  unfold rvkAccY158 rvkAccY157
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 8]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY159 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 10
theorem rvkAccY159_succ (rho : Nat -> F) :
    rvkAccY159 rho = rvkAccY158 rho + rho 1077 := by
  unfold rvkAccY159 rvkAccY158
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 9]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY160 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 11
theorem rvkAccY160_succ (rho : Nat -> F) :
    rvkAccY160 rho = rvkAccY159 rho + rho 1085 := by
  unfold rvkAccY160 rvkAccY159
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 10]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
