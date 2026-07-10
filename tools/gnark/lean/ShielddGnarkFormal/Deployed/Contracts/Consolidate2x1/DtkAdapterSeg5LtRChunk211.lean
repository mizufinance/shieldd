import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk210

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep211L (rho : Nat -> Seg5.F) (r1907 : Seg5.relationRow1907 rho) :
    rho 1605 = seg5RPe212 rho * (1 - rho 1398) := by
  unfold Seg5.relationRow1907 at r1907
  unfold seg5RPe212
  linear_combination -r1907

theorem seg5RStep211IlMul (rho : Nat -> Seg5.F) (r1908 : Seg5.relationRow1908 rho) :
    rho 1606 = seg5RIl212 rho * (rho 1605) := by
  unfold Seg5.relationRow1908 at r1908
  rw [seg5RStep211IlLc rho] at r1908
  linear_combination -r1908

theorem seg5RStep211Acc (rho : Nat -> Seg5.F) :
    seg5RIl211 rho = seg5RIl212 rho + (rho 1605) - (rho 1606) := by
  have hstate : seg5RIl211 rho = seg5RIl212 rho + seg5RIlAtom21 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom21
  ring

theorem seg5RStep211Pe (rho : Nat -> Seg5.F) (r1909 : Seg5.relationRow1909 rho) :
    seg5RPe211 rho = seg5RPe212 rho * rho 1398 := by
  unfold Seg5.relationRow1909 at r1909
  unfold seg5RPe211 seg5RPe212
  linear_combination -r1909

theorem seg5RStep211 (rho : Nat -> Seg5.F) (r1907 : Seg5.relationRow1907 rho) (r1908 : Seg5.relationRow1908 rho) (r1909 : Seg5.relationRow1909 rho) :
    seg5RPe211 rho = seg5RPe212 rho * rho 1398 ∧
    seg5RIl211 rho = seg5RIl212 rho + seg5RPe212 rho * (1 - rho 1398) -
      seg5RIl212 rho * (seg5RPe212 rho * (1 - rho 1398)) := by
  constructor
  · exact seg5RStep211Pe rho r1909
  · rw [seg5RStep211Acc rho, seg5RStep211L rho r1907, seg5RStep211IlMul rho r1908, seg5RStep211L rho r1907]

theorem seg5_r_chunk211 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 212 (seg5RPeState rho 212) (seg5RIlState rho 212) := by
  have htail := seg5_r_chunk210 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1907, r1908, r1909, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 211 ≤ n → n < 212 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 211 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep211 rho r1907 r1908 r1909
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 211 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
