import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk231

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep232L (rho : Nat -> Seg45.F) (r1864 : Seg45.relationRow1864 rho) :
    rho 40095 = seg45RPe233 rho * (1 - rho 39952) := by
  unfold Seg45.relationRow1864 at r1864
  unfold seg45RPe233
  linear_combination -r1864

theorem seg45RStep232IlMul (rho : Nat -> Seg45.F) (r1865 : Seg45.relationRow1865 rho) :
    rho 40096 = seg45RIl233 rho * (rho 40095) := by
  unfold Seg45.relationRow1865 at r1865
  rw [seg45RIl233Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom2 seg45RIlAtom3 seg45RIlAtom4 seg45RIlAtom5 seg45RIlAtom6 seg45RIlAtom7 seg45RIlAtom8
  linear_combination -r1865

theorem seg45RStep232Acc (rho : Nat -> Seg45.F) :
    seg45RIl232 rho = seg45RIl233 rho + (rho 40095) - (rho 40096) := by
  have hstate : seg45RIl232 rho = seg45RIl233 rho + seg45RIlAtom9 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom9
  ring

theorem seg45RStep232Pe (rho : Nat -> Seg45.F) (r1866 : Seg45.relationRow1866 rho) :
    seg45RPe232 rho = seg45RPe233 rho * rho 39952 := by
  unfold Seg45.relationRow1866 at r1866
  unfold seg45RPe232 seg45RPe233
  linear_combination -r1866

theorem seg45RStep232 (rho : Nat -> Seg45.F) (r1864 : Seg45.relationRow1864 rho) (r1865 : Seg45.relationRow1865 rho) (r1866 : Seg45.relationRow1866 rho) :
    seg45RPe232 rho = seg45RPe233 rho * rho 39952 ∧
    seg45RIl232 rho = seg45RIl233 rho + seg45RPe233 rho * (1 - rho 39952) -
      seg45RIl233 rho * (seg45RPe233 rho * (1 - rho 39952)) := by
  constructor
  · exact seg45RStep232Pe rho r1866
  · rw [seg45RStep232Acc rho, seg45RStep232L rho r1864, seg45RStep232IlMul rho r1865, seg45RStep232L rho r1864]

theorem seg45_r_chunk232 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 233 (seg45RPeState rho 233) (seg45RIlState rho 233) := by
  have htail := seg45_r_chunk231 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1864, r1865, r1866, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 232 ≤ n → n < 233 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 232 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep232 rho r1864 r1865 r1866
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 232 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
