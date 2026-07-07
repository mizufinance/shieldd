import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.LinearCombination
set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-! NEW segmented/threaded blueprint (Codex pivot, validated shape).

Two-rung accumulator ladder. The running window sum CROSSES the seg0→seg1 cut, so
it is `StepState`: a field VALUE `s : F` threaded as an argument together with its
defining equation, NOT a re-extended `rho` (no global `rhoExt`, no if-chain, no
`fin_cases`). Original wires go through `rho`; segment-local synthetics are inlined
field expressions; each rewritten row closes by one `linear_combination` of its
exact deployed row. -/
namespace SegThreadProto

abbrev Order : ℕ := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def dotLC (rho : Nat → F) : List (F × Nat) → F
  | [] => 0
  | (a,w) :: t => a * rho w + dotLC rho t

-- Wires: const 0; b0=20 b1=21; window w10,w11,w12; outputs a0=30 a1=31.
-- DEPLOYED rung rows (the raw layer = Lean premise), wide left factor:
--   D0: (b0 + 7·(w10+w11))      * 1 = a0
--   D1: (b1 + 7·(w10+w11+w12))  * 1 = a1
def rawSeg0 (rho : Nat → F) : Prop :=
  dotLC rho [((1:F),20),((7:F),10),((7:F),11)] * dotLC rho [((1:F),0)]
    = dotLC rho [((1:F),30)]
def rawSeg1 (rho : Nat → F) : Prop :=
  dotLC rho [((1:F),21),((7:F),10),((7:F),11),((7:F),12)] * dotLC rho [((1:F),0)]
    = dotLC rho [((1:F),31)]

-- REMAT rewritten rungs as FIELD equations: the StepState window sum is the F
-- argument `s` (= w10+w11, crosses the cut); seg1's extra term `w12` is local.
def remRow0 (rho : Nat → F) (s : F) : Prop :=
  (dotLC rho [((1:F),20)] + (7:F) * s) * dotLC rho [((1:F),0)] = dotLC rho [((1:F),30)]
def remRow1 (rho : Nat → F) (s : F) : Prop :=
  (dotLC rho [((1:F),21)] + (7:F) * (s + dotLC rho [((1:F),12)])) * dotLC rho [((1:F),0)]
    = dotLC rho [((1:F),31)]

-- Segment 0: consumes the raw rung, PRODUCES StepState `s` with its defining eqn.
theorem step0 (rho : Nat → F) (hraw : rawSeg0 rho) :
    ∃ s : F, s = dotLC rho [((1:F),10),((1:F),11)] ∧ remRow0 rho s := by
  refine ⟨dotLC rho [((1:F),10),((1:F),11)], rfl, ?_⟩
  simp only [remRow0, rawSeg0, dotLC] at *
  linear_combination hraw

-- Segment 1: CONSUMES StepState `s` (+ its defining eqn `hs`), proves its rung.
theorem step1 (rho : Nat → F) (s : F)
    (hs : s = dotLC rho [((1:F),10),((1:F),11)]) (hraw : rawSeg1 rho) :
    remRow1 rho s := by
  subst hs
  simp only [remRow1, rawSeg1, dotLC] at *
  linear_combination hraw

-- Compose: thread `s` from step0 into step1; both rungs hold, no global state.
theorem rungs_sound (rho : Nat → F) (h0 : rawSeg0 rho) (h1 : rawSeg1 rho) :
    ∃ s : F, remRow0 rho s ∧ remRow1 rho s := by
  obtain ⟨s, hs, hr0⟩ := step0 rho h0
  exact ⟨s, hr0, step1 rho s hs h1⟩

end SegThreadProto

#print axioms SegThreadProto.rungs_sound
