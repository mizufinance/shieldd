import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk34

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep35L (rho : Nat -> Seg6.F) (r2259 : Seg6.relationRow2259 rho) :
    rho 2660 = seg6RPe36 rho * (1 - rho 1925) := by
  unfold Seg6.relationRow2259 at r2259
  unfold seg6RPe36
  linear_combination -r2259

theorem seg6RStep35IlMul (rho : Nat -> Seg6.F) (r2260 : Seg6.relationRow2260 rho) :
    rho 2661 = seg6RIl36 rho * (rho 2660) := by
  unfold Seg6.relationRow2260 at r2260
  rw [seg6RStep35IlLc rho] at r2260
  linear_combination -r2260

theorem seg6RStep35Acc (rho : Nat -> Seg6.F) :
    seg6RIl35 rho = seg6RIl36 rho + (rho 2660) - (rho 2661) := by
  have hstate : seg6RIl35 rho = seg6RIl36 rho + seg6RIlAtom114 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom114
  ring

theorem seg6RStep35Pe (rho : Nat -> Seg6.F) (r2261 : Seg6.relationRow2261 rho) :
    seg6RPe35 rho = seg6RPe36 rho * rho 1925 := by
  unfold Seg6.relationRow2261 at r2261
  unfold seg6RPe35 seg6RPe36
  linear_combination -r2261

theorem seg6RStep35 (rho : Nat -> Seg6.F) (r2259 : Seg6.relationRow2259 rho) (r2260 : Seg6.relationRow2260 rho) (r2261 : Seg6.relationRow2261 rho) :
    seg6RPe35 rho = seg6RPe36 rho * rho 1925 ∧
    seg6RIl35 rho = seg6RIl36 rho + seg6RPe36 rho * (1 - rho 1925) -
      seg6RIl36 rho * (seg6RPe36 rho * (1 - rho 1925)) := by
  constructor
  · exact seg6RStep35Pe rho r2261
  · rw [seg6RStep35Acc rho, seg6RStep35L rho r2259, seg6RStep35IlMul rho r2260, seg6RStep35L rho r2259]

theorem seg6_r_chunk35 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 36 (seg6RPeState rho 36) (seg6RIlState rho 36) := by
  have htail := seg6_r_chunk34 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2259, r2260, r2261, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 35 ≤ n → n < 36 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 35 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep35 rho r2259 r2260 r2261
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 35 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
