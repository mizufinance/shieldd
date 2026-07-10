import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk159

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep160L (rho : Nat -> Seg5.F) (r2004 : Seg5.relationRow2004 rho) :
    rho 1702 = seg5RPe161 rho * (1 - rho 1347) := by
  unfold Seg5.relationRow2004 at r2004
  unfold seg5RPe161
  linear_combination -r2004

theorem seg5RStep160IlMul (rho : Nat -> Seg5.F) (r2005 : Seg5.relationRow2005 rho) :
    rho 1703 = seg5RIl161 rho * (rho 1702) := by
  unfold Seg5.relationRow2005 at r2005
  rw [seg5RStep160IlLc rho] at r2005
  linear_combination -r2005

theorem seg5RStep160Acc (rho : Nat -> Seg5.F) :
    seg5RIl160 rho = seg5RIl161 rho + (rho 1702) - (rho 1703) := by
  have hstate : seg5RIl160 rho = seg5RIl161 rho + seg5RIlAtom45 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom45
  ring

theorem seg5RStep160Pe (rho : Nat -> Seg5.F) (r2006 : Seg5.relationRow2006 rho) :
    seg5RPe160 rho = seg5RPe161 rho * rho 1347 := by
  unfold Seg5.relationRow2006 at r2006
  unfold seg5RPe160 seg5RPe161
  linear_combination -r2006

theorem seg5RStep160 (rho : Nat -> Seg5.F) (r2004 : Seg5.relationRow2004 rho) (r2005 : Seg5.relationRow2005 rho) (r2006 : Seg5.relationRow2006 rho) :
    seg5RPe160 rho = seg5RPe161 rho * rho 1347 ∧
    seg5RIl160 rho = seg5RIl161 rho + seg5RPe161 rho * (1 - rho 1347) -
      seg5RIl161 rho * (seg5RPe161 rho * (1 - rho 1347)) := by
  constructor
  · exact seg5RStep160Pe rho r2006
  · rw [seg5RStep160Acc rho, seg5RStep160L rho r2004, seg5RStep160IlMul rho r2005, seg5RStep160L rho r2004]

theorem seg5_r_chunk160 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 161 (seg5RPeState rho 161) (seg5RIlState rho 161) := by
  have htail := seg5_r_chunk159 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, r2004, r2005, r2006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 160 ≤ n → n < 161 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 160 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep160 rho r2004 r2005 r2006
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 160 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
