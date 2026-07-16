import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk93

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep94L (rho : Nat -> Seg6.F) (r2134 : Seg6.relationRow2134 rho) :
    rho 2535 = seg6RPe95 rho * (1 - rho 1984) := by
  unfold Seg6.relationRow2134 at r2134
  unfold seg6RPe95
  linear_combination -r2134

theorem seg6RStep94IlMul (rho : Nat -> Seg6.F) (r2135 : Seg6.relationRow2135 rho) :
    rho 2536 = seg6RIl95 rho * (rho 2535) := by
  unfold Seg6.relationRow2135 at r2135
  rw [seg6RStep94IlLc rho] at r2135
  linear_combination -r2135

theorem seg6RStep94Acc (rho : Nat -> Seg6.F) :
    seg6RIl94 rho = seg6RIl95 rho + (rho 2535) - (rho 2536) := by
  have hstate : seg6RIl94 rho = seg6RIl95 rho + seg6RIlAtom79 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom79
  ring

theorem seg6RStep94Pe (rho : Nat -> Seg6.F) (r2136 : Seg6.relationRow2136 rho) :
    seg6RPe94 rho = seg6RPe95 rho * rho 1984 := by
  unfold Seg6.relationRow2136 at r2136
  unfold seg6RPe94 seg6RPe95
  linear_combination -r2136

theorem seg6RStep94 (rho : Nat -> Seg6.F) (r2134 : Seg6.relationRow2134 rho) (r2135 : Seg6.relationRow2135 rho) (r2136 : Seg6.relationRow2136 rho) :
    seg6RPe94 rho = seg6RPe95 rho * rho 1984 ∧
    seg6RIl94 rho = seg6RIl95 rho + seg6RPe95 rho * (1 - rho 1984) -
      seg6RIl95 rho * (seg6RPe95 rho * (1 - rho 1984)) := by
  constructor
  · exact seg6RStep94Pe rho r2136
  · rw [seg6RStep94Acc rho, seg6RStep94L rho r2134, seg6RStep94IlMul rho r2135, seg6RStep94L rho r2134]

theorem seg6_r_chunk94 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 95 (seg6RPeState rho 95) (seg6RIlState rho 95) := by
  have htail := seg6_r_chunk93 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2134, r2135, r2136, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 94 ≤ n → n < 95 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 94 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep94 rho r2134 r2135 r2136
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 94 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
