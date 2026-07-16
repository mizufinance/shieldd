import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

def rvkAccY141 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 141
theorem rvkAccY141_succ (rho : Nat -> F) :
    rvkAccY141 rho = rvkAccY140 rho + rho 957 := by
  unfold rvkAccY141 rvkAccY140
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 140]
def rvkAccY142 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 142
theorem rvkAccY142_succ (rho : Nat -> F) :
    rvkAccY142 rho = rvkAccY141 rho + rho 962 := by
  unfold rvkAccY142 rvkAccY141
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 141]
def rvkAccY143 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 143
theorem rvkAccY143_succ (rho : Nat -> F) :
    rvkAccY143 rho = rvkAccY142 rho + rho 967 := by
  unfold rvkAccY143 rvkAccY142
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 142]
def rvkAccY144 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 144
theorem rvkAccY144_succ (rho : Nat -> F) :
    rvkAccY144 rho = rvkAccY143 rho + rho 972 := by
  unfold rvkAccY144 rvkAccY143
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 143]
def rvkAccY145 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 145
theorem rvkAccY145_succ (rho : Nat -> F) :
    rvkAccY145 rho = rvkAccY144 rho + rho 977 := by
  unfold rvkAccY145 rvkAccY144
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 144]
def rvkAccY146 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 146
theorem rvkAccY146_succ (rho : Nat -> F) :
    rvkAccY146 rho = rvkAccY145 rho + rho 982 := by
  unfold rvkAccY146 rvkAccY145
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 145]
def rvkAccY147 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 147
theorem rvkAccY147_succ (rho : Nat -> F) :
    rvkAccY147 rho = rvkAccY146 rho + rho 987 := by
  unfold rvkAccY147 rvkAccY146
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 146]
def rvkAccY148 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 148
theorem rvkAccY148_succ (rho : Nat -> F) :
    rvkAccY148 rho = rvkAccY147 rho + rho 992 := by
  unfold rvkAccY148 rvkAccY147
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 147]
def rvkAccY149 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149
theorem rvkAccY149_succ (rho : Nat -> F) :
    rvkAccY149 rho = rvkAccY148 rho + rho 997 := by
  unfold rvkAccY149 rvkAccY148
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 148]
def rvkAccY150 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 1
theorem rvkAccY150_succ (rho : Nat -> F) :
    rvkAccY150 rho = rvkAccY149 rho + rho 1005 := by
  unfold rvkAccY150 rvkAccY149
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 0]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccY150_flat (rho : Nat -> F) :
    rvkAccY150 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + rho 1005 := by
  rw [rvkAccY150_succ]
  unfold rvkAccY149
  ring


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport
