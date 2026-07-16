import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccX4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccX51 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX50 rho + rho 16640
def seg15AccX52 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX51 rho + rho 16645
def seg15AccX53 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX52 rho + rho 16650
def seg15AccX54 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX53 rho + rho 16655
def seg15AccX55 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX54 rho + rho 16660
def seg15AccX56 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX55 rho + rho 16665
def seg15AccX57 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX56 rho + rho 16670
def seg15AccX58 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX57 rho + rho 16675
def seg15AccX59 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX58 rho + rho 16680
def seg15AccX60 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX59 rho + rho 16685

theorem seg15AccX51_sum (rho : Nat -> Seg15.F) :
    seg15AccX51 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) := by
  rw [seg15AccX51, seg15AccX50_sum]

theorem seg15AccX52_sum (rho : Nat -> Seg15.F) :
    seg15AccX52 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) := by
  rw [seg15AccX52, seg15AccX51_sum]

theorem seg15AccX53_sum (rho : Nat -> Seg15.F) :
    seg15AccX53 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) := by
  rw [seg15AccX53, seg15AccX52_sum]

theorem seg15AccX54_sum (rho : Nat -> Seg15.F) :
    seg15AccX54 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) := by
  rw [seg15AccX54, seg15AccX53_sum]

theorem seg15AccX55_sum (rho : Nat -> Seg15.F) :
    seg15AccX55 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) := by
  rw [seg15AccX55, seg15AccX54_sum]

theorem seg15AccX56_sum (rho : Nat -> Seg15.F) :
    seg15AccX56 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) := by
  rw [seg15AccX56, seg15AccX55_sum]

theorem seg15AccX57_sum (rho : Nat -> Seg15.F) :
    seg15AccX57 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) := by
  rw [seg15AccX57, seg15AccX56_sum]

theorem seg15AccX58_sum (rho : Nat -> Seg15.F) :
    seg15AccX58 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) := by
  rw [seg15AccX58, seg15AccX57_sum]

theorem seg15AccX59_sum (rho : Nat -> Seg15.F) :
    seg15AccX59 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) := by
  rw [seg15AccX59, seg15AccX58_sum]

theorem seg15AccX60_sum (rho : Nat -> Seg15.F) :
    seg15AccX60 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) := by
  rw [seg15AccX60, seg15AccX59_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
