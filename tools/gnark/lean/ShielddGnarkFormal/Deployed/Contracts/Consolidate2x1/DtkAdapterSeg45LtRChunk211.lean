import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk210

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep211L (rho : Nat -> Seg45.F) (r1907 : Seg45.relationRow1907 rho) :
    rho 40138 = seg45RPe212 rho * (1 - rho 39931) := by
  unfold Seg45.relationRow1907 at r1907
  unfold seg45RPe212
  linear_combination -r1907

theorem seg45RStep211IlMul (rho : Nat -> Seg45.F) (r1908 : Seg45.relationRow1908 rho) :
    rho 40139 = seg45RIl212 rho * (rho 40138) := by
  unfold Seg45.relationRow1908 at r1908
  rw [seg45RStep211IlLc rho] at r1908
  linear_combination -r1908

theorem seg45RStep211Acc (rho : Nat -> Seg45.F) :
    seg45RIl211 rho = seg45RIl212 rho + (rho 40138) - (rho 40139) := by
  have hstate : seg45RIl211 rho = seg45RIl212 rho + seg45RIlAtom21 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom21
  ring

theorem seg45RStep211Pe (rho : Nat -> Seg45.F) (r1909 : Seg45.relationRow1909 rho) :
    seg45RPe211 rho = seg45RPe212 rho * rho 39931 := by
  unfold Seg45.relationRow1909 at r1909
  unfold seg45RPe211 seg45RPe212
  linear_combination -r1909

theorem seg45RStep211 (rho : Nat -> Seg45.F) (r1907 : Seg45.relationRow1907 rho) (r1908 : Seg45.relationRow1908 rho) (r1909 : Seg45.relationRow1909 rho) :
    seg45RPe211 rho = seg45RPe212 rho * rho 39931 ∧
    seg45RIl211 rho = seg45RIl212 rho + seg45RPe212 rho * (1 - rho 39931) -
      seg45RIl212 rho * (seg45RPe212 rho * (1 - rho 39931)) := by
  constructor
  · exact seg45RStep211Pe rho r1909
  · rw [seg45RStep211Acc rho, seg45RStep211L rho r1907, seg45RStep211IlMul rho r1908, seg45RStep211L rho r1907]

theorem seg45_r_chunk211 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 212 (seg45RPeState rho 212) (seg45RIlState rho 212) := by
  have htail := seg45_r_chunk210 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1907, r1908, r1909, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 211 ≤ n → n < 212 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 211 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep211 rho r1907 r1908 r1909
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 211 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
