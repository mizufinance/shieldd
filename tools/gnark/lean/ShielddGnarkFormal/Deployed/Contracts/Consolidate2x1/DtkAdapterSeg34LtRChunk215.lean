import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk214

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep215L (rho : Nat -> Seg34.F) (r1901 : Seg34.relationRow1901 rho) :
    rho 33176 = seg34RPe216 rho * (1 - rho 32979) := by
  unfold Seg34.relationRow1901 at r1901
  unfold seg34RPe216
  linear_combination -r1901

theorem seg34RStep215IlMul (rho : Nat -> Seg34.F) (r1902 : Seg34.relationRow1902 rho) :
    rho 33177 = seg34RIl216 rho * (rho 33176) := by
  unfold Seg34.relationRow1902 at r1902
  rw [seg34RStep215IlLc rho] at r1902
  linear_combination -r1902

theorem seg34RStep215Acc (rho : Nat -> Seg34.F) :
    seg34RIl215 rho = seg34RIl216 rho + (rho 33176) - (rho 33177) := by
  have hstate : seg34RIl215 rho = seg34RIl216 rho + seg34RIlAtom20 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom20
  ring

theorem seg34RStep215Pe (rho : Nat -> Seg34.F) (r1903 : Seg34.relationRow1903 rho) :
    seg34RPe215 rho = seg34RPe216 rho * rho 32979 := by
  unfold Seg34.relationRow1903 at r1903
  unfold seg34RPe215 seg34RPe216
  linear_combination -r1903

theorem seg34RStep215 (rho : Nat -> Seg34.F) (r1901 : Seg34.relationRow1901 rho) (r1902 : Seg34.relationRow1902 rho) (r1903 : Seg34.relationRow1903 rho) :
    seg34RPe215 rho = seg34RPe216 rho * rho 32979 ∧
    seg34RIl215 rho = seg34RIl216 rho + seg34RPe216 rho * (1 - rho 32979) -
      seg34RIl216 rho * (seg34RPe216 rho * (1 - rho 32979)) := by
  constructor
  · exact seg34RStep215Pe rho r1903
  · rw [seg34RStep215Acc rho, seg34RStep215L rho r1901, seg34RStep215IlMul rho r1902, seg34RStep215L rho r1901]

theorem seg34_r_chunk215 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 216 (seg34RPeState rho 216) (seg34RIlState rho 216) := by
  have htail := seg34_r_chunk214 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1901, r1902, r1903, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 215 ≤ n → n < 216 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 215 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep215 rho r1901 r1902 r1903
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 215 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
