import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk125

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep126L (rho : Nat -> Seg45.F) (r2066 : Seg45.relationRow2066 rho) :
    rho 40297 = seg45RPe127 rho * (1 - rho 39846) := by
  unfold Seg45.relationRow2066 at r2066
  unfold seg45RPe127
  linear_combination -r2066

theorem seg45RStep126IlMul (rho : Nat -> Seg45.F) (r2067 : Seg45.relationRow2067 rho) :
    rho 40298 = seg45RIl127 rho * (rho 40297) := by
  unfold Seg45.relationRow2067 at r2067
  rw [seg45RStep126IlLc rho] at r2067
  linear_combination -r2067

theorem seg45RStep126Acc (rho : Nat -> Seg45.F) :
    seg45RIl126 rho = seg45RIl127 rho + (rho 40297) - (rho 40298) := by
  have hstate : seg45RIl126 rho = seg45RIl127 rho + seg45RIlAtom60 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom60
  ring

theorem seg45RStep126Pe (rho : Nat -> Seg45.F) (r2068 : Seg45.relationRow2068 rho) :
    seg45RPe126 rho = seg45RPe127 rho * rho 39846 := by
  unfold Seg45.relationRow2068 at r2068
  unfold seg45RPe126 seg45RPe127
  linear_combination -r2068

theorem seg45RStep126 (rho : Nat -> Seg45.F) (r2066 : Seg45.relationRow2066 rho) (r2067 : Seg45.relationRow2067 rho) (r2068 : Seg45.relationRow2068 rho) :
    seg45RPe126 rho = seg45RPe127 rho * rho 39846 ∧
    seg45RIl126 rho = seg45RIl127 rho + seg45RPe127 rho * (1 - rho 39846) -
      seg45RIl127 rho * (seg45RPe127 rho * (1 - rho 39846)) := by
  constructor
  · exact seg45RStep126Pe rho r2068
  · rw [seg45RStep126Acc rho, seg45RStep126L rho r2066, seg45RStep126IlMul rho r2067, seg45RStep126L rho r2066]

theorem seg45_r_chunk126 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 127 (seg45RPeState rho 127) (seg45RIlState rho 127) := by
  have htail := seg45_r_chunk125 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2066, r2067, r2068, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 126 ≤ n → n < 127 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 126 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep126 rho r2066 r2067 r2068
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 126 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
