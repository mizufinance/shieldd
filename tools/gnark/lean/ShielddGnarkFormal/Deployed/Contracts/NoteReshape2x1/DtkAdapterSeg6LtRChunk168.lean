import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk167

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep168L (rho : Nat -> Seg6.F) (r1988 : Seg6.relationRow1988 rho) :
    rho 2383 = seg6RPe169 rho * (1 - rho 2052) := by
  unfold Seg6.relationRow1988 at r1988
  unfold seg6RPe169
  linear_combination -r1988

theorem seg6RStep168IlMul (rho : Nat -> Seg6.F) (r1989 : Seg6.relationRow1989 rho) :
    rho 2384 = seg6RIl169 rho * (rho 2383) := by
  unfold Seg6.relationRow1989 at r1989
  rw [seg6RStep168IlLc rho] at r1989
  linear_combination -r1989

theorem seg6RStep168Acc (rho : Nat -> Seg6.F) :
    seg6RIl168 rho = seg6RIl169 rho + (rho 2383) - (rho 2384) := by
  have hstate : seg6RIl168 rho = seg6RIl169 rho + seg6RIlAtom41 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom41
  ring

theorem seg6RStep168Pe (rho : Nat -> Seg6.F) (r1990 : Seg6.relationRow1990 rho) :
    seg6RPe168 rho = seg6RPe169 rho * rho 2052 := by
  unfold Seg6.relationRow1990 at r1990
  unfold seg6RPe168 seg6RPe169
  linear_combination -r1990

theorem seg6RStep168 (rho : Nat -> Seg6.F) (r1988 : Seg6.relationRow1988 rho) (r1989 : Seg6.relationRow1989 rho) (r1990 : Seg6.relationRow1990 rho) :
    seg6RPe168 rho = seg6RPe169 rho * rho 2052 ∧
    seg6RIl168 rho = seg6RIl169 rho + seg6RPe169 rho * (1 - rho 2052) -
      seg6RIl169 rho * (seg6RPe169 rho * (1 - rho 2052)) := by
  constructor
  · exact seg6RStep168Pe rho r1990
  · rw [seg6RStep168Acc rho, seg6RStep168L rho r1988, seg6RStep168IlMul rho r1989, seg6RStep168L rho r1988]

theorem seg6_r_chunk168 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 169 (seg6RPeState rho 169) (seg6RIlState rho 169) := by
  have htail := seg6_r_chunk167 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1988, r1989, r1990, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 168 ≤ n → n < 169 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 168 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep168 rho r1988 r1989 r1990
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 168 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
