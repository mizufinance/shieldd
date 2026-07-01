import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk108

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep109L (rho : Nat -> Seg45.F) (r2099 : Seg45.relationRow2099 rho) :
    rho 40330 = seg45RPe110 rho * (1 - rho 39829) := by
  unfold Seg45.relationRow2099 at r2099
  unfold seg45RPe110
  linear_combination -r2099

theorem seg45RStep109IlMul (rho : Nat -> Seg45.F) (r2100 : Seg45.relationRow2100 rho) :
    rho 40331 = seg45RIl110 rho * (rho 40330) := by
  unfold Seg45.relationRow2100 at r2100
  rw [seg45RStep109IlLc rho] at r2100
  linear_combination -r2100

theorem seg45RStep109Acc (rho : Nat -> Seg45.F) :
    seg45RIl109 rho = seg45RIl110 rho + (rho 40330) - (rho 40331) := by
  have hstate : seg45RIl109 rho = seg45RIl110 rho + seg45RIlAtom69 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom69
  ring

theorem seg45RStep109Pe (rho : Nat -> Seg45.F) (r2101 : Seg45.relationRow2101 rho) :
    seg45RPe109 rho = seg45RPe110 rho * rho 39829 := by
  unfold Seg45.relationRow2101 at r2101
  unfold seg45RPe109 seg45RPe110
  linear_combination -r2101

theorem seg45RStep109 (rho : Nat -> Seg45.F) (r2099 : Seg45.relationRow2099 rho) (r2100 : Seg45.relationRow2100 rho) (r2101 : Seg45.relationRow2101 rho) :
    seg45RPe109 rho = seg45RPe110 rho * rho 39829 ∧
    seg45RIl109 rho = seg45RIl110 rho + seg45RPe110 rho * (1 - rho 39829) -
      seg45RIl110 rho * (seg45RPe110 rho * (1 - rho 39829)) := by
  constructor
  · exact seg45RStep109Pe rho r2101
  · rw [seg45RStep109Acc rho, seg45RStep109L rho r2099, seg45RStep109IlMul rho r2100, seg45RStep109L rho r2099]

theorem seg45_r_chunk109 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 110 (seg45RPeState rho 110) (seg45RIlState rho 110) := by
  have htail := seg45_r_chunk108 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2099, r2100, r2101, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 109 ≤ n → n < 110 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 109 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep109 rho r2099 r2100 r2101
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 109 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
