import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk244

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep245L (rho : Nat -> Seg6.F) (r1837 : Seg6.relationRow1837 rho) :
    rho 2232 = seg6RPe246 rho * (1 - rho 2129) := by
  unfold Seg6.relationRow1837 at r1837
  unfold seg6RPe246
  linear_combination -r1837

theorem seg6RStep245IlMul (rho : Nat -> Seg6.F) (r1838 : Seg6.relationRow1838 rho) :
    rho 2233 = seg6RIl246 rho * (rho 2232) := by
  unfold Seg6.relationRow1838 at r1838
  rw [seg6RIl246Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1
  linear_combination -r1838

theorem seg6RStep245Acc (rho : Nat -> Seg6.F) :
    seg6RIl245 rho = seg6RIl246 rho + (rho 2232) - (rho 2233) := by
  have hstate : seg6RIl245 rho = seg6RIl246 rho + seg6RIlAtom2 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom2
  ring

theorem seg6RStep245Pe (rho : Nat -> Seg6.F) (r1839 : Seg6.relationRow1839 rho) :
    seg6RPe245 rho = seg6RPe246 rho * rho 2129 := by
  unfold Seg6.relationRow1839 at r1839
  unfold seg6RPe245 seg6RPe246
  linear_combination -r1839

theorem seg6RStep245 (rho : Nat -> Seg6.F) (r1837 : Seg6.relationRow1837 rho) (r1838 : Seg6.relationRow1838 rho) (r1839 : Seg6.relationRow1839 rho) :
    seg6RPe245 rho = seg6RPe246 rho * rho 2129 ∧
    seg6RIl245 rho = seg6RIl246 rho + seg6RPe246 rho * (1 - rho 2129) -
      seg6RIl246 rho * (seg6RPe246 rho * (1 - rho 2129)) := by
  constructor
  · exact seg6RStep245Pe rho r1839
  · rw [seg6RStep245Acc rho, seg6RStep245L rho r1837, seg6RStep245IlMul rho r1838, seg6RStep245L rho r1837]

theorem seg6_r_chunk245 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 246 (seg6RPeState rho 246) (seg6RIlState rho 246) := by
  have htail := seg6_r_chunk244 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1837, r1838, r1839⟩
  have hsteps : ∀ n, 245 ≤ n → n < 246 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 245 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep245 rho r1837 r1838 r1839
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 245 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
