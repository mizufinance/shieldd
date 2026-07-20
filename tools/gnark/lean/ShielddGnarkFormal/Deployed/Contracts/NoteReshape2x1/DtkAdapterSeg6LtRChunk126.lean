import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk125

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep126L (rho : Nat -> Seg6.F) (r2066 : Seg6.relationRow2066 rho) :
    rho 2461 = seg6RPe127 rho * (1 - rho 2010) := by
  unfold Seg6.relationRow2066 at r2066
  unfold seg6RPe127
  linear_combination -r2066

theorem seg6RStep126IlMul (rho : Nat -> Seg6.F) (r2067 : Seg6.relationRow2067 rho) :
    rho 2462 = seg6RIl127 rho * (rho 2461) := by
  unfold Seg6.relationRow2067 at r2067
  rw [seg6RStep126IlLc rho] at r2067
  linear_combination -r2067

theorem seg6RStep126Acc (rho : Nat -> Seg6.F) :
    seg6RIl126 rho = seg6RIl127 rho + (rho 2461) - (rho 2462) := by
  have hstate : seg6RIl126 rho = seg6RIl127 rho + seg6RIlAtom60 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom60
  ring

theorem seg6RStep126Pe (rho : Nat -> Seg6.F) (r2068 : Seg6.relationRow2068 rho) :
    seg6RPe126 rho = seg6RPe127 rho * rho 2010 := by
  unfold Seg6.relationRow2068 at r2068
  unfold seg6RPe126 seg6RPe127
  linear_combination -r2068

theorem seg6RStep126 (rho : Nat -> Seg6.F) (r2066 : Seg6.relationRow2066 rho) (r2067 : Seg6.relationRow2067 rho) (r2068 : Seg6.relationRow2068 rho) :
    seg6RPe126 rho = seg6RPe127 rho * rho 2010 ∧
    seg6RIl126 rho = seg6RIl127 rho + seg6RPe127 rho * (1 - rho 2010) -
      seg6RIl127 rho * (seg6RPe127 rho * (1 - rho 2010)) := by
  constructor
  · exact seg6RStep126Pe rho r2068
  · rw [seg6RStep126Acc rho, seg6RStep126L rho r2066, seg6RStep126IlMul rho r2067, seg6RStep126L rho r2066]

theorem seg6_r_chunk126 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 127 (seg6RPeState rho 127) (seg6RIlState rho 127) := by
  have htail := seg6_r_chunk125 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2066, r2067, r2068, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 126 ≤ n → n < 127 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 126 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep126 rho r2066 r2067 r2068
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 126 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
