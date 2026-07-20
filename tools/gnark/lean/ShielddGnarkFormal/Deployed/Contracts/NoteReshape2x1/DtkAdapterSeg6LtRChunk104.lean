import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk103

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep104L (rho : Nat -> Seg6.F) (r2108 : Seg6.relationRow2108 rho) :
    rho 2503 = seg6RPe105 rho * (1 - rho 1988) := by
  unfold Seg6.relationRow2108 at r2108
  unfold seg6RPe105
  linear_combination -r2108

theorem seg6RStep104IlMul (rho : Nat -> Seg6.F) (r2109 : Seg6.relationRow2109 rho) :
    rho 2504 = seg6RIl105 rho * (rho 2503) := by
  unfold Seg6.relationRow2109 at r2109
  rw [seg6RStep104IlLc rho] at r2109
  linear_combination -r2109

theorem seg6RStep104Acc (rho : Nat -> Seg6.F) :
    seg6RIl104 rho = seg6RIl105 rho + (rho 2503) - (rho 2504) := by
  have hstate : seg6RIl104 rho = seg6RIl105 rho + seg6RIlAtom71 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom71
  ring

theorem seg6RStep104Pe (rho : Nat -> Seg6.F) (r2110 : Seg6.relationRow2110 rho) :
    seg6RPe104 rho = seg6RPe105 rho * rho 1988 := by
  unfold Seg6.relationRow2110 at r2110
  unfold seg6RPe104 seg6RPe105
  linear_combination -r2110

theorem seg6RStep104 (rho : Nat -> Seg6.F) (r2108 : Seg6.relationRow2108 rho) (r2109 : Seg6.relationRow2109 rho) (r2110 : Seg6.relationRow2110 rho) :
    seg6RPe104 rho = seg6RPe105 rho * rho 1988 ∧
    seg6RIl104 rho = seg6RIl105 rho + seg6RPe105 rho * (1 - rho 1988) -
      seg6RIl105 rho * (seg6RPe105 rho * (1 - rho 1988)) := by
  constructor
  · exact seg6RStep104Pe rho r2110
  · rw [seg6RStep104Acc rho, seg6RStep104L rho r2108, seg6RStep104IlMul rho r2109, seg6RStep104L rho r2108]

theorem seg6_r_chunk104 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 105 (seg6RPeState rho 105) (seg6RIlState rho 105) := by
  have htail := seg6_r_chunk103 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2108, r2109, r2110, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 104 ≤ n → n < 105 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 104 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep104 rho r2108 r2109 r2110
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 104 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
