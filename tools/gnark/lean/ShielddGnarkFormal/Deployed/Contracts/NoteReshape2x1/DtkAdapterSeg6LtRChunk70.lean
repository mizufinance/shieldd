import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk69

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep70L (rho : Nat -> Seg6.F) (r2178 : Seg6.relationRow2178 rho) :
    rho 2573 = seg6RPe71 rho * (1 - rho 1954) := by
  unfold Seg6.relationRow2178 at r2178
  unfold seg6RPe71
  linear_combination -r2178

theorem seg6RStep70IlMul (rho : Nat -> Seg6.F) (r2179 : Seg6.relationRow2179 rho) :
    rho 2574 = seg6RIl71 rho * (rho 2573) := by
  unfold Seg6.relationRow2179 at r2179
  rw [seg6RStep70IlLc rho] at r2179
  linear_combination -r2179

theorem seg6RStep70Acc (rho : Nat -> Seg6.F) :
    seg6RIl70 rho = seg6RIl71 rho + (rho 2573) - (rho 2574) := by
  have hstate : seg6RIl70 rho = seg6RIl71 rho + seg6RIlAtom90 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom90
  ring

theorem seg6RStep70Pe (rho : Nat -> Seg6.F) (r2180 : Seg6.relationRow2180 rho) :
    seg6RPe70 rho = seg6RPe71 rho * rho 1954 := by
  unfold Seg6.relationRow2180 at r2180
  unfold seg6RPe70 seg6RPe71
  linear_combination -r2180

theorem seg6RStep70 (rho : Nat -> Seg6.F) (r2178 : Seg6.relationRow2178 rho) (r2179 : Seg6.relationRow2179 rho) (r2180 : Seg6.relationRow2180 rho) :
    seg6RPe70 rho = seg6RPe71 rho * rho 1954 ∧
    seg6RIl70 rho = seg6RIl71 rho + seg6RPe71 rho * (1 - rho 1954) -
      seg6RIl71 rho * (seg6RPe71 rho * (1 - rho 1954)) := by
  constructor
  · exact seg6RStep70Pe rho r2180
  · rw [seg6RStep70Acc rho, seg6RStep70L rho r2178, seg6RStep70IlMul rho r2179, seg6RStep70L rho r2178]

theorem seg6_r_chunk70 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 71 (seg6RPeState rho 71) (seg6RIlState rho 71) := by
  have htail := seg6_r_chunk69 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2178, r2179, r2180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 70 ≤ n → n < 71 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 70 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep70 rho r2178 r2179 r2180
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 70 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
