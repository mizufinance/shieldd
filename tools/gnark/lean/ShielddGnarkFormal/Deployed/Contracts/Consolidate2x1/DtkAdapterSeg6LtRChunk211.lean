import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk210

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep211L (rho : Nat -> Seg6.F) (r1907 : Seg6.relationRow1907 rho) :
    rho 2308 = seg6RPe212 rho * (1 - rho 2101) := by
  unfold Seg6.relationRow1907 at r1907
  unfold seg6RPe212
  linear_combination -r1907

theorem seg6RStep211IlMul (rho : Nat -> Seg6.F) (r1908 : Seg6.relationRow1908 rho) :
    rho 2309 = seg6RIl212 rho * (rho 2308) := by
  unfold Seg6.relationRow1908 at r1908
  rw [seg6RStep211IlLc rho] at r1908
  linear_combination -r1908

theorem seg6RStep211Acc (rho : Nat -> Seg6.F) :
    seg6RIl211 rho = seg6RIl212 rho + (rho 2308) - (rho 2309) := by
  have hstate : seg6RIl211 rho = seg6RIl212 rho + seg6RIlAtom21 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom21
  ring

theorem seg6RStep211Pe (rho : Nat -> Seg6.F) (r1909 : Seg6.relationRow1909 rho) :
    seg6RPe211 rho = seg6RPe212 rho * rho 2101 := by
  unfold Seg6.relationRow1909 at r1909
  unfold seg6RPe211 seg6RPe212
  linear_combination -r1909

theorem seg6RStep211 (rho : Nat -> Seg6.F) (r1907 : Seg6.relationRow1907 rho) (r1908 : Seg6.relationRow1908 rho) (r1909 : Seg6.relationRow1909 rho) :
    seg6RPe211 rho = seg6RPe212 rho * rho 2101 ∧
    seg6RIl211 rho = seg6RIl212 rho + seg6RPe212 rho * (1 - rho 2101) -
      seg6RIl212 rho * (seg6RPe212 rho * (1 - rho 2101)) := by
  constructor
  · exact seg6RStep211Pe rho r1909
  · rw [seg6RStep211Acc rho, seg6RStep211L rho r1907, seg6RStep211IlMul rho r1908, seg6RStep211L rho r1907]

theorem seg6_r_chunk211 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 212 (seg6RPeState rho 212) (seg6RIlState rho 212) := by
  have htail := seg6_r_chunk210 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1907, r1908, r1909, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 211 ≤ n → n < 212 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 211 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep211 rho r1907 r1908 r1909
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 211 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
