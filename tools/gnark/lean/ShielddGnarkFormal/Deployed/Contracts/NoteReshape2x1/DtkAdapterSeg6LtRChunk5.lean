import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep5L (rho : Nat -> Seg6.F) (r2327 : Seg6.relationRow2327 rho) :
    rho 2728 = seg6RPe6 rho * (1 - rho 1895) := by
  unfold Seg6.relationRow2327 at r2327
  unfold seg6RPe6
  linear_combination -r2327

theorem seg6RStep5IlMul (rho : Nat -> Seg6.F) (r2328 : Seg6.relationRow2328 rho) :
    rho 2729 = seg6RIl6 rho * (rho 2728) := by
  unfold Seg6.relationRow2328 at r2328
  rw [seg6RStep5IlLc rho] at r2328
  linear_combination -r2328

theorem seg6RStep5Acc (rho : Nat -> Seg6.F) :
    seg6RIl5 rho = seg6RIl6 rho + (rho 2728) - (rho 2729) := by
  have hstate : seg6RIl5 rho = seg6RIl6 rho + seg6RIlAtom134 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom134
  ring

theorem seg6RStep5Pe (rho : Nat -> Seg6.F) (r2329 : Seg6.relationRow2329 rho) :
    seg6RPe5 rho = seg6RPe6 rho * rho 1895 := by
  unfold Seg6.relationRow2329 at r2329
  unfold seg6RPe5 seg6RPe6
  linear_combination -r2329

theorem seg6RStep5 (rho : Nat -> Seg6.F) (r2327 : Seg6.relationRow2327 rho) (r2328 : Seg6.relationRow2328 rho) (r2329 : Seg6.relationRow2329 rho) :
    seg6RPe5 rho = seg6RPe6 rho * rho 1895 ∧
    seg6RIl5 rho = seg6RIl6 rho + seg6RPe6 rho * (1 - rho 1895) -
      seg6RIl6 rho * (seg6RPe6 rho * (1 - rho 1895)) := by
  constructor
  · exact seg6RStep5Pe rho r2329
  · rw [seg6RStep5Acc rho, seg6RStep5L rho r2327, seg6RStep5IlMul rho r2328, seg6RStep5L rho r2327]

theorem seg6_r_chunk5 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 6 (seg6RPeState rho 6) (seg6RIlState rho 6) := by
  have htail := seg6_r_chunk4 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, r2327, r2328, r2329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 5 ≤ n → n < 6 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 5 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep5 rho r2327 r2328 r2329
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 5 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
