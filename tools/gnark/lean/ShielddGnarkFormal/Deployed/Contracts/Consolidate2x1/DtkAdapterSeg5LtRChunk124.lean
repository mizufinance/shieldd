import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk123

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep124L (rho : Nat -> Seg5.F) (r2070 : Seg5.relationRow2070 rho) :
    rho 1768 = seg5RPe125 rho * (1 - rho 1311) := by
  unfold Seg5.relationRow2070 at r2070
  unfold seg5RPe125
  linear_combination -r2070

theorem seg5RStep124IlMul (rho : Nat -> Seg5.F) (r2071 : Seg5.relationRow2071 rho) :
    rho 1769 = seg5RIl125 rho * (rho 1768) := by
  unfold Seg5.relationRow2071 at r2071
  rw [seg5RStep124IlLc rho] at r2071
  linear_combination -r2071

theorem seg5RStep124Acc (rho : Nat -> Seg5.F) :
    seg5RIl124 rho = seg5RIl125 rho + (rho 1768) - (rho 1769) := by
  have hstate : seg5RIl124 rho = seg5RIl125 rho + seg5RIlAtom61 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom61
  ring

theorem seg5RStep124Pe (rho : Nat -> Seg5.F) (r2072 : Seg5.relationRow2072 rho) :
    seg5RPe124 rho = seg5RPe125 rho * rho 1311 := by
  unfold Seg5.relationRow2072 at r2072
  unfold seg5RPe124 seg5RPe125
  linear_combination -r2072

theorem seg5RStep124 (rho : Nat -> Seg5.F) (r2070 : Seg5.relationRow2070 rho) (r2071 : Seg5.relationRow2071 rho) (r2072 : Seg5.relationRow2072 rho) :
    seg5RPe124 rho = seg5RPe125 rho * rho 1311 ∧
    seg5RIl124 rho = seg5RIl125 rho + seg5RPe125 rho * (1 - rho 1311) -
      seg5RIl125 rho * (seg5RPe125 rho * (1 - rho 1311)) := by
  constructor
  · exact seg5RStep124Pe rho r2072
  · rw [seg5RStep124Acc rho, seg5RStep124L rho r2070, seg5RStep124IlMul rho r2071, seg5RStep124L rho r2070]

theorem seg5_r_chunk124 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 125 (seg5RPeState rho 125) (seg5RIlState rho 125) := by
  have htail := seg5_r_chunk123 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2070, r2071, r2072, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 124 ≤ n → n < 125 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 124 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep124 rho r2070 r2071 r2072
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 124 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
