import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY22

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def rvkAccY231 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 82
theorem rvkAccY231_succ (rho : Nat -> F) :
    rvkAccY231 rho = rvkAccY230 rho + rho 1653 := by
  unfold rvkAccY231 rvkAccY230
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 81]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY232 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 83
theorem rvkAccY232_succ (rho : Nat -> F) :
    rvkAccY232 rho = rvkAccY231 rho + rho 1661 := by
  unfold rvkAccY232 rvkAccY231
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 82]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY233 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 84
theorem rvkAccY233_succ (rho : Nat -> F) :
    rvkAccY233 rho = rvkAccY232 rho + rho 1669 := by
  unfold rvkAccY233 rvkAccY232
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 83]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY234 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 85
theorem rvkAccY234_succ (rho : Nat -> F) :
    rvkAccY234 rho = rvkAccY233 rho + rho 1677 := by
  unfold rvkAccY234 rvkAccY233
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 84]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY235 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 86
theorem rvkAccY235_succ (rho : Nat -> F) :
    rvkAccY235 rho = rvkAccY234 rho + rho 1685 := by
  unfold rvkAccY235 rvkAccY234
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 85]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY236 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 87
theorem rvkAccY236_succ (rho : Nat -> F) :
    rvkAccY236 rho = rvkAccY235 rho + rho 1693 := by
  unfold rvkAccY236 rvkAccY235
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 86]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY237 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 88
theorem rvkAccY237_succ (rho : Nat -> F) :
    rvkAccY237 rho = rvkAccY236 rho + rho 1701 := by
  unfold rvkAccY237 rvkAccY236
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 87]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY238 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 89
theorem rvkAccY238_succ (rho : Nat -> F) :
    rvkAccY238 rho = rvkAccY237 rho + rho 1709 := by
  unfold rvkAccY238 rvkAccY237
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 88]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY239 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 90
theorem rvkAccY239_succ (rho : Nat -> F) :
    rvkAccY239 rho = rvkAccY238 rho + rho 1717 := by
  unfold rvkAccY239 rvkAccY238
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 89]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY240 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 91
theorem rvkAccY240_succ (rho : Nat -> F) :
    rvkAccY240 rho = rvkAccY239 rho + rho 1725 := by
  unfold rvkAccY240 rvkAccY239
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 90]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
