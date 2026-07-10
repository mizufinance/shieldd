import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk50

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep51L (rho : Nat -> Seg5.F) (r2223 : Seg5.relationRow2223 rho) :
    rho 1921 = seg5RPe52 rho * (1 - rho 1238) := by
  unfold Seg5.relationRow2223 at r2223
  unfold seg5RPe52
  linear_combination -r2223

theorem seg5RStep51IlMul (rho : Nat -> Seg5.F) (r2224 : Seg5.relationRow2224 rho) :
    rho 1922 = seg5RIl52 rho * (rho 1921) := by
  unfold Seg5.relationRow2224 at r2224
  rw [seg5RStep51IlLc rho] at r2224
  linear_combination -r2224

theorem seg5RStep51Acc (rho : Nat -> Seg5.F) :
    seg5RIl51 rho = seg5RIl52 rho + (rho 1921) - (rho 1922) := by
  have hstate : seg5RIl51 rho = seg5RIl52 rho + seg5RIlAtom104 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom104
  ring

theorem seg5RStep51Pe (rho : Nat -> Seg5.F) (r2225 : Seg5.relationRow2225 rho) :
    seg5RPe51 rho = seg5RPe52 rho * rho 1238 := by
  unfold Seg5.relationRow2225 at r2225
  unfold seg5RPe51 seg5RPe52
  linear_combination -r2225

theorem seg5RStep51 (rho : Nat -> Seg5.F) (r2223 : Seg5.relationRow2223 rho) (r2224 : Seg5.relationRow2224 rho) (r2225 : Seg5.relationRow2225 rho) :
    seg5RPe51 rho = seg5RPe52 rho * rho 1238 ∧
    seg5RIl51 rho = seg5RIl52 rho + seg5RPe52 rho * (1 - rho 1238) -
      seg5RIl52 rho * (seg5RPe52 rho * (1 - rho 1238)) := by
  constructor
  · exact seg5RStep51Pe rho r2225
  · rw [seg5RStep51Acc rho, seg5RStep51L rho r2223, seg5RStep51IlMul rho r2224, seg5RStep51L rho r2223]

theorem seg5_r_chunk51 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 52 (seg5RPeState rho 52) (seg5RIlState rho 52) := by
  have htail := seg5_r_chunk50 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2223, r2224, r2225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 51 ≤ n → n < 52 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 51 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep51 rho r2223 r2224 r2225
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 51 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
