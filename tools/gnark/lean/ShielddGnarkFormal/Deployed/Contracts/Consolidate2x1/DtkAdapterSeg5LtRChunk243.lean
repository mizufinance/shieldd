import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep243L (rho : Nat -> Seg5.F) (r1841 : Seg5.relationRow1841 rho) :
    rho 1539 = seg5RPe244 rho * (1 - rho 1430) := by
  unfold Seg5.relationRow1841 at r1841
  unfold seg5RPe244
  linear_combination -r1841

theorem seg5RStep243IlMul (rho : Nat -> Seg5.F) (r1842 : Seg5.relationRow1842 rho) :
    rho 1540 = seg5RIl244 rho * (rho 1539) := by
  unfold Seg5.relationRow1842 at r1842
  rw [seg5RIl244Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom2
  linear_combination -r1842

theorem seg5RStep243Acc (rho : Nat -> Seg5.F) :
    seg5RIl243 rho = seg5RIl244 rho + (rho 1539) - (rho 1540) := by
  have hstate : seg5RIl243 rho = seg5RIl244 rho + seg5RIlAtom3 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom3
  ring

theorem seg5RStep243Pe (rho : Nat -> Seg5.F) (r1843 : Seg5.relationRow1843 rho) :
    seg5RPe243 rho = seg5RPe244 rho * rho 1430 := by
  unfold Seg5.relationRow1843 at r1843
  unfold seg5RPe243 seg5RPe244
  linear_combination -r1843

theorem seg5RStep243 (rho : Nat -> Seg5.F) (r1841 : Seg5.relationRow1841 rho) (r1842 : Seg5.relationRow1842 rho) (r1843 : Seg5.relationRow1843 rho) :
    seg5RPe243 rho = seg5RPe244 rho * rho 1430 ∧
    seg5RIl243 rho = seg5RIl244 rho + seg5RPe244 rho * (1 - rho 1430) -
      seg5RIl244 rho * (seg5RPe244 rho * (1 - rho 1430)) := by
  constructor
  · exact seg5RStep243Pe rho r1843
  · rw [seg5RStep243Acc rho, seg5RStep243L rho r1841, seg5RStep243IlMul rho r1842, seg5RStep243L rho r1841]

theorem seg5_r_chunk243 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 244 (seg5RPeState rho 244) (seg5RIlState rho 244) := by
  have htail := seg5_r_chunk242 rho h k hq4
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
  rcases p23 with ⟨_, r1841, r1842, r1843, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 243 ≤ n → n < 244 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 243 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep243 rho r1841 r1842 r1843
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 243 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
