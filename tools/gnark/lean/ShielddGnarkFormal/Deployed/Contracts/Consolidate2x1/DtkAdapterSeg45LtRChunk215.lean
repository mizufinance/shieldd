import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk214

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep215L (rho : Nat -> Seg45.F) (r1901 : Seg45.relationRow1901 rho) :
    rho 40132 = seg45RPe216 rho * (1 - rho 39935) := by
  unfold Seg45.relationRow1901 at r1901
  unfold seg45RPe216
  linear_combination -r1901

theorem seg45RStep215IlMul (rho : Nat -> Seg45.F) (r1902 : Seg45.relationRow1902 rho) :
    rho 40133 = seg45RIl216 rho * (rho 40132) := by
  unfold Seg45.relationRow1902 at r1902
  rw [seg45RStep215IlLc rho] at r1902
  linear_combination -r1902

theorem seg45RStep215Acc (rho : Nat -> Seg45.F) :
    seg45RIl215 rho = seg45RIl216 rho + (rho 40132) - (rho 40133) := by
  have hstate : seg45RIl215 rho = seg45RIl216 rho + seg45RIlAtom20 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom20
  ring

theorem seg45RStep215Pe (rho : Nat -> Seg45.F) (r1903 : Seg45.relationRow1903 rho) :
    seg45RPe215 rho = seg45RPe216 rho * rho 39935 := by
  unfold Seg45.relationRow1903 at r1903
  unfold seg45RPe215 seg45RPe216
  linear_combination -r1903

theorem seg45RStep215 (rho : Nat -> Seg45.F) (r1901 : Seg45.relationRow1901 rho) (r1902 : Seg45.relationRow1902 rho) (r1903 : Seg45.relationRow1903 rho) :
    seg45RPe215 rho = seg45RPe216 rho * rho 39935 ∧
    seg45RIl215 rho = seg45RIl216 rho + seg45RPe216 rho * (1 - rho 39935) -
      seg45RIl216 rho * (seg45RPe216 rho * (1 - rho 39935)) := by
  constructor
  · exact seg45RStep215Pe rho r1903
  · rw [seg45RStep215Acc rho, seg45RStep215L rho r1901, seg45RStep215IlMul rho r1902, seg45RStep215L rho r1901]

theorem seg45_r_chunk215 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 216 (seg45RPeState rho 216) (seg45RIlState rho 216) := by
  have htail := seg45_r_chunk214 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1901, r1902, r1903, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 215 ≤ n → n < 216 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 215 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep215 rho r1901 r1902 r1903
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 215 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
