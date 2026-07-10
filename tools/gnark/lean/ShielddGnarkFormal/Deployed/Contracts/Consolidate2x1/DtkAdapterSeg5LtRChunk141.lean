import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk140

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep141L (rho : Nat -> Seg5.F) (r2045 : Seg5.relationRow2045 rho) :
    rho 1743 = seg5RPe142 rho * (1 - rho 1328) := by
  unfold Seg5.relationRow2045 at r2045
  unfold seg5RPe142
  linear_combination -r2045

theorem seg5RStep141IlMul (rho : Nat -> Seg5.F) (r2046 : Seg5.relationRow2046 rho) :
    rho 1744 = seg5RIl142 rho * (rho 1743) := by
  unfold Seg5.relationRow2046 at r2046
  rw [seg5RStep141IlLc rho] at r2046
  linear_combination -r2046

theorem seg5RStep141Acc (rho : Nat -> Seg5.F) :
    seg5RIl141 rho = seg5RIl142 rho + (rho 1743) - (rho 1744) := by
  have hstate : seg5RIl141 rho = seg5RIl142 rho + seg5RIlAtom57 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom57
  ring

theorem seg5RStep141Pe (rho : Nat -> Seg5.F) (r2047 : Seg5.relationRow2047 rho) :
    seg5RPe141 rho = seg5RPe142 rho * rho 1328 := by
  unfold Seg5.relationRow2047 at r2047
  unfold seg5RPe141 seg5RPe142
  linear_combination -r2047

theorem seg5RStep141 (rho : Nat -> Seg5.F) (r2045 : Seg5.relationRow2045 rho) (r2046 : Seg5.relationRow2046 rho) (r2047 : Seg5.relationRow2047 rho) :
    seg5RPe141 rho = seg5RPe142 rho * rho 1328 ∧
    seg5RIl141 rho = seg5RIl142 rho + seg5RPe142 rho * (1 - rho 1328) -
      seg5RIl142 rho * (seg5RPe142 rho * (1 - rho 1328)) := by
  constructor
  · exact seg5RStep141Pe rho r2047
  · rw [seg5RStep141Acc rho, seg5RStep141L rho r2045, seg5RStep141IlMul rho r2046, seg5RStep141L rho r2045]

theorem seg5_r_chunk141 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 142 (seg5RPeState rho 142) (seg5RIlState rho 142) := by
  have htail := seg5_r_chunk140 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2045, r2046, r2047, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 141 ≤ n → n < 142 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 141 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep141 rho r2045 r2046 r2047
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 141 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
