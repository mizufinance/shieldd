import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccX2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccX31 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX30 rho + rho 16540
def seg15AccX32 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX31 rho + rho 16545
def seg15AccX33 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX32 rho + rho 16550
def seg15AccX34 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX33 rho + rho 16555
def seg15AccX35 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX34 rho + rho 16560
def seg15AccX36 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX35 rho + rho 16565
def seg15AccX37 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX36 rho + rho 16570
def seg15AccX38 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX37 rho + rho 16575
def seg15AccX39 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX38 rho + rho 16580
def seg15AccX40 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX39 rho + rho 16585

theorem seg15AccX31_sum (rho : Nat -> Seg15.F) :
    seg15AccX31 rho = ((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) := by
  rw [seg15AccX31, seg15AccX30_sum]

theorem seg15AccX32_sum (rho : Nat -> Seg15.F) :
    seg15AccX32 rho = (((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) := by
  rw [seg15AccX32, seg15AccX31_sum]

theorem seg15AccX33_sum (rho : Nat -> Seg15.F) :
    seg15AccX33 rho = ((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) := by
  rw [seg15AccX33, seg15AccX32_sum]

theorem seg15AccX34_sum (rho : Nat -> Seg15.F) :
    seg15AccX34 rho = (((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) := by
  rw [seg15AccX34, seg15AccX33_sum]

theorem seg15AccX35_sum (rho : Nat -> Seg15.F) :
    seg15AccX35 rho = ((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) := by
  rw [seg15AccX35, seg15AccX34_sum]

theorem seg15AccX36_sum (rho : Nat -> Seg15.F) :
    seg15AccX36 rho = (((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) := by
  rw [seg15AccX36, seg15AccX35_sum]

theorem seg15AccX37_sum (rho : Nat -> Seg15.F) :
    seg15AccX37 rho = ((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) := by
  rw [seg15AccX37, seg15AccX36_sum]

theorem seg15AccX38_sum (rho : Nat -> Seg15.F) :
    seg15AccX38 rho = (((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) := by
  rw [seg15AccX38, seg15AccX37_sum]

theorem seg15AccX39_sum (rho : Nat -> Seg15.F) :
    seg15AccX39 rho = ((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) := by
  rw [seg15AccX39, seg15AccX38_sum]

theorem seg15AccX40_sum (rho : Nat -> Seg15.F) :
    seg15AccX40 rho = (((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) := by
  rw [seg15AccX40, seg15AccX39_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
