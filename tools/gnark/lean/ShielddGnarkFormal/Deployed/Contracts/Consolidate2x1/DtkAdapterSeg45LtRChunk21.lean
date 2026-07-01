import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep21L (rho : Nat -> Seg45.F) (r2285 : Seg45.relationRow2285 rho) :
    rho 40516 = seg45RPe22 rho * (1 - rho 39741) := by
  unfold Seg45.relationRow2285 at r2285
  unfold seg45RPe22
  linear_combination -r2285

theorem seg45RStep21IlMul (rho : Nat -> Seg45.F) (r2286 : Seg45.relationRow2286 rho) :
    rho 40517 = seg45RIl22 rho * (rho 40516) := by
  unfold Seg45.relationRow2286 at r2286
  rw [seg45RStep21IlLc rho] at r2286
  linear_combination -r2286

theorem seg45RStep21Acc (rho : Nat -> Seg45.F) :
    seg45RIl21 rho = seg45RIl22 rho + (rho 40516) - (rho 40517) := by
  have hstate : seg45RIl21 rho = seg45RIl22 rho + seg45RIlAtom121 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom121
  ring

theorem seg45RStep21Pe (rho : Nat -> Seg45.F) (r2287 : Seg45.relationRow2287 rho) :
    seg45RPe21 rho = seg45RPe22 rho * rho 39741 := by
  unfold Seg45.relationRow2287 at r2287
  unfold seg45RPe21 seg45RPe22
  linear_combination -r2287

theorem seg45RStep21 (rho : Nat -> Seg45.F) (r2285 : Seg45.relationRow2285 rho) (r2286 : Seg45.relationRow2286 rho) (r2287 : Seg45.relationRow2287 rho) :
    seg45RPe21 rho = seg45RPe22 rho * rho 39741 ∧
    seg45RIl21 rho = seg45RIl22 rho + seg45RPe22 rho * (1 - rho 39741) -
      seg45RIl22 rho * (seg45RPe22 rho * (1 - rho 39741)) := by
  constructor
  · exact seg45RStep21Pe rho r2287
  · rw [seg45RStep21Acc rho, seg45RStep21L rho r2285, seg45RStep21IlMul rho r2286, seg45RStep21L rho r2285]

theorem seg45_r_chunk21 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 22 (seg45RPeState rho 22) (seg45RIlState rho 22) := by
  have htail := seg45_r_chunk20 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2285, r2286, r2287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 21 ≤ n → n < 22 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 21 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep21 rho r2285 r2286 r2287
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 21 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
