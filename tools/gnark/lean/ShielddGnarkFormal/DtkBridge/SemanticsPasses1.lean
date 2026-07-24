import ShielddGnarkFormal.DtkBridge.SegmentsB

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

theorem dtkSeg1_pass (bits : List.Vector F 253) (k : List.Vector F 2 → Prop)
    (h : dtkSeg1 bits k) : ∃ v, k v := by
  unfold dtkSeg1 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg2_pass (bits : List.Vector F 253) (gate_100 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg2 bits gate_100 k) : ∃ v, k v := by
  unfold dtkSeg2 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg3_pass (bits : List.Vector F 253) (gate_139 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg3 bits gate_139 k) : ∃ v, k v := by
  unfold dtkSeg3 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg4_pass (bits : List.Vector F 253) (gate_177 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg4 bits gate_177 k) : ∃ v, k v := by
  unfold dtkSeg4 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

theorem dtkSeg5_pass (bits : List.Vector F 253) (gate_216 : List.Vector F 2) (k : List.Vector F 2 → Prop)
    (h : dtkSeg5 bits gate_216 k) : ∃ v, k v := by
  unfold dtkSeg5 at h
  repeat obtain ⟨_, h⟩ := h
  exact ⟨_, h⟩

end Shieldd.GnarkFormal.DtkBridge
