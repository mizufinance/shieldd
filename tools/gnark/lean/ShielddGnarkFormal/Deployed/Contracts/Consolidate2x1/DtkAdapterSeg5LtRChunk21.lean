import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep21L (rho : Nat -> Seg5.F) (r2285 : Seg5.relationRow2285 rho) :
    rho 1983 = seg5RPe22 rho * (1 - rho 1208) := by
  unfold Seg5.relationRow2285 at r2285
  unfold seg5RPe22
  linear_combination -r2285

theorem seg5RStep21IlMul (rho : Nat -> Seg5.F) (r2286 : Seg5.relationRow2286 rho) :
    rho 1984 = seg5RIl22 rho * (rho 1983) := by
  unfold Seg5.relationRow2286 at r2286
  rw [seg5RStep21IlLc rho] at r2286
  linear_combination -r2286

theorem seg5RStep21Acc (rho : Nat -> Seg5.F) :
    seg5RIl21 rho = seg5RIl22 rho + (rho 1983) - (rho 1984) := by
  have hstate : seg5RIl21 rho = seg5RIl22 rho + seg5RIlAtom121 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom121
  ring

theorem seg5RStep21Pe (rho : Nat -> Seg5.F) (r2287 : Seg5.relationRow2287 rho) :
    seg5RPe21 rho = seg5RPe22 rho * rho 1208 := by
  unfold Seg5.relationRow2287 at r2287
  unfold seg5RPe21 seg5RPe22
  linear_combination -r2287

theorem seg5RStep21 (rho : Nat -> Seg5.F) (r2285 : Seg5.relationRow2285 rho) (r2286 : Seg5.relationRow2286 rho) (r2287 : Seg5.relationRow2287 rho) :
    seg5RPe21 rho = seg5RPe22 rho * rho 1208 ∧
    seg5RIl21 rho = seg5RIl22 rho + seg5RPe22 rho * (1 - rho 1208) -
      seg5RIl22 rho * (seg5RPe22 rho * (1 - rho 1208)) := by
  constructor
  · exact seg5RStep21Pe rho r2287
  · rw [seg5RStep21Acc rho, seg5RStep21L rho r2285, seg5RStep21IlMul rho r2286, seg5RStep21L rho r2285]

theorem seg5_r_chunk21 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 22 (seg5RPeState rho 22) (seg5RIlState rho 22) := by
  have htail := seg5_r_chunk20 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2285, r2286, r2287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 21 ≤ n → n < 22 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 21 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep21 rho r2285 r2286 r2287
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 21 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
