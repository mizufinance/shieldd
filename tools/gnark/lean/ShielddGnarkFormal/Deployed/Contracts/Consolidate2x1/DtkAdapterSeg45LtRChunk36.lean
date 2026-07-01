import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk35

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep36L (rho : Nat -> Seg45.F) (r2256 : Seg45.relationRow2256 rho) :
    rho 40487 = seg45RPe37 rho * (1 - rho 39756) := by
  unfold Seg45.relationRow2256 at r2256
  unfold seg45RPe37
  linear_combination -r2256

theorem seg45RStep36IlMul (rho : Nat -> Seg45.F) (r2257 : Seg45.relationRow2257 rho) :
    rho 40488 = seg45RIl37 rho * (rho 40487) := by
  unfold Seg45.relationRow2257 at r2257
  rw [seg45RStep36IlLc rho] at r2257
  linear_combination -r2257

theorem seg45RStep36Acc (rho : Nat -> Seg45.F) :
    seg45RIl36 rho = seg45RIl37 rho + (rho 40487) - (rho 40488) := by
  have hstate : seg45RIl36 rho = seg45RIl37 rho + seg45RIlAtom113 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom113
  ring

theorem seg45RStep36Pe (rho : Nat -> Seg45.F) (r2258 : Seg45.relationRow2258 rho) :
    seg45RPe36 rho = seg45RPe37 rho * rho 39756 := by
  unfold Seg45.relationRow2258 at r2258
  unfold seg45RPe36 seg45RPe37
  linear_combination -r2258

theorem seg45RStep36 (rho : Nat -> Seg45.F) (r2256 : Seg45.relationRow2256 rho) (r2257 : Seg45.relationRow2257 rho) (r2258 : Seg45.relationRow2258 rho) :
    seg45RPe36 rho = seg45RPe37 rho * rho 39756 ∧
    seg45RIl36 rho = seg45RIl37 rho + seg45RPe37 rho * (1 - rho 39756) -
      seg45RIl37 rho * (seg45RPe37 rho * (1 - rho 39756)) := by
  constructor
  · exact seg45RStep36Pe rho r2258
  · rw [seg45RStep36Acc rho, seg45RStep36L rho r2256, seg45RStep36IlMul rho r2257, seg45RStep36L rho r2256]

theorem seg45_r_chunk36 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 37 (seg45RPeState rho 37) (seg45RIlState rho 37) := by
  have htail := seg45_r_chunk35 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2256, r2257, r2258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 36 ≤ n → n < 37 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 36 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep36 rho r2256 r2257 r2258
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 36 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
