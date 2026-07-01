import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep0L (rho : Nat -> Seg16.F) (r2342 : Seg16.relationRow2342 rho) :
    rho 14917 = seg16RPe1 rho * (1 - rho 14064) := by
  unfold Seg16.relationRow2342 at r2342
  unfold seg16RPe1
  linear_combination -r2342

theorem seg16RStep0IlMul (rho : Nat -> Seg16.F) (r2343 : Seg16.relationRow2343 rho) :
    rho 14918 = seg16RIl1 rho * (rho 14917) := by
  unfold Seg16.relationRow2343 at r2343
  rw [seg16RStep0IlLc rho] at r2343
  linear_combination -r2343

theorem seg16RStep0Acc (rho : Nat -> Seg16.F) :
    seg16RIl0 rho = seg16RIl1 rho + (rho 14917) - (rho 14918) := by
  have hstate : seg16RIl0 rho = seg16RIl1 rho + seg16RIlAtom140 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom140
  ring

theorem seg16RStep0Pe (rho : Nat -> Seg16.F) (r2344 : Seg16.relationRow2344 rho) :
    seg16RPe0 rho = seg16RPe1 rho * rho 14064 := by
  unfold Seg16.relationRow2344 at r2344
  unfold seg16RPe0 seg16RPe1
  linear_combination -r2344

theorem seg16RStep0 (rho : Nat -> Seg16.F) (r2342 : Seg16.relationRow2342 rho) (r2343 : Seg16.relationRow2343 rho) (r2344 : Seg16.relationRow2344 rho) :
    seg16RPe0 rho = seg16RPe1 rho * rho 14064 ∧
    seg16RIl0 rho = seg16RIl1 rho + seg16RPe1 rho * (1 - rho 14064) -
      seg16RIl1 rho * (seg16RPe1 rho * (1 - rho 14064)) := by
  constructor
  · exact seg16RStep0Pe rho r2344
  · rw [seg16RStep0Acc rho, seg16RStep0L rho r2342, seg16RStep0IlMul rho r2343, seg16RStep0L rho r2342]

theorem seg16RFinal (rho : Nat -> Seg16.F) (r2345 : Seg16.relationRow2345 rho) : seg16RIl0 rho = 1 := by
  unfold Seg16.relationRow2345 at r2345
  rw [seg16RTerminalIlLc rho] at r2345
  linear_combination r2345

theorem seg16_r_chunk0 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 1 (seg16RPeState rho 1) (seg16RIlState rho 1) := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2342, r2343, r2344, r2345, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hfinal := seg16RFinal rho r2345
  have htailCont : Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k (seg16RIl0 rho) := ⟨hfinal, hq4⟩
  have htail : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 0 (seg16RPeState rho 0) (seg16RIlState rho 0) := by
    simpa only [Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec] using htailCont
  have hsteps : ∀ n, 0 ≤ n → n < 1 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 0 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep0 rho r2342 r2343 r2344
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 0 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
