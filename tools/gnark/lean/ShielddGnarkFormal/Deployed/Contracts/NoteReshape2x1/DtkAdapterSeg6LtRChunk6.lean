import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep6L (rho : Nat -> Seg6.F) (r2324 : Seg6.relationRow2324 rho) :
    rho 2725 = seg6RPe7 rho * (1 - rho 1896) := by
  unfold Seg6.relationRow2324 at r2324
  unfold seg6RPe7
  linear_combination -r2324

theorem seg6RStep6IlMul (rho : Nat -> Seg6.F) (r2325 : Seg6.relationRow2325 rho) :
    rho 2726 = seg6RIl7 rho * (rho 2725) := by
  unfold Seg6.relationRow2325 at r2325
  rw [seg6RStep6IlLc rho] at r2325
  linear_combination -r2325

theorem seg6RStep6Acc (rho : Nat -> Seg6.F) :
    seg6RIl6 rho = seg6RIl7 rho + (rho 2725) - (rho 2726) := by
  have hstate : seg6RIl6 rho = seg6RIl7 rho + seg6RIlAtom133 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom133
  ring

theorem seg6RStep6Pe (rho : Nat -> Seg6.F) (r2326 : Seg6.relationRow2326 rho) :
    seg6RPe6 rho = seg6RPe7 rho * rho 1896 := by
  unfold Seg6.relationRow2326 at r2326
  unfold seg6RPe6 seg6RPe7
  linear_combination -r2326

theorem seg6RStep6 (rho : Nat -> Seg6.F) (r2324 : Seg6.relationRow2324 rho) (r2325 : Seg6.relationRow2325 rho) (r2326 : Seg6.relationRow2326 rho) :
    seg6RPe6 rho = seg6RPe7 rho * rho 1896 ∧
    seg6RIl6 rho = seg6RIl7 rho + seg6RPe7 rho * (1 - rho 1896) -
      seg6RIl7 rho * (seg6RPe7 rho * (1 - rho 1896)) := by
  constructor
  · exact seg6RStep6Pe rho r2326
  · rw [seg6RStep6Acc rho, seg6RStep6L rho r2324, seg6RStep6IlMul rho r2325, seg6RStep6L rho r2324]

theorem seg6_r_chunk6 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 7 (seg6RPeState rho 7) (seg6RIlState rho 7) := by
  have htail := seg6_r_chunk5 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, r2324, r2325, r2326, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 6 ≤ n → n < 7 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 6 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep6 rho r2324 r2325 r2326
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 6 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
