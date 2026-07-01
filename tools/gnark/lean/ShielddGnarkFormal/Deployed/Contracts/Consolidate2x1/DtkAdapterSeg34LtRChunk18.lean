import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk17

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep18L (rho : Nat -> Seg34.F) (r2294 : Seg34.relationRow2294 rho) :
    rho 33569 = seg34RPe19 rho * (1 - rho 32782) := by
  unfold Seg34.relationRow2294 at r2294
  unfold seg34RPe19
  linear_combination -r2294

theorem seg34RStep18IlMul (rho : Nat -> Seg34.F) (r2295 : Seg34.relationRow2295 rho) :
    rho 33570 = seg34RIl19 rho * (rho 33569) := by
  unfold Seg34.relationRow2295 at r2295
  rw [seg34RStep18IlLc rho] at r2295
  linear_combination -r2295

theorem seg34RStep18Acc (rho : Nat -> Seg34.F) :
    seg34RIl18 rho = seg34RIl19 rho + (rho 33569) - (rho 33570) := by
  have hstate : seg34RIl18 rho = seg34RIl19 rho + seg34RIlAtom124 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom124
  ring

theorem seg34RStep18Pe (rho : Nat -> Seg34.F) (r2296 : Seg34.relationRow2296 rho) :
    seg34RPe18 rho = seg34RPe19 rho * rho 32782 := by
  unfold Seg34.relationRow2296 at r2296
  unfold seg34RPe18 seg34RPe19
  linear_combination -r2296

theorem seg34RStep18 (rho : Nat -> Seg34.F) (r2294 : Seg34.relationRow2294 rho) (r2295 : Seg34.relationRow2295 rho) (r2296 : Seg34.relationRow2296 rho) :
    seg34RPe18 rho = seg34RPe19 rho * rho 32782 ∧
    seg34RIl18 rho = seg34RIl19 rho + seg34RPe19 rho * (1 - rho 32782) -
      seg34RIl19 rho * (seg34RPe19 rho * (1 - rho 32782)) := by
  constructor
  · exact seg34RStep18Pe rho r2296
  · rw [seg34RStep18Acc rho, seg34RStep18L rho r2294, seg34RStep18IlMul rho r2295, seg34RStep18L rho r2294]

theorem seg34_r_chunk18 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 19 (seg34RPeState rho 19) (seg34RIlState rho 19) := by
  have htail := seg34_r_chunk17 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2294, r2295, r2296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 18 ≤ n → n < 19 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 18 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep18 rho r2294 r2295 r2296
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 18 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
