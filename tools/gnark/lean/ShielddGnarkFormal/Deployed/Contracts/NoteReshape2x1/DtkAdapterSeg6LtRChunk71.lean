import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk70

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep71L (rho : Nat -> Seg6.F) (r2175 : Seg6.relationRow2175 rho) :
    rho 2576 = seg6RPe72 rho * (1 - rho 1961) := by
  unfold Seg6.relationRow2175 at r2175
  unfold seg6RPe72
  linear_combination -r2175

theorem seg6RStep71IlMul (rho : Nat -> Seg6.F) (r2176 : Seg6.relationRow2176 rho) :
    rho 2577 = seg6RIl72 rho * (rho 2576) := by
  unfold Seg6.relationRow2176 at r2176
  rw [seg6RStep71IlLc rho] at r2176
  linear_combination -r2176

theorem seg6RStep71Acc (rho : Nat -> Seg6.F) :
    seg6RIl71 rho = seg6RIl72 rho + (rho 2576) - (rho 2577) := by
  have hstate : seg6RIl71 rho = seg6RIl72 rho + seg6RIlAtom89 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom89
  ring

theorem seg6RStep71Pe (rho : Nat -> Seg6.F) (r2177 : Seg6.relationRow2177 rho) :
    seg6RPe71 rho = seg6RPe72 rho * rho 1961 := by
  unfold Seg6.relationRow2177 at r2177
  unfold seg6RPe71 seg6RPe72
  linear_combination -r2177

theorem seg6RStep71 (rho : Nat -> Seg6.F) (r2175 : Seg6.relationRow2175 rho) (r2176 : Seg6.relationRow2176 rho) (r2177 : Seg6.relationRow2177 rho) :
    seg6RPe71 rho = seg6RPe72 rho * rho 1961 ∧
    seg6RIl71 rho = seg6RIl72 rho + seg6RPe72 rho * (1 - rho 1961) -
      seg6RIl72 rho * (seg6RPe72 rho * (1 - rho 1961)) := by
  constructor
  · exact seg6RStep71Pe rho r2177
  · rw [seg6RStep71Acc rho, seg6RStep71L rho r2175, seg6RStep71IlMul rho r2176, seg6RStep71L rho r2175]

theorem seg6_r_chunk71 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 72 (seg6RPeState rho 72) (seg6RIlState rho 72) := by
  have htail := seg6_r_chunk70 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2175, r2176, r2177, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 71 ≤ n → n < 72 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 71 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep71 rho r2175 r2176 r2177
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 71 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
