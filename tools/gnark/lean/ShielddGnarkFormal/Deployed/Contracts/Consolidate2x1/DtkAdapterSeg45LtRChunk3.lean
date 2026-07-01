import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep3L (rho : Nat -> Seg45.F) (r2333 : Seg45.relationRow2333 rho) :
    rho 40564 = seg45RPe4 rho * (1 - rho 39723) := by
  unfold Seg45.relationRow2333 at r2333
  unfold seg45RPe4
  linear_combination -r2333

theorem seg45RStep3IlMul (rho : Nat -> Seg45.F) (r2334 : Seg45.relationRow2334 rho) :
    rho 40565 = seg45RIl4 rho * (rho 40564) := by
  unfold Seg45.relationRow2334 at r2334
  rw [seg45RStep3IlLc rho] at r2334
  linear_combination -r2334

theorem seg45RStep3Acc (rho : Nat -> Seg45.F) :
    seg45RIl3 rho = seg45RIl4 rho + (rho 40564) - (rho 40565) := by
  have hstate : seg45RIl3 rho = seg45RIl4 rho + seg45RIlAtom137 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom137
  ring

theorem seg45RStep3Pe (rho : Nat -> Seg45.F) (r2335 : Seg45.relationRow2335 rho) :
    seg45RPe3 rho = seg45RPe4 rho * rho 39723 := by
  unfold Seg45.relationRow2335 at r2335
  unfold seg45RPe3 seg45RPe4
  linear_combination -r2335

theorem seg45RStep3 (rho : Nat -> Seg45.F) (r2333 : Seg45.relationRow2333 rho) (r2334 : Seg45.relationRow2334 rho) (r2335 : Seg45.relationRow2335 rho) :
    seg45RPe3 rho = seg45RPe4 rho * rho 39723 ∧
    seg45RIl3 rho = seg45RIl4 rho + seg45RPe4 rho * (1 - rho 39723) -
      seg45RIl4 rho * (seg45RPe4 rho * (1 - rho 39723)) := by
  constructor
  · exact seg45RStep3Pe rho r2335
  · rw [seg45RStep3Acc rho, seg45RStep3L rho r2333, seg45RStep3IlMul rho r2334, seg45RStep3L rho r2333]

theorem seg45_r_chunk3 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 4 (seg45RPeState rho 4) (seg45RIlState rho 4) := by
  have htail := seg45_r_chunk2 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2333, r2334, r2335, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 3 ≤ n → n < 4 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 3 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep3 rho r2333 r2334 r2335
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 3 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
