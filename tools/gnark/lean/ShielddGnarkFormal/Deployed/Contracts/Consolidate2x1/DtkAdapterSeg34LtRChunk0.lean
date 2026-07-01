import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep0L (rho : Nat -> Seg34.F) (r2342 : Seg34.relationRow2342 rho) :
    rho 33617 = seg34RPe1 rho * (1 - rho 32764) := by
  unfold Seg34.relationRow2342 at r2342
  unfold seg34RPe1
  linear_combination -r2342

theorem seg34RStep0IlMul (rho : Nat -> Seg34.F) (r2343 : Seg34.relationRow2343 rho) :
    rho 33618 = seg34RIl1 rho * (rho 33617) := by
  unfold Seg34.relationRow2343 at r2343
  rw [seg34RStep0IlLc rho] at r2343
  linear_combination -r2343

theorem seg34RStep0Acc (rho : Nat -> Seg34.F) :
    seg34RIl0 rho = seg34RIl1 rho + (rho 33617) - (rho 33618) := by
  have hstate : seg34RIl0 rho = seg34RIl1 rho + seg34RIlAtom140 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom140
  ring

theorem seg34RStep0Pe (rho : Nat -> Seg34.F) (r2344 : Seg34.relationRow2344 rho) :
    seg34RPe0 rho = seg34RPe1 rho * rho 32764 := by
  unfold Seg34.relationRow2344 at r2344
  unfold seg34RPe0 seg34RPe1
  linear_combination -r2344

theorem seg34RStep0 (rho : Nat -> Seg34.F) (r2342 : Seg34.relationRow2342 rho) (r2343 : Seg34.relationRow2343 rho) (r2344 : Seg34.relationRow2344 rho) :
    seg34RPe0 rho = seg34RPe1 rho * rho 32764 ∧
    seg34RIl0 rho = seg34RIl1 rho + seg34RPe1 rho * (1 - rho 32764) -
      seg34RIl1 rho * (seg34RPe1 rho * (1 - rho 32764)) := by
  constructor
  · exact seg34RStep0Pe rho r2344
  · rw [seg34RStep0Acc rho, seg34RStep0L rho r2342, seg34RStep0IlMul rho r2343, seg34RStep0L rho r2342]

theorem seg34RFinal (rho : Nat -> Seg34.F) (r2345 : Seg34.relationRow2345 rho) : seg34RIl0 rho = 1 := by
  unfold Seg34.relationRow2345 at r2345
  rw [seg34RTerminalIlLc rho] at r2345
  linear_combination r2345

theorem seg34_r_chunk0 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 1 (seg34RPeState rho 1) (seg34RIlState rho 1) := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2342, r2343, r2344, r2345, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hfinal := seg34RFinal rho r2345
  have htailCont : Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k (seg34RIl0 rho) := ⟨hfinal, hq4⟩
  have htail : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 0 (seg34RPeState rho 0) (seg34RIlState rho 0) := by
    simpa only [Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec] using htailCont
  have hsteps : ∀ n, 0 ≤ n → n < 1 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 0 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep0 rho r2342 r2343 r2344
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 0 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
