import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY21

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def rvkAccY221 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 72
theorem rvkAccY221_succ (rho : Nat -> F) :
    rvkAccY221 rho = rvkAccY220 rho + rho 1573 := by
  unfold rvkAccY221 rvkAccY220
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 71]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY222 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 73
theorem rvkAccY222_succ (rho : Nat -> F) :
    rvkAccY222 rho = rvkAccY221 rho + rho 1581 := by
  unfold rvkAccY222 rvkAccY221
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 72]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY223 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 74
theorem rvkAccY223_succ (rho : Nat -> F) :
    rvkAccY223 rho = rvkAccY222 rho + rho 1589 := by
  unfold rvkAccY223 rvkAccY222
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 73]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY224 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 75
theorem rvkAccY224_succ (rho : Nat -> F) :
    rvkAccY224 rho = rvkAccY223 rho + rho 1597 := by
  unfold rvkAccY224 rvkAccY223
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 74]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY225 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 76
theorem rvkAccY225_succ (rho : Nat -> F) :
    rvkAccY225 rho = rvkAccY224 rho + rho 1605 := by
  unfold rvkAccY225 rvkAccY224
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 75]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY226 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 77
theorem rvkAccY226_succ (rho : Nat -> F) :
    rvkAccY226 rho = rvkAccY225 rho + rho 1613 := by
  unfold rvkAccY226 rvkAccY225
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 76]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY227 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 78
theorem rvkAccY227_succ (rho : Nat -> F) :
    rvkAccY227 rho = rvkAccY226 rho + rho 1621 := by
  unfold rvkAccY227 rvkAccY226
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 77]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY228 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 79
theorem rvkAccY228_succ (rho : Nat -> F) :
    rvkAccY228 rho = rvkAccY227 rho + rho 1629 := by
  unfold rvkAccY228 rvkAccY227
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 78]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY229 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 80
theorem rvkAccY229_succ (rho : Nat -> F) :
    rvkAccY229 rho = rvkAccY228 rho + rho 1637 := by
  unfold rvkAccY229 rvkAccY228
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 79]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY230 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 81
theorem rvkAccY230_succ (rho : Nat -> F) :
    rvkAccY230 rho = rvkAccY229 rho + rho 1645 := by
  unfold rvkAccY230 rvkAccY229
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 80]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
