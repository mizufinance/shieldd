import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk223

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep224L (rho : Nat -> Seg5.F) (r1882 : Seg5.relationRow1882 rho) :
    rho 1580 = seg5RPe225 rho * (1 - rho 1411) := by
  unfold Seg5.relationRow1882 at r1882
  unfold seg5RPe225
  linear_combination -r1882

theorem seg5RStep224IlMul (rho : Nat -> Seg5.F) (r1883 : Seg5.relationRow1883 rho) :
    rho 1581 = seg5RIl225 rho * (rho 1580) := by
  unfold Seg5.relationRow1883 at r1883
  rw [seg5RIl225Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom10 seg5RIlAtom11 seg5RIlAtom12 seg5RIlAtom13 seg5RIlAtom2 seg5RIlAtom3 seg5RIlAtom4 seg5RIlAtom5 seg5RIlAtom6 seg5RIlAtom7 seg5RIlAtom8 seg5RIlAtom9
  linear_combination -r1883

theorem seg5RStep224Acc (rho : Nat -> Seg5.F) :
    seg5RIl224 rho = seg5RIl225 rho + (rho 1580) - (rho 1581) := by
  have hstate : seg5RIl224 rho = seg5RIl225 rho + seg5RIlAtom14 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom14
  ring

theorem seg5RStep224Pe (rho : Nat -> Seg5.F) (r1884 : Seg5.relationRow1884 rho) :
    seg5RPe224 rho = seg5RPe225 rho * rho 1411 := by
  unfold Seg5.relationRow1884 at r1884
  unfold seg5RPe224 seg5RPe225
  linear_combination -r1884

theorem seg5RStep224 (rho : Nat -> Seg5.F) (r1882 : Seg5.relationRow1882 rho) (r1883 : Seg5.relationRow1883 rho) (r1884 : Seg5.relationRow1884 rho) :
    seg5RPe224 rho = seg5RPe225 rho * rho 1411 ∧
    seg5RIl224 rho = seg5RIl225 rho + seg5RPe225 rho * (1 - rho 1411) -
      seg5RIl225 rho * (seg5RPe225 rho * (1 - rho 1411)) := by
  constructor
  · exact seg5RStep224Pe rho r1884
  · rw [seg5RStep224Acc rho, seg5RStep224L rho r1882, seg5RStep224IlMul rho r1883, seg5RStep224L rho r1882]

theorem seg5_r_chunk224 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 225 (seg5RPeState rho 225) (seg5RIlState rho 225) := by
  have htail := seg5_r_chunk223 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1882, r1883, r1884, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 224 ≤ n → n < 225 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 224 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep224 rho r1882 r1883 r1884
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 224 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
