import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk95

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep96L (rho : Nat -> Seg45.F) (r2128 : Seg45.relationRow2128 rho) :
    rho 40359 = seg45RPe97 rho * (1 - rho 39816) := by
  unfold Seg45.relationRow2128 at r2128
  unfold seg45RPe97
  linear_combination -r2128

theorem seg45RStep96IlMul (rho : Nat -> Seg45.F) (r2129 : Seg45.relationRow2129 rho) :
    rho 40360 = seg45RIl97 rho * (rho 40359) := by
  unfold Seg45.relationRow2129 at r2129
  rw [seg45RStep96IlLc rho] at r2129
  linear_combination -r2129

theorem seg45RStep96Acc (rho : Nat -> Seg45.F) :
    seg45RIl96 rho = seg45RIl97 rho + (rho 40359) - (rho 40360) := by
  have hstate : seg45RIl96 rho = seg45RIl97 rho + seg45RIlAtom77 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom77
  ring

theorem seg45RStep96Pe (rho : Nat -> Seg45.F) (r2130 : Seg45.relationRow2130 rho) :
    seg45RPe96 rho = seg45RPe97 rho * rho 39816 := by
  unfold Seg45.relationRow2130 at r2130
  unfold seg45RPe96 seg45RPe97
  linear_combination -r2130

theorem seg45RStep96 (rho : Nat -> Seg45.F) (r2128 : Seg45.relationRow2128 rho) (r2129 : Seg45.relationRow2129 rho) (r2130 : Seg45.relationRow2130 rho) :
    seg45RPe96 rho = seg45RPe97 rho * rho 39816 ∧
    seg45RIl96 rho = seg45RIl97 rho + seg45RPe97 rho * (1 - rho 39816) -
      seg45RIl97 rho * (seg45RPe97 rho * (1 - rho 39816)) := by
  constructor
  · exact seg45RStep96Pe rho r2130
  · rw [seg45RStep96Acc rho, seg45RStep96L rho r2128, seg45RStep96IlMul rho r2129, seg45RStep96L rho r2128]

theorem seg45_r_chunk96 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 97 (seg45RPeState rho 97) (seg45RIlState rho 97) := by
  have htail := seg45_r_chunk95 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2128, r2129, r2130, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 96 ≤ n → n < 97 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 96 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep96 rho r2128 r2129 r2130
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 96 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
