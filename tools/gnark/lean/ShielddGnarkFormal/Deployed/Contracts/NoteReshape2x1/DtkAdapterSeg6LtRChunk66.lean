import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk65

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep66L (rho : Nat -> Seg6.F) (r2190 : Seg6.relationRow2190 rho) :
    rho 2591 = seg6RPe67 rho * (1 - rho 1956) := by
  unfold Seg6.relationRow2190 at r2190
  unfold seg6RPe67
  linear_combination -r2190

theorem seg6RStep66IlMul (rho : Nat -> Seg6.F) (r2191 : Seg6.relationRow2191 rho) :
    rho 2592 = seg6RIl67 rho * (rho 2591) := by
  unfold Seg6.relationRow2191 at r2191
  rw [seg6RStep66IlLc rho] at r2191
  linear_combination -r2191

theorem seg6RStep66Acc (rho : Nat -> Seg6.F) :
    seg6RIl66 rho = seg6RIl67 rho + (rho 2591) - (rho 2592) := by
  have hstate : seg6RIl66 rho = seg6RIl67 rho + seg6RIlAtom94 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom94
  ring

theorem seg6RStep66Pe (rho : Nat -> Seg6.F) (r2192 : Seg6.relationRow2192 rho) :
    seg6RPe66 rho = seg6RPe67 rho * rho 1956 := by
  unfold Seg6.relationRow2192 at r2192
  unfold seg6RPe66 seg6RPe67
  linear_combination -r2192

theorem seg6RStep66 (rho : Nat -> Seg6.F) (r2190 : Seg6.relationRow2190 rho) (r2191 : Seg6.relationRow2191 rho) (r2192 : Seg6.relationRow2192 rho) :
    seg6RPe66 rho = seg6RPe67 rho * rho 1956 ∧
    seg6RIl66 rho = seg6RIl67 rho + seg6RPe67 rho * (1 - rho 1956) -
      seg6RIl67 rho * (seg6RPe67 rho * (1 - rho 1956)) := by
  constructor
  · exact seg6RStep66Pe rho r2192
  · rw [seg6RStep66Acc rho, seg6RStep66L rho r2190, seg6RStep66IlMul rho r2191, seg6RStep66L rho r2190]

theorem seg6_r_chunk66 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 67 (seg6RPeState rho 67) (seg6RIlState rho 67) := by
  have htail := seg6_r_chunk65 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2190, r2191, r2192, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 66 ≤ n → n < 67 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 66 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep66 rho r2190 r2191 r2192
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 66 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
