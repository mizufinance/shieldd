import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk115

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep116L (rho : Nat -> Seg6.F) (r2084 : Seg6.relationRow2084 rho) :
    rho 2479 = seg6RPe117 rho * (1 - rho 2000) := by
  unfold Seg6.relationRow2084 at r2084
  unfold seg6RPe117
  linear_combination -r2084

theorem seg6RStep116IlMul (rho : Nat -> Seg6.F) (r2085 : Seg6.relationRow2085 rho) :
    rho 2480 = seg6RIl117 rho * (rho 2479) := by
  unfold Seg6.relationRow2085 at r2085
  rw [seg6RStep116IlLc rho] at r2085
  linear_combination -r2085

theorem seg6RStep116Acc (rho : Nat -> Seg6.F) :
    seg6RIl116 rho = seg6RIl117 rho + (rho 2479) - (rho 2480) := by
  have hstate : seg6RIl116 rho = seg6RIl117 rho + seg6RIlAtom64 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom64
  ring

theorem seg6RStep116Pe (rho : Nat -> Seg6.F) (r2086 : Seg6.relationRow2086 rho) :
    seg6RPe116 rho = seg6RPe117 rho * rho 2000 := by
  unfold Seg6.relationRow2086 at r2086
  unfold seg6RPe116 seg6RPe117
  linear_combination -r2086

theorem seg6RStep116 (rho : Nat -> Seg6.F) (r2084 : Seg6.relationRow2084 rho) (r2085 : Seg6.relationRow2085 rho) (r2086 : Seg6.relationRow2086 rho) :
    seg6RPe116 rho = seg6RPe117 rho * rho 2000 ∧
    seg6RIl116 rho = seg6RIl117 rho + seg6RPe117 rho * (1 - rho 2000) -
      seg6RIl117 rho * (seg6RPe117 rho * (1 - rho 2000)) := by
  constructor
  · exact seg6RStep116Pe rho r2086
  · rw [seg6RStep116Acc rho, seg6RStep116L rho r2084, seg6RStep116IlMul rho r2085, seg6RStep116L rho r2084]

theorem seg6_r_chunk116 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 117 (seg6RPeState rho 117) (seg6RIlState rho 117) := by
  have htail := seg6_r_chunk115 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, r2084, r2085, r2086, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 116 ≤ n → n < 117 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 116 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep116 rho r2084 r2085 r2086
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 116 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
