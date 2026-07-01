import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep2L (rho : Nat -> Seg45.F) (r2336 : Seg45.relationRow2336 rho) :
    rho 40567 = seg45RPe3 rho * (1 - rho 39722) := by
  unfold Seg45.relationRow2336 at r2336
  unfold seg45RPe3
  linear_combination -r2336

theorem seg45RStep2IlMul (rho : Nat -> Seg45.F) (r2337 : Seg45.relationRow2337 rho) :
    rho 40568 = seg45RIl3 rho * (rho 40567) := by
  unfold Seg45.relationRow2337 at r2337
  rw [seg45RStep2IlLc rho] at r2337
  linear_combination -r2337

theorem seg45RStep2Acc (rho : Nat -> Seg45.F) :
    seg45RIl2 rho = seg45RIl3 rho + (rho 40567) - (rho 40568) := by
  have hstate : seg45RIl2 rho = seg45RIl3 rho + seg45RIlAtom138 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom138
  ring

theorem seg45RStep2Pe (rho : Nat -> Seg45.F) (r2338 : Seg45.relationRow2338 rho) :
    seg45RPe2 rho = seg45RPe3 rho * rho 39722 := by
  unfold Seg45.relationRow2338 at r2338
  unfold seg45RPe2 seg45RPe3
  linear_combination -r2338

theorem seg45RStep2 (rho : Nat -> Seg45.F) (r2336 : Seg45.relationRow2336 rho) (r2337 : Seg45.relationRow2337 rho) (r2338 : Seg45.relationRow2338 rho) :
    seg45RPe2 rho = seg45RPe3 rho * rho 39722 ∧
    seg45RIl2 rho = seg45RIl3 rho + seg45RPe3 rho * (1 - rho 39722) -
      seg45RIl3 rho * (seg45RPe3 rho * (1 - rho 39722)) := by
  constructor
  · exact seg45RStep2Pe rho r2338
  · rw [seg45RStep2Acc rho, seg45RStep2L rho r2336, seg45RStep2IlMul rho r2337, seg45RStep2L rho r2336]

theorem seg45_r_chunk2 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 3 (seg45RPeState rho 3) (seg45RIlState rho 3) := by
  have htail := seg45_r_chunk1 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2336, r2337, r2338, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 2 ≤ n → n < 3 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 2 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep2 rho r2336 r2337 r2338
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 2 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
