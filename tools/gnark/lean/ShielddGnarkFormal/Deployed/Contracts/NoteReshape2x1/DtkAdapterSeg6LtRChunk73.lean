import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk72

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep73L (rho : Nat -> Seg6.F) (r2171 : Seg6.relationRow2171 rho) :
    rho 2566 = seg6RPe74 rho * (1 - rho 1957) := by
  unfold Seg6.relationRow2171 at r2171
  unfold seg6RPe74
  linear_combination -r2171

theorem seg6RStep73IlMul (rho : Nat -> Seg6.F) (r2172 : Seg6.relationRow2172 rho) :
    rho 2567 = seg6RIl74 rho * (rho 2566) := by
  unfold Seg6.relationRow2172 at r2172
  rw [seg6RStep73IlLc rho] at r2172
  linear_combination -r2172

theorem seg6RStep73Acc (rho : Nat -> Seg6.F) :
    seg6RIl73 rho = seg6RIl74 rho + (rho 2566) - (rho 2567) := by
  have hstate : seg6RIl73 rho = seg6RIl74 rho + seg6RIlAtom88 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom88
  ring

theorem seg6RStep73Pe (rho : Nat -> Seg6.F) (r2173 : Seg6.relationRow2173 rho) :
    seg6RPe73 rho = seg6RPe74 rho * rho 1957 := by
  unfold Seg6.relationRow2173 at r2173
  unfold seg6RPe73 seg6RPe74
  linear_combination -r2173

theorem seg6RStep73 (rho : Nat -> Seg6.F) (r2171 : Seg6.relationRow2171 rho) (r2172 : Seg6.relationRow2172 rho) (r2173 : Seg6.relationRow2173 rho) :
    seg6RPe73 rho = seg6RPe74 rho * rho 1957 ∧
    seg6RIl73 rho = seg6RIl74 rho + seg6RPe74 rho * (1 - rho 1957) -
      seg6RIl74 rho * (seg6RPe74 rho * (1 - rho 1957)) := by
  constructor
  · exact seg6RStep73Pe rho r2173
  · rw [seg6RStep73Acc rho, seg6RStep73L rho r2171, seg6RStep73IlMul rho r2172, seg6RStep73L rho r2171]

theorem seg6_r_chunk73 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 74 (seg6RPeState rho 74) (seg6RIlState rho 74) := by
  have htail := seg6_r_chunk72 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2171, r2172, r2173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 73 ≤ n → n < 74 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 73 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep73 rho r2171 r2172 r2173
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 73 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
