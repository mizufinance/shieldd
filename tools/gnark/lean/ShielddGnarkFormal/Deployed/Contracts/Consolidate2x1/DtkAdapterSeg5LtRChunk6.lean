import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep6L (rho : Nat -> Seg5.F) (r2324 : Seg5.relationRow2324 rho) :
    rho 2022 = seg5RPe7 rho * (1 - rho 1193) := by
  unfold Seg5.relationRow2324 at r2324
  unfold seg5RPe7
  linear_combination -r2324

theorem seg5RStep6IlMul (rho : Nat -> Seg5.F) (r2325 : Seg5.relationRow2325 rho) :
    rho 2023 = seg5RIl7 rho * (rho 2022) := by
  unfold Seg5.relationRow2325 at r2325
  rw [seg5RStep6IlLc rho] at r2325
  linear_combination -r2325

theorem seg5RStep6Acc (rho : Nat -> Seg5.F) :
    seg5RIl6 rho = seg5RIl7 rho + (rho 2022) - (rho 2023) := by
  have hstate : seg5RIl6 rho = seg5RIl7 rho + seg5RIlAtom133 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom133
  ring

theorem seg5RStep6Pe (rho : Nat -> Seg5.F) (r2326 : Seg5.relationRow2326 rho) :
    seg5RPe6 rho = seg5RPe7 rho * rho 1193 := by
  unfold Seg5.relationRow2326 at r2326
  unfold seg5RPe6 seg5RPe7
  linear_combination -r2326

theorem seg5RStep6 (rho : Nat -> Seg5.F) (r2324 : Seg5.relationRow2324 rho) (r2325 : Seg5.relationRow2325 rho) (r2326 : Seg5.relationRow2326 rho) :
    seg5RPe6 rho = seg5RPe7 rho * rho 1193 ∧
    seg5RIl6 rho = seg5RIl7 rho + seg5RPe7 rho * (1 - rho 1193) -
      seg5RIl7 rho * (seg5RPe7 rho * (1 - rho 1193)) := by
  constructor
  · exact seg5RStep6Pe rho r2326
  · rw [seg5RStep6Acc rho, seg5RStep6L rho r2324, seg5RStep6IlMul rho r2325, seg5RStep6L rho r2324]

theorem seg5_r_chunk6 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 7 (seg5RPeState rho 7) (seg5RIlState rho 7) := by
  have htail := seg5_r_chunk5 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, r2324, r2325, r2326, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 6 ≤ n → n < 7 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 6 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep6 rho r2324 r2325 r2326
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 6 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
