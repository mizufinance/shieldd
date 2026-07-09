import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk108

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep109L (rho : Nat -> Seg5.F) (r2099 : Seg5.relationRow2099 rho) :
    rho 1797 = seg5RPe110 rho * (1 - rho 1296) := by
  unfold Seg5.relationRow2099 at r2099
  unfold seg5RPe110
  linear_combination -r2099

theorem seg5RStep109IlMul (rho : Nat -> Seg5.F) (r2100 : Seg5.relationRow2100 rho) :
    rho 1798 = seg5RIl110 rho * (rho 1797) := by
  unfold Seg5.relationRow2100 at r2100
  rw [seg5RStep109IlLc rho] at r2100
  linear_combination -r2100

theorem seg5RStep109Acc (rho : Nat -> Seg5.F) :
    seg5RIl109 rho = seg5RIl110 rho + (rho 1797) - (rho 1798) := by
  have hstate : seg5RIl109 rho = seg5RIl110 rho + seg5RIlAtom69 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom69
  ring

theorem seg5RStep109Pe (rho : Nat -> Seg5.F) (r2101 : Seg5.relationRow2101 rho) :
    seg5RPe109 rho = seg5RPe110 rho * rho 1296 := by
  unfold Seg5.relationRow2101 at r2101
  unfold seg5RPe109 seg5RPe110
  linear_combination -r2101

theorem seg5RStep109 (rho : Nat -> Seg5.F) (r2099 : Seg5.relationRow2099 rho) (r2100 : Seg5.relationRow2100 rho) (r2101 : Seg5.relationRow2101 rho) :
    seg5RPe109 rho = seg5RPe110 rho * rho 1296 ∧
    seg5RIl109 rho = seg5RIl110 rho + seg5RPe110 rho * (1 - rho 1296) -
      seg5RIl110 rho * (seg5RPe110 rho * (1 - rho 1296)) := by
  constructor
  · exact seg5RStep109Pe rho r2101
  · rw [seg5RStep109Acc rho, seg5RStep109L rho r2099, seg5RStep109IlMul rho r2100, seg5RStep109L rho r2099]

theorem seg5_r_chunk109 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 110 (seg5RPeState rho 110) (seg5RIlState rho 110) := by
  have htail := seg5_r_chunk108 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2099, r2100, r2101, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 109 ≤ n → n < 110 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 109 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep109 rho r2099 r2100 r2101
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 109 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
