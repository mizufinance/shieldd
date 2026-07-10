import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk180

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep181L (rho : Nat -> Seg5.F) (r1963 : Seg5.relationRow1963 rho) :
    rho 1661 = seg5RPe182 rho * (1 - rho 1368) := by
  unfold Seg5.relationRow1963 at r1963
  unfold seg5RPe182
  linear_combination -r1963

theorem seg5RStep181IlMul (rho : Nat -> Seg5.F) (r1964 : Seg5.relationRow1964 rho) :
    rho 1662 = seg5RIl182 rho * (rho 1661) := by
  unfold Seg5.relationRow1964 at r1964
  rw [seg5RStep181IlLc rho] at r1964
  linear_combination -r1964

theorem seg5RStep181Acc (rho : Nat -> Seg5.F) :
    seg5RIl181 rho = seg5RIl182 rho + (rho 1661) - (rho 1662) := by
  have hstate : seg5RIl181 rho = seg5RIl182 rho + seg5RIlAtom35 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom35
  ring

theorem seg5RStep181Pe (rho : Nat -> Seg5.F) (r1965 : Seg5.relationRow1965 rho) :
    seg5RPe181 rho = seg5RPe182 rho * rho 1368 := by
  unfold Seg5.relationRow1965 at r1965
  unfold seg5RPe181 seg5RPe182
  linear_combination -r1965

theorem seg5RStep181 (rho : Nat -> Seg5.F) (r1963 : Seg5.relationRow1963 rho) (r1964 : Seg5.relationRow1964 rho) (r1965 : Seg5.relationRow1965 rho) :
    seg5RPe181 rho = seg5RPe182 rho * rho 1368 ∧
    seg5RIl181 rho = seg5RIl182 rho + seg5RPe182 rho * (1 - rho 1368) -
      seg5RIl182 rho * (seg5RPe182 rho * (1 - rho 1368)) := by
  constructor
  · exact seg5RStep181Pe rho r1965
  · rw [seg5RStep181Acc rho, seg5RStep181L rho r1963, seg5RStep181IlMul rho r1964, seg5RStep181L rho r1963]

theorem seg5_r_chunk181 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 182 (seg5RPeState rho 182) (seg5RIlState rho 182) := by
  have htail := seg5_r_chunk180 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1963, r1964, r1965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 181 ≤ n → n < 182 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 181 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep181 rho r1963 r1964 r1965
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 181 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
