import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep0L (rho : Nat -> Seg45.F) (r2342 : Seg45.relationRow2342 rho) :
    rho 40573 = seg45RPe1 rho * (1 - rho 39720) := by
  unfold Seg45.relationRow2342 at r2342
  unfold seg45RPe1
  linear_combination -r2342

theorem seg45RStep0IlMul (rho : Nat -> Seg45.F) (r2343 : Seg45.relationRow2343 rho) :
    rho 40574 = seg45RIl1 rho * (rho 40573) := by
  unfold Seg45.relationRow2343 at r2343
  rw [seg45RStep0IlLc rho] at r2343
  linear_combination -r2343

theorem seg45RStep0Acc (rho : Nat -> Seg45.F) :
    seg45RIl0 rho = seg45RIl1 rho + (rho 40573) - (rho 40574) := by
  have hstate : seg45RIl0 rho = seg45RIl1 rho + seg45RIlAtom140 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom140
  ring

theorem seg45RStep0Pe (rho : Nat -> Seg45.F) (r2344 : Seg45.relationRow2344 rho) :
    seg45RPe0 rho = seg45RPe1 rho * rho 39720 := by
  unfold Seg45.relationRow2344 at r2344
  unfold seg45RPe0 seg45RPe1
  linear_combination -r2344

theorem seg45RStep0 (rho : Nat -> Seg45.F) (r2342 : Seg45.relationRow2342 rho) (r2343 : Seg45.relationRow2343 rho) (r2344 : Seg45.relationRow2344 rho) :
    seg45RPe0 rho = seg45RPe1 rho * rho 39720 ∧
    seg45RIl0 rho = seg45RIl1 rho + seg45RPe1 rho * (1 - rho 39720) -
      seg45RIl1 rho * (seg45RPe1 rho * (1 - rho 39720)) := by
  constructor
  · exact seg45RStep0Pe rho r2344
  · rw [seg45RStep0Acc rho, seg45RStep0L rho r2342, seg45RStep0IlMul rho r2343, seg45RStep0L rho r2342]

theorem seg45RFinal (rho : Nat -> Seg45.F) (r2345 : Seg45.relationRow2345 rho) : seg45RIl0 rho = 1 := by
  unfold Seg45.relationRow2345 at r2345
  rw [seg45RTerminalIlLc rho] at r2345
  linear_combination r2345

theorem seg45_r_chunk0 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 1 (seg45RPeState rho 1) (seg45RIlState rho 1) := by
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
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2342, r2343, r2344, r2345, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hfinal := seg45RFinal rho r2345
  have htailCont : Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k (seg45RIl0 rho) := ⟨hfinal, hq4⟩
  have htail : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 0 (seg45RPeState rho 0) (seg45RIlState rho 0) := by
    simpa only [Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec] using htailCont
  have hsteps : ∀ n, 0 ≤ n → n < 1 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 0 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep0 rho r2342 r2343 r2344
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 0 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
