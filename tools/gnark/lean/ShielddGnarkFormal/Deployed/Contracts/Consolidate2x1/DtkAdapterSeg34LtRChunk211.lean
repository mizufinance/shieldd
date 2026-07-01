import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk210

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep211L (rho : Nat -> Seg34.F) (r1907 : Seg34.relationRow1907 rho) :
    rho 33182 = seg34RPe212 rho * (1 - rho 32975) := by
  unfold Seg34.relationRow1907 at r1907
  unfold seg34RPe212
  linear_combination -r1907

theorem seg34RStep211IlMul (rho : Nat -> Seg34.F) (r1908 : Seg34.relationRow1908 rho) :
    rho 33183 = seg34RIl212 rho * (rho 33182) := by
  unfold Seg34.relationRow1908 at r1908
  rw [seg34RStep211IlLc rho] at r1908
  linear_combination -r1908

theorem seg34RStep211Acc (rho : Nat -> Seg34.F) :
    seg34RIl211 rho = seg34RIl212 rho + (rho 33182) - (rho 33183) := by
  have hstate : seg34RIl211 rho = seg34RIl212 rho + seg34RIlAtom21 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom21
  ring

theorem seg34RStep211Pe (rho : Nat -> Seg34.F) (r1909 : Seg34.relationRow1909 rho) :
    seg34RPe211 rho = seg34RPe212 rho * rho 32975 := by
  unfold Seg34.relationRow1909 at r1909
  unfold seg34RPe211 seg34RPe212
  linear_combination -r1909

theorem seg34RStep211 (rho : Nat -> Seg34.F) (r1907 : Seg34.relationRow1907 rho) (r1908 : Seg34.relationRow1908 rho) (r1909 : Seg34.relationRow1909 rho) :
    seg34RPe211 rho = seg34RPe212 rho * rho 32975 ∧
    seg34RIl211 rho = seg34RIl212 rho + seg34RPe212 rho * (1 - rho 32975) -
      seg34RIl212 rho * (seg34RPe212 rho * (1 - rho 32975)) := by
  constructor
  · exact seg34RStep211Pe rho r1909
  · rw [seg34RStep211Acc rho, seg34RStep211L rho r1907, seg34RStep211IlMul rho r1908, seg34RStep211L rho r1907]

theorem seg34_r_chunk211 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 212 (seg34RPeState rho 212) (seg34RIlState rho 212) := by
  have htail := seg34_r_chunk210 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1907, r1908, r1909, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 211 ≤ n → n < 212 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 211 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep211 rho r1907 r1908 r1909
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 211 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
