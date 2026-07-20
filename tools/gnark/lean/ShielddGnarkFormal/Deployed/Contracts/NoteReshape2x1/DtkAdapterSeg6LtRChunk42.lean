import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk41

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep42L (rho : Nat -> Seg6.F) (r2244 : Seg6.relationRow2244 rho) :
    rho 2639 = seg6RPe43 rho * (1 - rho 1926) := by
  unfold Seg6.relationRow2244 at r2244
  unfold seg6RPe43
  linear_combination -r2244

theorem seg6RStep42IlMul (rho : Nat -> Seg6.F) (r2245 : Seg6.relationRow2245 rho) :
    rho 2640 = seg6RIl43 rho * (rho 2639) := by
  unfold Seg6.relationRow2245 at r2245
  rw [seg6RStep42IlLc rho] at r2245
  linear_combination -r2245

theorem seg6RStep42Acc (rho : Nat -> Seg6.F) :
    seg6RIl42 rho = seg6RIl43 rho + (rho 2639) - (rho 2640) := by
  have hstate : seg6RIl42 rho = seg6RIl43 rho + seg6RIlAtom110 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom110
  ring

theorem seg6RStep42Pe (rho : Nat -> Seg6.F) (r2246 : Seg6.relationRow2246 rho) :
    seg6RPe42 rho = seg6RPe43 rho * rho 1926 := by
  unfold Seg6.relationRow2246 at r2246
  unfold seg6RPe42 seg6RPe43
  linear_combination -r2246

theorem seg6RStep42 (rho : Nat -> Seg6.F) (r2244 : Seg6.relationRow2244 rho) (r2245 : Seg6.relationRow2245 rho) (r2246 : Seg6.relationRow2246 rho) :
    seg6RPe42 rho = seg6RPe43 rho * rho 1926 ∧
    seg6RIl42 rho = seg6RIl43 rho + seg6RPe43 rho * (1 - rho 1926) -
      seg6RIl43 rho * (seg6RPe43 rho * (1 - rho 1926)) := by
  constructor
  · exact seg6RStep42Pe rho r2246
  · rw [seg6RStep42Acc rho, seg6RStep42L rho r2244, seg6RStep42IlMul rho r2245, seg6RStep42L rho r2244]

theorem seg6_r_chunk42 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 43 (seg6RPeState rho 43) (seg6RIlState rho 43) := by
  have htail := seg6_r_chunk41 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, r2244, r2245, r2246, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 42 ≤ n → n < 43 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 42 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep42 rho r2244 r2245 r2246
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 42 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
