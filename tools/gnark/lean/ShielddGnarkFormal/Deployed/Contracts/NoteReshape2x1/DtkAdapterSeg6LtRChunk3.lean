import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep3L (rho : Nat -> Seg6.F) (r2333 : Seg6.relationRow2333 rho) :
    rho 2734 = seg6RPe4 rho * (1 - rho 1893) := by
  unfold Seg6.relationRow2333 at r2333
  unfold seg6RPe4
  linear_combination -r2333

theorem seg6RStep3IlMul (rho : Nat -> Seg6.F) (r2334 : Seg6.relationRow2334 rho) :
    rho 2735 = seg6RIl4 rho * (rho 2734) := by
  unfold Seg6.relationRow2334 at r2334
  rw [seg6RStep3IlLc rho] at r2334
  linear_combination -r2334

theorem seg6RStep3Acc (rho : Nat -> Seg6.F) :
    seg6RIl3 rho = seg6RIl4 rho + (rho 2734) - (rho 2735) := by
  have hstate : seg6RIl3 rho = seg6RIl4 rho + seg6RIlAtom137 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom137
  ring

theorem seg6RStep3Pe (rho : Nat -> Seg6.F) (r2335 : Seg6.relationRow2335 rho) :
    seg6RPe3 rho = seg6RPe4 rho * rho 1893 := by
  unfold Seg6.relationRow2335 at r2335
  unfold seg6RPe3 seg6RPe4
  linear_combination -r2335

theorem seg6RStep3 (rho : Nat -> Seg6.F) (r2333 : Seg6.relationRow2333 rho) (r2334 : Seg6.relationRow2334 rho) (r2335 : Seg6.relationRow2335 rho) :
    seg6RPe3 rho = seg6RPe4 rho * rho 1893 ∧
    seg6RIl3 rho = seg6RIl4 rho + seg6RPe4 rho * (1 - rho 1893) -
      seg6RIl4 rho * (seg6RPe4 rho * (1 - rho 1893)) := by
  constructor
  · exact seg6RStep3Pe rho r2335
  · rw [seg6RStep3Acc rho, seg6RStep3L rho r2333, seg6RStep3IlMul rho r2334, seg6RStep3L rho r2333]

theorem seg6_r_chunk3 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 4 (seg6RPeState rho 4) (seg6RIlState rho 4) := by
  have htail := seg6_r_chunk2 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2333, r2334, r2335, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 3 ≤ n → n < 4 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 3 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep3 rho r2333 r2334 r2335
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 3 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
