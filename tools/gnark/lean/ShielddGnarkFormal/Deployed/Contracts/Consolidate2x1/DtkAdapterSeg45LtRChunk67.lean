import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk66

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep67L (rho : Nat -> Seg45.F) (r2187 : Seg45.relationRow2187 rho) :
    rho 40418 = seg45RPe68 rho * (1 - rho 39787) := by
  unfold Seg45.relationRow2187 at r2187
  unfold seg45RPe68
  linear_combination -r2187

theorem seg45RStep67IlMul (rho : Nat -> Seg45.F) (r2188 : Seg45.relationRow2188 rho) :
    rho 40419 = seg45RIl68 rho * (rho 40418) := by
  unfold Seg45.relationRow2188 at r2188
  rw [seg45RStep67IlLc rho] at r2188
  linear_combination -r2188

theorem seg45RStep67Acc (rho : Nat -> Seg45.F) :
    seg45RIl67 rho = seg45RIl68 rho + (rho 40418) - (rho 40419) := by
  have hstate : seg45RIl67 rho = seg45RIl68 rho + seg45RIlAtom93 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom93
  ring

theorem seg45RStep67Pe (rho : Nat -> Seg45.F) (r2189 : Seg45.relationRow2189 rho) :
    seg45RPe67 rho = seg45RPe68 rho * rho 39787 := by
  unfold Seg45.relationRow2189 at r2189
  unfold seg45RPe67 seg45RPe68
  linear_combination -r2189

theorem seg45RStep67 (rho : Nat -> Seg45.F) (r2187 : Seg45.relationRow2187 rho) (r2188 : Seg45.relationRow2188 rho) (r2189 : Seg45.relationRow2189 rho) :
    seg45RPe67 rho = seg45RPe68 rho * rho 39787 ∧
    seg45RIl67 rho = seg45RIl68 rho + seg45RPe68 rho * (1 - rho 39787) -
      seg45RIl68 rho * (seg45RPe68 rho * (1 - rho 39787)) := by
  constructor
  · exact seg45RStep67Pe rho r2189
  · rw [seg45RStep67Acc rho, seg45RStep67L rho r2187, seg45RStep67IlMul rho r2188, seg45RStep67L rho r2187]

theorem seg45_r_chunk67 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 68 (seg45RPeState rho 68) (seg45RIlState rho 68) := by
  have htail := seg45_r_chunk66 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2187, r2188, r2189, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 67 ≤ n → n < 68 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 67 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep67 rho r2187 r2188 r2189
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 67 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
