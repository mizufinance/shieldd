import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk97

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep98L (rho : Nat -> Seg45.F) (r2122 : Seg45.relationRow2122 rho) :
    rho 40353 = seg45RPe99 rho * (1 - rho 39818) := by
  unfold Seg45.relationRow2122 at r2122
  unfold seg45RPe99
  linear_combination -r2122

theorem seg45RStep98IlMul (rho : Nat -> Seg45.F) (r2123 : Seg45.relationRow2123 rho) :
    rho 40354 = seg45RIl99 rho * (rho 40353) := by
  unfold Seg45.relationRow2123 at r2123
  rw [seg45RStep98IlLc rho] at r2123
  linear_combination -r2123

theorem seg45RStep98Acc (rho : Nat -> Seg45.F) :
    seg45RIl98 rho = seg45RIl99 rho + (rho 40353) - (rho 40354) := by
  have hstate : seg45RIl98 rho = seg45RIl99 rho + seg45RIlAtom75 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom75
  ring

theorem seg45RStep98Pe (rho : Nat -> Seg45.F) (r2124 : Seg45.relationRow2124 rho) :
    seg45RPe98 rho = seg45RPe99 rho * rho 39818 := by
  unfold Seg45.relationRow2124 at r2124
  unfold seg45RPe98 seg45RPe99
  linear_combination -r2124

theorem seg45RStep98 (rho : Nat -> Seg45.F) (r2122 : Seg45.relationRow2122 rho) (r2123 : Seg45.relationRow2123 rho) (r2124 : Seg45.relationRow2124 rho) :
    seg45RPe98 rho = seg45RPe99 rho * rho 39818 ∧
    seg45RIl98 rho = seg45RIl99 rho + seg45RPe99 rho * (1 - rho 39818) -
      seg45RIl99 rho * (seg45RPe99 rho * (1 - rho 39818)) := by
  constructor
  · exact seg45RStep98Pe rho r2124
  · rw [seg45RStep98Acc rho, seg45RStep98L rho r2122, seg45RStep98IlMul rho r2123, seg45RStep98L rho r2122]

theorem seg45_r_chunk98 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 99 (seg45RPeState rho 99) (seg45RIlState rho 99) := by
  have htail := seg45_r_chunk97 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2122, r2123, r2124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 98 ≤ n → n < 99 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 98 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep98 rho r2122 r2123 r2124
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 98 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
