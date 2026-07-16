import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

def rvkAccX141 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 141
theorem rvkAccX141_succ (rho : Nat -> F) :
    rvkAccX141 rho = rvkAccX140 rho + rho 956 := by
  unfold rvkAccX141 rvkAccX140
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 140]
def rvkAccX142 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 142
theorem rvkAccX142_succ (rho : Nat -> F) :
    rvkAccX142 rho = rvkAccX141 rho + rho 961 := by
  unfold rvkAccX142 rvkAccX141
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 141]
def rvkAccX143 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 143
theorem rvkAccX143_succ (rho : Nat -> F) :
    rvkAccX143 rho = rvkAccX142 rho + rho 966 := by
  unfold rvkAccX143 rvkAccX142
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 142]
def rvkAccX144 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 144
theorem rvkAccX144_succ (rho : Nat -> F) :
    rvkAccX144 rho = rvkAccX143 rho + rho 971 := by
  unfold rvkAccX144 rvkAccX143
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 143]
def rvkAccX145 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 145
theorem rvkAccX145_succ (rho : Nat -> F) :
    rvkAccX145 rho = rvkAccX144 rho + rho 976 := by
  unfold rvkAccX145 rvkAccX144
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 144]
def rvkAccX146 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 146
theorem rvkAccX146_succ (rho : Nat -> F) :
    rvkAccX146 rho = rvkAccX145 rho + rho 981 := by
  unfold rvkAccX146 rvkAccX145
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 145]
def rvkAccX147 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 147
theorem rvkAccX147_succ (rho : Nat -> F) :
    rvkAccX147 rho = rvkAccX146 rho + rho 986 := by
  unfold rvkAccX147 rvkAccX146
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 146]
def rvkAccX148 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 148
theorem rvkAccX148_succ (rho : Nat -> F) :
    rvkAccX148 rho = rvkAccX147 rho + rho 991 := by
  unfold rvkAccX148 rvkAccX147
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 147]
def rvkAccX149 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149
theorem rvkAccX149_succ (rho : Nat -> F) :
    rvkAccX149 rho = rvkAccX148 rho + rho 996 := by
  unfold rvkAccX149 rvkAccX148
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 148]
def rvkAccX150 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 1
theorem rvkAccX150_succ (rho : Nat -> F) :
    rvkAccX150 rho = rvkAccX149 rho + rho 1004 := by
  unfold rvkAccX150 rvkAccX149
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 0]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
theorem rvkAccX150_flat (rho : Nat -> F) :
    rvkAccX150 rho = Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + rho 1004 := by
  rw [rvkAccX150_succ]
  unfold rvkAccX149
  ring


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport
