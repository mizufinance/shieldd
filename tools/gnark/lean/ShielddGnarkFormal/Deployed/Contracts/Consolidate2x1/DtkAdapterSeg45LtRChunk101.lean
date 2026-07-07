import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk100

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep101L (rho : Nat -> Seg45.F) (r2115 : Seg45.relationRow2115 rho) :
    rho 40346 = seg45RPe102 rho * (1 - rho 39821) := by
  unfold Seg45.relationRow2115 at r2115
  unfold seg45RPe102
  linear_combination -r2115

theorem seg45RStep101IlMul (rho : Nat -> Seg45.F) (r2116 : Seg45.relationRow2116 rho) :
    rho 40347 = seg45RIl102 rho * (rho 40346) := by
  unfold Seg45.relationRow2116 at r2116
  rw [seg45RStep101IlLc rho] at r2116
  linear_combination -r2116

theorem seg45RStep101Acc (rho : Nat -> Seg45.F) :
    seg45RIl101 rho = seg45RIl102 rho + (rho 40346) - (rho 40347) := by
  have hstate : seg45RIl101 rho = seg45RIl102 rho + seg45RIlAtom73 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom73
  ring

theorem seg45RStep101Pe (rho : Nat -> Seg45.F) (r2117 : Seg45.relationRow2117 rho) :
    seg45RPe101 rho = seg45RPe102 rho * rho 39821 := by
  unfold Seg45.relationRow2117 at r2117
  unfold seg45RPe101 seg45RPe102
  linear_combination -r2117

theorem seg45RStep101 (rho : Nat -> Seg45.F) (r2115 : Seg45.relationRow2115 rho) (r2116 : Seg45.relationRow2116 rho) (r2117 : Seg45.relationRow2117 rho) :
    seg45RPe101 rho = seg45RPe102 rho * rho 39821 ∧
    seg45RIl101 rho = seg45RIl102 rho + seg45RPe102 rho * (1 - rho 39821) -
      seg45RIl102 rho * (seg45RPe102 rho * (1 - rho 39821)) := by
  constructor
  · exact seg45RStep101Pe rho r2117
  · rw [seg45RStep101Acc rho, seg45RStep101L rho r2115, seg45RStep101IlMul rho r2116, seg45RStep101L rho r2115]

theorem seg45_r_chunk101 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 102 (seg45RPeState rho 102) (seg45RIlState rho 102) := by
  have htail := seg45_r_chunk100 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2115, r2116, r2117, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 101 ≤ n → n < 102 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 101 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep101 rho r2115 r2116 r2117
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 101 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
