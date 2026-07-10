import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk240

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep241L (rho : Nat -> Seg5.F) (r1845 : Seg5.relationRow1845 rho) :
    rho 1543 = seg5RPe242 rho * (1 - rho 1428) := by
  unfold Seg5.relationRow1845 at r1845
  unfold seg5RPe242
  linear_combination -r1845

theorem seg5RStep241IlMul (rho : Nat -> Seg5.F) (r1846 : Seg5.relationRow1846 rho) :
    rho 1544 = seg5RIl242 rho * (rho 1543) := by
  unfold Seg5.relationRow1846 at r1846
  rw [seg5RIl242Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom2 seg5RIlAtom3
  linear_combination -r1846

theorem seg5RStep241Acc (rho : Nat -> Seg5.F) :
    seg5RIl241 rho = seg5RIl242 rho + (rho 1543) - (rho 1544) := by
  have hstate : seg5RIl241 rho = seg5RIl242 rho + seg5RIlAtom4 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom4
  ring

theorem seg5RStep241Pe (rho : Nat -> Seg5.F) (r1847 : Seg5.relationRow1847 rho) :
    seg5RPe241 rho = seg5RPe242 rho * rho 1428 := by
  unfold Seg5.relationRow1847 at r1847
  unfold seg5RPe241 seg5RPe242
  linear_combination -r1847

theorem seg5RStep241 (rho : Nat -> Seg5.F) (r1845 : Seg5.relationRow1845 rho) (r1846 : Seg5.relationRow1846 rho) (r1847 : Seg5.relationRow1847 rho) :
    seg5RPe241 rho = seg5RPe242 rho * rho 1428 ∧
    seg5RIl241 rho = seg5RIl242 rho + seg5RPe242 rho * (1 - rho 1428) -
      seg5RIl242 rho * (seg5RPe242 rho * (1 - rho 1428)) := by
  constructor
  · exact seg5RStep241Pe rho r1847
  · rw [seg5RStep241Acc rho, seg5RStep241L rho r1845, seg5RStep241IlMul rho r1846, seg5RStep241L rho r1845]

theorem seg5_r_chunk241 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 242 (seg5RPeState rho 242) (seg5RIlState rho 242) := by
  have htail := seg5_r_chunk240 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, r1845, r1846, r1847, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 241 ≤ n → n < 242 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 241 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep241 rho r1845 r1846 r1847
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 241 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
