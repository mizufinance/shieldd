import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk51

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep52L (rho : Nat -> Seg5.F) (r2220 : Seg5.relationRow2220 rho) :
    rho 1918 = seg5RPe53 rho * (1 - rho 1239) := by
  unfold Seg5.relationRow2220 at r2220
  unfold seg5RPe53
  linear_combination -r2220

theorem seg5RStep52IlMul (rho : Nat -> Seg5.F) (r2221 : Seg5.relationRow2221 rho) :
    rho 1919 = seg5RIl53 rho * (rho 1918) := by
  unfold Seg5.relationRow2221 at r2221
  rw [seg5RStep52IlLc rho] at r2221
  linear_combination -r2221

theorem seg5RStep52Acc (rho : Nat -> Seg5.F) :
    seg5RIl52 rho = seg5RIl53 rho + (rho 1918) - (rho 1919) := by
  have hstate : seg5RIl52 rho = seg5RIl53 rho + seg5RIlAtom103 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom103
  ring

theorem seg5RStep52Pe (rho : Nat -> Seg5.F) (r2222 : Seg5.relationRow2222 rho) :
    seg5RPe52 rho = seg5RPe53 rho * rho 1239 := by
  unfold Seg5.relationRow2222 at r2222
  unfold seg5RPe52 seg5RPe53
  linear_combination -r2222

theorem seg5RStep52 (rho : Nat -> Seg5.F) (r2220 : Seg5.relationRow2220 rho) (r2221 : Seg5.relationRow2221 rho) (r2222 : Seg5.relationRow2222 rho) :
    seg5RPe52 rho = seg5RPe53 rho * rho 1239 ∧
    seg5RIl52 rho = seg5RIl53 rho + seg5RPe53 rho * (1 - rho 1239) -
      seg5RIl53 rho * (seg5RPe53 rho * (1 - rho 1239)) := by
  constructor
  · exact seg5RStep52Pe rho r2222
  · rw [seg5RStep52Acc rho, seg5RStep52L rho r2220, seg5RStep52IlMul rho r2221, seg5RStep52L rho r2220]

theorem seg5_r_chunk52 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 53 (seg5RPeState rho 53) (seg5RIlState rho 53) := by
  have htail := seg5_r_chunk51 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2220, r2221, r2222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 52 ≤ n → n < 53 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 52 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep52 rho r2220 r2221 r2222
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 52 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
