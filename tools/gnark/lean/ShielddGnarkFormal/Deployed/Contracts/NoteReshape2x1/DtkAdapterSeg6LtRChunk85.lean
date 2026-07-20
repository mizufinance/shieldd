import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk84

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep85L (rho : Nat -> Seg6.F) (r2147 : Seg6.relationRow2147 rho) :
    rho 2542 = seg6RPe86 rho * (1 - rho 1969) := by
  unfold Seg6.relationRow2147 at r2147
  unfold seg6RPe86
  linear_combination -r2147

theorem seg6RStep85IlMul (rho : Nat -> Seg6.F) (r2148 : Seg6.relationRow2148 rho) :
    rho 2543 = seg6RIl86 rho * (rho 2542) := by
  unfold Seg6.relationRow2148 at r2148
  rw [seg6RStep85IlLc rho] at r2148
  linear_combination -r2148

theorem seg6RStep85Acc (rho : Nat -> Seg6.F) :
    seg6RIl85 rho = seg6RIl86 rho + (rho 2542) - (rho 2543) := by
  have hstate : seg6RIl85 rho = seg6RIl86 rho + seg6RIlAtom81 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom81
  ring

theorem seg6RStep85Pe (rho : Nat -> Seg6.F) (r2149 : Seg6.relationRow2149 rho) :
    seg6RPe85 rho = seg6RPe86 rho * rho 1969 := by
  unfold Seg6.relationRow2149 at r2149
  unfold seg6RPe85 seg6RPe86
  linear_combination -r2149

theorem seg6RStep85 (rho : Nat -> Seg6.F) (r2147 : Seg6.relationRow2147 rho) (r2148 : Seg6.relationRow2148 rho) (r2149 : Seg6.relationRow2149 rho) :
    seg6RPe85 rho = seg6RPe86 rho * rho 1969 ∧
    seg6RIl85 rho = seg6RIl86 rho + seg6RPe86 rho * (1 - rho 1969) -
      seg6RIl86 rho * (seg6RPe86 rho * (1 - rho 1969)) := by
  constructor
  · exact seg6RStep85Pe rho r2149
  · rw [seg6RStep85Acc rho, seg6RStep85L rho r2147, seg6RStep85IlMul rho r2148, seg6RStep85L rho r2147]

theorem seg6_r_chunk85 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 86 (seg6RPeState rho 86) (seg6RIlState rho 86) := by
  have htail := seg6_r_chunk84 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2147, r2148, r2149, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 85 ≤ n → n < 86 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 85 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep85 rho r2147 r2148 r2149
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 85 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
