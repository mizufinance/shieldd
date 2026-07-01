import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk217

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep218L (rho : Nat -> Seg34.F) (r1894 : Seg34.relationRow1894 rho) :
    rho 33169 = seg34RPe219 rho * (1 - rho 32982) := by
  unfold Seg34.relationRow1894 at r1894
  unfold seg34RPe219
  linear_combination -r1894

theorem seg34RStep218IlMul (rho : Nat -> Seg34.F) (r1895 : Seg34.relationRow1895 rho) :
    rho 33170 = seg34RIl219 rho * (rho 33169) := by
  unfold Seg34.relationRow1895 at r1895
  rw [seg34RStep218IlLc rho] at r1895
  linear_combination -r1895

theorem seg34RStep218Acc (rho : Nat -> Seg34.F) :
    seg34RIl218 rho = seg34RIl219 rho + (rho 33169) - (rho 33170) := by
  have hstate : seg34RIl218 rho = seg34RIl219 rho + seg34RIlAtom18 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom18
  ring

theorem seg34RStep218Pe (rho : Nat -> Seg34.F) (r1896 : Seg34.relationRow1896 rho) :
    seg34RPe218 rho = seg34RPe219 rho * rho 32982 := by
  unfold Seg34.relationRow1896 at r1896
  unfold seg34RPe218 seg34RPe219
  linear_combination -r1896

theorem seg34RStep218 (rho : Nat -> Seg34.F) (r1894 : Seg34.relationRow1894 rho) (r1895 : Seg34.relationRow1895 rho) (r1896 : Seg34.relationRow1896 rho) :
    seg34RPe218 rho = seg34RPe219 rho * rho 32982 ∧
    seg34RIl218 rho = seg34RIl219 rho + seg34RPe219 rho * (1 - rho 32982) -
      seg34RIl219 rho * (seg34RPe219 rho * (1 - rho 32982)) := by
  constructor
  · exact seg34RStep218Pe rho r1896
  · rw [seg34RStep218Acc rho, seg34RStep218L rho r1894, seg34RStep218IlMul rho r1895, seg34RStep218L rho r1894]

theorem seg34_r_chunk218 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 219 (seg34RPeState rho 219) (seg34RIlState rho 219) := by
  have htail := seg34_r_chunk217 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1894, r1895, r1896, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 218 ≤ n → n < 219 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 218 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep218 rho r1894 r1895 r1896
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 218 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
