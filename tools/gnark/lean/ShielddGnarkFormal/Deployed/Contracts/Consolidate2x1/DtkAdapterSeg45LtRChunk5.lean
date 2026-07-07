import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep5L (rho : Nat -> Seg45.F) (r2327 : Seg45.relationRow2327 rho) :
    rho 40558 = seg45RPe6 rho * (1 - rho 39725) := by
  unfold Seg45.relationRow2327 at r2327
  unfold seg45RPe6
  linear_combination -r2327

theorem seg45RStep5IlMul (rho : Nat -> Seg45.F) (r2328 : Seg45.relationRow2328 rho) :
    rho 40559 = seg45RIl6 rho * (rho 40558) := by
  unfold Seg45.relationRow2328 at r2328
  rw [seg45RStep5IlLc rho] at r2328
  linear_combination -r2328

theorem seg45RStep5Acc (rho : Nat -> Seg45.F) :
    seg45RIl5 rho = seg45RIl6 rho + (rho 40558) - (rho 40559) := by
  have hstate : seg45RIl5 rho = seg45RIl6 rho + seg45RIlAtom134 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom134
  ring

theorem seg45RStep5Pe (rho : Nat -> Seg45.F) (r2329 : Seg45.relationRow2329 rho) :
    seg45RPe5 rho = seg45RPe6 rho * rho 39725 := by
  unfold Seg45.relationRow2329 at r2329
  unfold seg45RPe5 seg45RPe6
  linear_combination -r2329

theorem seg45RStep5 (rho : Nat -> Seg45.F) (r2327 : Seg45.relationRow2327 rho) (r2328 : Seg45.relationRow2328 rho) (r2329 : Seg45.relationRow2329 rho) :
    seg45RPe5 rho = seg45RPe6 rho * rho 39725 ∧
    seg45RIl5 rho = seg45RIl6 rho + seg45RPe6 rho * (1 - rho 39725) -
      seg45RIl6 rho * (seg45RPe6 rho * (1 - rho 39725)) := by
  constructor
  · exact seg45RStep5Pe rho r2329
  · rw [seg45RStep5Acc rho, seg45RStep5L rho r2327, seg45RStep5IlMul rho r2328, seg45RStep5L rho r2327]

theorem seg45_r_chunk5 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 6 (seg45RPeState rho 6) (seg45RIlState rho 6) := by
  have htail := seg45_r_chunk4 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, r2327, r2328, r2329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 5 ≤ n → n < 6 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 5 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep5 rho r2327 r2328 r2329
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 5 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
