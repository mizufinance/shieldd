import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk50

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep51L (rho : Nat -> Seg6.F) (r2223 : Seg6.relationRow2223 rho) :
    rho 2624 = seg6RPe52 rho * (1 - rho 1941) := by
  unfold Seg6.relationRow2223 at r2223
  unfold seg6RPe52
  linear_combination -r2223

theorem seg6RStep51IlMul (rho : Nat -> Seg6.F) (r2224 : Seg6.relationRow2224 rho) :
    rho 2625 = seg6RIl52 rho * (rho 2624) := by
  unfold Seg6.relationRow2224 at r2224
  rw [seg6RStep51IlLc rho] at r2224
  linear_combination -r2224

theorem seg6RStep51Acc (rho : Nat -> Seg6.F) :
    seg6RIl51 rho = seg6RIl52 rho + (rho 2624) - (rho 2625) := by
  have hstate : seg6RIl51 rho = seg6RIl52 rho + seg6RIlAtom104 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom104
  ring

theorem seg6RStep51Pe (rho : Nat -> Seg6.F) (r2225 : Seg6.relationRow2225 rho) :
    seg6RPe51 rho = seg6RPe52 rho * rho 1941 := by
  unfold Seg6.relationRow2225 at r2225
  unfold seg6RPe51 seg6RPe52
  linear_combination -r2225

theorem seg6RStep51 (rho : Nat -> Seg6.F) (r2223 : Seg6.relationRow2223 rho) (r2224 : Seg6.relationRow2224 rho) (r2225 : Seg6.relationRow2225 rho) :
    seg6RPe51 rho = seg6RPe52 rho * rho 1941 ∧
    seg6RIl51 rho = seg6RIl52 rho + seg6RPe52 rho * (1 - rho 1941) -
      seg6RIl52 rho * (seg6RPe52 rho * (1 - rho 1941)) := by
  constructor
  · exact seg6RStep51Pe rho r2225
  · rw [seg6RStep51Acc rho, seg6RStep51L rho r2223, seg6RStep51IlMul rho r2224, seg6RStep51L rho r2223]

theorem seg6_r_chunk51 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 52 (seg6RPeState rho 52) (seg6RIlState rho 52) := by
  have htail := seg6_r_chunk50 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2223, r2224, r2225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 51 ≤ n → n < 52 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 51 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep51 rho r2223 r2224 r2225
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 51 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
