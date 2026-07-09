import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk137

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep138L (rho : Nat -> Seg5.F) (r2052 : Seg5.relationRow2052 rho) :
    rho 1750 = seg5RPe139 rho * (1 - rho 1325) := by
  unfold Seg5.relationRow2052 at r2052
  unfold seg5RPe139
  linear_combination -r2052

theorem seg5RStep138IlMul (rho : Nat -> Seg5.F) (r2053 : Seg5.relationRow2053 rho) :
    rho 1751 = seg5RIl139 rho * (rho 1750) := by
  unfold Seg5.relationRow2053 at r2053
  rw [seg5RStep138IlLc rho] at r2053
  linear_combination -r2053

theorem seg5RStep138Acc (rho : Nat -> Seg5.F) :
    seg5RIl138 rho = seg5RIl139 rho + (rho 1750) - (rho 1751) := by
  have hstate : seg5RIl138 rho = seg5RIl139 rho + seg5RIlAtom59 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom59
  ring

theorem seg5RStep138Pe (rho : Nat -> Seg5.F) (r2054 : Seg5.relationRow2054 rho) :
    seg5RPe138 rho = seg5RPe139 rho * rho 1325 := by
  unfold Seg5.relationRow2054 at r2054
  unfold seg5RPe138 seg5RPe139
  linear_combination -r2054

theorem seg5RStep138 (rho : Nat -> Seg5.F) (r2052 : Seg5.relationRow2052 rho) (r2053 : Seg5.relationRow2053 rho) (r2054 : Seg5.relationRow2054 rho) :
    seg5RPe138 rho = seg5RPe139 rho * rho 1325 ∧
    seg5RIl138 rho = seg5RIl139 rho + seg5RPe139 rho * (1 - rho 1325) -
      seg5RIl139 rho * (seg5RPe139 rho * (1 - rho 1325)) := by
  constructor
  · exact seg5RStep138Pe rho r2054
  · rw [seg5RStep138Acc rho, seg5RStep138L rho r2052, seg5RStep138IlMul rho r2053, seg5RStep138L rho r2052]

theorem seg5_r_chunk138 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 139 (seg5RPeState rho 139) (seg5RIlState rho 139) := by
  have htail := seg5_r_chunk137 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2052, r2053, r2054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 138 ≤ n → n < 139 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 138 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep138 rho r2052 r2053 r2054
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 138 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
