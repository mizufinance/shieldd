import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk17

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep18L (rho : Nat -> Seg6.F) (r2294 : Seg6.relationRow2294 rho) :
    rho 2695 = seg6RPe19 rho * (1 - rho 1908) := by
  unfold Seg6.relationRow2294 at r2294
  unfold seg6RPe19
  linear_combination -r2294

theorem seg6RStep18IlMul (rho : Nat -> Seg6.F) (r2295 : Seg6.relationRow2295 rho) :
    rho 2696 = seg6RIl19 rho * (rho 2695) := by
  unfold Seg6.relationRow2295 at r2295
  rw [seg6RStep18IlLc rho] at r2295
  linear_combination -r2295

theorem seg6RStep18Acc (rho : Nat -> Seg6.F) :
    seg6RIl18 rho = seg6RIl19 rho + (rho 2695) - (rho 2696) := by
  have hstate : seg6RIl18 rho = seg6RIl19 rho + seg6RIlAtom124 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom124
  ring

theorem seg6RStep18Pe (rho : Nat -> Seg6.F) (r2296 : Seg6.relationRow2296 rho) :
    seg6RPe18 rho = seg6RPe19 rho * rho 1908 := by
  unfold Seg6.relationRow2296 at r2296
  unfold seg6RPe18 seg6RPe19
  linear_combination -r2296

theorem seg6RStep18 (rho : Nat -> Seg6.F) (r2294 : Seg6.relationRow2294 rho) (r2295 : Seg6.relationRow2295 rho) (r2296 : Seg6.relationRow2296 rho) :
    seg6RPe18 rho = seg6RPe19 rho * rho 1908 ∧
    seg6RIl18 rho = seg6RIl19 rho + seg6RPe19 rho * (1 - rho 1908) -
      seg6RIl19 rho * (seg6RPe19 rho * (1 - rho 1908)) := by
  constructor
  · exact seg6RStep18Pe rho r2296
  · rw [seg6RStep18Acc rho, seg6RStep18L rho r2294, seg6RStep18IlMul rho r2295, seg6RStep18L rho r2294]

theorem seg6_r_chunk18 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 19 (seg6RPeState rho 19) (seg6RIlState rho 19) := by
  have htail := seg6_r_chunk17 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2294, r2295, r2296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 18 ≤ n → n < 19 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 18 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep18 rho r2294 r2295 r2296
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 18 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
