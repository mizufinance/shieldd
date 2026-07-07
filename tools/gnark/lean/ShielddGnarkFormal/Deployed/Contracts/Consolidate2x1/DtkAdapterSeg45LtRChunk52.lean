import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk51

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep52L (rho : Nat -> Seg45.F) (r2220 : Seg45.relationRow2220 rho) :
    rho 40451 = seg45RPe53 rho * (1 - rho 39772) := by
  unfold Seg45.relationRow2220 at r2220
  unfold seg45RPe53
  linear_combination -r2220

theorem seg45RStep52IlMul (rho : Nat -> Seg45.F) (r2221 : Seg45.relationRow2221 rho) :
    rho 40452 = seg45RIl53 rho * (rho 40451) := by
  unfold Seg45.relationRow2221 at r2221
  rw [seg45RStep52IlLc rho] at r2221
  linear_combination -r2221

theorem seg45RStep52Acc (rho : Nat -> Seg45.F) :
    seg45RIl52 rho = seg45RIl53 rho + (rho 40451) - (rho 40452) := by
  have hstate : seg45RIl52 rho = seg45RIl53 rho + seg45RIlAtom103 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom103
  ring

theorem seg45RStep52Pe (rho : Nat -> Seg45.F) (r2222 : Seg45.relationRow2222 rho) :
    seg45RPe52 rho = seg45RPe53 rho * rho 39772 := by
  unfold Seg45.relationRow2222 at r2222
  unfold seg45RPe52 seg45RPe53
  linear_combination -r2222

theorem seg45RStep52 (rho : Nat -> Seg45.F) (r2220 : Seg45.relationRow2220 rho) (r2221 : Seg45.relationRow2221 rho) (r2222 : Seg45.relationRow2222 rho) :
    seg45RPe52 rho = seg45RPe53 rho * rho 39772 ∧
    seg45RIl52 rho = seg45RIl53 rho + seg45RPe53 rho * (1 - rho 39772) -
      seg45RIl53 rho * (seg45RPe53 rho * (1 - rho 39772)) := by
  constructor
  · exact seg45RStep52Pe rho r2222
  · rw [seg45RStep52Acc rho, seg45RStep52L rho r2220, seg45RStep52IlMul rho r2221, seg45RStep52L rho r2220]

theorem seg45_r_chunk52 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 53 (seg45RPeState rho 53) (seg45RIlState rho 53) := by
  have htail := seg45_r_chunk51 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2220, r2221, r2222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 52 ≤ n → n < 53 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 52 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep52 rho r2220 r2221 r2222
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 52 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
