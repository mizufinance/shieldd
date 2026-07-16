import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

def rvkAccX121 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 121
theorem rvkAccX121_succ (rho : Nat -> F) :
    rvkAccX121 rho = rvkAccX120 rho + rho 856 := by
  unfold rvkAccX121 rvkAccX120
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 120]
def rvkAccX122 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 122
theorem rvkAccX122_succ (rho : Nat -> F) :
    rvkAccX122 rho = rvkAccX121 rho + rho 861 := by
  unfold rvkAccX122 rvkAccX121
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 121]
def rvkAccX123 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 123
theorem rvkAccX123_succ (rho : Nat -> F) :
    rvkAccX123 rho = rvkAccX122 rho + rho 866 := by
  unfold rvkAccX123 rvkAccX122
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 122]
def rvkAccX124 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 124
theorem rvkAccX124_succ (rho : Nat -> F) :
    rvkAccX124 rho = rvkAccX123 rho + rho 871 := by
  unfold rvkAccX124 rvkAccX123
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 123]
def rvkAccX125 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 125
theorem rvkAccX125_succ (rho : Nat -> F) :
    rvkAccX125 rho = rvkAccX124 rho + rho 876 := by
  unfold rvkAccX125 rvkAccX124
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 124]
def rvkAccX126 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 126
theorem rvkAccX126_succ (rho : Nat -> F) :
    rvkAccX126 rho = rvkAccX125 rho + rho 881 := by
  unfold rvkAccX126 rvkAccX125
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 125]
def rvkAccX127 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 127
theorem rvkAccX127_succ (rho : Nat -> F) :
    rvkAccX127 rho = rvkAccX126 rho + rho 886 := by
  unfold rvkAccX127 rvkAccX126
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 126]
def rvkAccX128 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 128
theorem rvkAccX128_succ (rho : Nat -> F) :
    rvkAccX128 rho = rvkAccX127 rho + rho 891 := by
  unfold rvkAccX128 rvkAccX127
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 127]
def rvkAccX129 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 129
theorem rvkAccX129_succ (rho : Nat -> F) :
    rvkAccX129 rho = rvkAccX128 rho + rho 896 := by
  unfold rvkAccX129 rvkAccX128
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 128]
def rvkAccX130 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 130
theorem rvkAccX130_succ (rho : Nat -> F) :
    rvkAccX130 rho = rvkAccX129 rho + rho 901 := by
  unfold rvkAccX130 rvkAccX129
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 129]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport
