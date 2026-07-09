import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk38

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep39L (rho : Nat -> Seg5.F) (r2251 : Seg5.relationRow2251 rho) :
    rho 1949 = seg5RPe40 rho * (1 - rho 1226) := by
  unfold Seg5.relationRow2251 at r2251
  unfold seg5RPe40
  linear_combination -r2251

theorem seg5RStep39IlMul (rho : Nat -> Seg5.F) (r2252 : Seg5.relationRow2252 rho) :
    rho 1950 = seg5RIl40 rho * (rho 1949) := by
  unfold Seg5.relationRow2252 at r2252
  rw [seg5RStep39IlLc rho] at r2252
  linear_combination -r2252

theorem seg5RStep39Acc (rho : Nat -> Seg5.F) :
    seg5RIl39 rho = seg5RIl40 rho + (rho 1949) - (rho 1950) := by
  have hstate : seg5RIl39 rho = seg5RIl40 rho + seg5RIlAtom112 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom112
  ring

theorem seg5RStep39Pe (rho : Nat -> Seg5.F) (r2253 : Seg5.relationRow2253 rho) :
    seg5RPe39 rho = seg5RPe40 rho * rho 1226 := by
  unfold Seg5.relationRow2253 at r2253
  unfold seg5RPe39 seg5RPe40
  linear_combination -r2253

theorem seg5RStep39 (rho : Nat -> Seg5.F) (r2251 : Seg5.relationRow2251 rho) (r2252 : Seg5.relationRow2252 rho) (r2253 : Seg5.relationRow2253 rho) :
    seg5RPe39 rho = seg5RPe40 rho * rho 1226 ∧
    seg5RIl39 rho = seg5RIl40 rho + seg5RPe40 rho * (1 - rho 1226) -
      seg5RIl40 rho * (seg5RPe40 rho * (1 - rho 1226)) := by
  constructor
  · exact seg5RStep39Pe rho r2253
  · rw [seg5RStep39Acc rho, seg5RStep39L rho r2251, seg5RStep39IlMul rho r2252, seg5RStep39L rho r2251]

theorem seg5_r_chunk39 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 40 (seg5RPeState rho 40) (seg5RIlState rho 40) := by
  have htail := seg5_r_chunk38 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2251, r2252, r2253, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 39 ≤ n → n < 40 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 39 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep39 rho r2251 r2252 r2253
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 39 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
