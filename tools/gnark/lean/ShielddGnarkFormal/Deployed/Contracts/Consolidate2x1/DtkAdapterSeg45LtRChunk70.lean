import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk69

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep70L (rho : Nat -> Seg45.F) (r2178 : Seg45.relationRow2178 rho) :
    rho 40409 = seg45RPe71 rho * (1 - rho 39790) := by
  unfold Seg45.relationRow2178 at r2178
  unfold seg45RPe71
  linear_combination -r2178

theorem seg45RStep70IlMul (rho : Nat -> Seg45.F) (r2179 : Seg45.relationRow2179 rho) :
    rho 40410 = seg45RIl71 rho * (rho 40409) := by
  unfold Seg45.relationRow2179 at r2179
  rw [seg45RStep70IlLc rho] at r2179
  linear_combination -r2179

theorem seg45RStep70Acc (rho : Nat -> Seg45.F) :
    seg45RIl70 rho = seg45RIl71 rho + (rho 40409) - (rho 40410) := by
  have hstate : seg45RIl70 rho = seg45RIl71 rho + seg45RIlAtom90 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom90
  ring

theorem seg45RStep70Pe (rho : Nat -> Seg45.F) (r2180 : Seg45.relationRow2180 rho) :
    seg45RPe70 rho = seg45RPe71 rho * rho 39790 := by
  unfold Seg45.relationRow2180 at r2180
  unfold seg45RPe70 seg45RPe71
  linear_combination -r2180

theorem seg45RStep70 (rho : Nat -> Seg45.F) (r2178 : Seg45.relationRow2178 rho) (r2179 : Seg45.relationRow2179 rho) (r2180 : Seg45.relationRow2180 rho) :
    seg45RPe70 rho = seg45RPe71 rho * rho 39790 ∧
    seg45RIl70 rho = seg45RIl71 rho + seg45RPe71 rho * (1 - rho 39790) -
      seg45RIl71 rho * (seg45RPe71 rho * (1 - rho 39790)) := by
  constructor
  · exact seg45RStep70Pe rho r2180
  · rw [seg45RStep70Acc rho, seg45RStep70L rho r2178, seg45RStep70IlMul rho r2179, seg45RStep70L rho r2178]

theorem seg45_r_chunk70 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 71 (seg45RPeState rho 71) (seg45RIlState rho 71) := by
  have htail := seg45_r_chunk69 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2178, r2179, r2180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 70 ≤ n → n < 71 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 70 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep70 rho r2178 r2179 r2180
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 70 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
