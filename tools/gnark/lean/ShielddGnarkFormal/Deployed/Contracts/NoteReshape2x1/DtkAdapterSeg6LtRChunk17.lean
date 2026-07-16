import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk16

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep17L (rho : Nat -> Seg6.F) (r2297 : Seg6.relationRow2297 rho) :
    rho 2698 = seg6RPe18 rho * (1 - rho 1907) := by
  unfold Seg6.relationRow2297 at r2297
  unfold seg6RPe18
  linear_combination -r2297

theorem seg6RStep17IlMul (rho : Nat -> Seg6.F) (r2298 : Seg6.relationRow2298 rho) :
    rho 2699 = seg6RIl18 rho * (rho 2698) := by
  unfold Seg6.relationRow2298 at r2298
  rw [seg6RStep17IlLc rho] at r2298
  linear_combination -r2298

theorem seg6RStep17Acc (rho : Nat -> Seg6.F) :
    seg6RIl17 rho = seg6RIl18 rho + (rho 2698) - (rho 2699) := by
  have hstate : seg6RIl17 rho = seg6RIl18 rho + seg6RIlAtom125 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom125
  ring

theorem seg6RStep17Pe (rho : Nat -> Seg6.F) (r2299 : Seg6.relationRow2299 rho) :
    seg6RPe17 rho = seg6RPe18 rho * rho 1907 := by
  unfold Seg6.relationRow2299 at r2299
  unfold seg6RPe17 seg6RPe18
  linear_combination -r2299

theorem seg6RStep17 (rho : Nat -> Seg6.F) (r2297 : Seg6.relationRow2297 rho) (r2298 : Seg6.relationRow2298 rho) (r2299 : Seg6.relationRow2299 rho) :
    seg6RPe17 rho = seg6RPe18 rho * rho 1907 ∧
    seg6RIl17 rho = seg6RIl18 rho + seg6RPe18 rho * (1 - rho 1907) -
      seg6RIl18 rho * (seg6RPe18 rho * (1 - rho 1907)) := by
  constructor
  · exact seg6RStep17Pe rho r2299
  · rw [seg6RStep17Acc rho, seg6RStep17L rho r2297, seg6RStep17IlMul rho r2298, seg6RStep17L rho r2297]

theorem seg6_r_chunk17 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 18 (seg6RPeState rho 18) (seg6RIlState rho 18) := by
  have htail := seg6_r_chunk16 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2297, r2298, r2299, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 17 ≤ n → n < 18 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 17 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep17 rho r2297 r2298 r2299
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 17 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
