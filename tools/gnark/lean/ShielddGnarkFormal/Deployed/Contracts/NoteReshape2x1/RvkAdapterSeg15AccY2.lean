import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccY1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccY21 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY20 rho + rho 16485
def seg15AccY22 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY21 rho + rho 16490
def seg15AccY23 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY22 rho + rho 16495
def seg15AccY24 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY23 rho + rho 16500
def seg15AccY25 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY24 rho + rho 16505
def seg15AccY26 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY25 rho + rho 16510
def seg15AccY27 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY26 rho + rho 16515
def seg15AccY28 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY27 rho + rho 16520
def seg15AccY29 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY28 rho + rho 16525
def seg15AccY30 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY29 rho + rho 16530

theorem seg15AccY21_sum (rho : Nat -> Seg15.F) :
    seg15AccY21 rho = ((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) := by
  rw [seg15AccY21, seg15AccY20_sum]

theorem seg15AccY22_sum (rho : Nat -> Seg15.F) :
    seg15AccY22 rho = (((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) := by
  rw [seg15AccY22, seg15AccY21_sum]

theorem seg15AccY23_sum (rho : Nat -> Seg15.F) :
    seg15AccY23 rho = ((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) := by
  rw [seg15AccY23, seg15AccY22_sum]

theorem seg15AccY24_sum (rho : Nat -> Seg15.F) :
    seg15AccY24 rho = (((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) := by
  rw [seg15AccY24, seg15AccY23_sum]

theorem seg15AccY25_sum (rho : Nat -> Seg15.F) :
    seg15AccY25 rho = ((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) := by
  rw [seg15AccY25, seg15AccY24_sum]

theorem seg15AccY26_sum (rho : Nat -> Seg15.F) :
    seg15AccY26 rho = (((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) := by
  rw [seg15AccY26, seg15AccY25_sum]

theorem seg15AccY27_sum (rho : Nat -> Seg15.F) :
    seg15AccY27 rho = ((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) := by
  rw [seg15AccY27, seg15AccY26_sum]

theorem seg15AccY28_sum (rho : Nat -> Seg15.F) :
    seg15AccY28 rho = (((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) := by
  rw [seg15AccY28, seg15AccY27_sum]

theorem seg15AccY29_sum (rho : Nat -> Seg15.F) :
    seg15AccY29 rho = ((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) := by
  rw [seg15AccY29, seg15AccY28_sum]

theorem seg15AccY30_sum (rho : Nat -> Seg15.F) :
    seg15AccY30 rho = (((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) := by
  rw [seg15AccY30, seg15AccY29_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
