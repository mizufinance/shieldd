import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccX5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccX61 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX60 rho + rho 16690
def seg15AccX62 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX61 rho + rho 16695
def seg15AccX63 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX62 rho + rho 16700
def seg15AccX64 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX63 rho + rho 16705
def seg15AccX65 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX64 rho + rho 16710
def seg15AccX66 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX65 rho + rho 16715
def seg15AccX67 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX66 rho + rho 16720
def seg15AccX68 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX67 rho + rho 16725
def seg15AccX69 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX68 rho + rho 16730
def seg15AccX70 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX69 rho + rho 16735

theorem seg15AccX61_sum (rho : Nat -> Seg15.F) :
    seg15AccX61 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) := by
  rw [seg15AccX61, seg15AccX60_sum]

theorem seg15AccX62_sum (rho : Nat -> Seg15.F) :
    seg15AccX62 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) := by
  rw [seg15AccX62, seg15AccX61_sum]

theorem seg15AccX63_sum (rho : Nat -> Seg15.F) :
    seg15AccX63 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) := by
  rw [seg15AccX63, seg15AccX62_sum]

theorem seg15AccX64_sum (rho : Nat -> Seg15.F) :
    seg15AccX64 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) := by
  rw [seg15AccX64, seg15AccX63_sum]

theorem seg15AccX65_sum (rho : Nat -> Seg15.F) :
    seg15AccX65 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) + rho 16710) := by
  rw [seg15AccX65, seg15AccX64_sum]

theorem seg15AccX66_sum (rho : Nat -> Seg15.F) :
    seg15AccX66 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) + rho 16710) + rho 16715) := by
  rw [seg15AccX66, seg15AccX65_sum]

theorem seg15AccX67_sum (rho : Nat -> Seg15.F) :
    seg15AccX67 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) + rho 16710) + rho 16715) + rho 16720) := by
  rw [seg15AccX67, seg15AccX66_sum]

theorem seg15AccX68_sum (rho : Nat -> Seg15.F) :
    seg15AccX68 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) + rho 16710) + rho 16715) + rho 16720) + rho 16725) := by
  rw [seg15AccX68, seg15AccX67_sum]

theorem seg15AccX69_sum (rho : Nat -> Seg15.F) :
    seg15AccX69 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) + rho 16710) + rho 16715) + rho 16720) + rho 16725) + rho 16730) := by
  rw [seg15AccX69, seg15AccX68_sum]

theorem seg15AccX70_sum (rho : Nat -> Seg15.F) :
    seg15AccX70 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) + rho 16710) + rho 16715) + rho 16720) + rho 16725) + rho 16730) + rho 16735) := by
  rw [seg15AccX70, seg15AccX69_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
