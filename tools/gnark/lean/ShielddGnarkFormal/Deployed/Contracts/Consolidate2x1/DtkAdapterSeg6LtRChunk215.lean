import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk214

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep215L (rho : Nat -> Seg6.F) (r1901 : Seg6.relationRow1901 rho) :
    rho 2302 = seg6RPe216 rho * (1 - rho 2105) := by
  unfold Seg6.relationRow1901 at r1901
  unfold seg6RPe216
  linear_combination -r1901

theorem seg6RStep215IlMul (rho : Nat -> Seg6.F) (r1902 : Seg6.relationRow1902 rho) :
    rho 2303 = seg6RIl216 rho * (rho 2302) := by
  unfold Seg6.relationRow1902 at r1902
  rw [seg6RStep215IlLc rho] at r1902
  linear_combination -r1902

theorem seg6RStep215Acc (rho : Nat -> Seg6.F) :
    seg6RIl215 rho = seg6RIl216 rho + (rho 2302) - (rho 2303) := by
  have hstate : seg6RIl215 rho = seg6RIl216 rho + seg6RIlAtom20 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom20
  ring

theorem seg6RStep215Pe (rho : Nat -> Seg6.F) (r1903 : Seg6.relationRow1903 rho) :
    seg6RPe215 rho = seg6RPe216 rho * rho 2105 := by
  unfold Seg6.relationRow1903 at r1903
  unfold seg6RPe215 seg6RPe216
  linear_combination -r1903

theorem seg6RStep215 (rho : Nat -> Seg6.F) (r1901 : Seg6.relationRow1901 rho) (r1902 : Seg6.relationRow1902 rho) (r1903 : Seg6.relationRow1903 rho) :
    seg6RPe215 rho = seg6RPe216 rho * rho 2105 ∧
    seg6RIl215 rho = seg6RIl216 rho + seg6RPe216 rho * (1 - rho 2105) -
      seg6RIl216 rho * (seg6RPe216 rho * (1 - rho 2105)) := by
  constructor
  · exact seg6RStep215Pe rho r1903
  · rw [seg6RStep215Acc rho, seg6RStep215L rho r1901, seg6RStep215IlMul rho r1902, seg6RStep215L rho r1901]

theorem seg6_r_chunk215 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 216 (seg6RPeState rho 216) (seg6RIlState rho 216) := by
  have htail := seg6_r_chunk214 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1901, r1902, r1903, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 215 ≤ n → n < 216 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 215 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep215 rho r1901 r1902 r1903
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 215 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
