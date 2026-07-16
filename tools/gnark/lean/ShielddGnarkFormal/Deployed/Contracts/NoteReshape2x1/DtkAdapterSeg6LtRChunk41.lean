import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk40

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep41L (rho : Nat -> Seg6.F) (r2247 : Seg6.relationRow2247 rho) :
    rho 2648 = seg6RPe42 rho * (1 - rho 1931) := by
  unfold Seg6.relationRow2247 at r2247
  unfold seg6RPe42
  linear_combination -r2247

theorem seg6RStep41IlMul (rho : Nat -> Seg6.F) (r2248 : Seg6.relationRow2248 rho) :
    rho 2649 = seg6RIl42 rho * (rho 2648) := by
  unfold Seg6.relationRow2248 at r2248
  rw [seg6RStep41IlLc rho] at r2248
  linear_combination -r2248

theorem seg6RStep41Acc (rho : Nat -> Seg6.F) :
    seg6RIl41 rho = seg6RIl42 rho + (rho 2648) - (rho 2649) := by
  have hstate : seg6RIl41 rho = seg6RIl42 rho + seg6RIlAtom111 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom111
  ring

theorem seg6RStep41Pe (rho : Nat -> Seg6.F) (r2249 : Seg6.relationRow2249 rho) :
    seg6RPe41 rho = seg6RPe42 rho * rho 1931 := by
  unfold Seg6.relationRow2249 at r2249
  unfold seg6RPe41 seg6RPe42
  linear_combination -r2249

theorem seg6RStep41 (rho : Nat -> Seg6.F) (r2247 : Seg6.relationRow2247 rho) (r2248 : Seg6.relationRow2248 rho) (r2249 : Seg6.relationRow2249 rho) :
    seg6RPe41 rho = seg6RPe42 rho * rho 1931 ∧
    seg6RIl41 rho = seg6RIl42 rho + seg6RPe42 rho * (1 - rho 1931) -
      seg6RIl42 rho * (seg6RPe42 rho * (1 - rho 1931)) := by
  constructor
  · exact seg6RStep41Pe rho r2249
  · rw [seg6RStep41Acc rho, seg6RStep41L rho r2247, seg6RStep41IlMul rho r2248, seg6RStep41L rho r2247]

theorem seg6_r_chunk41 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 42 (seg6RPeState rho 42) (seg6RIlState rho 42) := by
  have htail := seg6_r_chunk40 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, r2247, r2248, r2249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 41 ≤ n → n < 42 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 41 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep41 rho r2247 r2248 r2249
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 41 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
