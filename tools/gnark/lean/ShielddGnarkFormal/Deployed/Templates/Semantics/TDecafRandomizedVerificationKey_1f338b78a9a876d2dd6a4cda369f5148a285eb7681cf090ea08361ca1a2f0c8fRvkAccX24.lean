import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccX241 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 92
theorem rvkAccX241_succ (rho : Nat -> F) :
    rvkAccX241 rho = rvkAccX240 rho + rho 1732 := by
  unfold rvkAccX241 rvkAccX240
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 91]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX242 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 93
theorem rvkAccX242_succ (rho : Nat -> F) :
    rvkAccX242 rho = rvkAccX241 rho + rho 1740 := by
  unfold rvkAccX242 rvkAccX241
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 92]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX243 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 94
theorem rvkAccX243_succ (rho : Nat -> F) :
    rvkAccX243 rho = rvkAccX242 rho + rho 1748 := by
  unfold rvkAccX243 rvkAccX242
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 93]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX244 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 95
theorem rvkAccX244_succ (rho : Nat -> F) :
    rvkAccX244 rho = rvkAccX243 rho + rho 1756 := by
  unfold rvkAccX244 rvkAccX243
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 94]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX245 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 96
theorem rvkAccX245_succ (rho : Nat -> F) :
    rvkAccX245 rho = rvkAccX244 rho + rho 1764 := by
  unfold rvkAccX245 rvkAccX244
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 95]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX246 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 97
theorem rvkAccX246_succ (rho : Nat -> F) :
    rvkAccX246 rho = rvkAccX245 rho + rho 1772 := by
  unfold rvkAccX246 rvkAccX245
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 96]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX247 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 98
theorem rvkAccX247_succ (rho : Nat -> F) :
    rvkAccX247 rho = rvkAccX246 rho + rho 1780 := by
  unfold rvkAccX247 rvkAccX246
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 97]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX248 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 99
theorem rvkAccX248_succ (rho : Nat -> F) :
    rvkAccX248 rho = rvkAccX247 rho + rho 1788 := by
  unfold rvkAccX248 rvkAccX247
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 98]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX249 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 100
theorem rvkAccX249_succ (rho : Nat -> F) :
    rvkAccX249 rho = rvkAccX248 rho + rho 1796 := by
  unfold rvkAccX249 rvkAccX248
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 99]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]
def rvkAccX250 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 149 + Shieldd.GnarkFormal.StrideRun.sumAux rho 1004 8 101
theorem rvkAccX250_succ (rho : Nat -> F) :
    rvkAccX250 rho = rvkAccX249 rho + rho 1804 := by
  unfold rvkAccX250 rvkAccX249
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 1004 8 100]
  simp only [Shieldd.GnarkFormal.StrideRun.sumAux_zero, zero_add, add_assoc]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
