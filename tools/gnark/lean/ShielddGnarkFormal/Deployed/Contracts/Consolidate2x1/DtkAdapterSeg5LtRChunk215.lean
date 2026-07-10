import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk214

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep215L (rho : Nat -> Seg5.F) (r1901 : Seg5.relationRow1901 rho) :
    rho 1599 = seg5RPe216 rho * (1 - rho 1402) := by
  unfold Seg5.relationRow1901 at r1901
  unfold seg5RPe216
  linear_combination -r1901

theorem seg5RStep215IlMul (rho : Nat -> Seg5.F) (r1902 : Seg5.relationRow1902 rho) :
    rho 1600 = seg5RIl216 rho * (rho 1599) := by
  unfold Seg5.relationRow1902 at r1902
  rw [seg5RStep215IlLc rho] at r1902
  linear_combination -r1902

theorem seg5RStep215Acc (rho : Nat -> Seg5.F) :
    seg5RIl215 rho = seg5RIl216 rho + (rho 1599) - (rho 1600) := by
  have hstate : seg5RIl215 rho = seg5RIl216 rho + seg5RIlAtom20 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom20
  ring

theorem seg5RStep215Pe (rho : Nat -> Seg5.F) (r1903 : Seg5.relationRow1903 rho) :
    seg5RPe215 rho = seg5RPe216 rho * rho 1402 := by
  unfold Seg5.relationRow1903 at r1903
  unfold seg5RPe215 seg5RPe216
  linear_combination -r1903

theorem seg5RStep215 (rho : Nat -> Seg5.F) (r1901 : Seg5.relationRow1901 rho) (r1902 : Seg5.relationRow1902 rho) (r1903 : Seg5.relationRow1903 rho) :
    seg5RPe215 rho = seg5RPe216 rho * rho 1402 ∧
    seg5RIl215 rho = seg5RIl216 rho + seg5RPe216 rho * (1 - rho 1402) -
      seg5RIl216 rho * (seg5RPe216 rho * (1 - rho 1402)) := by
  constructor
  · exact seg5RStep215Pe rho r1903
  · rw [seg5RStep215Acc rho, seg5RStep215L rho r1901, seg5RStep215IlMul rho r1902, seg5RStep215L rho r1901]

theorem seg5_r_chunk215 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 216 (seg5RPeState rho 216) (seg5RIlState rho 216) := by
  have htail := seg5_r_chunk214 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1901, r1902, r1903, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 215 ≤ n → n < 216 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 215 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep215 rho r1901 r1902 r1903
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 215 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
