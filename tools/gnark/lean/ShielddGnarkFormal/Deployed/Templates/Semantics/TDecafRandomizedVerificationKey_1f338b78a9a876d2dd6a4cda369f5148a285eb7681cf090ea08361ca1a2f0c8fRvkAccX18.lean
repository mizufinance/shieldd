import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX17

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccX181 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 32
theorem rvkAccX181_succ (rho : Nat -> F) :
    rvkAccX181 rho = rvkAccX180 rho + rho 1252 := by
  unfold rvkAccX181 rvkAccX180
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 31]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX182 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 33
theorem rvkAccX182_succ (rho : Nat -> F) :
    rvkAccX182 rho = rvkAccX181 rho + rho 1260 := by
  unfold rvkAccX182 rvkAccX181
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 32]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX183 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 34
theorem rvkAccX183_succ (rho : Nat -> F) :
    rvkAccX183 rho = rvkAccX182 rho + rho 1268 := by
  unfold rvkAccX183 rvkAccX182
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 33]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX184 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 35
theorem rvkAccX184_succ (rho : Nat -> F) :
    rvkAccX184 rho = rvkAccX183 rho + rho 1276 := by
  unfold rvkAccX184 rvkAccX183
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 34]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX185 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 36
theorem rvkAccX185_succ (rho : Nat -> F) :
    rvkAccX185 rho = rvkAccX184 rho + rho 1284 := by
  unfold rvkAccX185 rvkAccX184
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 35]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX186 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 37
theorem rvkAccX186_succ (rho : Nat -> F) :
    rvkAccX186 rho = rvkAccX185 rho + rho 1292 := by
  unfold rvkAccX186 rvkAccX185
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 36]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX187 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 38
theorem rvkAccX187_succ (rho : Nat -> F) :
    rvkAccX187 rho = rvkAccX186 rho + rho 1300 := by
  unfold rvkAccX187 rvkAccX186
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 37]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX188 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 39
theorem rvkAccX188_succ (rho : Nat -> F) :
    rvkAccX188 rho = rvkAccX187 rho + rho 1308 := by
  unfold rvkAccX188 rvkAccX187
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 38]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX189 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 40
theorem rvkAccX189_succ (rho : Nat -> F) :
    rvkAccX189 rho = rvkAccX188 rho + rho 1316 := by
  unfold rvkAccX189 rvkAccX188
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 39]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX190 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 41
theorem rvkAccX190_succ (rho : Nat -> F) :
    rvkAccX190 rho = rvkAccX189 rho + rho 1324 := by
  unfold rvkAccX190 rvkAccX189
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 40]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
