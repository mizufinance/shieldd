import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk244

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep245L (rho : Nat -> Seg16.F) (r1837 : Seg16.relationRow1837 rho) :
    rho 14412 = seg16RPe246 rho * (1 - rho 14309) := by
  unfold Seg16.relationRow1837 at r1837
  unfold seg16RPe246
  linear_combination -r1837

theorem seg16RStep245IlMul (rho : Nat -> Seg16.F) (r1838 : Seg16.relationRow1838 rho) :
    rho 14413 = seg16RIl246 rho * (rho 14412) := by
  unfold Seg16.relationRow1838 at r1838
  rw [seg16RIl246Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1
  linear_combination -r1838

theorem seg16RStep245Acc (rho : Nat -> Seg16.F) :
    seg16RIl245 rho = seg16RIl246 rho + (rho 14412) - (rho 14413) := by
  have hstate : seg16RIl245 rho = seg16RIl246 rho + seg16RIlAtom2 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom2
  ring

theorem seg16RStep245Pe (rho : Nat -> Seg16.F) (r1839 : Seg16.relationRow1839 rho) :
    seg16RPe245 rho = seg16RPe246 rho * rho 14309 := by
  unfold Seg16.relationRow1839 at r1839
  unfold seg16RPe245 seg16RPe246
  linear_combination -r1839

theorem seg16RStep245 (rho : Nat -> Seg16.F) (r1837 : Seg16.relationRow1837 rho) (r1838 : Seg16.relationRow1838 rho) (r1839 : Seg16.relationRow1839 rho) :
    seg16RPe245 rho = seg16RPe246 rho * rho 14309 ∧
    seg16RIl245 rho = seg16RIl246 rho + seg16RPe246 rho * (1 - rho 14309) -
      seg16RIl246 rho * (seg16RPe246 rho * (1 - rho 14309)) := by
  constructor
  · exact seg16RStep245Pe rho r1839
  · rw [seg16RStep245Acc rho, seg16RStep245L rho r1837, seg16RStep245IlMul rho r1838, seg16RStep245L rho r1837]

theorem seg16_r_chunk245 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 246 (seg16RPeState rho 246) (seg16RIlState rho 246) := by
  have htail := seg16_r_chunk244 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1837, r1838, r1839⟩
  have hsteps : ∀ n, 245 ≤ n → n < 246 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 245 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep245 rho r1837 r1838 r1839
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 245 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
