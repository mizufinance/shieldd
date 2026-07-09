import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep2L (rho : Nat -> Seg5.F) (r2336 : Seg5.relationRow2336 rho) :
    rho 2034 = seg5RPe3 rho * (1 - rho 1189) := by
  unfold Seg5.relationRow2336 at r2336
  unfold seg5RPe3
  linear_combination -r2336

theorem seg5RStep2IlMul (rho : Nat -> Seg5.F) (r2337 : Seg5.relationRow2337 rho) :
    rho 2035 = seg5RIl3 rho * (rho 2034) := by
  unfold Seg5.relationRow2337 at r2337
  rw [seg5RStep2IlLc rho] at r2337
  linear_combination -r2337

theorem seg5RStep2Acc (rho : Nat -> Seg5.F) :
    seg5RIl2 rho = seg5RIl3 rho + (rho 2034) - (rho 2035) := by
  have hstate : seg5RIl2 rho = seg5RIl3 rho + seg5RIlAtom138 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom138
  ring

theorem seg5RStep2Pe (rho : Nat -> Seg5.F) (r2338 : Seg5.relationRow2338 rho) :
    seg5RPe2 rho = seg5RPe3 rho * rho 1189 := by
  unfold Seg5.relationRow2338 at r2338
  unfold seg5RPe2 seg5RPe3
  linear_combination -r2338

theorem seg5RStep2 (rho : Nat -> Seg5.F) (r2336 : Seg5.relationRow2336 rho) (r2337 : Seg5.relationRow2337 rho) (r2338 : Seg5.relationRow2338 rho) :
    seg5RPe2 rho = seg5RPe3 rho * rho 1189 ∧
    seg5RIl2 rho = seg5RIl3 rho + seg5RPe3 rho * (1 - rho 1189) -
      seg5RIl3 rho * (seg5RPe3 rho * (1 - rho 1189)) := by
  constructor
  · exact seg5RStep2Pe rho r2338
  · rw [seg5RStep2Acc rho, seg5RStep2L rho r2336, seg5RStep2IlMul rho r2337, seg5RStep2L rho r2336]

theorem seg5_r_chunk2 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 3 (seg5RPeState rho 3) (seg5RIlState rho 3) := by
  have htail := seg5_r_chunk1 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2336, r2337, r2338, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 2 ≤ n → n < 3 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 2 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep2 rho r2336 r2337 r2338
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 2 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
