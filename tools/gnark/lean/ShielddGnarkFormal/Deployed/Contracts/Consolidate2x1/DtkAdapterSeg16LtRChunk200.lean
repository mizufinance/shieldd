import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk199

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep200L (rho : Nat -> Seg16.F) (r1928 : Seg16.relationRow1928 rho) :
    rho 14503 = seg16RPe201 rho * (1 - rho 14264) := by
  unfold Seg16.relationRow1928 at r1928
  unfold seg16RPe201
  linear_combination -r1928

theorem seg16RStep200IlMul (rho : Nat -> Seg16.F) (r1929 : Seg16.relationRow1929 rho) :
    rho 14504 = seg16RIl201 rho * (rho 14503) := by
  unfold Seg16.relationRow1929 at r1929
  rw [seg16RStep200IlLc rho] at r1929
  linear_combination -r1929

theorem seg16RStep200Acc (rho : Nat -> Seg16.F) :
    seg16RIl200 rho = seg16RIl201 rho + (rho 14503) - (rho 14504) := by
  have hstate : seg16RIl200 rho = seg16RIl201 rho + seg16RIlAtom26 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom26
  ring

theorem seg16RStep200Pe (rho : Nat -> Seg16.F) (r1930 : Seg16.relationRow1930 rho) :
    seg16RPe200 rho = seg16RPe201 rho * rho 14264 := by
  unfold Seg16.relationRow1930 at r1930
  unfold seg16RPe200 seg16RPe201
  linear_combination -r1930

theorem seg16RStep200 (rho : Nat -> Seg16.F) (r1928 : Seg16.relationRow1928 rho) (r1929 : Seg16.relationRow1929 rho) (r1930 : Seg16.relationRow1930 rho) :
    seg16RPe200 rho = seg16RPe201 rho * rho 14264 ∧
    seg16RIl200 rho = seg16RIl201 rho + seg16RPe201 rho * (1 - rho 14264) -
      seg16RIl201 rho * (seg16RPe201 rho * (1 - rho 14264)) := by
  constructor
  · exact seg16RStep200Pe rho r1930
  · rw [seg16RStep200Acc rho, seg16RStep200L rho r1928, seg16RStep200IlMul rho r1929, seg16RStep200L rho r1928]

theorem seg16_r_chunk200 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 201 (seg16RPeState rho 201) (seg16RIlState rho 201) := by
  have htail := seg16_r_chunk199 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, r1928, r1929, r1930, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 200 ≤ n → n < 201 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 200 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep200 rho r1928 r1929 r1930
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 200 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
