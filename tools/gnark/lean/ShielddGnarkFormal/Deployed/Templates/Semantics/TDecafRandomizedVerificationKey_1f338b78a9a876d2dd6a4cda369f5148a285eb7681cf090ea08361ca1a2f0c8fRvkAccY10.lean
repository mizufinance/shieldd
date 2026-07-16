import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAccY9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

def rvkAccY101 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 101
theorem rvkAccY101_succ (rho : Nat -> F) :
    rvkAccY101 rho = rvkAccY100 rho + rho 757 := by
  unfold rvkAccY101 rvkAccY100
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 100]
def rvkAccY102 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 102
theorem rvkAccY102_succ (rho : Nat -> F) :
    rvkAccY102 rho = rvkAccY101 rho + rho 762 := by
  unfold rvkAccY102 rvkAccY101
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 101]
def rvkAccY103 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 103
theorem rvkAccY103_succ (rho : Nat -> F) :
    rvkAccY103 rho = rvkAccY102 rho + rho 767 := by
  unfold rvkAccY103 rvkAccY102
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 102]
def rvkAccY104 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 104
theorem rvkAccY104_succ (rho : Nat -> F) :
    rvkAccY104 rho = rvkAccY103 rho + rho 772 := by
  unfold rvkAccY104 rvkAccY103
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 103]
def rvkAccY105 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 105
theorem rvkAccY105_succ (rho : Nat -> F) :
    rvkAccY105 rho = rvkAccY104 rho + rho 777 := by
  unfold rvkAccY105 rvkAccY104
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 104]
def rvkAccY106 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 106
theorem rvkAccY106_succ (rho : Nat -> F) :
    rvkAccY106 rho = rvkAccY105 rho + rho 782 := by
  unfold rvkAccY106 rvkAccY105
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 105]
def rvkAccY107 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 107
theorem rvkAccY107_succ (rho : Nat -> F) :
    rvkAccY107 rho = rvkAccY106 rho + rho 787 := by
  unfold rvkAccY107 rvkAccY106
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 106]
def rvkAccY108 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 108
theorem rvkAccY108_succ (rho : Nat -> F) :
    rvkAccY108 rho = rvkAccY107 rho + rho 792 := by
  unfold rvkAccY108 rvkAccY107
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 107]
def rvkAccY109 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 109
theorem rvkAccY109_succ (rho : Nat -> F) :
    rvkAccY109 rho = rvkAccY108 rho + rho 797 := by
  unfold rvkAccY109 rvkAccY108
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 108]
def rvkAccY110 (rho : Nat -> F) : F := Shieldd.GnarkFormal.StrideRun.sumAux rho 257 5 110
theorem rvkAccY110_succ (rho : Nat -> F) :
    rvkAccY110 rho = rvkAccY109 rho + rho 802 := by
  unfold rvkAccY110 rvkAccY109
  rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 257 5 109]


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport
