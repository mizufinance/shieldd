import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep8L (rho : Nat -> Seg45.F) (r2318 : Seg45.relationRow2318 rho) :
    rho 40549 = seg45RPe9 rho * (1 - rho 39728) := by
  unfold Seg45.relationRow2318 at r2318
  unfold seg45RPe9
  linear_combination -r2318

theorem seg45RStep8IlMul (rho : Nat -> Seg45.F) (r2319 : Seg45.relationRow2319 rho) :
    rho 40550 = seg45RIl9 rho * (rho 40549) := by
  unfold Seg45.relationRow2319 at r2319
  rw [seg45RStep8IlLc rho] at r2319
  linear_combination -r2319

theorem seg45RStep8Acc (rho : Nat -> Seg45.F) :
    seg45RIl8 rho = seg45RIl9 rho + (rho 40549) - (rho 40550) := by
  have hstate : seg45RIl8 rho = seg45RIl9 rho + seg45RIlAtom131 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom131
  ring

theorem seg45RStep8Pe (rho : Nat -> Seg45.F) (r2320 : Seg45.relationRow2320 rho) :
    seg45RPe8 rho = seg45RPe9 rho * rho 39728 := by
  unfold Seg45.relationRow2320 at r2320
  unfold seg45RPe8 seg45RPe9
  linear_combination -r2320

theorem seg45RStep8 (rho : Nat -> Seg45.F) (r2318 : Seg45.relationRow2318 rho) (r2319 : Seg45.relationRow2319 rho) (r2320 : Seg45.relationRow2320 rho) :
    seg45RPe8 rho = seg45RPe9 rho * rho 39728 ∧
    seg45RIl8 rho = seg45RIl9 rho + seg45RPe9 rho * (1 - rho 39728) -
      seg45RIl9 rho * (seg45RPe9 rho * (1 - rho 39728)) := by
  constructor
  · exact seg45RStep8Pe rho r2320
  · rw [seg45RStep8Acc rho, seg45RStep8L rho r2318, seg45RStep8IlMul rho r2319, seg45RStep8L rho r2318]

theorem seg45_r_chunk8 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 9 (seg45RPeState rho 9) (seg45RIlState rho 9) := by
  have htail := seg45_r_chunk7 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2318, r2319⟩
  unfold Seg45.relationPart29 at p29
  rcases p29 with ⟨r2320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 8 ≤ n → n < 9 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 8 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep8 rho r2318 r2319 r2320
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 8 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
