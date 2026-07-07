import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk81

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep82L (rho : Nat -> Seg45.F) (r2156 : Seg45.relationRow2156 rho) :
    rho 40387 = seg45RPe83 rho * (1 - rho 39802) := by
  unfold Seg45.relationRow2156 at r2156
  unfold seg45RPe83
  linear_combination -r2156

theorem seg45RStep82IlMul (rho : Nat -> Seg45.F) (r2157 : Seg45.relationRow2157 rho) :
    rho 40388 = seg45RIl83 rho * (rho 40387) := by
  unfold Seg45.relationRow2157 at r2157
  rw [seg45RStep82IlLc rho] at r2157
  linear_combination -r2157

theorem seg45RStep82Acc (rho : Nat -> Seg45.F) :
    seg45RIl82 rho = seg45RIl83 rho + (rho 40387) - (rho 40388) := by
  have hstate : seg45RIl82 rho = seg45RIl83 rho + seg45RIlAtom84 rho + (-1 : Seg45.F) * seg45RIlAtom85 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom84 seg45RIlAtom85
  ring

theorem seg45RStep82Pe (rho : Nat -> Seg45.F) (r2158 : Seg45.relationRow2158 rho) :
    seg45RPe82 rho = seg45RPe83 rho * rho 39802 := by
  unfold Seg45.relationRow2158 at r2158
  unfold seg45RPe82 seg45RPe83
  linear_combination -r2158

theorem seg45RStep82 (rho : Nat -> Seg45.F) (r2156 : Seg45.relationRow2156 rho) (r2157 : Seg45.relationRow2157 rho) (r2158 : Seg45.relationRow2158 rho) :
    seg45RPe82 rho = seg45RPe83 rho * rho 39802 ∧
    seg45RIl82 rho = seg45RIl83 rho + seg45RPe83 rho * (1 - rho 39802) -
      seg45RIl83 rho * (seg45RPe83 rho * (1 - rho 39802)) := by
  constructor
  · exact seg45RStep82Pe rho r2158
  · rw [seg45RStep82Acc rho, seg45RStep82L rho r2156, seg45RStep82IlMul rho r2157, seg45RStep82L rho r2156]

theorem seg45_r_chunk82 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 83 (seg45RPeState rho 83) (seg45RIlState rho 83) := by
  have htail := seg45_r_chunk81 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2156, r2157, r2158, _⟩
  have hsteps : ∀ n, 82 ≤ n → n < 83 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 82 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep82 rho r2156 r2157 r2158
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 82 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
