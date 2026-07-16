import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk78

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep79L (rho : Nat -> Seg6.F) (r2161 : Seg6.relationRow2161 rho) :
    rho 2562 = seg6RPe80 rho * (1 - rho 1969) := by
  unfold Seg6.relationRow2161 at r2161
  unfold seg6RPe80
  linear_combination -r2161

theorem seg6RStep79IlMul (rho : Nat -> Seg6.F) (r2162 : Seg6.relationRow2162 rho) :
    rho 2563 = seg6RIl80 rho * (rho 2562) := by
  unfold Seg6.relationRow2162 at r2162
  rw [seg6RStep79IlLc rho] at r2162
  linear_combination -r2162

theorem seg6RStep79Acc (rho : Nat -> Seg6.F) :
    seg6RIl79 rho = seg6RIl80 rho + (rho 2562) - (rho 2563) := by
  have hstate : seg6RIl79 rho = seg6RIl80 rho + seg6RIlAtom86 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom86
  ring

theorem seg6RStep79Pe (rho : Nat -> Seg6.F) (r2163 : Seg6.relationRow2163 rho) :
    seg6RPe79 rho = seg6RPe80 rho * rho 1969 := by
  unfold Seg6.relationRow2163 at r2163
  unfold seg6RPe79 seg6RPe80
  linear_combination -r2163

theorem seg6RStep79 (rho : Nat -> Seg6.F) (r2161 : Seg6.relationRow2161 rho) (r2162 : Seg6.relationRow2162 rho) (r2163 : Seg6.relationRow2163 rho) :
    seg6RPe79 rho = seg6RPe80 rho * rho 1969 ∧
    seg6RIl79 rho = seg6RIl80 rho + seg6RPe80 rho * (1 - rho 1969) -
      seg6RIl80 rho * (seg6RPe80 rho * (1 - rho 1969)) := by
  constructor
  · exact seg6RStep79Pe rho r2163
  · rw [seg6RStep79Acc rho, seg6RStep79L rho r2161, seg6RStep79IlMul rho r2162, seg6RStep79L rho r2161]

theorem seg6_r_chunk79 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 80 (seg6RPeState rho 80) (seg6RIlState rho 80) := by
  have htail := seg6_r_chunk78 rho h k hq4
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
  rcases p27 with ⟨_, r2161, r2162, r2163, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 79 ≤ n → n < 80 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 79 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep79 rho r2161 r2162 r2163
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 79 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
