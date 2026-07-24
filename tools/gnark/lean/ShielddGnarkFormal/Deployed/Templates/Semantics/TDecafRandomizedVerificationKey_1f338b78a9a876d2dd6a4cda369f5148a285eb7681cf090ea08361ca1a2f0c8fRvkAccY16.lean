import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccY161 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 12
theorem rvkAccY161_succ (rho : Nat -> F) :
    rvkAccY161 rho = rvkAccY160 rho + rho 1093 := by
  unfold rvkAccY161 rvkAccY160
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 11]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY162 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 13
theorem rvkAccY162_succ (rho : Nat -> F) :
    rvkAccY162 rho = rvkAccY161 rho + rho 1101 := by
  unfold rvkAccY162 rvkAccY161
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 12]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY163 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 14
theorem rvkAccY163_succ (rho : Nat -> F) :
    rvkAccY163 rho = rvkAccY162 rho + rho 1109 := by
  unfold rvkAccY163 rvkAccY162
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 13]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY164 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 15
theorem rvkAccY164_succ (rho : Nat -> F) :
    rvkAccY164 rho = rvkAccY163 rho + rho 1117 := by
  unfold rvkAccY164 rvkAccY163
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 14]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY165 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 16
theorem rvkAccY165_succ (rho : Nat -> F) :
    rvkAccY165 rho = rvkAccY164 rho + rho 1125 := by
  unfold rvkAccY165 rvkAccY164
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 15]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY166 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 17
theorem rvkAccY166_succ (rho : Nat -> F) :
    rvkAccY166 rho = rvkAccY165 rho + rho 1133 := by
  unfold rvkAccY166 rvkAccY165
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 16]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY167 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 18
theorem rvkAccY167_succ (rho : Nat -> F) :
    rvkAccY167 rho = rvkAccY166 rho + rho 1141 := by
  unfold rvkAccY167 rvkAccY166
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 17]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY168 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 19
theorem rvkAccY168_succ (rho : Nat -> F) :
    rvkAccY168 rho = rvkAccY167 rho + rho 1149 := by
  unfold rvkAccY168 rvkAccY167
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 18]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY169 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 20
theorem rvkAccY169_succ (rho : Nat -> F) :
    rvkAccY169 rho = rvkAccY168 rho + rho 1157 := by
  unfold rvkAccY169 rvkAccY168
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 19]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY170 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 21
theorem rvkAccY170_succ (rho : Nat -> F) :
    rvkAccY170 rho = rvkAccY169 rho + rho 1165 := by
  unfold rvkAccY170 rvkAccY169
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 20]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
