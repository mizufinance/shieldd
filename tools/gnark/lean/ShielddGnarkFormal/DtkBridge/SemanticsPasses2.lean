import ShielddGnarkFormal.DtkBridge.SemanticsPasses1

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

theorem dtkSeg6_pass (bits : List.Vector F 253) (gate_254 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg6 bits gate_254 k) : ∃ v, k v := by
  unfold dtkSeg6 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg7_pass (bits : List.Vector F 253) (gate_294 : List.Vector F 2) (k : F → Prop)
    (h : dtkSeg7 bits gate_294 k) : ∃ v, k v := by
  unfold dtkSeg7 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg8_pass (bits : List.Vector F 253) (gate_332 : F) (k : F → Prop)
    (h : dtkSeg8 bits gate_332 k) : ∃ v, k v := by
  unfold dtkSeg8 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg9_pass (bits : List.Vector F 253) (gate_370 : F) (k : F → Prop)
    (h : dtkSeg9 bits gate_370 k) : ∃ v, k v := by
  unfold dtkSeg9 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg10_pass (bits : List.Vector F 253) (gate_408 : F) (k : List.Vector F 2 → Prop)
    (h : dtkSeg10 bits gate_408 k) : ∃ v, k v := by
  unfold dtkSeg10 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

end Shieldd.GnarkFormal.DtkBridge
