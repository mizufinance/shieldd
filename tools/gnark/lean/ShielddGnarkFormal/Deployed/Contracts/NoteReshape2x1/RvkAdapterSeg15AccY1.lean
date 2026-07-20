import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccY0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccY11 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY10 rho + rho 16435
def seg15AccY12 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY11 rho + rho 16440
def seg15AccY13 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY12 rho + rho 16445
def seg15AccY14 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY13 rho + rho 16450
def seg15AccY15 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY14 rho + rho 16455
def seg15AccY16 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY15 rho + rho 16460
def seg15AccY17 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY16 rho + rho 16465
def seg15AccY18 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY17 rho + rho 16470
def seg15AccY19 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY18 rho + rho 16475
def seg15AccY20 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY19 rho + rho 16480

theorem seg15AccY11_sum (rho : Nat -> Seg15.F) :
    seg15AccY11 rho = ((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) := by
  rw [seg15AccY11, seg15AccY10_sum]

theorem seg15AccY12_sum (rho : Nat -> Seg15.F) :
    seg15AccY12 rho = (((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) := by
  rw [seg15AccY12, seg15AccY11_sum]

theorem seg15AccY13_sum (rho : Nat -> Seg15.F) :
    seg15AccY13 rho = ((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) := by
  rw [seg15AccY13, seg15AccY12_sum]

theorem seg15AccY14_sum (rho : Nat -> Seg15.F) :
    seg15AccY14 rho = (((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) := by
  rw [seg15AccY14, seg15AccY13_sum]

theorem seg15AccY15_sum (rho : Nat -> Seg15.F) :
    seg15AccY15 rho = ((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) := by
  rw [seg15AccY15, seg15AccY14_sum]

theorem seg15AccY16_sum (rho : Nat -> Seg15.F) :
    seg15AccY16 rho = (((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) := by
  rw [seg15AccY16, seg15AccY15_sum]

theorem seg15AccY17_sum (rho : Nat -> Seg15.F) :
    seg15AccY17 rho = ((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) := by
  rw [seg15AccY17, seg15AccY16_sum]

theorem seg15AccY18_sum (rho : Nat -> Seg15.F) :
    seg15AccY18 rho = (((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) := by
  rw [seg15AccY18, seg15AccY17_sum]

theorem seg15AccY19_sum (rho : Nat -> Seg15.F) :
    seg15AccY19 rho = ((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) := by
  rw [seg15AccY19, seg15AccY18_sum]

theorem seg15AccY20_sum (rho : Nat -> Seg15.F) :
    seg15AccY20 rho = (((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) := by
  rw [seg15AccY20, seg15AccY19_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
