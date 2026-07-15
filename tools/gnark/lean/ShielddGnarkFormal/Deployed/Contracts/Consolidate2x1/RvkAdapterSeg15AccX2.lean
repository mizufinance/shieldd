import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15AccX1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg15AccX21 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX20 rho + rho 16490
def seg15AccX22 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX21 rho + rho 16495
def seg15AccX23 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX22 rho + rho 16500
def seg15AccX24 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX23 rho + rho 16505
def seg15AccX25 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX24 rho + rho 16510
def seg15AccX26 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX25 rho + rho 16515
def seg15AccX27 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX26 rho + rho 16520
def seg15AccX28 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX27 rho + rho 16525
def seg15AccX29 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX28 rho + rho 16530
def seg15AccX30 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX29 rho + rho 16535

theorem seg15AccX21_sum (rho : Nat -> Seg15.F) :
    seg15AccX21 rho = ((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) := by
  rw [seg15AccX21, seg15AccX20_sum]

theorem seg15AccX22_sum (rho : Nat -> Seg15.F) :
    seg15AccX22 rho = (((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) := by
  rw [seg15AccX22, seg15AccX21_sum]

theorem seg15AccX23_sum (rho : Nat -> Seg15.F) :
    seg15AccX23 rho = ((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) := by
  rw [seg15AccX23, seg15AccX22_sum]

theorem seg15AccX24_sum (rho : Nat -> Seg15.F) :
    seg15AccX24 rho = (((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) := by
  rw [seg15AccX24, seg15AccX23_sum]

theorem seg15AccX25_sum (rho : Nat -> Seg15.F) :
    seg15AccX25 rho = ((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) := by
  rw [seg15AccX25, seg15AccX24_sum]

theorem seg15AccX26_sum (rho : Nat -> Seg15.F) :
    seg15AccX26 rho = (((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) := by
  rw [seg15AccX26, seg15AccX25_sum]

theorem seg15AccX27_sum (rho : Nat -> Seg15.F) :
    seg15AccX27 rho = ((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) := by
  rw [seg15AccX27, seg15AccX26_sum]

theorem seg15AccX28_sum (rho : Nat -> Seg15.F) :
    seg15AccX28 rho = (((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) := by
  rw [seg15AccX28, seg15AccX27_sum]

theorem seg15AccX29_sum (rho : Nat -> Seg15.F) :
    seg15AccX29 rho = ((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) := by
  rw [seg15AccX29, seg15AccX28_sum]

theorem seg15AccX30_sum (rho : Nat -> Seg15.F) :
    seg15AccX30 rho = (((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) := by
  rw [seg15AccX30, seg15AccX29_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
