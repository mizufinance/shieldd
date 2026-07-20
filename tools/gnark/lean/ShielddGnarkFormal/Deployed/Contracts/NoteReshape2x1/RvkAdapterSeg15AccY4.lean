import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccY3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccY41 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY40 rho + rho 16585
def seg15AccY42 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY41 rho + rho 16590
def seg15AccY43 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY42 rho + rho 16595
def seg15AccY44 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY43 rho + rho 16600
def seg15AccY45 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY44 rho + rho 16605
def seg15AccY46 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY45 rho + rho 16610
def seg15AccY47 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY46 rho + rho 16615
def seg15AccY48 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY47 rho + rho 16620
def seg15AccY49 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY48 rho + rho 16625
def seg15AccY50 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccY49 rho + rho 16630

theorem seg15AccY41_sum (rho : Nat -> Seg15.F) :
    seg15AccY41 rho = ((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) := by
  rw [seg15AccY41, seg15AccY40_sum]

theorem seg15AccY42_sum (rho : Nat -> Seg15.F) :
    seg15AccY42 rho = (((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) := by
  rw [seg15AccY42, seg15AccY41_sum]

theorem seg15AccY43_sum (rho : Nat -> Seg15.F) :
    seg15AccY43 rho = ((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) := by
  rw [seg15AccY43, seg15AccY42_sum]

theorem seg15AccY44_sum (rho : Nat -> Seg15.F) :
    seg15AccY44 rho = (((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) := by
  rw [seg15AccY44, seg15AccY43_sum]

theorem seg15AccY45_sum (rho : Nat -> Seg15.F) :
    seg15AccY45 rho = ((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) := by
  rw [seg15AccY45, seg15AccY44_sum]

theorem seg15AccY46_sum (rho : Nat -> Seg15.F) :
    seg15AccY46 rho = (((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) := by
  rw [seg15AccY46, seg15AccY45_sum]

theorem seg15AccY47_sum (rho : Nat -> Seg15.F) :
    seg15AccY47 rho = ((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) := by
  rw [seg15AccY47, seg15AccY46_sum]

theorem seg15AccY48_sum (rho : Nat -> Seg15.F) :
    seg15AccY48 rho = (((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) := by
  rw [seg15AccY48, seg15AccY47_sum]

theorem seg15AccY49_sum (rho : Nat -> Seg15.F) :
    seg15AccY49 rho = ((((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) := by
  rw [seg15AccY49, seg15AccY48_sum]

theorem seg15AccY50_sum (rho : Nat -> Seg15.F) :
    seg15AccY50 rho = (((((((((((((((((((((((((((((((((((((((((((((((((rho 16385 + rho 16390) + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) := by
  rw [seg15AccY50, seg15AccY49_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
