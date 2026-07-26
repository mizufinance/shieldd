import ShielddGnarkFormal.DtkBridge.SemanticsPasses3

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false
set_option linter.unreachableTactic false

namespace Shieldd.GnarkFormal.DtkBridge

open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

variable [Fact (Nat.Prime Order)]

theorem dtkTailK_value (bits : List.Vector F 253) (IvkQuotient : F) (k : Prop)
    (h : dtkTailK bits IvkQuotient k) : k := by
  unfold dtkTailK at h
  obtain ⟨gate_100, h1⟩ := dtkSeg1_pass bits _ h
  obtain ⟨gate_139, h2⟩ := dtkSeg2_pass bits gate_100 _ h1
  obtain ⟨gate_177, h3⟩ := dtkSeg3_pass bits gate_139 _ h2
  obtain ⟨gate_216, h4⟩ := dtkSeg4_pass bits gate_177 _ h3
  obtain ⟨gate_254, h5⟩ := dtkSeg5_pass bits gate_216 _ h4
  obtain ⟨gate_294, h6⟩ := dtkSeg6_pass bits gate_254 _ h5
  obtain ⟨gate_332, h7⟩ := dtkSeg7_pass bits gate_294 _ h6
  obtain ⟨gate_370, h8⟩ := dtkSeg8_pass bits gate_332 _ h7
  obtain ⟨gate_408, h9⟩ := dtkSeg9_pass bits gate_370 _ h8
  obtain ⟨gate_446, h10⟩ := dtkSeg10_pass bits gate_408 _ h9
  obtain ⟨gate_486, h11⟩ := dtkSeg11_pass bits gate_446 _ h10
  obtain ⟨gate_527, h12⟩ := dtkSeg12_pass bits gate_486 _ h11
  obtain ⟨gate_569, h13⟩ := dtkSeg13_pass bits gate_527 _ h12
  exact dtkSeg14_pass gate_569 IvkQuotient k h13

end Shieldd.GnarkFormal.DtkBridge
