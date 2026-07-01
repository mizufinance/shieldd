import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk93

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep94L (rho : Nat -> Seg45.F) (r2134 : Seg45.relationRow2134 rho) :
    rho 40365 = seg45RPe95 rho * (1 - rho 39814) := by
  unfold Seg45.relationRow2134 at r2134
  unfold seg45RPe95
  linear_combination -r2134

theorem seg45RStep94IlMul (rho : Nat -> Seg45.F) (r2135 : Seg45.relationRow2135 rho) :
    rho 40366 = seg45RIl95 rho * (rho 40365) := by
  unfold Seg45.relationRow2135 at r2135
  rw [seg45RStep94IlLc rho] at r2135
  linear_combination -r2135

theorem seg45RStep94Acc (rho : Nat -> Seg45.F) :
    seg45RIl94 rho = seg45RIl95 rho + (rho 40365) - (rho 40366) := by
  have hstate : seg45RIl94 rho = seg45RIl95 rho + seg45RIlAtom79 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom79
  ring

theorem seg45RStep94Pe (rho : Nat -> Seg45.F) (r2136 : Seg45.relationRow2136 rho) :
    seg45RPe94 rho = seg45RPe95 rho * rho 39814 := by
  unfold Seg45.relationRow2136 at r2136
  unfold seg45RPe94 seg45RPe95
  linear_combination -r2136

theorem seg45RStep94 (rho : Nat -> Seg45.F) (r2134 : Seg45.relationRow2134 rho) (r2135 : Seg45.relationRow2135 rho) (r2136 : Seg45.relationRow2136 rho) :
    seg45RPe94 rho = seg45RPe95 rho * rho 39814 ∧
    seg45RIl94 rho = seg45RIl95 rho + seg45RPe95 rho * (1 - rho 39814) -
      seg45RIl95 rho * (seg45RPe95 rho * (1 - rho 39814)) := by
  constructor
  · exact seg45RStep94Pe rho r2136
  · rw [seg45RStep94Acc rho, seg45RStep94L rho r2134, seg45RStep94IlMul rho r2135, seg45RStep94L rho r2134]

theorem seg45_r_chunk94 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 95 (seg45RPeState rho 95) (seg45RIlState rho 95) := by
  have htail := seg45_r_chunk93 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2134, r2135, r2136, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 94 ≤ n → n < 95 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 94 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep94 rho r2134 r2135 r2136
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 94 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
