import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk65

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep66L (rho : Nat -> Seg5.F) (r2190 : Seg5.relationRow2190 rho) :
    rho 1888 = seg5RPe67 rho * (1 - rho 1253) := by
  unfold Seg5.relationRow2190 at r2190
  unfold seg5RPe67
  linear_combination -r2190

theorem seg5RStep66IlMul (rho : Nat -> Seg5.F) (r2191 : Seg5.relationRow2191 rho) :
    rho 1889 = seg5RIl67 rho * (rho 1888) := by
  unfold Seg5.relationRow2191 at r2191
  rw [seg5RStep66IlLc rho] at r2191
  linear_combination -r2191

theorem seg5RStep66Acc (rho : Nat -> Seg5.F) :
    seg5RIl66 rho = seg5RIl67 rho + (rho 1888) - (rho 1889) := by
  have hstate : seg5RIl66 rho = seg5RIl67 rho + seg5RIlAtom94 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom94
  ring

theorem seg5RStep66Pe (rho : Nat -> Seg5.F) (r2192 : Seg5.relationRow2192 rho) :
    seg5RPe66 rho = seg5RPe67 rho * rho 1253 := by
  unfold Seg5.relationRow2192 at r2192
  unfold seg5RPe66 seg5RPe67
  linear_combination -r2192

theorem seg5RStep66 (rho : Nat -> Seg5.F) (r2190 : Seg5.relationRow2190 rho) (r2191 : Seg5.relationRow2191 rho) (r2192 : Seg5.relationRow2192 rho) :
    seg5RPe66 rho = seg5RPe67 rho * rho 1253 ∧
    seg5RIl66 rho = seg5RIl67 rho + seg5RPe67 rho * (1 - rho 1253) -
      seg5RIl67 rho * (seg5RPe67 rho * (1 - rho 1253)) := by
  constructor
  · exact seg5RStep66Pe rho r2192
  · rw [seg5RStep66Acc rho, seg5RStep66L rho r2190, seg5RStep66IlMul rho r2191, seg5RStep66L rho r2190]

theorem seg5_r_chunk66 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 67 (seg5RPeState rho 67) (seg5RIlState rho 67) := by
  have htail := seg5_r_chunk65 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2190, r2191, r2192, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 66 ≤ n → n < 67 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 66 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep66 rho r2190 r2191 r2192
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 66 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
