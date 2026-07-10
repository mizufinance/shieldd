import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk244

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep245L (rho : Nat -> Seg5.F) (r1837 : Seg5.relationRow1837 rho) :
    rho 1535 = seg5RPe246 rho * (1 - rho 1432) := by
  unfold Seg5.relationRow1837 at r1837
  unfold seg5RPe246
  linear_combination -r1837

theorem seg5RStep245IlMul (rho : Nat -> Seg5.F) (r1838 : Seg5.relationRow1838 rho) :
    rho 1536 = seg5RIl246 rho * (rho 1535) := by
  unfold Seg5.relationRow1838 at r1838
  rw [seg5RIl246Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1
  linear_combination -r1838

theorem seg5RStep245Acc (rho : Nat -> Seg5.F) :
    seg5RIl245 rho = seg5RIl246 rho + (rho 1535) - (rho 1536) := by
  have hstate : seg5RIl245 rho = seg5RIl246 rho + seg5RIlAtom2 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom2
  ring

theorem seg5RStep245Pe (rho : Nat -> Seg5.F) (r1839 : Seg5.relationRow1839 rho) :
    seg5RPe245 rho = seg5RPe246 rho * rho 1432 := by
  unfold Seg5.relationRow1839 at r1839
  unfold seg5RPe245 seg5RPe246
  linear_combination -r1839

theorem seg5RStep245 (rho : Nat -> Seg5.F) (r1837 : Seg5.relationRow1837 rho) (r1838 : Seg5.relationRow1838 rho) (r1839 : Seg5.relationRow1839 rho) :
    seg5RPe245 rho = seg5RPe246 rho * rho 1432 ∧
    seg5RIl245 rho = seg5RIl246 rho + seg5RPe246 rho * (1 - rho 1432) -
      seg5RIl246 rho * (seg5RPe246 rho * (1 - rho 1432)) := by
  constructor
  · exact seg5RStep245Pe rho r1839
  · rw [seg5RStep245Acc rho, seg5RStep245L rho r1837, seg5RStep245IlMul rho r1838, seg5RStep245L rho r1837]

theorem seg5_r_chunk245 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 246 (seg5RPeState rho 246) (seg5RIlState rho 246) := by
  have htail := seg5_r_chunk244 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1837, r1838, r1839⟩
  have hsteps : ∀ n, 245 ≤ n → n < 246 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 245 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep245 rho r1837 r1838 r1839
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 245 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
