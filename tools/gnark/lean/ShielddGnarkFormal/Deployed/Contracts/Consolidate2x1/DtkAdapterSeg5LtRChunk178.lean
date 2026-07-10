import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk177

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep178L (rho : Nat -> Seg5.F) (r1970 : Seg5.relationRow1970 rho) :
    rho 1668 = seg5RPe179 rho * (1 - rho 1365) := by
  unfold Seg5.relationRow1970 at r1970
  unfold seg5RPe179
  linear_combination -r1970

theorem seg5RStep178IlMul (rho : Nat -> Seg5.F) (r1971 : Seg5.relationRow1971 rho) :
    rho 1669 = seg5RIl179 rho * (rho 1668) := by
  unfold Seg5.relationRow1971 at r1971
  rw [seg5RStep178IlLc rho] at r1971
  linear_combination -r1971

theorem seg5RStep178Acc (rho : Nat -> Seg5.F) :
    seg5RIl178 rho = seg5RIl179 rho + (rho 1668) - (rho 1669) := by
  have hstate : seg5RIl178 rho = seg5RIl179 rho + seg5RIlAtom37 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom37
  ring

theorem seg5RStep178Pe (rho : Nat -> Seg5.F) (r1972 : Seg5.relationRow1972 rho) :
    seg5RPe178 rho = seg5RPe179 rho * rho 1365 := by
  unfold Seg5.relationRow1972 at r1972
  unfold seg5RPe178 seg5RPe179
  linear_combination -r1972

theorem seg5RStep178 (rho : Nat -> Seg5.F) (r1970 : Seg5.relationRow1970 rho) (r1971 : Seg5.relationRow1971 rho) (r1972 : Seg5.relationRow1972 rho) :
    seg5RPe178 rho = seg5RPe179 rho * rho 1365 ∧
    seg5RIl178 rho = seg5RIl179 rho + seg5RPe179 rho * (1 - rho 1365) -
      seg5RIl179 rho * (seg5RPe179 rho * (1 - rho 1365)) := by
  constructor
  · exact seg5RStep178Pe rho r1972
  · rw [seg5RStep178Acc rho, seg5RStep178L rho r1970, seg5RStep178IlMul rho r1971, seg5RStep178L rho r1970]

theorem seg5_r_chunk178 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 179 (seg5RPeState rho 179) (seg5RIlState rho 179) := by
  have htail := seg5_r_chunk177 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1970, r1971, r1972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 178 ≤ n → n < 179 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 178 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep178 rho r1970 r1971 r1972
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 178 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
