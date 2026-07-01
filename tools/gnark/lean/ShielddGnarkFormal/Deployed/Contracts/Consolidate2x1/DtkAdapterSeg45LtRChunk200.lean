import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk199

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep200L (rho : Nat -> Seg45.F) (r1928 : Seg45.relationRow1928 rho) :
    rho 40159 = seg45RPe201 rho * (1 - rho 39920) := by
  unfold Seg45.relationRow1928 at r1928
  unfold seg45RPe201
  linear_combination -r1928

theorem seg45RStep200IlMul (rho : Nat -> Seg45.F) (r1929 : Seg45.relationRow1929 rho) :
    rho 40160 = seg45RIl201 rho * (rho 40159) := by
  unfold Seg45.relationRow1929 at r1929
  rw [seg45RStep200IlLc rho] at r1929
  linear_combination -r1929

theorem seg45RStep200Acc (rho : Nat -> Seg45.F) :
    seg45RIl200 rho = seg45RIl201 rho + (rho 40159) - (rho 40160) := by
  have hstate : seg45RIl200 rho = seg45RIl201 rho + seg45RIlAtom26 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom26
  ring

theorem seg45RStep200Pe (rho : Nat -> Seg45.F) (r1930 : Seg45.relationRow1930 rho) :
    seg45RPe200 rho = seg45RPe201 rho * rho 39920 := by
  unfold Seg45.relationRow1930 at r1930
  unfold seg45RPe200 seg45RPe201
  linear_combination -r1930

theorem seg45RStep200 (rho : Nat -> Seg45.F) (r1928 : Seg45.relationRow1928 rho) (r1929 : Seg45.relationRow1929 rho) (r1930 : Seg45.relationRow1930 rho) :
    seg45RPe200 rho = seg45RPe201 rho * rho 39920 ∧
    seg45RIl200 rho = seg45RIl201 rho + seg45RPe201 rho * (1 - rho 39920) -
      seg45RIl201 rho * (seg45RPe201 rho * (1 - rho 39920)) := by
  constructor
  · exact seg45RStep200Pe rho r1930
  · rw [seg45RStep200Acc rho, seg45RStep200L rho r1928, seg45RStep200IlMul rho r1929, seg45RStep200L rho r1928]

theorem seg45_r_chunk200 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 201 (seg45RPeState rho 201) (seg45RIlState rho 201) := by
  have htail := seg45_r_chunk199 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, r1928, r1929, r1930, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 200 ≤ n → n < 201 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 200 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep200 rho r1928 r1929 r1930
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 200 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
