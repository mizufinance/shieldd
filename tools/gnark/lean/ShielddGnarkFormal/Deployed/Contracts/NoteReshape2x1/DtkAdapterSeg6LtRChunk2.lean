import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep2L (rho : Nat -> Seg6.F) (r2336 : Seg6.relationRow2336 rho) :
    rho 2737 = seg6RPe3 rho * (1 - rho 1892) := by
  unfold Seg6.relationRow2336 at r2336
  unfold seg6RPe3
  linear_combination -r2336

theorem seg6RStep2IlMul (rho : Nat -> Seg6.F) (r2337 : Seg6.relationRow2337 rho) :
    rho 2738 = seg6RIl3 rho * (rho 2737) := by
  unfold Seg6.relationRow2337 at r2337
  rw [seg6RStep2IlLc rho] at r2337
  linear_combination -r2337

theorem seg6RStep2Acc (rho : Nat -> Seg6.F) :
    seg6RIl2 rho = seg6RIl3 rho + (rho 2737) - (rho 2738) := by
  have hstate : seg6RIl2 rho = seg6RIl3 rho + seg6RIlAtom138 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom138
  ring

theorem seg6RStep2Pe (rho : Nat -> Seg6.F) (r2338 : Seg6.relationRow2338 rho) :
    seg6RPe2 rho = seg6RPe3 rho * rho 1892 := by
  unfold Seg6.relationRow2338 at r2338
  unfold seg6RPe2 seg6RPe3
  linear_combination -r2338

theorem seg6RStep2 (rho : Nat -> Seg6.F) (r2336 : Seg6.relationRow2336 rho) (r2337 : Seg6.relationRow2337 rho) (r2338 : Seg6.relationRow2338 rho) :
    seg6RPe2 rho = seg6RPe3 rho * rho 1892 ∧
    seg6RIl2 rho = seg6RIl3 rho + seg6RPe3 rho * (1 - rho 1892) -
      seg6RIl3 rho * (seg6RPe3 rho * (1 - rho 1892)) := by
  constructor
  · exact seg6RStep2Pe rho r2338
  · rw [seg6RStep2Acc rho, seg6RStep2L rho r2336, seg6RStep2IlMul rho r2337, seg6RStep2L rho r2336]

theorem seg6_r_chunk2 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 3 (seg6RPeState rho 3) (seg6RIlState rho 3) := by
  have htail := seg6_r_chunk1 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2336, r2337, r2338, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 2 ≤ n → n < 3 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 2 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep2 rho r2336 r2337 r2338
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 2 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
