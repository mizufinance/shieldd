import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep4L (rho : Nat -> Seg6.F) (r2330 : Seg6.relationRow2330 rho) :
    rho 2731 = seg6RPe5 rho * (1 - rho 1894) := by
  unfold Seg6.relationRow2330 at r2330
  unfold seg6RPe5
  linear_combination -r2330

theorem seg6RStep4IlMul (rho : Nat -> Seg6.F) (r2331 : Seg6.relationRow2331 rho) :
    rho 2732 = seg6RIl5 rho * (rho 2731) := by
  unfold Seg6.relationRow2331 at r2331
  rw [seg6RStep4IlLc rho] at r2331
  linear_combination -r2331

theorem seg6RStep4Acc (rho : Nat -> Seg6.F) :
    seg6RIl4 rho = seg6RIl5 rho + (rho 2731) - (rho 2732) := by
  have hstate : seg6RIl4 rho = seg6RIl5 rho + seg6RIlAtom135 rho + (-1 : Seg6.F) * seg6RIlAtom136 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom135 seg6RIlAtom136
  ring

theorem seg6RStep4Pe (rho : Nat -> Seg6.F) (r2332 : Seg6.relationRow2332 rho) :
    seg6RPe4 rho = seg6RPe5 rho * rho 1894 := by
  unfold Seg6.relationRow2332 at r2332
  unfold seg6RPe4 seg6RPe5
  linear_combination -r2332

theorem seg6RStep4 (rho : Nat -> Seg6.F) (r2330 : Seg6.relationRow2330 rho) (r2331 : Seg6.relationRow2331 rho) (r2332 : Seg6.relationRow2332 rho) :
    seg6RPe4 rho = seg6RPe5 rho * rho 1894 ∧
    seg6RIl4 rho = seg6RIl5 rho + seg6RPe5 rho * (1 - rho 1894) -
      seg6RIl5 rho * (seg6RPe5 rho * (1 - rho 1894)) := by
  constructor
  · exact seg6RStep4Pe rho r2332
  · rw [seg6RStep4Acc rho, seg6RStep4L rho r2330, seg6RStep4IlMul rho r2331, seg6RStep4L rho r2330]

theorem seg6_r_chunk4 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 5 (seg6RPeState rho 5) (seg6RIlState rho 5) := by
  have htail := seg6_r_chunk3 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, r2330, r2331, r2332, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 4 ≤ n → n < 5 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 4 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep4 rho r2330 r2331 r2332
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 4 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
