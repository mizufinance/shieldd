import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk238

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep239L (rho : Nat -> Seg5.F) (r1849 : Seg5.relationRow1849 rho) :
    rho 1547 = seg5RPe240 rho * (1 - rho 1426) := by
  unfold Seg5.relationRow1849 at r1849
  unfold seg5RPe240
  linear_combination -r1849

theorem seg5RStep239IlMul (rho : Nat -> Seg5.F) (r1850 : Seg5.relationRow1850 rho) :
    rho 1548 = seg5RIl240 rho * (rho 1547) := by
  unfold Seg5.relationRow1850 at r1850
  rw [seg5RIl240Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom2 seg5RIlAtom3 seg5RIlAtom4
  linear_combination -r1850

theorem seg5RStep239Acc (rho : Nat -> Seg5.F) :
    seg5RIl239 rho = seg5RIl240 rho + (rho 1547) - (rho 1548) := by
  have hstate : seg5RIl239 rho = seg5RIl240 rho + seg5RIlAtom5 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom5
  ring

theorem seg5RStep239Pe (rho : Nat -> Seg5.F) (r1851 : Seg5.relationRow1851 rho) :
    seg5RPe239 rho = seg5RPe240 rho * rho 1426 := by
  unfold Seg5.relationRow1851 at r1851
  unfold seg5RPe239 seg5RPe240
  linear_combination -r1851

theorem seg5RStep239 (rho : Nat -> Seg5.F) (r1849 : Seg5.relationRow1849 rho) (r1850 : Seg5.relationRow1850 rho) (r1851 : Seg5.relationRow1851 rho) :
    seg5RPe239 rho = seg5RPe240 rho * rho 1426 ∧
    seg5RIl239 rho = seg5RIl240 rho + seg5RPe240 rho * (1 - rho 1426) -
      seg5RIl240 rho * (seg5RPe240 rho * (1 - rho 1426)) := by
  constructor
  · exact seg5RStep239Pe rho r1851
  · rw [seg5RStep239Acc rho, seg5RStep239L rho r1849, seg5RStep239IlMul rho r1850, seg5RStep239L rho r1849]

theorem seg5_r_chunk239 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 240 (seg5RPeState rho 240) (seg5RIlState rho 240) := by
  have htail := seg5_r_chunk238 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, r1849, r1850, r1851, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 239 ≤ n → n < 240 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 239 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep239 rho r1849 r1850 r1851
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 239 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
