import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep3L (rho : Nat -> Seg5.F) (r2333 : Seg5.relationRow2333 rho) :
    rho 2031 = seg5RPe4 rho * (1 - rho 1190) := by
  unfold Seg5.relationRow2333 at r2333
  unfold seg5RPe4
  linear_combination -r2333

theorem seg5RStep3IlMul (rho : Nat -> Seg5.F) (r2334 : Seg5.relationRow2334 rho) :
    rho 2032 = seg5RIl4 rho * (rho 2031) := by
  unfold Seg5.relationRow2334 at r2334
  rw [seg5RStep3IlLc rho] at r2334
  linear_combination -r2334

theorem seg5RStep3Acc (rho : Nat -> Seg5.F) :
    seg5RIl3 rho = seg5RIl4 rho + (rho 2031) - (rho 2032) := by
  have hstate : seg5RIl3 rho = seg5RIl4 rho + seg5RIlAtom137 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom137
  ring

theorem seg5RStep3Pe (rho : Nat -> Seg5.F) (r2335 : Seg5.relationRow2335 rho) :
    seg5RPe3 rho = seg5RPe4 rho * rho 1190 := by
  unfold Seg5.relationRow2335 at r2335
  unfold seg5RPe3 seg5RPe4
  linear_combination -r2335

theorem seg5RStep3 (rho : Nat -> Seg5.F) (r2333 : Seg5.relationRow2333 rho) (r2334 : Seg5.relationRow2334 rho) (r2335 : Seg5.relationRow2335 rho) :
    seg5RPe3 rho = seg5RPe4 rho * rho 1190 ∧
    seg5RIl3 rho = seg5RIl4 rho + seg5RPe4 rho * (1 - rho 1190) -
      seg5RIl4 rho * (seg5RPe4 rho * (1 - rho 1190)) := by
  constructor
  · exact seg5RStep3Pe rho r2335
  · rw [seg5RStep3Acc rho, seg5RStep3L rho r2333, seg5RStep3IlMul rho r2334, seg5RStep3L rho r2333]

theorem seg5_r_chunk3 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 4 (seg5RPeState rho 4) (seg5RIlState rho 4) := by
  have htail := seg5_r_chunk2 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2333, r2334, r2335, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 3 ≤ n → n < 4 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 3 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep3 rho r2333 r2334 r2335
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 3 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
