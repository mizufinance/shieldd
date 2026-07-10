import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk17

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep18L (rho : Nat -> Seg5.F) (r2294 : Seg5.relationRow2294 rho) :
    rho 1992 = seg5RPe19 rho * (1 - rho 1205) := by
  unfold Seg5.relationRow2294 at r2294
  unfold seg5RPe19
  linear_combination -r2294

theorem seg5RStep18IlMul (rho : Nat -> Seg5.F) (r2295 : Seg5.relationRow2295 rho) :
    rho 1993 = seg5RIl19 rho * (rho 1992) := by
  unfold Seg5.relationRow2295 at r2295
  rw [seg5RStep18IlLc rho] at r2295
  linear_combination -r2295

theorem seg5RStep18Acc (rho : Nat -> Seg5.F) :
    seg5RIl18 rho = seg5RIl19 rho + (rho 1992) - (rho 1993) := by
  have hstate : seg5RIl18 rho = seg5RIl19 rho + seg5RIlAtom124 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom124
  ring

theorem seg5RStep18Pe (rho : Nat -> Seg5.F) (r2296 : Seg5.relationRow2296 rho) :
    seg5RPe18 rho = seg5RPe19 rho * rho 1205 := by
  unfold Seg5.relationRow2296 at r2296
  unfold seg5RPe18 seg5RPe19
  linear_combination -r2296

theorem seg5RStep18 (rho : Nat -> Seg5.F) (r2294 : Seg5.relationRow2294 rho) (r2295 : Seg5.relationRow2295 rho) (r2296 : Seg5.relationRow2296 rho) :
    seg5RPe18 rho = seg5RPe19 rho * rho 1205 ∧
    seg5RIl18 rho = seg5RIl19 rho + seg5RPe19 rho * (1 - rho 1205) -
      seg5RIl19 rho * (seg5RPe19 rho * (1 - rho 1205)) := by
  constructor
  · exact seg5RStep18Pe rho r2296
  · rw [seg5RStep18Acc rho, seg5RStep18L rho r2294, seg5RStep18IlMul rho r2295, seg5RStep18L rho r2294]

theorem seg5_r_chunk18 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 19 (seg5RPeState rho 19) (seg5RIlState rho 19) := by
  have htail := seg5_r_chunk17 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2294, r2295, r2296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 18 ≤ n → n < 19 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 18 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep18 rho r2294 r2295 r2296
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 18 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
