import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk17

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep18L (rho : Nat -> Seg16.F) (r2294 : Seg16.relationRow2294 rho) :
    rho 14869 = seg16RPe19 rho * (1 - rho 14082) := by
  unfold Seg16.relationRow2294 at r2294
  unfold seg16RPe19
  linear_combination -r2294

theorem seg16RStep18IlMul (rho : Nat -> Seg16.F) (r2295 : Seg16.relationRow2295 rho) :
    rho 14870 = seg16RIl19 rho * (rho 14869) := by
  unfold Seg16.relationRow2295 at r2295
  rw [seg16RStep18IlLc rho] at r2295
  linear_combination -r2295

theorem seg16RStep18Acc (rho : Nat -> Seg16.F) :
    seg16RIl18 rho = seg16RIl19 rho + (rho 14869) - (rho 14870) := by
  have hstate : seg16RIl18 rho = seg16RIl19 rho + seg16RIlAtom124 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom124
  ring

theorem seg16RStep18Pe (rho : Nat -> Seg16.F) (r2296 : Seg16.relationRow2296 rho) :
    seg16RPe18 rho = seg16RPe19 rho * rho 14082 := by
  unfold Seg16.relationRow2296 at r2296
  unfold seg16RPe18 seg16RPe19
  linear_combination -r2296

theorem seg16RStep18 (rho : Nat -> Seg16.F) (r2294 : Seg16.relationRow2294 rho) (r2295 : Seg16.relationRow2295 rho) (r2296 : Seg16.relationRow2296 rho) :
    seg16RPe18 rho = seg16RPe19 rho * rho 14082 ∧
    seg16RIl18 rho = seg16RIl19 rho + seg16RPe19 rho * (1 - rho 14082) -
      seg16RIl19 rho * (seg16RPe19 rho * (1 - rho 14082)) := by
  constructor
  · exact seg16RStep18Pe rho r2296
  · rw [seg16RStep18Acc rho, seg16RStep18L rho r2294, seg16RStep18IlMul rho r2295, seg16RStep18L rho r2294]

theorem seg16_r_chunk18 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 19 (seg16RPeState rho 19) (seg16RIlState rho 19) := by
  have htail := seg16_r_chunk17 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2294, r2295, r2296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 18 ≤ n → n < 19 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 18 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep18 rho r2294 r2295 r2296
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 18 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
