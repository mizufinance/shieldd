import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep14L (rho : Nat -> Seg5.F) (r2306 : Seg5.relationRow2306 rho) :
    rho 2004 = seg5RPe15 rho * (1 - rho 1201) := by
  unfold Seg5.relationRow2306 at r2306
  unfold seg5RPe15
  linear_combination -r2306

theorem seg5RStep14IlMul (rho : Nat -> Seg5.F) (r2307 : Seg5.relationRow2307 rho) :
    rho 2005 = seg5RIl15 rho * (rho 2004) := by
  unfold Seg5.relationRow2307 at r2307
  rw [seg5RStep14IlLc rho] at r2307
  linear_combination -r2307

theorem seg5RStep14Acc (rho : Nat -> Seg5.F) :
    seg5RIl14 rho = seg5RIl15 rho + (rho 2004) - (rho 2005) := by
  have hstate : seg5RIl14 rho = seg5RIl15 rho + seg5RIlAtom128 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom128
  ring

theorem seg5RStep14Pe (rho : Nat -> Seg5.F) (r2308 : Seg5.relationRow2308 rho) :
    seg5RPe14 rho = seg5RPe15 rho * rho 1201 := by
  unfold Seg5.relationRow2308 at r2308
  unfold seg5RPe14 seg5RPe15
  linear_combination -r2308

theorem seg5RStep14 (rho : Nat -> Seg5.F) (r2306 : Seg5.relationRow2306 rho) (r2307 : Seg5.relationRow2307 rho) (r2308 : Seg5.relationRow2308 rho) :
    seg5RPe14 rho = seg5RPe15 rho * rho 1201 ∧
    seg5RIl14 rho = seg5RIl15 rho + seg5RPe15 rho * (1 - rho 1201) -
      seg5RIl15 rho * (seg5RPe15 rho * (1 - rho 1201)) := by
  constructor
  · exact seg5RStep14Pe rho r2308
  · rw [seg5RStep14Acc rho, seg5RStep14L rho r2306, seg5RStep14IlMul rho r2307, seg5RStep14L rho r2306]

theorem seg5_r_chunk14 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 15 (seg5RPeState rho 15) (seg5RIlState rho 15) := by
  have htail := seg5_r_chunk13 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2306, r2307, r2308, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 14 ≤ n → n < 15 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 14 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep14 rho r2306 r2307 r2308
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 14 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
