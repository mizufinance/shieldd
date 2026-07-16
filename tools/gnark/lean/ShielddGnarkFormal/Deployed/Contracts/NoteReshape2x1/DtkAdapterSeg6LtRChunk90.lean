import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk89

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep90L (rho : Nat -> Seg6.F) (r2140 : Seg6.relationRow2140 rho) :
    rho 2541 = seg6RPe91 rho * (1 - rho 1980) := by
  unfold Seg6.relationRow2140 at r2140
  unfold seg6RPe91
  linear_combination -r2140

theorem seg6RStep90IlMul (rho : Nat -> Seg6.F) (r2141 : Seg6.relationRow2141 rho) :
    rho 2542 = seg6RIl91 rho * (rho 2541) := by
  unfold Seg6.relationRow2141 at r2141
  rw [seg6RStep90IlLc rho] at r2141
  linear_combination -r2141

theorem seg6RStep90Acc (rho : Nat -> Seg6.F) :
    seg6RIl90 rho = seg6RIl91 rho + (rho 2541) - (rho 2542) := by
  have hstate : seg6RIl90 rho = seg6RIl91 rho + seg6RIlAtom80 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom80
  ring

theorem seg6RStep90Pe (rho : Nat -> Seg6.F) (r2142 : Seg6.relationRow2142 rho) :
    seg6RPe90 rho = seg6RPe91 rho * rho 1980 := by
  unfold Seg6.relationRow2142 at r2142
  unfold seg6RPe90 seg6RPe91
  linear_combination -r2142

theorem seg6RStep90 (rho : Nat -> Seg6.F) (r2140 : Seg6.relationRow2140 rho) (r2141 : Seg6.relationRow2141 rho) (r2142 : Seg6.relationRow2142 rho) :
    seg6RPe90 rho = seg6RPe91 rho * rho 1980 ∧
    seg6RIl90 rho = seg6RIl91 rho + seg6RPe91 rho * (1 - rho 1980) -
      seg6RIl91 rho * (seg6RPe91 rho * (1 - rho 1980)) := by
  constructor
  · exact seg6RStep90Pe rho r2142
  · rw [seg6RStep90Acc rho, seg6RStep90L rho r2140, seg6RStep90IlMul rho r2141, seg6RStep90L rho r2140]

theorem seg6_r_chunk90 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 91 (seg6RPeState rho 91) (seg6RIlState rho 91) := by
  have htail := seg6_r_chunk89 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2140, r2141, r2142, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 90 ≤ n → n < 91 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 90 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep90 rho r2140 r2141 r2142
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 90 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
