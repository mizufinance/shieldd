import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep8L (rho : Nat -> Seg6.F) (r2318 : Seg6.relationRow2318 rho) :
    rho 2713 = seg6RPe9 rho * (1 - rho 1892) := by
  unfold Seg6.relationRow2318 at r2318
  unfold seg6RPe9
  linear_combination -r2318

theorem seg6RStep8IlMul (rho : Nat -> Seg6.F) (r2319 : Seg6.relationRow2319 rho) :
    rho 2714 = seg6RIl9 rho * (rho 2713) := by
  unfold Seg6.relationRow2319 at r2319
  rw [seg6RStep8IlLc rho] at r2319
  linear_combination -r2319

theorem seg6RStep8Acc (rho : Nat -> Seg6.F) :
    seg6RIl8 rho = seg6RIl9 rho + (rho 2713) - (rho 2714) := by
  have hstate : seg6RIl8 rho = seg6RIl9 rho + seg6RIlAtom131 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom131
  ring

theorem seg6RStep8Pe (rho : Nat -> Seg6.F) (r2320 : Seg6.relationRow2320 rho) :
    seg6RPe8 rho = seg6RPe9 rho * rho 1892 := by
  unfold Seg6.relationRow2320 at r2320
  unfold seg6RPe8 seg6RPe9
  linear_combination -r2320

theorem seg6RStep8 (rho : Nat -> Seg6.F) (r2318 : Seg6.relationRow2318 rho) (r2319 : Seg6.relationRow2319 rho) (r2320 : Seg6.relationRow2320 rho) :
    seg6RPe8 rho = seg6RPe9 rho * rho 1892 ∧
    seg6RIl8 rho = seg6RIl9 rho + seg6RPe9 rho * (1 - rho 1892) -
      seg6RIl9 rho * (seg6RPe9 rho * (1 - rho 1892)) := by
  constructor
  · exact seg6RStep8Pe rho r2320
  · rw [seg6RStep8Acc rho, seg6RStep8L rho r2318, seg6RStep8IlMul rho r2319, seg6RStep8L rho r2318]

theorem seg6_r_chunk8 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 9 (seg6RPeState rho 9) (seg6RIlState rho 9) := by
  have htail := seg6_r_chunk7 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2318, r2319⟩
  unfold Seg6.relationPart29 at p29
  rcases p29 with ⟨r2320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 8 ≤ n → n < 9 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 8 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep8 rho r2318 r2319 r2320
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 8 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
