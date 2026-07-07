import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk244

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep245L (rho : Nat -> Seg34.F) (r1837 : Seg34.relationRow1837 rho) :
    rho 33112 = seg34RPe246 rho * (1 - rho 33009) := by
  unfold Seg34.relationRow1837 at r1837
  unfold seg34RPe246
  linear_combination -r1837

theorem seg34RStep245IlMul (rho : Nat -> Seg34.F) (r1838 : Seg34.relationRow1838 rho) :
    rho 33113 = seg34RIl246 rho * (rho 33112) := by
  unfold Seg34.relationRow1838 at r1838
  rw [seg34RIl246Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1
  linear_combination -r1838

theorem seg34RStep245Acc (rho : Nat -> Seg34.F) :
    seg34RIl245 rho = seg34RIl246 rho + (rho 33112) - (rho 33113) := by
  have hstate : seg34RIl245 rho = seg34RIl246 rho + seg34RIlAtom2 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom2
  ring

theorem seg34RStep245Pe (rho : Nat -> Seg34.F) (r1839 : Seg34.relationRow1839 rho) :
    seg34RPe245 rho = seg34RPe246 rho * rho 33009 := by
  unfold Seg34.relationRow1839 at r1839
  unfold seg34RPe245 seg34RPe246
  linear_combination -r1839

theorem seg34RStep245 (rho : Nat -> Seg34.F) (r1837 : Seg34.relationRow1837 rho) (r1838 : Seg34.relationRow1838 rho) (r1839 : Seg34.relationRow1839 rho) :
    seg34RPe245 rho = seg34RPe246 rho * rho 33009 ∧
    seg34RIl245 rho = seg34RIl246 rho + seg34RPe246 rho * (1 - rho 33009) -
      seg34RIl246 rho * (seg34RPe246 rho * (1 - rho 33009)) := by
  constructor
  · exact seg34RStep245Pe rho r1839
  · rw [seg34RStep245Acc rho, seg34RStep245L rho r1837, seg34RStep245IlMul rho r1838, seg34RStep245L rho r1837]

theorem seg34_r_chunk245 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 246 (seg34RPeState rho 246) (seg34RIlState rho 246) := by
  have htail := seg34_r_chunk244 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1837, r1838, r1839⟩
  have hsteps : ∀ n, 245 ≤ n → n < 246 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 245 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep245 rho r1837 r1838 r1839
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 245 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
