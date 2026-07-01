import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk65

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep66L (rho : Nat -> Seg16.F) (r2190 : Seg16.relationRow2190 rho) :
    rho 14765 = seg16RPe67 rho * (1 - rho 14130) := by
  unfold Seg16.relationRow2190 at r2190
  unfold seg16RPe67
  linear_combination -r2190

theorem seg16RStep66IlMul (rho : Nat -> Seg16.F) (r2191 : Seg16.relationRow2191 rho) :
    rho 14766 = seg16RIl67 rho * (rho 14765) := by
  unfold Seg16.relationRow2191 at r2191
  rw [seg16RStep66IlLc rho] at r2191
  linear_combination -r2191

theorem seg16RStep66Acc (rho : Nat -> Seg16.F) :
    seg16RIl66 rho = seg16RIl67 rho + (rho 14765) - (rho 14766) := by
  have hstate : seg16RIl66 rho = seg16RIl67 rho + seg16RIlAtom94 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom94
  ring

theorem seg16RStep66Pe (rho : Nat -> Seg16.F) (r2192 : Seg16.relationRow2192 rho) :
    seg16RPe66 rho = seg16RPe67 rho * rho 14130 := by
  unfold Seg16.relationRow2192 at r2192
  unfold seg16RPe66 seg16RPe67
  linear_combination -r2192

theorem seg16RStep66 (rho : Nat -> Seg16.F) (r2190 : Seg16.relationRow2190 rho) (r2191 : Seg16.relationRow2191 rho) (r2192 : Seg16.relationRow2192 rho) :
    seg16RPe66 rho = seg16RPe67 rho * rho 14130 ∧
    seg16RIl66 rho = seg16RIl67 rho + seg16RPe67 rho * (1 - rho 14130) -
      seg16RIl67 rho * (seg16RPe67 rho * (1 - rho 14130)) := by
  constructor
  · exact seg16RStep66Pe rho r2192
  · rw [seg16RStep66Acc rho, seg16RStep66L rho r2190, seg16RStep66IlMul rho r2191, seg16RStep66L rho r2190]

theorem seg16_r_chunk66 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 67 (seg16RPeState rho 67) (seg16RIlState rho 67) := by
  have htail := seg16_r_chunk65 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2190, r2191, r2192, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 66 ≤ n → n < 67 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 66 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep66 rho r2190 r2191 r2192
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 66 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
