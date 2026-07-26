import ShielddGnarkFormal.DtkBridge.SemanticsPasses
import ShielddGnarkFormal.ChoiceFreeZMod

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false
set_option linter.unnecessarySeqFocus false
set_option linter.unreachableTactic false

namespace Shieldd.GnarkFormal.DtkBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)
open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

variable [Fact (Nat.Prime Order)]

theorem dtkSeg0_pass
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient : F)
    (k : List.Vector F 253 → Prop)
    (h : dtkSeg0 Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient k) :
    EdwardsBridge.onCurve ⟨AkX, AkY⟩ ∧ ∃ v, k v := by
  unfold dtkSeg0 at h
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, hcurve, h⟩ := h
  simp only [Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul,
    GatesDef.add, GatesDef.sub, GatesDef.eq] at hg0 hg1 hg2 hg3 hg4 hg5 hcurve
  subst hg0 hg1 hg2 hg3 hg4 hg5
  constructor
  · show -(AkX * AkX) + AkY * AkY = 1 + EdwardsBridge.d * (AkX * AkX) * (AkY * AkY)
    simp only [EdwardsBridge.d]
    linear_combination hcurve
  · iterate 80 obtain ⟨_, h⟩ := h
    obtain ⟨_, h⟩ := canonical_pass h
    iterate 14 obtain ⟨_, h⟩ := h
    obtain ⟨_, h⟩ := canonical_pass h
    iterate 6 obtain ⟨_, h⟩ := h
    obtain ⟨_, h⟩ := perm2_pass h
    repeat obtain ⟨_, h⟩ := h
    exact ⟨_, h⟩

end Shieldd.GnarkFormal.DtkBridge
