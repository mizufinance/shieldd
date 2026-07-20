import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk97

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep98L (rho : Nat -> Seg6.F) (r2122 : Seg6.relationRow2122 rho) :
    rho 2517 = seg6RPe99 rho * (1 - rho 1982) := by
  unfold Seg6.relationRow2122 at r2122
  unfold seg6RPe99
  linear_combination -r2122

theorem seg6RStep98IlMul (rho : Nat -> Seg6.F) (r2123 : Seg6.relationRow2123 rho) :
    rho 2518 = seg6RIl99 rho * (rho 2517) := by
  unfold Seg6.relationRow2123 at r2123
  rw [seg6RStep98IlLc rho] at r2123
  linear_combination -r2123

theorem seg6RStep98Acc (rho : Nat -> Seg6.F) :
    seg6RIl98 rho = seg6RIl99 rho + (rho 2517) - (rho 2518) := by
  have hstate : seg6RIl98 rho = seg6RIl99 rho + seg6RIlAtom75 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom75
  ring

theorem seg6RStep98Pe (rho : Nat -> Seg6.F) (r2124 : Seg6.relationRow2124 rho) :
    seg6RPe98 rho = seg6RPe99 rho * rho 1982 := by
  unfold Seg6.relationRow2124 at r2124
  unfold seg6RPe98 seg6RPe99
  linear_combination -r2124

theorem seg6RStep98 (rho : Nat -> Seg6.F) (r2122 : Seg6.relationRow2122 rho) (r2123 : Seg6.relationRow2123 rho) (r2124 : Seg6.relationRow2124 rho) :
    seg6RPe98 rho = seg6RPe99 rho * rho 1982 ∧
    seg6RIl98 rho = seg6RIl99 rho + seg6RPe99 rho * (1 - rho 1982) -
      seg6RIl99 rho * (seg6RPe99 rho * (1 - rho 1982)) := by
  constructor
  · exact seg6RStep98Pe rho r2124
  · rw [seg6RStep98Acc rho, seg6RStep98L rho r2122, seg6RStep98IlMul rho r2123, seg6RStep98L rho r2122]

theorem seg6_r_chunk98 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 99 (seg6RPeState rho 99) (seg6RIlState rho 99) := by
  have htail := seg6_r_chunk97 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2122, r2123, r2124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 98 ≤ n → n < 99 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 98 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep98 rho r2122 r2123 r2124
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 98 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
