import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk65

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep66L (rho : Nat -> Seg34.F) (r2190 : Seg34.relationRow2190 rho) :
    rho 33465 = seg34RPe67 rho * (1 - rho 32830) := by
  unfold Seg34.relationRow2190 at r2190
  unfold seg34RPe67
  linear_combination -r2190

theorem seg34RStep66IlMul (rho : Nat -> Seg34.F) (r2191 : Seg34.relationRow2191 rho) :
    rho 33466 = seg34RIl67 rho * (rho 33465) := by
  unfold Seg34.relationRow2191 at r2191
  rw [seg34RStep66IlLc rho] at r2191
  linear_combination -r2191

theorem seg34RStep66Acc (rho : Nat -> Seg34.F) :
    seg34RIl66 rho = seg34RIl67 rho + (rho 33465) - (rho 33466) := by
  have hstate : seg34RIl66 rho = seg34RIl67 rho + seg34RIlAtom94 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom94
  ring

theorem seg34RStep66Pe (rho : Nat -> Seg34.F) (r2192 : Seg34.relationRow2192 rho) :
    seg34RPe66 rho = seg34RPe67 rho * rho 32830 := by
  unfold Seg34.relationRow2192 at r2192
  unfold seg34RPe66 seg34RPe67
  linear_combination -r2192

theorem seg34RStep66 (rho : Nat -> Seg34.F) (r2190 : Seg34.relationRow2190 rho) (r2191 : Seg34.relationRow2191 rho) (r2192 : Seg34.relationRow2192 rho) :
    seg34RPe66 rho = seg34RPe67 rho * rho 32830 ∧
    seg34RIl66 rho = seg34RIl67 rho + seg34RPe67 rho * (1 - rho 32830) -
      seg34RIl67 rho * (seg34RPe67 rho * (1 - rho 32830)) := by
  constructor
  · exact seg34RStep66Pe rho r2192
  · rw [seg34RStep66Acc rho, seg34RStep66L rho r2190, seg34RStep66IlMul rho r2191, seg34RStep66L rho r2190]

theorem seg34_r_chunk66 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 67 (seg34RPeState rho 67) (seg34RIlState rho 67) := by
  have htail := seg34_r_chunk65 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2190, r2191, r2192, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 66 ≤ n → n < 67 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 66 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep66 rho r2190 r2191 r2192
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 66 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
