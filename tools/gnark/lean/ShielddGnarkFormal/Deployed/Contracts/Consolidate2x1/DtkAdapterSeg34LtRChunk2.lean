import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep2L (rho : Nat -> Seg34.F) (r2336 : Seg34.relationRow2336 rho) :
    rho 33611 = seg34RPe3 rho * (1 - rho 32766) := by
  unfold Seg34.relationRow2336 at r2336
  unfold seg34RPe3
  linear_combination -r2336

theorem seg34RStep2IlMul (rho : Nat -> Seg34.F) (r2337 : Seg34.relationRow2337 rho) :
    rho 33612 = seg34RIl3 rho * (rho 33611) := by
  unfold Seg34.relationRow2337 at r2337
  rw [seg34RStep2IlLc rho] at r2337
  linear_combination -r2337

theorem seg34RStep2Acc (rho : Nat -> Seg34.F) :
    seg34RIl2 rho = seg34RIl3 rho + (rho 33611) - (rho 33612) := by
  have hstate : seg34RIl2 rho = seg34RIl3 rho + seg34RIlAtom138 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom138
  ring

theorem seg34RStep2Pe (rho : Nat -> Seg34.F) (r2338 : Seg34.relationRow2338 rho) :
    seg34RPe2 rho = seg34RPe3 rho * rho 32766 := by
  unfold Seg34.relationRow2338 at r2338
  unfold seg34RPe2 seg34RPe3
  linear_combination -r2338

theorem seg34RStep2 (rho : Nat -> Seg34.F) (r2336 : Seg34.relationRow2336 rho) (r2337 : Seg34.relationRow2337 rho) (r2338 : Seg34.relationRow2338 rho) :
    seg34RPe2 rho = seg34RPe3 rho * rho 32766 ∧
    seg34RIl2 rho = seg34RIl3 rho + seg34RPe3 rho * (1 - rho 32766) -
      seg34RIl3 rho * (seg34RPe3 rho * (1 - rho 32766)) := by
  constructor
  · exact seg34RStep2Pe rho r2338
  · rw [seg34RStep2Acc rho, seg34RStep2L rho r2336, seg34RStep2IlMul rho r2337, seg34RStep2L rho r2336]

theorem seg34_r_chunk2 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 3 (seg34RPeState rho 3) (seg34RIlState rho 3) := by
  have htail := seg34_r_chunk1 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2336, r2337, r2338, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 2 ≤ n → n < 3 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 2 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep2 rho r2336 r2337 r2338
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 2 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
