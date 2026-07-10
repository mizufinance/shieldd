import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk199

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep200L (rho : Nat -> Seg5.F) (r1928 : Seg5.relationRow1928 rho) :
    rho 1626 = seg5RPe201 rho * (1 - rho 1387) := by
  unfold Seg5.relationRow1928 at r1928
  unfold seg5RPe201
  linear_combination -r1928

theorem seg5RStep200IlMul (rho : Nat -> Seg5.F) (r1929 : Seg5.relationRow1929 rho) :
    rho 1627 = seg5RIl201 rho * (rho 1626) := by
  unfold Seg5.relationRow1929 at r1929
  rw [seg5RStep200IlLc rho] at r1929
  linear_combination -r1929

theorem seg5RStep200Acc (rho : Nat -> Seg5.F) :
    seg5RIl200 rho = seg5RIl201 rho + (rho 1626) - (rho 1627) := by
  have hstate : seg5RIl200 rho = seg5RIl201 rho + seg5RIlAtom26 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom26
  ring

theorem seg5RStep200Pe (rho : Nat -> Seg5.F) (r1930 : Seg5.relationRow1930 rho) :
    seg5RPe200 rho = seg5RPe201 rho * rho 1387 := by
  unfold Seg5.relationRow1930 at r1930
  unfold seg5RPe200 seg5RPe201
  linear_combination -r1930

theorem seg5RStep200 (rho : Nat -> Seg5.F) (r1928 : Seg5.relationRow1928 rho) (r1929 : Seg5.relationRow1929 rho) (r1930 : Seg5.relationRow1930 rho) :
    seg5RPe200 rho = seg5RPe201 rho * rho 1387 ∧
    seg5RIl200 rho = seg5RIl201 rho + seg5RPe201 rho * (1 - rho 1387) -
      seg5RIl201 rho * (seg5RPe201 rho * (1 - rho 1387)) := by
  constructor
  · exact seg5RStep200Pe rho r1930
  · rw [seg5RStep200Acc rho, seg5RStep200L rho r1928, seg5RStep200IlMul rho r1929, seg5RStep200L rho r1928]

theorem seg5_r_chunk200 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 201 (seg5RPeState rho 201) (seg5RIlState rho 201) := by
  have htail := seg5_r_chunk199 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, r1928, r1929, r1930, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 200 ≤ n → n < 201 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 200 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep200 rho r1928 r1929 r1930
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 200 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
