import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk214

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep215L (rho : Nat -> Seg16.F) (r1901 : Seg16.relationRow1901 rho) :
    rho 14476 = seg16RPe216 rho * (1 - rho 14279) := by
  unfold Seg16.relationRow1901 at r1901
  unfold seg16RPe216
  linear_combination -r1901

theorem seg16RStep215IlMul (rho : Nat -> Seg16.F) (r1902 : Seg16.relationRow1902 rho) :
    rho 14477 = seg16RIl216 rho * (rho 14476) := by
  unfold Seg16.relationRow1902 at r1902
  rw [seg16RStep215IlLc rho] at r1902
  linear_combination -r1902

theorem seg16RStep215Acc (rho : Nat -> Seg16.F) :
    seg16RIl215 rho = seg16RIl216 rho + (rho 14476) - (rho 14477) := by
  have hstate : seg16RIl215 rho = seg16RIl216 rho + seg16RIlAtom20 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom20
  ring

theorem seg16RStep215Pe (rho : Nat -> Seg16.F) (r1903 : Seg16.relationRow1903 rho) :
    seg16RPe215 rho = seg16RPe216 rho * rho 14279 := by
  unfold Seg16.relationRow1903 at r1903
  unfold seg16RPe215 seg16RPe216
  linear_combination -r1903

theorem seg16RStep215 (rho : Nat -> Seg16.F) (r1901 : Seg16.relationRow1901 rho) (r1902 : Seg16.relationRow1902 rho) (r1903 : Seg16.relationRow1903 rho) :
    seg16RPe215 rho = seg16RPe216 rho * rho 14279 ∧
    seg16RIl215 rho = seg16RIl216 rho + seg16RPe216 rho * (1 - rho 14279) -
      seg16RIl216 rho * (seg16RPe216 rho * (1 - rho 14279)) := by
  constructor
  · exact seg16RStep215Pe rho r1903
  · rw [seg16RStep215Acc rho, seg16RStep215L rho r1901, seg16RStep215IlMul rho r1902, seg16RStep215L rho r1901]

theorem seg16_r_chunk215 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 216 (seg16RPeState rho 216) (seg16RIlState rho 216) := by
  have htail := seg16_r_chunk214 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1901, r1902, r1903, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 215 ≤ n → n < 216 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 215 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep215 rho r1901 r1902 r1903
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 215 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
