import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep1L (rho : Nat -> Seg34.F) (r2339 : Seg34.relationRow2339 rho) :
    rho 33614 = seg34RPe2 rho * (1 - rho 32765) := by
  unfold Seg34.relationRow2339 at r2339
  unfold seg34RPe2
  linear_combination -r2339

theorem seg34RStep1IlMul (rho : Nat -> Seg34.F) (r2340 : Seg34.relationRow2340 rho) :
    rho 33615 = seg34RIl2 rho * (rho 33614) := by
  unfold Seg34.relationRow2340 at r2340
  rw [seg34RStep1IlLc rho] at r2340
  linear_combination -r2340

theorem seg34RStep1Acc (rho : Nat -> Seg34.F) :
    seg34RIl1 rho = seg34RIl2 rho + (rho 33614) - (rho 33615) := by
  have hstate : seg34RIl1 rho = seg34RIl2 rho + seg34RIlAtom139 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom139
  ring

theorem seg34RStep1Pe (rho : Nat -> Seg34.F) (r2341 : Seg34.relationRow2341 rho) :
    seg34RPe1 rho = seg34RPe2 rho * rho 32765 := by
  unfold Seg34.relationRow2341 at r2341
  unfold seg34RPe1 seg34RPe2
  linear_combination -r2341

theorem seg34RStep1 (rho : Nat -> Seg34.F) (r2339 : Seg34.relationRow2339 rho) (r2340 : Seg34.relationRow2340 rho) (r2341 : Seg34.relationRow2341 rho) :
    seg34RPe1 rho = seg34RPe2 rho * rho 32765 ∧
    seg34RIl1 rho = seg34RIl2 rho + seg34RPe2 rho * (1 - rho 32765) -
      seg34RIl2 rho * (seg34RPe2 rho * (1 - rho 32765)) := by
  constructor
  · exact seg34RStep1Pe rho r2341
  · rw [seg34RStep1Acc rho, seg34RStep1L rho r2339, seg34RStep1IlMul rho r2340, seg34RStep1L rho r2339]

theorem seg34_r_chunk1 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 2 (seg34RPeState rho 2) (seg34RIlState rho 2) := by
  have htail := seg34_r_chunk0 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2339, r2340, r2341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 1 ≤ n → n < 2 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 1 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep1 rho r2339 r2340 r2341
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 1 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
