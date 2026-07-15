import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15AccX0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg15AccX11 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX10 rho + rho 16440
def seg15AccX12 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX11 rho + rho 16445
def seg15AccX13 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX12 rho + rho 16450
def seg15AccX14 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX13 rho + rho 16455
def seg15AccX15 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX14 rho + rho 16460
def seg15AccX16 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX15 rho + rho 16465
def seg15AccX17 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX16 rho + rho 16470
def seg15AccX18 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX17 rho + rho 16475
def seg15AccX19 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX18 rho + rho 16480
def seg15AccX20 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX19 rho + rho 16485

theorem seg15AccX11_sum (rho : Nat -> Seg15.F) :
    seg15AccX11 rho = ((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) := by
  rw [seg15AccX11, seg15AccX10_sum]

theorem seg15AccX12_sum (rho : Nat -> Seg15.F) :
    seg15AccX12 rho = (((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) := by
  rw [seg15AccX12, seg15AccX11_sum]

theorem seg15AccX13_sum (rho : Nat -> Seg15.F) :
    seg15AccX13 rho = ((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) := by
  rw [seg15AccX13, seg15AccX12_sum]

theorem seg15AccX14_sum (rho : Nat -> Seg15.F) :
    seg15AccX14 rho = (((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) := by
  rw [seg15AccX14, seg15AccX13_sum]

theorem seg15AccX15_sum (rho : Nat -> Seg15.F) :
    seg15AccX15 rho = ((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) := by
  rw [seg15AccX15, seg15AccX14_sum]

theorem seg15AccX16_sum (rho : Nat -> Seg15.F) :
    seg15AccX16 rho = (((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) := by
  rw [seg15AccX16, seg15AccX15_sum]

theorem seg15AccX17_sum (rho : Nat -> Seg15.F) :
    seg15AccX17 rho = ((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) := by
  rw [seg15AccX17, seg15AccX16_sum]

theorem seg15AccX18_sum (rho : Nat -> Seg15.F) :
    seg15AccX18 rho = (((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) := by
  rw [seg15AccX18, seg15AccX17_sum]

theorem seg15AccX19_sum (rho : Nat -> Seg15.F) :
    seg15AccX19 rho = ((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) := by
  rw [seg15AccX19, seg15AccX18_sum]

theorem seg15AccX20_sum (rho : Nat -> Seg15.F) :
    seg15AccX20 rho = (((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) := by
  rw [seg15AccX20, seg15AccX19_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
