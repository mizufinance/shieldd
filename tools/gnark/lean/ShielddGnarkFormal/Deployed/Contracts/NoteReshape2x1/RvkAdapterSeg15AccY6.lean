import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccY5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccY61 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY60 rho + rho 16685
def seg15AccY62 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY61 rho + rho 16690
def seg15AccY63 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY62 rho + rho 16695
def seg15AccY64 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY63 rho + rho 16700
def seg15AccY65 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY64 rho + rho 16705
def seg15AccY66 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY65 rho + rho 16710
def seg15AccY67 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY66 rho + rho 16715
def seg15AccY68 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY67 rho + rho 16720
def seg15AccY69 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY68 rho + rho 16725
def seg15AccY70 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY69 rho + rho 16730

theorem seg15AccY61_sum (rho : Nat -> Seg15.F) :
    seg15AccY61 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) := by
  rw [seg15AccY61, seg15AccY60_sum]

theorem seg15AccY62_sum (rho : Nat -> Seg15.F) :
    seg15AccY62 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) := by
  rw [seg15AccY62, seg15AccY61_sum]

theorem seg15AccY63_sum (rho : Nat -> Seg15.F) :
    seg15AccY63 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) := by
  rw [seg15AccY63, seg15AccY62_sum]

theorem seg15AccY64_sum (rho : Nat -> Seg15.F) :
    seg15AccY64 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) := by
  rw [seg15AccY64, seg15AccY63_sum]

theorem seg15AccY65_sum (rho : Nat -> Seg15.F) :
    seg15AccY65 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) := by
  rw [seg15AccY65, seg15AccY64_sum]

theorem seg15AccY66_sum (rho : Nat -> Seg15.F) :
    seg15AccY66 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) + rho 16710) := by
  rw [seg15AccY66, seg15AccY65_sum]

theorem seg15AccY67_sum (rho : Nat -> Seg15.F) :
    seg15AccY67 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) + rho 16710) + rho 16715) := by
  rw [seg15AccY67, seg15AccY66_sum]

theorem seg15AccY68_sum (rho : Nat -> Seg15.F) :
    seg15AccY68 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) + rho 16710) + rho 16715) + rho 16720) := by
  rw [seg15AccY68, seg15AccY67_sum]

theorem seg15AccY69_sum (rho : Nat -> Seg15.F) :
    seg15AccY69 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) + rho 16710) + rho 16715) + rho 16720) + rho 16725) := by
  rw [seg15AccY69, seg15AccY68_sum]

theorem seg15AccY70_sum (rho : Nat -> Seg15.F) :
    seg15AccY70 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) + rho 16640) + rho 16645) + rho 16650) + rho 16655) + rho 16660) + rho 16665) + rho 16670) + rho 16675) + rho 16680) + rho 16685) + rho 16690) + rho 16695) + rho 16700) + rho 16705) + rho 16710) + rho 16715) + rho 16720) + rho 16725) + rho 16730) := by
  rw [seg15AccY70, seg15AccY69_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
