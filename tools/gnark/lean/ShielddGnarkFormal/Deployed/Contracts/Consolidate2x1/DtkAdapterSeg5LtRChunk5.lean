import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep5L (rho : Nat -> Seg5.F) (r2327 : Seg5.relationRow2327 rho) :
    rho 2025 = seg5RPe6 rho * (1 - rho 1192) := by
  unfold Seg5.relationRow2327 at r2327
  unfold seg5RPe6
  linear_combination -r2327

theorem seg5RStep5IlMul (rho : Nat -> Seg5.F) (r2328 : Seg5.relationRow2328 rho) :
    rho 2026 = seg5RIl6 rho * (rho 2025) := by
  unfold Seg5.relationRow2328 at r2328
  rw [seg5RStep5IlLc rho] at r2328
  linear_combination -r2328

theorem seg5RStep5Acc (rho : Nat -> Seg5.F) :
    seg5RIl5 rho = seg5RIl6 rho + (rho 2025) - (rho 2026) := by
  have hstate : seg5RIl5 rho = seg5RIl6 rho + seg5RIlAtom134 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom134
  ring

theorem seg5RStep5Pe (rho : Nat -> Seg5.F) (r2329 : Seg5.relationRow2329 rho) :
    seg5RPe5 rho = seg5RPe6 rho * rho 1192 := by
  unfold Seg5.relationRow2329 at r2329
  unfold seg5RPe5 seg5RPe6
  linear_combination -r2329

theorem seg5RStep5 (rho : Nat -> Seg5.F) (r2327 : Seg5.relationRow2327 rho) (r2328 : Seg5.relationRow2328 rho) (r2329 : Seg5.relationRow2329 rho) :
    seg5RPe5 rho = seg5RPe6 rho * rho 1192 ∧
    seg5RIl5 rho = seg5RIl6 rho + seg5RPe6 rho * (1 - rho 1192) -
      seg5RIl6 rho * (seg5RPe6 rho * (1 - rho 1192)) := by
  constructor
  · exact seg5RStep5Pe rho r2329
  · rw [seg5RStep5Acc rho, seg5RStep5L rho r2327, seg5RStep5IlMul rho r2328, seg5RStep5L rho r2327]

theorem seg5_r_chunk5 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 6 (seg5RPeState rho 6) (seg5RIlState rho 6) := by
  have htail := seg5_r_chunk4 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, r2327, r2328, r2329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 5 ≤ n → n < 6 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 5 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep5 rho r2327 r2328 r2329
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 5 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
