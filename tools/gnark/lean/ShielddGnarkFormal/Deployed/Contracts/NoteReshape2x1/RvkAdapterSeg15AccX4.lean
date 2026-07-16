import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15AccX3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg15AccX41 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX40 rho + rho 16590
def seg15AccX42 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX41 rho + rho 16595
def seg15AccX43 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX42 rho + rho 16600
def seg15AccX44 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX43 rho + rho 16605
def seg15AccX45 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX44 rho + rho 16610
def seg15AccX46 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX45 rho + rho 16615
def seg15AccX47 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX46 rho + rho 16620
def seg15AccX48 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX47 rho + rho 16625
def seg15AccX49 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX48 rho + rho 16630
def seg15AccX50 (rho : Nat -> Seg15.F) : Seg15.F := seg15AccX49 rho + rho 16635

theorem seg15AccX41_sum (rho : Nat -> Seg15.F) :
    seg15AccX41 rho = ((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) := by
  rw [seg15AccX41, seg15AccX40_sum]

theorem seg15AccX42_sum (rho : Nat -> Seg15.F) :
    seg15AccX42 rho = (((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) := by
  rw [seg15AccX42, seg15AccX41_sum]

theorem seg15AccX43_sum (rho : Nat -> Seg15.F) :
    seg15AccX43 rho = ((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) := by
  rw [seg15AccX43, seg15AccX42_sum]

theorem seg15AccX44_sum (rho : Nat -> Seg15.F) :
    seg15AccX44 rho = (((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) := by
  rw [seg15AccX44, seg15AccX43_sum]

theorem seg15AccX45_sum (rho : Nat -> Seg15.F) :
    seg15AccX45 rho = ((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) := by
  rw [seg15AccX45, seg15AccX44_sum]

theorem seg15AccX46_sum (rho : Nat -> Seg15.F) :
    seg15AccX46 rho = (((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) := by
  rw [seg15AccX46, seg15AccX45_sum]

theorem seg15AccX47_sum (rho : Nat -> Seg15.F) :
    seg15AccX47 rho = ((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) := by
  rw [seg15AccX47, seg15AccX46_sum]

theorem seg15AccX48_sum (rho : Nat -> Seg15.F) :
    seg15AccX48 rho = (((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) := by
  rw [seg15AccX48, seg15AccX47_sum]

theorem seg15AccX49_sum (rho : Nat -> Seg15.F) :
    seg15AccX49 rho = ((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) := by
  rw [seg15AccX49, seg15AccX48_sum]

theorem seg15AccX50_sum (rho : Nat -> Seg15.F) :
    seg15AccX50 rho = (((((((((((((((((((((((((((((((((((((((((((((((((rho 16390 + rho 16395) + rho 16400) + rho 16405) + rho 16410) + rho 16415) + rho 16420) + rho 16425) + rho 16430) + rho 16435) + rho 16440) + rho 16445) + rho 16450) + rho 16455) + rho 16460) + rho 16465) + rho 16470) + rho 16475) + rho 16480) + rho 16485) + rho 16490) + rho 16495) + rho 16500) + rho 16505) + rho 16510) + rho 16515) + rho 16520) + rho 16525) + rho 16530) + rho 16535) + rho 16540) + rho 16545) + rho 16550) + rho 16555) + rho 16560) + rho 16565) + rho 16570) + rho 16575) + rho 16580) + rho 16585) + rho 16590) + rho 16595) + rho 16600) + rho 16605) + rho 16610) + rho 16615) + rho 16620) + rho 16625) + rho 16630) + rho 16635) := by
  rw [seg15AccX50, seg15AccX49_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
