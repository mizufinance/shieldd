import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep24L (rho : Nat -> Seg45.F) (r2280 : Seg45.relationRow2280 rho) :
    rho 40511 = seg45RPe25 rho * (1 - rho 39744) := by
  unfold Seg45.relationRow2280 at r2280
  unfold seg45RPe25
  linear_combination -r2280

theorem seg45RStep24IlMul (rho : Nat -> Seg45.F) (r2281 : Seg45.relationRow2281 rho) :
    rho 40512 = seg45RIl25 rho * (rho 40511) := by
  unfold Seg45.relationRow2281 at r2281
  rw [seg45RStep24IlLc rho] at r2281
  linear_combination -r2281

theorem seg45RStep24Acc (rho : Nat -> Seg45.F) :
    seg45RIl24 rho = seg45RIl25 rho + (rho 40511) - (rho 40512) := by
  have hstate : seg45RIl24 rho = seg45RIl25 rho + seg45RIlAtom120 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom120
  ring

theorem seg45RStep24Pe (rho : Nat -> Seg45.F) (r2282 : Seg45.relationRow2282 rho) :
    seg45RPe24 rho = seg45RPe25 rho * rho 39744 := by
  unfold Seg45.relationRow2282 at r2282
  unfold seg45RPe24 seg45RPe25
  linear_combination -r2282

theorem seg45RStep24 (rho : Nat -> Seg45.F) (r2280 : Seg45.relationRow2280 rho) (r2281 : Seg45.relationRow2281 rho) (r2282 : Seg45.relationRow2282 rho) :
    seg45RPe24 rho = seg45RPe25 rho * rho 39744 ∧
    seg45RIl24 rho = seg45RIl25 rho + seg45RPe25 rho * (1 - rho 39744) -
      seg45RIl25 rho * (seg45RPe25 rho * (1 - rho 39744)) := by
  constructor
  · exact seg45RStep24Pe rho r2282
  · rw [seg45RStep24Acc rho, seg45RStep24L rho r2280, seg45RStep24IlMul rho r2281, seg45RStep24L rho r2280]

theorem seg45_r_chunk24 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 25 (seg45RPeState rho 25) (seg45RIlState rho 25) := by
  have htail := seg45_r_chunk23 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2280, r2281, r2282, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 24 ≤ n → n < 25 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 24 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep24 rho r2280 r2281 r2282
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 24 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
