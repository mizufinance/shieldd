import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep11L (rho : Nat -> Seg45.F) (r2313 : Seg45.relationRow2313 rho) :
    rho 40544 = seg45RPe12 rho * (1 - rho 39731) := by
  unfold Seg45.relationRow2313 at r2313
  unfold seg45RPe12
  linear_combination -r2313

theorem seg45RStep11IlMul (rho : Nat -> Seg45.F) (r2314 : Seg45.relationRow2314 rho) :
    rho 40545 = seg45RIl12 rho * (rho 40544) := by
  unfold Seg45.relationRow2314 at r2314
  rw [seg45RStep11IlLc rho] at r2314
  linear_combination -r2314

theorem seg45RStep11Acc (rho : Nat -> Seg45.F) :
    seg45RIl11 rho = seg45RIl12 rho + (rho 40544) - (rho 40545) := by
  have hstate : seg45RIl11 rho = seg45RIl12 rho + seg45RIlAtom130 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom130
  ring

theorem seg45RStep11Pe (rho : Nat -> Seg45.F) (r2315 : Seg45.relationRow2315 rho) :
    seg45RPe11 rho = seg45RPe12 rho * rho 39731 := by
  unfold Seg45.relationRow2315 at r2315
  unfold seg45RPe11 seg45RPe12
  linear_combination -r2315

theorem seg45RStep11 (rho : Nat -> Seg45.F) (r2313 : Seg45.relationRow2313 rho) (r2314 : Seg45.relationRow2314 rho) (r2315 : Seg45.relationRow2315 rho) :
    seg45RPe11 rho = seg45RPe12 rho * rho 39731 ∧
    seg45RIl11 rho = seg45RIl12 rho + seg45RPe12 rho * (1 - rho 39731) -
      seg45RIl12 rho * (seg45RPe12 rho * (1 - rho 39731)) := by
  constructor
  · exact seg45RStep11Pe rho r2315
  · rw [seg45RStep11Acc rho, seg45RStep11L rho r2313, seg45RStep11IlMul rho r2314, seg45RStep11L rho r2313]

theorem seg45_r_chunk11 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 12 (seg45RPeState rho 12) (seg45RIlState rho 12) := by
  have htail := seg45_r_chunk10 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2313, r2314, r2315, _, _, _, _⟩
  have hsteps : ∀ n, 11 ≤ n → n < 12 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 11 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep11 rho r2313 r2314 r2315
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 11 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
