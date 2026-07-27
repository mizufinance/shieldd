import ShielddGnarkFormal.DtkBridge.SegmentsA

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false
set_option linter.unreachableTactic false

namespace Shieldd.GnarkFormal.DtkBridge

open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

variable [Fact (Nat.Prime Order)]

def dtkTailK (bits : List.Vector F 253) (IvkQuotient : F) (k : Prop) : Prop :=
  dtkSeg1 bits (fun gate_100 =>
  dtkSeg2 bits gate_100 (fun gate_139 =>
  dtkSeg3 bits gate_139 (fun gate_177 =>
  dtkSeg4 bits gate_177 (fun gate_216 =>
  dtkSeg5 bits gate_216 (fun gate_254 =>
  dtkSeg6 bits gate_254 (fun gate_294 =>
  dtkSeg7 bits gate_294 (fun gate_332 =>
  dtkSeg8 bits gate_332 (fun gate_370 =>
  dtkSeg9 bits gate_370 (fun gate_408 =>
  dtkSeg10 bits gate_408 (fun gate_446 =>
  dtkSeg11 bits gate_446 (fun gate_486 =>
  dtkSeg12 bits gate_486 (fun gate_527 =>
  dtkSeg13 bits gate_527 (fun gate_569 =>
  dtkSeg14 gate_569 IvkQuotient k)))))))))))))

/-- Extracted DTK prefix factored through bounded segment definitions. -/
def dtkCircuitK
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient : F)
    (k : Prop) : Prop :=
  dtkSeg0 Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient
    (fun bits => dtkTailK bits IvkQuotient k)

end Shieldd.GnarkFormal.DtkBridge
