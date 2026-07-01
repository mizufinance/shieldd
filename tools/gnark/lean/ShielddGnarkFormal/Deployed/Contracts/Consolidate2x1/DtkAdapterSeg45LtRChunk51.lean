import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk50

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep51L (rho : Nat -> Seg45.F) (r2223 : Seg45.relationRow2223 rho) :
    rho 40454 = seg45RPe52 rho * (1 - rho 39771) := by
  unfold Seg45.relationRow2223 at r2223
  unfold seg45RPe52
  linear_combination -r2223

theorem seg45RStep51IlMul (rho : Nat -> Seg45.F) (r2224 : Seg45.relationRow2224 rho) :
    rho 40455 = seg45RIl52 rho * (rho 40454) := by
  unfold Seg45.relationRow2224 at r2224
  rw [seg45RStep51IlLc rho] at r2224
  linear_combination -r2224

theorem seg45RStep51Acc (rho : Nat -> Seg45.F) :
    seg45RIl51 rho = seg45RIl52 rho + (rho 40454) - (rho 40455) := by
  have hstate : seg45RIl51 rho = seg45RIl52 rho + seg45RIlAtom104 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom104
  ring

theorem seg45RStep51Pe (rho : Nat -> Seg45.F) (r2225 : Seg45.relationRow2225 rho) :
    seg45RPe51 rho = seg45RPe52 rho * rho 39771 := by
  unfold Seg45.relationRow2225 at r2225
  unfold seg45RPe51 seg45RPe52
  linear_combination -r2225

theorem seg45RStep51 (rho : Nat -> Seg45.F) (r2223 : Seg45.relationRow2223 rho) (r2224 : Seg45.relationRow2224 rho) (r2225 : Seg45.relationRow2225 rho) :
    seg45RPe51 rho = seg45RPe52 rho * rho 39771 ∧
    seg45RIl51 rho = seg45RIl52 rho + seg45RPe52 rho * (1 - rho 39771) -
      seg45RIl52 rho * (seg45RPe52 rho * (1 - rho 39771)) := by
  constructor
  · exact seg45RStep51Pe rho r2225
  · rw [seg45RStep51Acc rho, seg45RStep51L rho r2223, seg45RStep51IlMul rho r2224, seg45RStep51L rho r2223]

theorem seg45_r_chunk51 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 52 (seg45RPeState rho 52) (seg45RIlState rho 52) := by
  have htail := seg45_r_chunk50 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2223, r2224, r2225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 51 ≤ n → n < 52 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 51 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep51 rho r2223 r2224 r2225
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 51 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
