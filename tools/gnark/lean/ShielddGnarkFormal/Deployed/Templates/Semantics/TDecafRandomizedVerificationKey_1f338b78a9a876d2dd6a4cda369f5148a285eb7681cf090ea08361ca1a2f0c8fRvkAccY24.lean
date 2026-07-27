import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def rvkAccY241 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 92
theorem rvkAccY241_succ (rho : Nat -> F) :
    rvkAccY241 rho = rvkAccY240 rho + rho 1733 := by
  unfold rvkAccY241 rvkAccY240
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 91]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY242 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 93
theorem rvkAccY242_succ (rho : Nat -> F) :
    rvkAccY242 rho = rvkAccY241 rho + rho 1741 := by
  unfold rvkAccY242 rvkAccY241
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 92]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY243 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 94
theorem rvkAccY243_succ (rho : Nat -> F) :
    rvkAccY243 rho = rvkAccY242 rho + rho 1749 := by
  unfold rvkAccY243 rvkAccY242
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 93]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY244 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 95
theorem rvkAccY244_succ (rho : Nat -> F) :
    rvkAccY244 rho = rvkAccY243 rho + rho 1757 := by
  unfold rvkAccY244 rvkAccY243
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 94]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY245 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 96
theorem rvkAccY245_succ (rho : Nat -> F) :
    rvkAccY245 rho = rvkAccY244 rho + rho 1765 := by
  unfold rvkAccY245 rvkAccY244
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 95]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY246 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 97
theorem rvkAccY246_succ (rho : Nat -> F) :
    rvkAccY246 rho = rvkAccY245 rho + rho 1773 := by
  unfold rvkAccY246 rvkAccY245
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 96]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY247 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 98
theorem rvkAccY247_succ (rho : Nat -> F) :
    rvkAccY247 rho = rvkAccY246 rho + rho 1781 := by
  unfold rvkAccY247 rvkAccY246
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 97]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY248 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 99
theorem rvkAccY248_succ (rho : Nat -> F) :
    rvkAccY248 rho = rvkAccY247 rho + rho 1789 := by
  unfold rvkAccY248 rvkAccY247
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 98]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY249 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 100
theorem rvkAccY249_succ (rho : Nat -> F) :
    rvkAccY249 rho = rvkAccY248 rho + rho 1797 := by
  unfold rvkAccY249 rvkAccY248
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 99]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccY250 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1005 8 101
theorem rvkAccY250_succ (rho : Nat -> F) :
    rvkAccY250 rho = rvkAccY249 rho + rho 1805 := by
  unfold rvkAccY250 rvkAccY249
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1005 8 100]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
