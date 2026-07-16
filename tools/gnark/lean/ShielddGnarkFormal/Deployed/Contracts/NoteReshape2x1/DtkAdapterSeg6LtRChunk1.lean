import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep1L (rho : Nat -> Seg6.F) (r2339 : Seg6.relationRow2339 rho) :
    rho 2740 = seg6RPe2 rho * (1 - rho 1891) := by
  unfold Seg6.relationRow2339 at r2339
  unfold seg6RPe2
  linear_combination -r2339

theorem seg6RStep1IlMul (rho : Nat -> Seg6.F) (r2340 : Seg6.relationRow2340 rho) :
    rho 2741 = seg6RIl2 rho * (rho 2740) := by
  unfold Seg6.relationRow2340 at r2340
  rw [seg6RStep1IlLc rho] at r2340
  linear_combination -r2340

theorem seg6RStep1Acc (rho : Nat -> Seg6.F) :
    seg6RIl1 rho = seg6RIl2 rho + (rho 2740) - (rho 2741) := by
  have hstate : seg6RIl1 rho = seg6RIl2 rho + seg6RIlAtom139 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom139
  ring

theorem seg6RStep1Pe (rho : Nat -> Seg6.F) (r2341 : Seg6.relationRow2341 rho) :
    seg6RPe1 rho = seg6RPe2 rho * rho 1891 := by
  unfold Seg6.relationRow2341 at r2341
  unfold seg6RPe1 seg6RPe2
  linear_combination -r2341

theorem seg6RStep1 (rho : Nat -> Seg6.F) (r2339 : Seg6.relationRow2339 rho) (r2340 : Seg6.relationRow2340 rho) (r2341 : Seg6.relationRow2341 rho) :
    seg6RPe1 rho = seg6RPe2 rho * rho 1891 ∧
    seg6RIl1 rho = seg6RIl2 rho + seg6RPe2 rho * (1 - rho 1891) -
      seg6RIl2 rho * (seg6RPe2 rho * (1 - rho 1891)) := by
  constructor
  · exact seg6RStep1Pe rho r2341
  · rw [seg6RStep1Acc rho, seg6RStep1L rho r2339, seg6RStep1IlMul rho r2340, seg6RStep1L rho r2339]

theorem seg6_r_chunk1 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 2 (seg6RPeState rho 2) (seg6RIlState rho 2) := by
  have htail := seg6_r_chunk0 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2339, r2340, r2341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 1 ≤ n → n < 2 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 1 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep1 rho r2339 r2340 r2341
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 1 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
