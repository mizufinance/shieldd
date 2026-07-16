import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX21

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

def rvkAccX221 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 72
theorem rvkAccX221_succ (rho : Nat -> F) :
    rvkAccX221 rho = rvkAccX220 rho + rho 1572 := by
  unfold rvkAccX221 rvkAccX220
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 71]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX222 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 73
theorem rvkAccX222_succ (rho : Nat -> F) :
    rvkAccX222 rho = rvkAccX221 rho + rho 1580 := by
  unfold rvkAccX222 rvkAccX221
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 72]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX223 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 74
theorem rvkAccX223_succ (rho : Nat -> F) :
    rvkAccX223 rho = rvkAccX222 rho + rho 1588 := by
  unfold rvkAccX223 rvkAccX222
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 73]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX224 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 75
theorem rvkAccX224_succ (rho : Nat -> F) :
    rvkAccX224 rho = rvkAccX223 rho + rho 1596 := by
  unfold rvkAccX224 rvkAccX223
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 74]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX225 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 76
theorem rvkAccX225_succ (rho : Nat -> F) :
    rvkAccX225 rho = rvkAccX224 rho + rho 1604 := by
  unfold rvkAccX225 rvkAccX224
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 75]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX226 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 77
theorem rvkAccX226_succ (rho : Nat -> F) :
    rvkAccX226 rho = rvkAccX225 rho + rho 1612 := by
  unfold rvkAccX226 rvkAccX225
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 76]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX227 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 78
theorem rvkAccX227_succ (rho : Nat -> F) :
    rvkAccX227 rho = rvkAccX226 rho + rho 1620 := by
  unfold rvkAccX227 rvkAccX226
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 77]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX228 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 79
theorem rvkAccX228_succ (rho : Nat -> F) :
    rvkAccX228 rho = rvkAccX227 rho + rho 1628 := by
  unfold rvkAccX228 rvkAccX227
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 78]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX229 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 80
theorem rvkAccX229_succ (rho : Nat -> F) :
    rvkAccX229 rho = rvkAccX228 rho + rho 1636 := by
  unfold rvkAccX229 rvkAccX228
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 79]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX230 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 81
theorem rvkAccX230_succ (rho : Nat -> F) :
    rvkAccX230 rho = rvkAccX229 rho + rho 1644 := by
  unfold rvkAccX230 rvkAccX229
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 80]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport
