import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk82

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep83L (rho : Nat -> Seg45.F) (r2153 : Seg45.relationRow2153 rho) :
    rho 40384 = seg45RPe84 rho * (1 - rho 39803) := by
  unfold Seg45.relationRow2153 at r2153
  unfold seg45RPe84
  linear_combination -r2153

theorem seg45RStep83IlMul (rho : Nat -> Seg45.F) (r2154 : Seg45.relationRow2154 rho) :
    rho 40385 = seg45RIl84 rho * (rho 40384) := by
  unfold Seg45.relationRow2154 at r2154
  rw [seg45RStep83IlLc rho] at r2154
  linear_combination -r2154

theorem seg45RStep83Acc (rho : Nat -> Seg45.F) :
    seg45RIl83 rho = seg45RIl84 rho + (rho 40384) - (rho 40385) := by
  have hstate : seg45RIl83 rho = seg45RIl84 rho + seg45RIlAtom83 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom83
  ring

theorem seg45RStep83Pe (rho : Nat -> Seg45.F) (r2155 : Seg45.relationRow2155 rho) :
    seg45RPe83 rho = seg45RPe84 rho * rho 39803 := by
  unfold Seg45.relationRow2155 at r2155
  unfold seg45RPe83 seg45RPe84
  linear_combination -r2155

theorem seg45RStep83 (rho : Nat -> Seg45.F) (r2153 : Seg45.relationRow2153 rho) (r2154 : Seg45.relationRow2154 rho) (r2155 : Seg45.relationRow2155 rho) :
    seg45RPe83 rho = seg45RPe84 rho * rho 39803 ∧
    seg45RIl83 rho = seg45RIl84 rho + seg45RPe84 rho * (1 - rho 39803) -
      seg45RIl84 rho * (seg45RPe84 rho * (1 - rho 39803)) := by
  constructor
  · exact seg45RStep83Pe rho r2155
  · rw [seg45RStep83Acc rho, seg45RStep83L rho r2153, seg45RStep83IlMul rho r2154, seg45RStep83L rho r2153]

theorem seg45_r_chunk83 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 84 (seg45RPeState rho 84) (seg45RIlState rho 84) := by
  have htail := seg45_r_chunk82 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2153, r2154, r2155, _, _, _, _⟩
  have hsteps : ∀ n, 83 ≤ n → n < 84 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 83 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep83 rho r2153 r2154 r2155
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 83 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
