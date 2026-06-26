import ShielddGnarkFormal.RvkBridge

/-! # Deployed-ladder bridge for rvk

The deployed rvk slice (1812 const-folded rows) is classified by the
constraint-coverage row map into three buckets:

* `to_binary` — 251 booleanity rows + 1 geometric recomposition row, consumed by
  the dedicated `to_binary` bridge;
* `step` — 63 narrow `scalarMulStep` gate rows + 1294 wide accumulator-fold rows,
  consumed per rung by a raw-to-step certificate;
* `redundant` — 203 dead-output rows retained in the premise but used by no
  obligation.

This module supplies the **rung-composition skeleton**: `depLadder`, a
fuel-recursive predicate over an abstract per-rung deployed relation `R`,
threading only the bounded point state (`acc`, `cur`) across cuts — the bit
vector lives in the opaque context. The single induction lemma
`depLadder_imp_rvkLadderK` discharges `depLadder ⇒ rvkLadderK` by reducing each
rung through a per-rung certificate `hstep : R … → scalarMulStep …`, never
unrolling the 251-step ladder. Composed with `rvkLadderK_final_semantic` it
carries the deployed slice to the rvk gadget spec.

The per-rung certificate `hstep` is the seam the generated raw-to-step
certificates (one `linear_combination` over each rung's exact deployed rows)
plug into; this file fixes the architecture so a rung proof cannot silently
change the ladder structure. -/

namespace Shieldd.GnarkFormal.RvkDepLadder

open Shieldd.GnarkFormal.RvkBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.DecafRvk.Order) := ‹_›

/-- A per-rung deployed relation: given the rung's bit value and the incoming
accumulator/current points, it constrains the outgoing 4-vector state through the
continuation `k`. The generated certificate proves each instance implies the
extracted `scalarMulStep`. -/
abbrev RungRel := F → EdwardsBridge.Point → EdwardsBridge.Point →
  (List.Vector F 4 → Prop) → Prop

/-- Deployed ladder: structurally mirrors `rvkLadderK` but each rung fires the
abstract deployed relation `R` instead of the extracted `scalarMulStep`. Only the
two points cross the cut; `bits` is carried opaquely. -/
def depLadder {n : ℕ} (R : RungRel) (bits : List.Vector F n)
    (k : List.Vector F 4 → Prop) :
    ℕ → ℕ → EdwardsBridge.Point → EdwardsBridge.Point → Prop
  | 0, _, acc, cur => k vec![acc.x, acc.y, cur.x, cur.y]
  | fuel + 1, bitIndex, acc, cur =>
      R bits[bitIndex]! acc cur
        (fun state =>
          depLadder R bits k fuel (bitIndex + 1)
            ⟨state[0], state[1]⟩ ⟨state[2], state[3]⟩)

/-- `scalarMulStep` is monotone in its continuation: the continuation appears
once, at the tail, so a pointwise-weaker continuation gives a weaker step. -/
theorem scalarMulStep_mono {bit ax ay cx cy : F}
    {c d : List.Vector F 4 → Prop} (hcd : ∀ s, c s → d s)
    (h : Extracted.DecafRvk.scalarMulStep bit ax ay cx cy c) :
    Extracted.DecafRvk.scalarMulStep bit ax ay cx cy d := by
  unfold Extracted.DecafRvk.scalarMulStep at h ⊢
  obtain ⟨g0, h0, g1, h1, g2, h2, g3, h3, g4, h4, g5, h5, g6, h6, g7, h7,
    g8, h8, g9, h9, g10, h10, g11, h11, g12, h12, g13, h13, g14, h14,
    g15, h15, g16, h16, g17, h17, g18, h18, g19, h19, g20, h20, g21, h21,
    g22, h22, g23, h23, g24, h24, g25, h25, g26, h26, g27, h27, hk⟩ := h
  exact ⟨g0, h0, g1, h1, g2, h2, g3, h3, g4, h4, g5, h5, g6, h6, g7, h7,
    g8, h8, g9, h9, g10, h10, g11, h11, g12, h12, g13, h13, g14, h14,
    g15, h15, g16, h16, g17, h17, g18, h18, g19, h19, g20, h20, g21, h21,
    g22, h22, g23, h23, g24, h24, g25, h25, g26, h26, g27, h27, hcd _ hk⟩

/-- Composition: if every rung's deployed relation implies the extracted
`scalarMulStep` (the per-rung certificate `hstep`), the whole deployed ladder
implies the extracted `rvkLadderK`. One induction on `fuel`; no unrolling. -/
theorem depLadder_imp_rvkLadderK {n : ℕ} (R : RungRel) (bits : List.Vector F n)
    (k : List.Vector F 4 → Prop)
    (hstep : ∀ (bit : F) (acc cur : EdwardsBridge.Point)
        (c : List.Vector F 4 → Prop),
        R bit acc cur c →
        Extracted.DecafRvk.scalarMulStep bit acc.x acc.y cur.x cur.y c) :
    ∀ fuel bitIndex acc cur,
      depLadder R bits k fuel bitIndex acc cur →
        RvkBridge.rvkLadderK bits k fuel bitIndex acc cur := by
  intro fuel
  induction fuel with
  | zero =>
    intro bitIndex acc cur h
    simpa [depLadder, RvkBridge.rvkLadderK] using h
  | succ fuel ih =>
    intro bitIndex acc cur h
    rw [depLadder] at h
    simp only [RvkBridge.rvkLadderK]
    have hsm := hstep bits[bitIndex]! acc cur _ h
    exact scalarMulStep_mono
      (fun state hstate => ih (bitIndex + 1) ⟨state[0], state[1]⟩ ⟨state[2], state[3]⟩ hstate)
      hsm

end Shieldd.GnarkFormal.RvkDepLadder
