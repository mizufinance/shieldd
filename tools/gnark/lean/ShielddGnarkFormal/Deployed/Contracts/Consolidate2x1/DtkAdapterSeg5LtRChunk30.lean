import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk29

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep30L (rho : Nat -> Seg5.F) (r2270 : Seg5.relationRow2270 rho) :
    rho 1968 = seg5RPe31 rho * (1 - rho 1217) := by
  unfold Seg5.relationRow2270 at r2270
  unfold seg5RPe31
  linear_combination -r2270

theorem seg5RStep30IlMul (rho : Nat -> Seg5.F) (r2271 : Seg5.relationRow2271 rho) :
    rho 1969 = seg5RIl31 rho * (rho 1968) := by
  unfold Seg5.relationRow2271 at r2271
  rw [seg5RStep30IlLc rho] at r2271
  linear_combination -r2271

theorem seg5RStep30Acc (rho : Nat -> Seg5.F) :
    seg5RIl30 rho = seg5RIl31 rho + (rho 1968) - (rho 1969) := by
  have hstate : seg5RIl30 rho = seg5RIl31 rho + seg5RIlAtom117 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom117
  ring

theorem seg5RStep30Pe (rho : Nat -> Seg5.F) (r2272 : Seg5.relationRow2272 rho) :
    seg5RPe30 rho = seg5RPe31 rho * rho 1217 := by
  unfold Seg5.relationRow2272 at r2272
  unfold seg5RPe30 seg5RPe31
  linear_combination -r2272

theorem seg5RStep30 (rho : Nat -> Seg5.F) (r2270 : Seg5.relationRow2270 rho) (r2271 : Seg5.relationRow2271 rho) (r2272 : Seg5.relationRow2272 rho) :
    seg5RPe30 rho = seg5RPe31 rho * rho 1217 ∧
    seg5RIl30 rho = seg5RIl31 rho + seg5RPe31 rho * (1 - rho 1217) -
      seg5RIl31 rho * (seg5RPe31 rho * (1 - rho 1217)) := by
  constructor
  · exact seg5RStep30Pe rho r2272
  · rw [seg5RStep30Acc rho, seg5RStep30L rho r2270, seg5RStep30IlMul rho r2271, seg5RStep30L rho r2270]

theorem seg5_r_chunk30 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 31 (seg5RPeState rho 31) (seg5RIlState rho 31) := by
  have htail := seg5_r_chunk29 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2270, r2271, r2272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 30 ≤ n → n < 31 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 30 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep30 rho r2270 r2271 r2272
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 30 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
