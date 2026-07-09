import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk231

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep232L (rho : Nat -> Seg5.F) (r1864 : Seg5.relationRow1864 rho) :
    rho 1562 = seg5RPe233 rho * (1 - rho 1419) := by
  unfold Seg5.relationRow1864 at r1864
  unfold seg5RPe233
  linear_combination -r1864

theorem seg5RStep232IlMul (rho : Nat -> Seg5.F) (r1865 : Seg5.relationRow1865 rho) :
    rho 1563 = seg5RIl233 rho * (rho 1562) := by
  unfold Seg5.relationRow1865 at r1865
  rw [seg5RIl233Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom2 seg5RIlAtom3 seg5RIlAtom4 seg5RIlAtom5 seg5RIlAtom6 seg5RIlAtom7 seg5RIlAtom8
  linear_combination -r1865

theorem seg5RStep232Acc (rho : Nat -> Seg5.F) :
    seg5RIl232 rho = seg5RIl233 rho + (rho 1562) - (rho 1563) := by
  have hstate : seg5RIl232 rho = seg5RIl233 rho + seg5RIlAtom9 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom9
  ring

theorem seg5RStep232Pe (rho : Nat -> Seg5.F) (r1866 : Seg5.relationRow1866 rho) :
    seg5RPe232 rho = seg5RPe233 rho * rho 1419 := by
  unfold Seg5.relationRow1866 at r1866
  unfold seg5RPe232 seg5RPe233
  linear_combination -r1866

theorem seg5RStep232 (rho : Nat -> Seg5.F) (r1864 : Seg5.relationRow1864 rho) (r1865 : Seg5.relationRow1865 rho) (r1866 : Seg5.relationRow1866 rho) :
    seg5RPe232 rho = seg5RPe233 rho * rho 1419 ∧
    seg5RIl232 rho = seg5RIl233 rho + seg5RPe233 rho * (1 - rho 1419) -
      seg5RIl233 rho * (seg5RPe233 rho * (1 - rho 1419)) := by
  constructor
  · exact seg5RStep232Pe rho r1866
  · rw [seg5RStep232Acc rho, seg5RStep232L rho r1864, seg5RStep232IlMul rho r1865, seg5RStep232L rho r1864]

theorem seg5_r_chunk232 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 233 (seg5RPeState rho 233) (seg5RIlState rho 233) := by
  have htail := seg5_r_chunk231 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1864, r1865, r1866, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 232 ≤ n → n < 233 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 232 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep232 rho r1864 r1865 r1866
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 232 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
