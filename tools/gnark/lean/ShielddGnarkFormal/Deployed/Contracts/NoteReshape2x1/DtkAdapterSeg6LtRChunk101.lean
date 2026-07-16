import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk100

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep101L (rho : Nat -> Seg6.F) (r2115 : Seg6.relationRow2115 rho) :
    rho 2516 = seg6RPe102 rho * (1 - rho 1991) := by
  unfold Seg6.relationRow2115 at r2115
  unfold seg6RPe102
  linear_combination -r2115

theorem seg6RStep101IlMul (rho : Nat -> Seg6.F) (r2116 : Seg6.relationRow2116 rho) :
    rho 2517 = seg6RIl102 rho * (rho 2516) := by
  unfold Seg6.relationRow2116 at r2116
  rw [seg6RStep101IlLc rho] at r2116
  linear_combination -r2116

theorem seg6RStep101Acc (rho : Nat -> Seg6.F) :
    seg6RIl101 rho = seg6RIl102 rho + (rho 2516) - (rho 2517) := by
  have hstate : seg6RIl101 rho = seg6RIl102 rho + seg6RIlAtom73 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom73
  ring

theorem seg6RStep101Pe (rho : Nat -> Seg6.F) (r2117 : Seg6.relationRow2117 rho) :
    seg6RPe101 rho = seg6RPe102 rho * rho 1991 := by
  unfold Seg6.relationRow2117 at r2117
  unfold seg6RPe101 seg6RPe102
  linear_combination -r2117

theorem seg6RStep101 (rho : Nat -> Seg6.F) (r2115 : Seg6.relationRow2115 rho) (r2116 : Seg6.relationRow2116 rho) (r2117 : Seg6.relationRow2117 rho) :
    seg6RPe101 rho = seg6RPe102 rho * rho 1991 ∧
    seg6RIl101 rho = seg6RIl102 rho + seg6RPe102 rho * (1 - rho 1991) -
      seg6RIl102 rho * (seg6RPe102 rho * (1 - rho 1991)) := by
  constructor
  · exact seg6RStep101Pe rho r2117
  · rw [seg6RStep101Acc rho, seg6RStep101L rho r2115, seg6RStep101IlMul rho r2116, seg6RStep101L rho r2115]

theorem seg6_r_chunk101 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 102 (seg6RPeState rho 102) (seg6RIlState rho 102) := by
  have htail := seg6_r_chunk100 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2115, r2116, r2117, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 101 ≤ n → n < 102 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 101 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep101 rho r2115 r2116 r2117
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 101 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
