import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk102

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep103L (rho : Nat -> Seg6.F) (r2111 : Seg6.relationRow2111 rho) :
    rho 2512 = seg6RPe104 rho * (1 - rho 1993) := by
  unfold Seg6.relationRow2111 at r2111
  unfold seg6RPe104
  linear_combination -r2111

theorem seg6RStep103IlMul (rho : Nat -> Seg6.F) (r2112 : Seg6.relationRow2112 rho) :
    rho 2513 = seg6RIl104 rho * (rho 2512) := by
  unfold Seg6.relationRow2112 at r2112
  rw [seg6RStep103IlLc rho] at r2112
  linear_combination -r2112

theorem seg6RStep103Acc (rho : Nat -> Seg6.F) :
    seg6RIl103 rho = seg6RIl104 rho + (rho 2512) - (rho 2513) := by
  have hstate : seg6RIl103 rho = seg6RIl104 rho + seg6RIlAtom72 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom72
  ring

theorem seg6RStep103Pe (rho : Nat -> Seg6.F) (r2113 : Seg6.relationRow2113 rho) :
    seg6RPe103 rho = seg6RPe104 rho * rho 1993 := by
  unfold Seg6.relationRow2113 at r2113
  unfold seg6RPe103 seg6RPe104
  linear_combination -r2113

theorem seg6RStep103 (rho : Nat -> Seg6.F) (r2111 : Seg6.relationRow2111 rho) (r2112 : Seg6.relationRow2112 rho) (r2113 : Seg6.relationRow2113 rho) :
    seg6RPe103 rho = seg6RPe104 rho * rho 1993 ∧
    seg6RIl103 rho = seg6RIl104 rho + seg6RPe104 rho * (1 - rho 1993) -
      seg6RIl104 rho * (seg6RPe104 rho * (1 - rho 1993)) := by
  constructor
  · exact seg6RStep103Pe rho r2113
  · rw [seg6RStep103Acc rho, seg6RStep103L rho r2111, seg6RStep103IlMul rho r2112, seg6RStep103L rho r2111]

theorem seg6_r_chunk103 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 104 (seg6RPeState rho 104) (seg6RIlState rho 104) := by
  have htail := seg6_r_chunk102 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2111, r2112, r2113, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 103 ≤ n → n < 104 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 103 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep103 rho r2111 r2112 r2113
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 103 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
