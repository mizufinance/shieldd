import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk70

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep71L (rho : Nat -> Seg45.F) (r2175 : Seg45.relationRow2175 rho) :
    rho 40406 = seg45RPe72 rho * (1 - rho 39791) := by
  unfold Seg45.relationRow2175 at r2175
  unfold seg45RPe72
  linear_combination -r2175

theorem seg45RStep71IlMul (rho : Nat -> Seg45.F) (r2176 : Seg45.relationRow2176 rho) :
    rho 40407 = seg45RIl72 rho * (rho 40406) := by
  unfold Seg45.relationRow2176 at r2176
  rw [seg45RStep71IlLc rho] at r2176
  linear_combination -r2176

theorem seg45RStep71Acc (rho : Nat -> Seg45.F) :
    seg45RIl71 rho = seg45RIl72 rho + (rho 40406) - (rho 40407) := by
  have hstate : seg45RIl71 rho = seg45RIl72 rho + seg45RIlAtom89 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom89
  ring

theorem seg45RStep71Pe (rho : Nat -> Seg45.F) (r2177 : Seg45.relationRow2177 rho) :
    seg45RPe71 rho = seg45RPe72 rho * rho 39791 := by
  unfold Seg45.relationRow2177 at r2177
  unfold seg45RPe71 seg45RPe72
  linear_combination -r2177

theorem seg45RStep71 (rho : Nat -> Seg45.F) (r2175 : Seg45.relationRow2175 rho) (r2176 : Seg45.relationRow2176 rho) (r2177 : Seg45.relationRow2177 rho) :
    seg45RPe71 rho = seg45RPe72 rho * rho 39791 ∧
    seg45RIl71 rho = seg45RIl72 rho + seg45RPe72 rho * (1 - rho 39791) -
      seg45RIl72 rho * (seg45RPe72 rho * (1 - rho 39791)) := by
  constructor
  · exact seg45RStep71Pe rho r2177
  · rw [seg45RStep71Acc rho, seg45RStep71L rho r2175, seg45RStep71IlMul rho r2176, seg45RStep71L rho r2175]

theorem seg45_r_chunk71 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 72 (seg45RPeState rho 72) (seg45RIlState rho 72) := by
  have htail := seg45_r_chunk70 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2175, r2176, r2177, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 71 ≤ n → n < 72 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 71 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep71 rho r2175 r2176 r2177
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 71 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
