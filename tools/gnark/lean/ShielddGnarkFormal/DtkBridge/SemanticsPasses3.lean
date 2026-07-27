import ShielddGnarkFormal.DtkBridge.SemanticsPasses2

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false
set_option linter.unreachableTactic false

namespace Shieldd.GnarkFormal.DtkBridge

open Bool (toZMod)
open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

variable [Fact (Nat.Prime Order)]

theorem dtkSeg11_pass (bits : List.Vector F 253) (gate_446 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg11 bits gate_446 k) : ∃ v, k v := by
  unfold dtkSeg11 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg12_pass (bits : List.Vector F 253) (gate_486 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg12 bits gate_486 k) : ∃ v, k v := by
  unfold dtkSeg12 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg13_pass (bits : List.Vector F 253) (gate_527 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg13 bits gate_527 k) : ∃ v, k v := by
  unfold dtkSeg13 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg14_pass (gate_569 : List.Vector F 2) (IvkQuotient : F) (k : Prop)
    (h : dtkSeg14 gate_569 IvkQuotient k) : k := by
  unfold dtkSeg14 at h
  repeat obtain ⟨_, h⟩ := h
  exact h

end Shieldd.GnarkFormal.DtkBridge
