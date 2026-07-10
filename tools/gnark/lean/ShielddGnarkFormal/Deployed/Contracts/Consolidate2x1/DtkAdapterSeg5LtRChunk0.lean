import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep0L (rho : Nat -> Seg5.F) (r2342 : Seg5.relationRow2342 rho) :
    rho 2040 = seg5RPe1 rho * (1 - rho 1187) := by
  unfold Seg5.relationRow2342 at r2342
  unfold seg5RPe1
  linear_combination -r2342

theorem seg5RStep0IlMul (rho : Nat -> Seg5.F) (r2343 : Seg5.relationRow2343 rho) :
    rho 2041 = seg5RIl1 rho * (rho 2040) := by
  unfold Seg5.relationRow2343 at r2343
  rw [seg5RStep0IlLc rho] at r2343
  linear_combination -r2343

theorem seg5RStep0Acc (rho : Nat -> Seg5.F) :
    seg5RIl0 rho = seg5RIl1 rho + (rho 2040) - (rho 2041) := by
  have hstate : seg5RIl0 rho = seg5RIl1 rho + seg5RIlAtom140 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom140
  ring

theorem seg5RStep0Pe (rho : Nat -> Seg5.F) (r2344 : Seg5.relationRow2344 rho) :
    seg5RPe0 rho = seg5RPe1 rho * rho 1187 := by
  unfold Seg5.relationRow2344 at r2344
  unfold seg5RPe0 seg5RPe1
  linear_combination -r2344

theorem seg5RStep0 (rho : Nat -> Seg5.F) (r2342 : Seg5.relationRow2342 rho) (r2343 : Seg5.relationRow2343 rho) (r2344 : Seg5.relationRow2344 rho) :
    seg5RPe0 rho = seg5RPe1 rho * rho 1187 ∧
    seg5RIl0 rho = seg5RIl1 rho + seg5RPe1 rho * (1 - rho 1187) -
      seg5RIl1 rho * (seg5RPe1 rho * (1 - rho 1187)) := by
  constructor
  · exact seg5RStep0Pe rho r2344
  · rw [seg5RStep0Acc rho, seg5RStep0L rho r2342, seg5RStep0IlMul rho r2343, seg5RStep0L rho r2342]

theorem seg5RFinal (rho : Nat -> Seg5.F) (r2345 : Seg5.relationRow2345 rho) : seg5RIl0 rho = 1 := by
  unfold Seg5.relationRow2345 at r2345
  rw [seg5RTerminalIlLc rho] at r2345
  linear_combination r2345

theorem seg5_r_chunk0 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 1 (seg5RPeState rho 1) (seg5RIlState rho 1) := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2342, r2343, r2344, r2345, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hfinal := seg5RFinal rho r2345
  have htailCont : Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k (seg5RIl0 rho) := ⟨hfinal, hq4⟩
  have htail : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 0 (seg5RPeState rho 0) (seg5RIlState rho 0) := by
    simpa only [Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec] using htailCont
  have hsteps : ∀ n, 0 ≤ n → n < 1 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 0 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep0 rho r2342 r2343 r2344
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 0 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
