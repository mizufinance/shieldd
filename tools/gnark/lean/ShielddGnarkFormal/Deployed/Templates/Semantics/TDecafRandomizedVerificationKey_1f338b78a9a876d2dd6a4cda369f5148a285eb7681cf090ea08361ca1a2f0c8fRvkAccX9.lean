import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccX91 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 91
theorem rvkAccX91_succ (rho : Nat -> F) :
    rvkAccX91 rho = rvkAccX90 rho + rho 706 := by
  unfold rvkAccX91 rvkAccX90
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 90]
def rvkAccX92 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 92
theorem rvkAccX92_succ (rho : Nat -> F) :
    rvkAccX92 rho = rvkAccX91 rho + rho 711 := by
  unfold rvkAccX92 rvkAccX91
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 91]
def rvkAccX93 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 93
theorem rvkAccX93_succ (rho : Nat -> F) :
    rvkAccX93 rho = rvkAccX92 rho + rho 716 := by
  unfold rvkAccX93 rvkAccX92
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 92]
def rvkAccX94 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 94
theorem rvkAccX94_succ (rho : Nat -> F) :
    rvkAccX94 rho = rvkAccX93 rho + rho 721 := by
  unfold rvkAccX94 rvkAccX93
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 93]
def rvkAccX95 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 95
theorem rvkAccX95_succ (rho : Nat -> F) :
    rvkAccX95 rho = rvkAccX94 rho + rho 726 := by
  unfold rvkAccX95 rvkAccX94
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 94]
def rvkAccX96 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 96
theorem rvkAccX96_succ (rho : Nat -> F) :
    rvkAccX96 rho = rvkAccX95 rho + rho 731 := by
  unfold rvkAccX96 rvkAccX95
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 95]
def rvkAccX97 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 97
theorem rvkAccX97_succ (rho : Nat -> F) :
    rvkAccX97 rho = rvkAccX96 rho + rho 736 := by
  unfold rvkAccX97 rvkAccX96
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 96]
def rvkAccX98 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 98
theorem rvkAccX98_succ (rho : Nat -> F) :
    rvkAccX98 rho = rvkAccX97 rho + rho 741 := by
  unfold rvkAccX98 rvkAccX97
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 97]
def rvkAccX99 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 99
theorem rvkAccX99_succ (rho : Nat -> F) :
    rvkAccX99 rho = rvkAccX98 rho + rho 746 := by
  unfold rvkAccX99 rvkAccX98
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 98]
def rvkAccX100 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 100
theorem rvkAccX100_succ (rho : Nat -> F) :
    rvkAccX100 rho = rvkAccX99 rho + rho 751 := by
  unfold rvkAccX100 rvkAccX99
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 99]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
