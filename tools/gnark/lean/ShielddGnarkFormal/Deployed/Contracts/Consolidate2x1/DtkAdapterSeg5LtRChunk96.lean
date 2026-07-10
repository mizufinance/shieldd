import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk95

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep96L (rho : Nat -> Seg5.F) (r2128 : Seg5.relationRow2128 rho) :
    rho 1826 = seg5RPe97 rho * (1 - rho 1283) := by
  unfold Seg5.relationRow2128 at r2128
  unfold seg5RPe97
  linear_combination -r2128

theorem seg5RStep96IlMul (rho : Nat -> Seg5.F) (r2129 : Seg5.relationRow2129 rho) :
    rho 1827 = seg5RIl97 rho * (rho 1826) := by
  unfold Seg5.relationRow2129 at r2129
  rw [seg5RStep96IlLc rho] at r2129
  linear_combination -r2129

theorem seg5RStep96Acc (rho : Nat -> Seg5.F) :
    seg5RIl96 rho = seg5RIl97 rho + (rho 1826) - (rho 1827) := by
  have hstate : seg5RIl96 rho = seg5RIl97 rho + seg5RIlAtom77 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom77
  ring

theorem seg5RStep96Pe (rho : Nat -> Seg5.F) (r2130 : Seg5.relationRow2130 rho) :
    seg5RPe96 rho = seg5RPe97 rho * rho 1283 := by
  unfold Seg5.relationRow2130 at r2130
  unfold seg5RPe96 seg5RPe97
  linear_combination -r2130

theorem seg5RStep96 (rho : Nat -> Seg5.F) (r2128 : Seg5.relationRow2128 rho) (r2129 : Seg5.relationRow2129 rho) (r2130 : Seg5.relationRow2130 rho) :
    seg5RPe96 rho = seg5RPe97 rho * rho 1283 ∧
    seg5RIl96 rho = seg5RIl97 rho + seg5RPe97 rho * (1 - rho 1283) -
      seg5RIl97 rho * (seg5RPe97 rho * (1 - rho 1283)) := by
  constructor
  · exact seg5RStep96Pe rho r2130
  · rw [seg5RStep96Acc rho, seg5RStep96L rho r2128, seg5RStep96IlMul rho r2129, seg5RStep96L rho r2128]

theorem seg5_r_chunk96 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 97 (seg5RPeState rho 97) (seg5RIlState rho 97) := by
  have htail := seg5_r_chunk95 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2128, r2129, r2130, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 96 ≤ n → n < 97 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 96 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep96 rho r2128 r2129 r2130
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 96 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
