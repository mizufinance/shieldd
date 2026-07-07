import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep6L (rho : Nat -> Seg45.F) (r2324 : Seg45.relationRow2324 rho) :
    rho 40555 = seg45RPe7 rho * (1 - rho 39726) := by
  unfold Seg45.relationRow2324 at r2324
  unfold seg45RPe7
  linear_combination -r2324

theorem seg45RStep6IlMul (rho : Nat -> Seg45.F) (r2325 : Seg45.relationRow2325 rho) :
    rho 40556 = seg45RIl7 rho * (rho 40555) := by
  unfold Seg45.relationRow2325 at r2325
  rw [seg45RStep6IlLc rho] at r2325
  linear_combination -r2325

theorem seg45RStep6Acc (rho : Nat -> Seg45.F) :
    seg45RIl6 rho = seg45RIl7 rho + (rho 40555) - (rho 40556) := by
  have hstate : seg45RIl6 rho = seg45RIl7 rho + seg45RIlAtom133 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom133
  ring

theorem seg45RStep6Pe (rho : Nat -> Seg45.F) (r2326 : Seg45.relationRow2326 rho) :
    seg45RPe6 rho = seg45RPe7 rho * rho 39726 := by
  unfold Seg45.relationRow2326 at r2326
  unfold seg45RPe6 seg45RPe7
  linear_combination -r2326

theorem seg45RStep6 (rho : Nat -> Seg45.F) (r2324 : Seg45.relationRow2324 rho) (r2325 : Seg45.relationRow2325 rho) (r2326 : Seg45.relationRow2326 rho) :
    seg45RPe6 rho = seg45RPe7 rho * rho 39726 ∧
    seg45RIl6 rho = seg45RIl7 rho + seg45RPe7 rho * (1 - rho 39726) -
      seg45RIl7 rho * (seg45RPe7 rho * (1 - rho 39726)) := by
  constructor
  · exact seg45RStep6Pe rho r2326
  · rw [seg45RStep6Acc rho, seg45RStep6L rho r2324, seg45RStep6IlMul rho r2325, seg45RStep6L rho r2324]

theorem seg45_r_chunk6 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 7 (seg45RPeState rho 7) (seg45RIlState rho 7) := by
  have htail := seg45_r_chunk5 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, r2324, r2325, r2326, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 6 ≤ n → n < 7 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 6 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep6 rho r2324 r2325 r2326
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 6 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
