import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk244

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep245L (rho : Nat -> Seg45.F) (r1837 : Seg45.relationRow1837 rho) :
    rho 40068 = seg45RPe246 rho * (1 - rho 39965) := by
  unfold Seg45.relationRow1837 at r1837
  unfold seg45RPe246
  linear_combination -r1837

theorem seg45RStep245IlMul (rho : Nat -> Seg45.F) (r1838 : Seg45.relationRow1838 rho) :
    rho 40069 = seg45RIl246 rho * (rho 40068) := by
  unfold Seg45.relationRow1838 at r1838
  rw [seg45RIl246Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1
  linear_combination -r1838

theorem seg45RStep245Acc (rho : Nat -> Seg45.F) :
    seg45RIl245 rho = seg45RIl246 rho + (rho 40068) - (rho 40069) := by
  have hstate : seg45RIl245 rho = seg45RIl246 rho + seg45RIlAtom2 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom2
  ring

theorem seg45RStep245Pe (rho : Nat -> Seg45.F) (r1839 : Seg45.relationRow1839 rho) :
    seg45RPe245 rho = seg45RPe246 rho * rho 39965 := by
  unfold Seg45.relationRow1839 at r1839
  unfold seg45RPe245 seg45RPe246
  linear_combination -r1839

theorem seg45RStep245 (rho : Nat -> Seg45.F) (r1837 : Seg45.relationRow1837 rho) (r1838 : Seg45.relationRow1838 rho) (r1839 : Seg45.relationRow1839 rho) :
    seg45RPe245 rho = seg45RPe246 rho * rho 39965 ∧
    seg45RIl245 rho = seg45RIl246 rho + seg45RPe246 rho * (1 - rho 39965) -
      seg45RIl246 rho * (seg45RPe246 rho * (1 - rho 39965)) := by
  constructor
  · exact seg45RStep245Pe rho r1839
  · rw [seg45RStep245Acc rho, seg45RStep245L rho r1837, seg45RStep245IlMul rho r1838, seg45RStep245L rho r1837]

theorem seg45_r_chunk245 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 246 (seg45RPeState rho 246) (seg45RIlState rho 246) := by
  have htail := seg45_r_chunk244 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1837, r1838, r1839⟩
  have hsteps : ∀ n, 245 ≤ n → n < 246 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 245 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep245 rho r1837 r1838 r1839
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 245 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
