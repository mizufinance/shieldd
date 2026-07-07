import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk217

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep218L (rho : Nat -> Seg45.F) (r1894 : Seg45.relationRow1894 rho) :
    rho 40125 = seg45RPe219 rho * (1 - rho 39938) := by
  unfold Seg45.relationRow1894 at r1894
  unfold seg45RPe219
  linear_combination -r1894

theorem seg45RStep218IlMul (rho : Nat -> Seg45.F) (r1895 : Seg45.relationRow1895 rho) :
    rho 40126 = seg45RIl219 rho * (rho 40125) := by
  unfold Seg45.relationRow1895 at r1895
  rw [seg45RStep218IlLc rho] at r1895
  linear_combination -r1895

theorem seg45RStep218Acc (rho : Nat -> Seg45.F) :
    seg45RIl218 rho = seg45RIl219 rho + (rho 40125) - (rho 40126) := by
  have hstate : seg45RIl218 rho = seg45RIl219 rho + seg45RIlAtom18 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom18
  ring

theorem seg45RStep218Pe (rho : Nat -> Seg45.F) (r1896 : Seg45.relationRow1896 rho) :
    seg45RPe218 rho = seg45RPe219 rho * rho 39938 := by
  unfold Seg45.relationRow1896 at r1896
  unfold seg45RPe218 seg45RPe219
  linear_combination -r1896

theorem seg45RStep218 (rho : Nat -> Seg45.F) (r1894 : Seg45.relationRow1894 rho) (r1895 : Seg45.relationRow1895 rho) (r1896 : Seg45.relationRow1896 rho) :
    seg45RPe218 rho = seg45RPe219 rho * rho 39938 ∧
    seg45RIl218 rho = seg45RIl219 rho + seg45RPe219 rho * (1 - rho 39938) -
      seg45RIl219 rho * (seg45RPe219 rho * (1 - rho 39938)) := by
  constructor
  · exact seg45RStep218Pe rho r1896
  · rw [seg45RStep218Acc rho, seg45RStep218L rho r1894, seg45RStep218IlMul rho r1895, seg45RStep218L rho r1894]

theorem seg45_r_chunk218 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 219 (seg45RPeState rho 219) (seg45RIlState rho 219) := by
  have htail := seg45_r_chunk217 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1894, r1895, r1896, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 218 ≤ n → n < 219 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 218 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep218 rho r1894 r1895 r1896
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 218 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
