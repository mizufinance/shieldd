import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep24L (rho : Nat -> Seg6.F) (r2280 : Seg6.relationRow2280 rho) :
    rho 2675 = seg6RPe25 rho * (1 - rho 1908) := by
  unfold Seg6.relationRow2280 at r2280
  unfold seg6RPe25
  linear_combination -r2280

theorem seg6RStep24IlMul (rho : Nat -> Seg6.F) (r2281 : Seg6.relationRow2281 rho) :
    rho 2676 = seg6RIl25 rho * (rho 2675) := by
  unfold Seg6.relationRow2281 at r2281
  rw [seg6RStep24IlLc rho] at r2281
  linear_combination -r2281

theorem seg6RStep24Acc (rho : Nat -> Seg6.F) :
    seg6RIl24 rho = seg6RIl25 rho + (rho 2675) - (rho 2676) := by
  have hstate : seg6RIl24 rho = seg6RIl25 rho + seg6RIlAtom120 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom120
  ring

theorem seg6RStep24Pe (rho : Nat -> Seg6.F) (r2282 : Seg6.relationRow2282 rho) :
    seg6RPe24 rho = seg6RPe25 rho * rho 1908 := by
  unfold Seg6.relationRow2282 at r2282
  unfold seg6RPe24 seg6RPe25
  linear_combination -r2282

theorem seg6RStep24 (rho : Nat -> Seg6.F) (r2280 : Seg6.relationRow2280 rho) (r2281 : Seg6.relationRow2281 rho) (r2282 : Seg6.relationRow2282 rho) :
    seg6RPe24 rho = seg6RPe25 rho * rho 1908 ∧
    seg6RIl24 rho = seg6RIl25 rho + seg6RPe25 rho * (1 - rho 1908) -
      seg6RIl25 rho * (seg6RPe25 rho * (1 - rho 1908)) := by
  constructor
  · exact seg6RStep24Pe rho r2282
  · rw [seg6RStep24Acc rho, seg6RStep24L rho r2280, seg6RStep24IlMul rho r2281, seg6RStep24L rho r2280]

theorem seg6_r_chunk24 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 25 (seg6RPeState rho 25) (seg6RIlState rho 25) := by
  have htail := seg6_r_chunk23 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2280, r2281, r2282, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 24 ≤ n → n < 25 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 24 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep24 rho r2280 r2281 r2282
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 24 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
