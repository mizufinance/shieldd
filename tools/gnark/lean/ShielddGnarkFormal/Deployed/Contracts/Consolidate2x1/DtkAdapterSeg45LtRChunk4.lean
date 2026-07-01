import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep4L (rho : Nat -> Seg45.F) (r2330 : Seg45.relationRow2330 rho) :
    rho 40561 = seg45RPe5 rho * (1 - rho 39724) := by
  unfold Seg45.relationRow2330 at r2330
  unfold seg45RPe5
  linear_combination -r2330

theorem seg45RStep4IlMul (rho : Nat -> Seg45.F) (r2331 : Seg45.relationRow2331 rho) :
    rho 40562 = seg45RIl5 rho * (rho 40561) := by
  unfold Seg45.relationRow2331 at r2331
  rw [seg45RStep4IlLc rho] at r2331
  linear_combination -r2331

theorem seg45RStep4Acc (rho : Nat -> Seg45.F) :
    seg45RIl4 rho = seg45RIl5 rho + (rho 40561) - (rho 40562) := by
  have hstate : seg45RIl4 rho = seg45RIl5 rho + seg45RIlAtom135 rho + (-1 : Seg45.F) * seg45RIlAtom136 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom135 seg45RIlAtom136
  ring

theorem seg45RStep4Pe (rho : Nat -> Seg45.F) (r2332 : Seg45.relationRow2332 rho) :
    seg45RPe4 rho = seg45RPe5 rho * rho 39724 := by
  unfold Seg45.relationRow2332 at r2332
  unfold seg45RPe4 seg45RPe5
  linear_combination -r2332

theorem seg45RStep4 (rho : Nat -> Seg45.F) (r2330 : Seg45.relationRow2330 rho) (r2331 : Seg45.relationRow2331 rho) (r2332 : Seg45.relationRow2332 rho) :
    seg45RPe4 rho = seg45RPe5 rho * rho 39724 ∧
    seg45RIl4 rho = seg45RIl5 rho + seg45RPe5 rho * (1 - rho 39724) -
      seg45RIl5 rho * (seg45RPe5 rho * (1 - rho 39724)) := by
  constructor
  · exact seg45RStep4Pe rho r2332
  · rw [seg45RStep4Acc rho, seg45RStep4L rho r2330, seg45RStep4IlMul rho r2331, seg45RStep4L rho r2330]

theorem seg45_r_chunk4 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 5 (seg45RPeState rho 5) (seg45RIlState rho 5) := by
  have htail := seg45_r_chunk3 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, r2330, r2331, r2332, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 4 ≤ n → n < 5 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 4 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep4 rho r2330 r2331 r2332
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 4 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
