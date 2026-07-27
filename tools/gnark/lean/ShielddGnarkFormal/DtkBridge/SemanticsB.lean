import ShielddGnarkFormal.DtkBridge.SemanticsA

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

theorem dtkCircuitK_semantic
    (Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient : F) (k : Prop)
    (h : dtkCircuitK Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient k) :
    EdwardsBridge.onCurve ⟨AkX, AkY⟩ ∧ k := by
  have h0 : dtkSeg0 Nk AkX AkY DivGenX DivGenY WasSquare SqrtRatio IvkReduced IvkQuotient (fun gate_62 =>
      dtkSeg1 gate_62 (fun gate_100 =>
      dtkSeg2 gate_62 gate_100 (fun gate_139 =>
      dtkSeg3 gate_62 gate_139 (fun gate_177 =>
      dtkSeg4 gate_62 gate_177 (fun gate_216 =>
      dtkSeg5 gate_62 gate_216 (fun gate_254 =>
      dtkSeg6 gate_62 gate_254 (fun gate_294 =>
      dtkSeg7 gate_62 gate_294 (fun gate_332 =>
      dtkSeg8 gate_62 gate_332 (fun gate_370 =>
      dtkSeg9 gate_62 gate_370 (fun gate_408 =>
      dtkSeg10 gate_62 gate_408 (fun gate_446 =>
      dtkSeg11 gate_62 gate_446 (fun gate_486 =>
      dtkSeg12 gate_62 gate_486 (fun gate_527 =>
      dtkSeg13 gate_62 gate_527 (fun gate_569 =>
      dtkSeg14 gate_569 IvkQuotient k)))))))))))))) := h
  obtain ⟨honc, gate_62, h⟩ := dtkSeg0_pass _ _ _ _ _ _ _ _ _ _ h0
  obtain ⟨gate_100, h⟩ := dtkSeg1_pass _ _ h
  obtain ⟨gate_139, h⟩ := dtkSeg2_pass _ _ _ h
  obtain ⟨gate_177, h⟩ := dtkSeg3_pass _ _ _ h
  obtain ⟨gate_216, h⟩ := dtkSeg4_pass _ _ _ h
  obtain ⟨gate_254, h⟩ := dtkSeg5_pass _ _ _ h
  obtain ⟨gate_294, h⟩ := dtkSeg6_pass _ _ _ h
  obtain ⟨gate_332, h⟩ := dtkSeg7_pass _ _ _ h
  obtain ⟨gate_370, h⟩ := dtkSeg8_pass _ _ _ h
  obtain ⟨gate_408, h⟩ := dtkSeg9_pass _ _ _ h
  obtain ⟨gate_446, h⟩ := dtkSeg10_pass _ _ _ h
  obtain ⟨gate_486, h⟩ := dtkSeg11_pass _ _ _ h
  obtain ⟨gate_527, h⟩ := dtkSeg12_pass _ _ _ h
  obtain ⟨gate_569, h⟩ := dtkSeg13_pass _ _ _ h
  exact ⟨honc, dtkSeg14_pass _ _ _ h⟩

theorem dtkLadderK_mono {n : ℕ} {bits : List.Vector F n}
    {k1 k2 : List.Vector F 4 → Prop} (hk : ∀ s, k1 s → k2 s) :
    ∀ fuel bitIndex acc cur,
      dtkLadderK bits k1 fuel bitIndex acc cur →
      dtkLadderK bits k2 fuel bitIndex acc cur := by
  intro fuel
  induction fuel with
  | zero => intro bitIndex acc cur h; exact hk _ h
  | succ fuel ih =>
    intro bitIndex acc cur h
    rw [dtkLadderK, dtkStep_uncps] at h
    rw [dtkLadderK, dtkStep_uncps]
    obtain ⟨acc', cur', hrel, htail⟩ := h
    refine ⟨acc', cur', hrel, ?_⟩
    have htail1 : dtkLadderK bits k1 fuel (bitIndex + 1) acc' cur' := by simpa using htail
    have htail2 := ih (bitIndex + 1) acc' cur' htail1
    simpa using htail2

theorem dtkLadderK_final_semantic {n : ℕ} (bits : List.Vector Bool n)
    (outX outY : F) :
    ∀ fuel bitIndex acc cur,
      bitIndex + fuel ≤ n →
      EdwardsBridge.onCurve acc →
      EdwardsBridge.onCurve cur →
      dtkLadderK (bits.map toZMod) (finalK outX outY) fuel bitIndex acc cur →
        EdwardsBridge.onCurve (scalarMulFromBits bits fuel bitIndex acc cur) ∧
        finalK outX outY vec![
          (scalarMulFromBits bits fuel bitIndex acc cur).x,
          (scalarMulFromBits bits fuel bitIndex acc cur).y,
          cur.x,
          cur.y] := by
  intro fuel
  induction fuel with
  | zero =>
    intro bitIndex acc cur _ hacc _ h
    have hk : finalK outX outY vec![acc.x, acc.y, cur.x, cur.y] := by
      simpa [dtkLadderK] using h
    exact ⟨hacc, hk⟩
  | succ fuel ih =>
    intro bitIndex acc cur hbound hacc hcur h
    rw [dtkLadderK] at h
    have hlt : bitIndex < n := by omega
    have hbit :
        ((bits.map toZMod)[bitIndex]! : F) = toZMod bits[bitIndex]! := by
      rw [getElem!_pos (bits.map toZMod) bitIndex hlt,
        getElem!_pos bits bitIndex hlt, List.Vector.getElem_map]
    rw [hbit] at h
    have hstep := (dtkStep_uncps (toZMod bits[bitIndex]!) acc.x acc.y cur.x cur.y
      (fun state =>
        dtkLadderK (bits.map toZMod) (finalK outX outY) fuel (bitIndex + 1)
          ⟨state[0], state[1]⟩ ⟨state[2], state[3]⟩)).mp h
    rcases hstep with ⟨acc', cur', hrel, htail⟩
    have htail' :
        dtkLadderK (bits.map toZMod) (finalK outX outY) fuel (bitIndex + 1)
          acc' cur' := by
      simpa using htail
    have hsem := stepRel_semantic bits[bitIndex]! acc cur acc' cur' hrel hacc hcur
    rcases hsem with ⟨hacc', hcur', haccOn, hcurOn⟩
    have htailSem := ih (bitIndex + 1) acc' cur' (by omega) haccOn hcurOn htail'
    simpa [scalarMulFromBits, finalK, hacc', hcur'] using htailSem

theorem point_eq_of_finalK {p : EdwardsBridge.Point} {outX outY z w : F}
    (h : finalK outX outY vec![p.x, p.y, z, w]) :
    p = ⟨outX, outY⟩ := by
  change p.x = outX ∧ p.y = outY ∧ True at h
  rcases h with ⟨hx, hy, -⟩
  cases p
  simp only at hx hy ⊢
  cases hx
  cases hy
  rfl

/-! ### Final theorems -/

end Shieldd.GnarkFormal.DtkBridge
