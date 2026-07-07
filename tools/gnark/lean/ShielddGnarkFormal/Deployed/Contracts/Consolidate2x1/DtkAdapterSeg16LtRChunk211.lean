import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk210

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep211L (rho : Nat -> Seg16.F) (r1907 : Seg16.relationRow1907 rho) :
    rho 14482 = seg16RPe212 rho * (1 - rho 14275) := by
  unfold Seg16.relationRow1907 at r1907
  unfold seg16RPe212
  linear_combination -r1907

theorem seg16RStep211IlMul (rho : Nat -> Seg16.F) (r1908 : Seg16.relationRow1908 rho) :
    rho 14483 = seg16RIl212 rho * (rho 14482) := by
  unfold Seg16.relationRow1908 at r1908
  rw [seg16RStep211IlLc rho] at r1908
  linear_combination -r1908

theorem seg16RStep211Acc (rho : Nat -> Seg16.F) :
    seg16RIl211 rho = seg16RIl212 rho + (rho 14482) - (rho 14483) := by
  have hstate : seg16RIl211 rho = seg16RIl212 rho + seg16RIlAtom21 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom21
  ring

theorem seg16RStep211Pe (rho : Nat -> Seg16.F) (r1909 : Seg16.relationRow1909 rho) :
    seg16RPe211 rho = seg16RPe212 rho * rho 14275 := by
  unfold Seg16.relationRow1909 at r1909
  unfold seg16RPe211 seg16RPe212
  linear_combination -r1909

theorem seg16RStep211 (rho : Nat -> Seg16.F) (r1907 : Seg16.relationRow1907 rho) (r1908 : Seg16.relationRow1908 rho) (r1909 : Seg16.relationRow1909 rho) :
    seg16RPe211 rho = seg16RPe212 rho * rho 14275 ∧
    seg16RIl211 rho = seg16RIl212 rho + seg16RPe212 rho * (1 - rho 14275) -
      seg16RIl212 rho * (seg16RPe212 rho * (1 - rho 14275)) := by
  constructor
  · exact seg16RStep211Pe rho r1909
  · rw [seg16RStep211Acc rho, seg16RStep211L rho r1907, seg16RStep211IlMul rho r1908, seg16RStep211L rho r1907]

theorem seg16_r_chunk211 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 212 (seg16RPeState rho 212) (seg16RIlState rho 212) := by
  have htail := seg16_r_chunk210 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1907, r1908, r1909, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 211 ≤ n → n < 212 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 211 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep211 rho r1907 r1908 r1909
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 211 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
