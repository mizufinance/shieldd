import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk97

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep98L (rho : Nat -> Seg5.F) (r2122 : Seg5.relationRow2122 rho) :
    rho 1820 = seg5RPe99 rho * (1 - rho 1285) := by
  unfold Seg5.relationRow2122 at r2122
  unfold seg5RPe99
  linear_combination -r2122

theorem seg5RStep98IlMul (rho : Nat -> Seg5.F) (r2123 : Seg5.relationRow2123 rho) :
    rho 1821 = seg5RIl99 rho * (rho 1820) := by
  unfold Seg5.relationRow2123 at r2123
  rw [seg5RStep98IlLc rho] at r2123
  linear_combination -r2123

theorem seg5RStep98Acc (rho : Nat -> Seg5.F) :
    seg5RIl98 rho = seg5RIl99 rho + (rho 1820) - (rho 1821) := by
  have hstate : seg5RIl98 rho = seg5RIl99 rho + seg5RIlAtom75 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom75
  ring

theorem seg5RStep98Pe (rho : Nat -> Seg5.F) (r2124 : Seg5.relationRow2124 rho) :
    seg5RPe98 rho = seg5RPe99 rho * rho 1285 := by
  unfold Seg5.relationRow2124 at r2124
  unfold seg5RPe98 seg5RPe99
  linear_combination -r2124

theorem seg5RStep98 (rho : Nat -> Seg5.F) (r2122 : Seg5.relationRow2122 rho) (r2123 : Seg5.relationRow2123 rho) (r2124 : Seg5.relationRow2124 rho) :
    seg5RPe98 rho = seg5RPe99 rho * rho 1285 ∧
    seg5RIl98 rho = seg5RIl99 rho + seg5RPe99 rho * (1 - rho 1285) -
      seg5RIl99 rho * (seg5RPe99 rho * (1 - rho 1285)) := by
  constructor
  · exact seg5RStep98Pe rho r2124
  · rw [seg5RStep98Acc rho, seg5RStep98L rho r2122, seg5RStep98IlMul rho r2123, seg5RStep98L rho r2122]

theorem seg5_r_chunk98 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 99 (seg5RPeState rho 99) (seg5RIlState rho 99) := by
  have htail := seg5_r_chunk97 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2122, r2123, r2124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 98 ≤ n → n < 99 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 98 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep98 rho r2122 r2123 r2124
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 98 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
