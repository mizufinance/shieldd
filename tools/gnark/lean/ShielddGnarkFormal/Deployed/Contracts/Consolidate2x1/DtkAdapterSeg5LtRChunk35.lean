import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk34

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep35L (rho : Nat -> Seg5.F) (r2259 : Seg5.relationRow2259 rho) :
    rho 1957 = seg5RPe36 rho * (1 - rho 1222) := by
  unfold Seg5.relationRow2259 at r2259
  unfold seg5RPe36
  linear_combination -r2259

theorem seg5RStep35IlMul (rho : Nat -> Seg5.F) (r2260 : Seg5.relationRow2260 rho) :
    rho 1958 = seg5RIl36 rho * (rho 1957) := by
  unfold Seg5.relationRow2260 at r2260
  rw [seg5RStep35IlLc rho] at r2260
  linear_combination -r2260

theorem seg5RStep35Acc (rho : Nat -> Seg5.F) :
    seg5RIl35 rho = seg5RIl36 rho + (rho 1957) - (rho 1958) := by
  have hstate : seg5RIl35 rho = seg5RIl36 rho + seg5RIlAtom114 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom114
  ring

theorem seg5RStep35Pe (rho : Nat -> Seg5.F) (r2261 : Seg5.relationRow2261 rho) :
    seg5RPe35 rho = seg5RPe36 rho * rho 1222 := by
  unfold Seg5.relationRow2261 at r2261
  unfold seg5RPe35 seg5RPe36
  linear_combination -r2261

theorem seg5RStep35 (rho : Nat -> Seg5.F) (r2259 : Seg5.relationRow2259 rho) (r2260 : Seg5.relationRow2260 rho) (r2261 : Seg5.relationRow2261 rho) :
    seg5RPe35 rho = seg5RPe36 rho * rho 1222 ∧
    seg5RIl35 rho = seg5RIl36 rho + seg5RPe36 rho * (1 - rho 1222) -
      seg5RIl36 rho * (seg5RPe36 rho * (1 - rho 1222)) := by
  constructor
  · exact seg5RStep35Pe rho r2261
  · rw [seg5RStep35Acc rho, seg5RStep35L rho r2259, seg5RStep35IlMul rho r2260, seg5RStep35L rho r2259]

theorem seg5_r_chunk35 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 36 (seg5RPeState rho 36) (seg5RIlState rho 36) := by
  have htail := seg5_r_chunk34 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2259, r2260, r2261, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 35 ≤ n → n < 36 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 35 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep35 rho r2259 r2260 r2261
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 35 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
