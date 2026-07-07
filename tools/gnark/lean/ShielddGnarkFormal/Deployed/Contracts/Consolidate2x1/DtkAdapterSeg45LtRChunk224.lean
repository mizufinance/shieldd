import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk223

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep224L (rho : Nat -> Seg45.F) (r1882 : Seg45.relationRow1882 rho) :
    rho 40113 = seg45RPe225 rho * (1 - rho 39944) := by
  unfold Seg45.relationRow1882 at r1882
  unfold seg45RPe225
  linear_combination -r1882

theorem seg45RStep224IlMul (rho : Nat -> Seg45.F) (r1883 : Seg45.relationRow1883 rho) :
    rho 40114 = seg45RIl225 rho * (rho 40113) := by
  unfold Seg45.relationRow1883 at r1883
  rw [seg45RIl225Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom10 seg45RIlAtom11 seg45RIlAtom12 seg45RIlAtom13 seg45RIlAtom2 seg45RIlAtom3 seg45RIlAtom4 seg45RIlAtom5 seg45RIlAtom6 seg45RIlAtom7 seg45RIlAtom8 seg45RIlAtom9
  linear_combination -r1883

theorem seg45RStep224Acc (rho : Nat -> Seg45.F) :
    seg45RIl224 rho = seg45RIl225 rho + (rho 40113) - (rho 40114) := by
  have hstate : seg45RIl224 rho = seg45RIl225 rho + seg45RIlAtom14 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom14
  ring

theorem seg45RStep224Pe (rho : Nat -> Seg45.F) (r1884 : Seg45.relationRow1884 rho) :
    seg45RPe224 rho = seg45RPe225 rho * rho 39944 := by
  unfold Seg45.relationRow1884 at r1884
  unfold seg45RPe224 seg45RPe225
  linear_combination -r1884

theorem seg45RStep224 (rho : Nat -> Seg45.F) (r1882 : Seg45.relationRow1882 rho) (r1883 : Seg45.relationRow1883 rho) (r1884 : Seg45.relationRow1884 rho) :
    seg45RPe224 rho = seg45RPe225 rho * rho 39944 ∧
    seg45RIl224 rho = seg45RIl225 rho + seg45RPe225 rho * (1 - rho 39944) -
      seg45RIl225 rho * (seg45RPe225 rho * (1 - rho 39944)) := by
  constructor
  · exact seg45RStep224Pe rho r1884
  · rw [seg45RStep224Acc rho, seg45RStep224L rho r1882, seg45RStep224IlMul rho r1883, seg45RStep224L rho r1882]

theorem seg45_r_chunk224 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 225 (seg45RPeState rho 225) (seg45RIlState rho 225) := by
  have htail := seg45_r_chunk223 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1882, r1883, r1884, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 224 ≤ n → n < 225 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 224 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep224 rho r1882 r1883 r1884
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 224 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
