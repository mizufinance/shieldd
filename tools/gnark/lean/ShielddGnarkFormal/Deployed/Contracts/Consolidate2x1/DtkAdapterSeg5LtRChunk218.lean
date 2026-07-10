import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk217

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep218L (rho : Nat -> Seg5.F) (r1894 : Seg5.relationRow1894 rho) :
    rho 1592 = seg5RPe219 rho * (1 - rho 1405) := by
  unfold Seg5.relationRow1894 at r1894
  unfold seg5RPe219
  linear_combination -r1894

theorem seg5RStep218IlMul (rho : Nat -> Seg5.F) (r1895 : Seg5.relationRow1895 rho) :
    rho 1593 = seg5RIl219 rho * (rho 1592) := by
  unfold Seg5.relationRow1895 at r1895
  rw [seg5RStep218IlLc rho] at r1895
  linear_combination -r1895

theorem seg5RStep218Acc (rho : Nat -> Seg5.F) :
    seg5RIl218 rho = seg5RIl219 rho + (rho 1592) - (rho 1593) := by
  have hstate : seg5RIl218 rho = seg5RIl219 rho + seg5RIlAtom18 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom18
  ring

theorem seg5RStep218Pe (rho : Nat -> Seg5.F) (r1896 : Seg5.relationRow1896 rho) :
    seg5RPe218 rho = seg5RPe219 rho * rho 1405 := by
  unfold Seg5.relationRow1896 at r1896
  unfold seg5RPe218 seg5RPe219
  linear_combination -r1896

theorem seg5RStep218 (rho : Nat -> Seg5.F) (r1894 : Seg5.relationRow1894 rho) (r1895 : Seg5.relationRow1895 rho) (r1896 : Seg5.relationRow1896 rho) :
    seg5RPe218 rho = seg5RPe219 rho * rho 1405 ∧
    seg5RIl218 rho = seg5RIl219 rho + seg5RPe219 rho * (1 - rho 1405) -
      seg5RIl219 rho * (seg5RPe219 rho * (1 - rho 1405)) := by
  constructor
  · exact seg5RStep218Pe rho r1896
  · rw [seg5RStep218Acc rho, seg5RStep218L rho r1894, seg5RStep218IlMul rho r1895, seg5RStep218L rho r1894]

theorem seg5_r_chunk218 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 219 (seg5RPeState rho 219) (seg5RIlState rho 219) := by
  have htail := seg5_r_chunk217 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1894, r1895, r1896, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 218 ≤ n → n < 219 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 218 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep218 rho r1894 r1895 r1896
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 218 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
