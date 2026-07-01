import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk34

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep35L (rho : Nat -> Seg45.F) (r2259 : Seg45.relationRow2259 rho) :
    rho 40490 = seg45RPe36 rho * (1 - rho 39755) := by
  unfold Seg45.relationRow2259 at r2259
  unfold seg45RPe36
  linear_combination -r2259

theorem seg45RStep35IlMul (rho : Nat -> Seg45.F) (r2260 : Seg45.relationRow2260 rho) :
    rho 40491 = seg45RIl36 rho * (rho 40490) := by
  unfold Seg45.relationRow2260 at r2260
  rw [seg45RStep35IlLc rho] at r2260
  linear_combination -r2260

theorem seg45RStep35Acc (rho : Nat -> Seg45.F) :
    seg45RIl35 rho = seg45RIl36 rho + (rho 40490) - (rho 40491) := by
  have hstate : seg45RIl35 rho = seg45RIl36 rho + seg45RIlAtom114 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom114
  ring

theorem seg45RStep35Pe (rho : Nat -> Seg45.F) (r2261 : Seg45.relationRow2261 rho) :
    seg45RPe35 rho = seg45RPe36 rho * rho 39755 := by
  unfold Seg45.relationRow2261 at r2261
  unfold seg45RPe35 seg45RPe36
  linear_combination -r2261

theorem seg45RStep35 (rho : Nat -> Seg45.F) (r2259 : Seg45.relationRow2259 rho) (r2260 : Seg45.relationRow2260 rho) (r2261 : Seg45.relationRow2261 rho) :
    seg45RPe35 rho = seg45RPe36 rho * rho 39755 ∧
    seg45RIl35 rho = seg45RIl36 rho + seg45RPe36 rho * (1 - rho 39755) -
      seg45RIl36 rho * (seg45RPe36 rho * (1 - rho 39755)) := by
  constructor
  · exact seg45RStep35Pe rho r2261
  · rw [seg45RStep35Acc rho, seg45RStep35L rho r2259, seg45RStep35IlMul rho r2260, seg45RStep35L rho r2259]

theorem seg45_r_chunk35 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 36 (seg45RPeState rho 36) (seg45RIlState rho 36) := by
  have htail := seg45_r_chunk34 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2259, r2260, r2261, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 35 ≤ n → n < 36 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 35 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep35 rho r2259 r2260 r2261
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 35 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
