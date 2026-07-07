import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk17

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep18L (rho : Nat -> Seg45.F) (r2294 : Seg45.relationRow2294 rho) :
    rho 40525 = seg45RPe19 rho * (1 - rho 39738) := by
  unfold Seg45.relationRow2294 at r2294
  unfold seg45RPe19
  linear_combination -r2294

theorem seg45RStep18IlMul (rho : Nat -> Seg45.F) (r2295 : Seg45.relationRow2295 rho) :
    rho 40526 = seg45RIl19 rho * (rho 40525) := by
  unfold Seg45.relationRow2295 at r2295
  rw [seg45RStep18IlLc rho] at r2295
  linear_combination -r2295

theorem seg45RStep18Acc (rho : Nat -> Seg45.F) :
    seg45RIl18 rho = seg45RIl19 rho + (rho 40525) - (rho 40526) := by
  have hstate : seg45RIl18 rho = seg45RIl19 rho + seg45RIlAtom124 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom124
  ring

theorem seg45RStep18Pe (rho : Nat -> Seg45.F) (r2296 : Seg45.relationRow2296 rho) :
    seg45RPe18 rho = seg45RPe19 rho * rho 39738 := by
  unfold Seg45.relationRow2296 at r2296
  unfold seg45RPe18 seg45RPe19
  linear_combination -r2296

theorem seg45RStep18 (rho : Nat -> Seg45.F) (r2294 : Seg45.relationRow2294 rho) (r2295 : Seg45.relationRow2295 rho) (r2296 : Seg45.relationRow2296 rho) :
    seg45RPe18 rho = seg45RPe19 rho * rho 39738 ∧
    seg45RIl18 rho = seg45RIl19 rho + seg45RPe19 rho * (1 - rho 39738) -
      seg45RIl19 rho * (seg45RPe19 rho * (1 - rho 39738)) := by
  constructor
  · exact seg45RStep18Pe rho r2296
  · rw [seg45RStep18Acc rho, seg45RStep18L rho r2294, seg45RStep18IlMul rho r2295, seg45RStep18L rho r2294]

theorem seg45_r_chunk18 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 19 (seg45RPeState rho 19) (seg45RIlState rho 19) := by
  have htail := seg45_r_chunk17 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2294, r2295, r2296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 18 ≤ n → n < 19 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 18 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep18 rho r2294 r2295 r2296
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 18 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
