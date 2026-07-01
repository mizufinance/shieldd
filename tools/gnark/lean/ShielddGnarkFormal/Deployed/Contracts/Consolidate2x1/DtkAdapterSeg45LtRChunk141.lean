import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk140

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep141L (rho : Nat -> Seg45.F) (r2045 : Seg45.relationRow2045 rho) :
    rho 40276 = seg45RPe142 rho * (1 - rho 39861) := by
  unfold Seg45.relationRow2045 at r2045
  unfold seg45RPe142
  linear_combination -r2045

theorem seg45RStep141IlMul (rho : Nat -> Seg45.F) (r2046 : Seg45.relationRow2046 rho) :
    rho 40277 = seg45RIl142 rho * (rho 40276) := by
  unfold Seg45.relationRow2046 at r2046
  rw [seg45RStep141IlLc rho] at r2046
  linear_combination -r2046

theorem seg45RStep141Acc (rho : Nat -> Seg45.F) :
    seg45RIl141 rho = seg45RIl142 rho + (rho 40276) - (rho 40277) := by
  have hstate : seg45RIl141 rho = seg45RIl142 rho + seg45RIlAtom57 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom57
  ring

theorem seg45RStep141Pe (rho : Nat -> Seg45.F) (r2047 : Seg45.relationRow2047 rho) :
    seg45RPe141 rho = seg45RPe142 rho * rho 39861 := by
  unfold Seg45.relationRow2047 at r2047
  unfold seg45RPe141 seg45RPe142
  linear_combination -r2047

theorem seg45RStep141 (rho : Nat -> Seg45.F) (r2045 : Seg45.relationRow2045 rho) (r2046 : Seg45.relationRow2046 rho) (r2047 : Seg45.relationRow2047 rho) :
    seg45RPe141 rho = seg45RPe142 rho * rho 39861 ∧
    seg45RIl141 rho = seg45RIl142 rho + seg45RPe142 rho * (1 - rho 39861) -
      seg45RIl142 rho * (seg45RPe142 rho * (1 - rho 39861)) := by
  constructor
  · exact seg45RStep141Pe rho r2047
  · rw [seg45RStep141Acc rho, seg45RStep141L rho r2045, seg45RStep141IlMul rho r2046, seg45RStep141L rho r2045]

theorem seg45_r_chunk141 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 142 (seg45RPeState rho 142) (seg45RIlState rho 142) := by
  have htail := seg45_r_chunk140 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2045, r2046, r2047, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 141 ≤ n → n < 142 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 141 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep141 rho r2045 r2046 r2047
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 141 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
