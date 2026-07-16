import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk98

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep99L (rho : Nat -> Seg6.F) (r2119 : Seg6.relationRow2119 rho) :
    rho 2520 = seg6RPe100 rho * (1 - rho 1989) := by
  unfold Seg6.relationRow2119 at r2119
  unfold seg6RPe100
  linear_combination -r2119

theorem seg6RStep99IlMul (rho : Nat -> Seg6.F) (r2120 : Seg6.relationRow2120 rho) :
    rho 2521 = seg6RIl100 rho * (rho 2520) := by
  unfold Seg6.relationRow2120 at r2120
  rw [seg6RStep99IlLc rho] at r2120
  linear_combination -r2120

theorem seg6RStep99Acc (rho : Nat -> Seg6.F) :
    seg6RIl99 rho = seg6RIl100 rho + (rho 2520) - (rho 2521) := by
  have hstate : seg6RIl99 rho = seg6RIl100 rho + seg6RIlAtom74 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom74
  ring

theorem seg6RStep99Pe (rho : Nat -> Seg6.F) (r2121 : Seg6.relationRow2121 rho) :
    seg6RPe99 rho = seg6RPe100 rho * rho 1989 := by
  unfold Seg6.relationRow2121 at r2121
  unfold seg6RPe99 seg6RPe100
  linear_combination -r2121

theorem seg6RStep99 (rho : Nat -> Seg6.F) (r2119 : Seg6.relationRow2119 rho) (r2120 : Seg6.relationRow2120 rho) (r2121 : Seg6.relationRow2121 rho) :
    seg6RPe99 rho = seg6RPe100 rho * rho 1989 ∧
    seg6RIl99 rho = seg6RIl100 rho + seg6RPe100 rho * (1 - rho 1989) -
      seg6RIl100 rho * (seg6RPe100 rho * (1 - rho 1989)) := by
  constructor
  · exact seg6RStep99Pe rho r2121
  · rw [seg6RStep99Acc rho, seg6RStep99L rho r2119, seg6RStep99IlMul rho r2120, seg6RStep99L rho r2119]

theorem seg6_r_chunk99 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 100 (seg6RPeState rho 100) (seg6RIlState rho 100) := by
  have htail := seg6_r_chunk98 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2119, r2120, r2121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 99 ≤ n → n < 100 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 99 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep99 rho r2119 r2120 r2121
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 99 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
