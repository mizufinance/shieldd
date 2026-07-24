import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccX9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

def rvkAccX101 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 101
theorem rvkAccX101_succ (rho : Nat -> F) :
    rvkAccX101 rho = rvkAccX100 rho + rho 756 := by
  unfold rvkAccX101 rvkAccX100
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 100]
def rvkAccX102 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 102
theorem rvkAccX102_succ (rho : Nat -> F) :
    rvkAccX102 rho = rvkAccX101 rho + rho 761 := by
  unfold rvkAccX102 rvkAccX101
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 101]
def rvkAccX103 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 103
theorem rvkAccX103_succ (rho : Nat -> F) :
    rvkAccX103 rho = rvkAccX102 rho + rho 766 := by
  unfold rvkAccX103 rvkAccX102
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 102]
def rvkAccX104 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 104
theorem rvkAccX104_succ (rho : Nat -> F) :
    rvkAccX104 rho = rvkAccX103 rho + rho 771 := by
  unfold rvkAccX104 rvkAccX103
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 103]
def rvkAccX105 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 105
theorem rvkAccX105_succ (rho : Nat -> F) :
    rvkAccX105 rho = rvkAccX104 rho + rho 776 := by
  unfold rvkAccX105 rvkAccX104
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 104]
def rvkAccX106 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 106
theorem rvkAccX106_succ (rho : Nat -> F) :
    rvkAccX106 rho = rvkAccX105 rho + rho 781 := by
  unfold rvkAccX106 rvkAccX105
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 105]
def rvkAccX107 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 107
theorem rvkAccX107_succ (rho : Nat -> F) :
    rvkAccX107 rho = rvkAccX106 rho + rho 786 := by
  unfold rvkAccX107 rvkAccX106
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 106]
def rvkAccX108 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 108
theorem rvkAccX108_succ (rho : Nat -> F) :
    rvkAccX108 rho = rvkAccX107 rho + rho 791 := by
  unfold rvkAccX108 rvkAccX107
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 107]
def rvkAccX109 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 109
theorem rvkAccX109_succ (rho : Nat -> F) :
    rvkAccX109 rho = rvkAccX108 rho + rho 796 := by
  unfold rvkAccX109 rvkAccX108
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 108]
def rvkAccX110 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 256 5 110
theorem rvkAccX110_succ (rho : Nat -> F) :
    rvkAccX110 rho = rvkAccX109 rho + rho 801 := by
  unfold rvkAccX110 rvkAccX109
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 256 5 109]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
