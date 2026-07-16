import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX16

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

def rvkAccX171 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 22
theorem rvkAccX171_succ (rho : Nat -> F) :
    rvkAccX171 rho = rvkAccX170 rho + rho 1172 := by
  unfold rvkAccX171 rvkAccX170
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 21]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX172 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 23
theorem rvkAccX172_succ (rho : Nat -> F) :
    rvkAccX172 rho = rvkAccX171 rho + rho 1180 := by
  unfold rvkAccX172 rvkAccX171
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 22]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX173 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 24
theorem rvkAccX173_succ (rho : Nat -> F) :
    rvkAccX173 rho = rvkAccX172 rho + rho 1188 := by
  unfold rvkAccX173 rvkAccX172
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 23]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX174 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 25
theorem rvkAccX174_succ (rho : Nat -> F) :
    rvkAccX174 rho = rvkAccX173 rho + rho 1196 := by
  unfold rvkAccX174 rvkAccX173
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 24]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX175 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 26
theorem rvkAccX175_succ (rho : Nat -> F) :
    rvkAccX175 rho = rvkAccX174 rho + rho 1204 := by
  unfold rvkAccX175 rvkAccX174
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 25]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX176 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 27
theorem rvkAccX176_succ (rho : Nat -> F) :
    rvkAccX176 rho = rvkAccX175 rho + rho 1212 := by
  unfold rvkAccX176 rvkAccX175
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 26]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX177 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 28
theorem rvkAccX177_succ (rho : Nat -> F) :
    rvkAccX177 rho = rvkAccX176 rho + rho 1220 := by
  unfold rvkAccX177 rvkAccX176
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 27]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX178 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 29
theorem rvkAccX178_succ (rho : Nat -> F) :
    rvkAccX178 rho = rvkAccX177 rho + rho 1228 := by
  unfold rvkAccX178 rvkAccX177
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 28]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX179 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 30
theorem rvkAccX179_succ (rho : Nat -> F) :
    rvkAccX179 rho = rvkAccX178 rho + rho 1236 := by
  unfold rvkAccX179 rvkAccX178
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 29]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX180 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 31
theorem rvkAccX180_succ (rho : Nat -> F) :
    rvkAccX180 rho = rvkAccX179 rho + rho 1244 := by
  unfold rvkAccX180 rvkAccX179
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 30]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport
