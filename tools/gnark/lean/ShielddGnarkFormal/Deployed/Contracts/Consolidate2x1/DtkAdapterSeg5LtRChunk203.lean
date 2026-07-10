import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk202

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep203L (rho : Nat -> Seg5.F) (r1923 : Seg5.relationRow1923 rho) :
    rho 1621 = seg5RPe204 rho * (1 - rho 1390) := by
  unfold Seg5.relationRow1923 at r1923
  unfold seg5RPe204
  linear_combination -r1923

theorem seg5RStep203IlMul (rho : Nat -> Seg5.F) (r1924 : Seg5.relationRow1924 rho) :
    rho 1622 = seg5RIl204 rho * (rho 1621) := by
  unfold Seg5.relationRow1924 at r1924
  rw [seg5RStep203IlLc rho] at r1924
  linear_combination -r1924

theorem seg5RStep203Acc (rho : Nat -> Seg5.F) :
    seg5RIl203 rho = seg5RIl204 rho + (rho 1621) - (rho 1622) := by
  have hstate : seg5RIl203 rho = seg5RIl204 rho + seg5RIlAtom25 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom25
  ring

theorem seg5RStep203Pe (rho : Nat -> Seg5.F) (r1925 : Seg5.relationRow1925 rho) :
    seg5RPe203 rho = seg5RPe204 rho * rho 1390 := by
  unfold Seg5.relationRow1925 at r1925
  unfold seg5RPe203 seg5RPe204
  linear_combination -r1925

theorem seg5RStep203 (rho : Nat -> Seg5.F) (r1923 : Seg5.relationRow1923 rho) (r1924 : Seg5.relationRow1924 rho) (r1925 : Seg5.relationRow1925 rho) :
    seg5RPe203 rho = seg5RPe204 rho * rho 1390 ∧
    seg5RIl203 rho = seg5RIl204 rho + seg5RPe204 rho * (1 - rho 1390) -
      seg5RIl204 rho * (seg5RPe204 rho * (1 - rho 1390)) := by
  constructor
  · exact seg5RStep203Pe rho r1925
  · rw [seg5RStep203Acc rho, seg5RStep203L rho r1923, seg5RStep203IlMul rho r1924, seg5RStep203L rho r1923]

theorem seg5_r_chunk203 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 204 (seg5RPeState rho 204) (seg5RIlState rho 204) := by
  have htail := seg5_r_chunk202 rho h k hq4
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
  rcases p24 with ⟨_, _, _, r1923, r1924, r1925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 203 ≤ n → n < 204 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 203 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep203 rho r1923 r1924 r1925
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 203 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
