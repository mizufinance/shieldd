import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep5L (rho : Nat -> Seg34.F) (r2327 : Seg34.relationRow2327 rho) :
    rho 33602 = seg34RPe6 rho * (1 - rho 32769) := by
  unfold Seg34.relationRow2327 at r2327
  unfold seg34RPe6
  linear_combination -r2327

theorem seg34RStep5IlMul (rho : Nat -> Seg34.F) (r2328 : Seg34.relationRow2328 rho) :
    rho 33603 = seg34RIl6 rho * (rho 33602) := by
  unfold Seg34.relationRow2328 at r2328
  rw [seg34RStep5IlLc rho] at r2328
  linear_combination -r2328

theorem seg34RStep5Acc (rho : Nat -> Seg34.F) :
    seg34RIl5 rho = seg34RIl6 rho + (rho 33602) - (rho 33603) := by
  have hstate : seg34RIl5 rho = seg34RIl6 rho + seg34RIlAtom134 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom134
  ring

theorem seg34RStep5Pe (rho : Nat -> Seg34.F) (r2329 : Seg34.relationRow2329 rho) :
    seg34RPe5 rho = seg34RPe6 rho * rho 32769 := by
  unfold Seg34.relationRow2329 at r2329
  unfold seg34RPe5 seg34RPe6
  linear_combination -r2329

theorem seg34RStep5 (rho : Nat -> Seg34.F) (r2327 : Seg34.relationRow2327 rho) (r2328 : Seg34.relationRow2328 rho) (r2329 : Seg34.relationRow2329 rho) :
    seg34RPe5 rho = seg34RPe6 rho * rho 32769 ∧
    seg34RIl5 rho = seg34RIl6 rho + seg34RPe6 rho * (1 - rho 32769) -
      seg34RIl6 rho * (seg34RPe6 rho * (1 - rho 32769)) := by
  constructor
  · exact seg34RStep5Pe rho r2329
  · rw [seg34RStep5Acc rho, seg34RStep5L rho r2327, seg34RStep5IlMul rho r2328, seg34RStep5L rho r2327]

theorem seg34_r_chunk5 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 6 (seg34RPeState rho 6) (seg34RIlState rho 6) := by
  have htail := seg34_r_chunk4 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, r2327, r2328, r2329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 5 ≤ n → n < 6 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 5 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep5 rho r2327 r2328 r2329
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 5 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
