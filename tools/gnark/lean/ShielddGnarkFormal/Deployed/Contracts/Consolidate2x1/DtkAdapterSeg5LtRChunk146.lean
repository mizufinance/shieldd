import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk145

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep146L (rho : Nat -> Seg5.F) (r2032 : Seg5.relationRow2032 rho) :
    rho 1730 = seg5RPe147 rho * (1 - rho 1333) := by
  unfold Seg5.relationRow2032 at r2032
  unfold seg5RPe147
  linear_combination -r2032

theorem seg5RStep146IlMul (rho : Nat -> Seg5.F) (r2033 : Seg5.relationRow2033 rho) :
    rho 1731 = seg5RIl147 rho * (rho 1730) := by
  unfold Seg5.relationRow2033 at r2033
  rw [seg5RStep146IlLc rho] at r2033
  linear_combination -r2033

theorem seg5RStep146Acc (rho : Nat -> Seg5.F) :
    seg5RIl146 rho = seg5RIl147 rho + (rho 1730) - (rho 1731) := by
  have hstate : seg5RIl146 rho = seg5RIl147 rho + seg5RIlAtom53 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom53
  ring

theorem seg5RStep146Pe (rho : Nat -> Seg5.F) (r2034 : Seg5.relationRow2034 rho) :
    seg5RPe146 rho = seg5RPe147 rho * rho 1333 := by
  unfold Seg5.relationRow2034 at r2034
  unfold seg5RPe146 seg5RPe147
  linear_combination -r2034

theorem seg5RStep146 (rho : Nat -> Seg5.F) (r2032 : Seg5.relationRow2032 rho) (r2033 : Seg5.relationRow2033 rho) (r2034 : Seg5.relationRow2034 rho) :
    seg5RPe146 rho = seg5RPe147 rho * rho 1333 ∧
    seg5RIl146 rho = seg5RIl147 rho + seg5RPe147 rho * (1 - rho 1333) -
      seg5RIl147 rho * (seg5RPe147 rho * (1 - rho 1333)) := by
  constructor
  · exact seg5RStep146Pe rho r2034
  · rw [seg5RStep146Acc rho, seg5RStep146L rho r2032, seg5RStep146IlMul rho r2033, seg5RStep146L rho r2032]

theorem seg5_r_chunk146 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 147 (seg5RPeState rho 147) (seg5RIlState rho 147) := by
  have htail := seg5_r_chunk145 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2032, r2033, r2034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 146 ≤ n → n < 147 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 146 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep146 rho r2032 r2033 r2034
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 146 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
