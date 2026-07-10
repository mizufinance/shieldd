import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk237

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep238L (rho : Nat -> Seg5.F) (r1852 : Seg5.relationRow1852 rho) :
    rho 1550 = seg5RPe239 rho * (1 - rho 1425) := by
  unfold Seg5.relationRow1852 at r1852
  unfold seg5RPe239
  linear_combination -r1852

theorem seg5RStep238IlMul (rho : Nat -> Seg5.F) (r1853 : Seg5.relationRow1853 rho) :
    rho 1551 = seg5RIl239 rho * (rho 1550) := by
  unfold Seg5.relationRow1853 at r1853
  rw [seg5RIl239Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom2 seg5RIlAtom3 seg5RIlAtom4 seg5RIlAtom5
  linear_combination -r1853

theorem seg5RStep238Acc (rho : Nat -> Seg5.F) :
    seg5RIl238 rho = seg5RIl239 rho + (rho 1550) - (rho 1551) := by
  have hstate : seg5RIl238 rho = seg5RIl239 rho + seg5RIlAtom6 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom6
  ring

theorem seg5RStep238Pe (rho : Nat -> Seg5.F) (r1854 : Seg5.relationRow1854 rho) :
    seg5RPe238 rho = seg5RPe239 rho * rho 1425 := by
  unfold Seg5.relationRow1854 at r1854
  unfold seg5RPe238 seg5RPe239
  linear_combination -r1854

theorem seg5RStep238 (rho : Nat -> Seg5.F) (r1852 : Seg5.relationRow1852 rho) (r1853 : Seg5.relationRow1853 rho) (r1854 : Seg5.relationRow1854 rho) :
    seg5RPe238 rho = seg5RPe239 rho * rho 1425 ∧
    seg5RIl238 rho = seg5RIl239 rho + seg5RPe239 rho * (1 - rho 1425) -
      seg5RIl239 rho * (seg5RPe239 rho * (1 - rho 1425)) := by
  constructor
  · exact seg5RStep238Pe rho r1854
  · rw [seg5RStep238Acc rho, seg5RStep238L rho r1852, seg5RStep238IlMul rho r1853, seg5RStep238L rho r1852]

theorem seg5_r_chunk238 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 239 (seg5RPeState rho 239) (seg5RIlState rho 239) := by
  have htail := seg5_r_chunk237 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r1852, r1853, r1854, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 238 ≤ n → n < 239 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 238 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep238 rho r1852 r1853 r1854
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 238 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
