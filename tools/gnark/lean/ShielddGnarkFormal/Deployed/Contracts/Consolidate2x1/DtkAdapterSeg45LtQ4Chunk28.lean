import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk27

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step28L (rho : Nat -> Seg45.F) (r2670 : Seg45.relationRow2670 rho) :
    rho 40900 = seg45Q4Pe29 rho * (1 - rho 39748) := by
  unfold Seg45.relationRow2670 at r2670
  unfold seg45Q4Pe29
  linear_combination -r2670

theorem seg45Q4Step28IlMul (rho : Nat -> Seg45.F) (r2671 : Seg45.relationRow2671 rho) :
    rho 40901 = seg45Q4Il29 rho * (rho 40900) := by
  unfold Seg45.relationRow2671 at r2671
  rw [seg45Q4Step28IlLc rho] at r2671
  linear_combination -r2671

theorem seg45Q4Step28Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il28 rho = seg45Q4Il29 rho + (rho 40900) - (rho 40901) := by
  have hstate : seg45Q4Il28 rho = seg45Q4Il29 rho + seg45Q4IlAtom54 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom54
  ring

theorem seg45Q4Step28Pe (rho : Nat -> Seg45.F) (r2672 : Seg45.relationRow2672 rho) :
    seg45Q4Pe28 rho = seg45Q4Pe29 rho * rho 39748 := by
  unfold Seg45.relationRow2672 at r2672
  unfold seg45Q4Pe28 seg45Q4Pe29
  linear_combination -r2672

theorem seg45Q4Step28 (rho : Nat -> Seg45.F) (r2670 : Seg45.relationRow2670 rho) (r2671 : Seg45.relationRow2671 rho) (r2672 : Seg45.relationRow2672 rho) :
    seg45Q4Pe28 rho = seg45Q4Pe29 rho * rho 39748 ∧
    seg45Q4Il28 rho = seg45Q4Il29 rho + seg45Q4Pe29 rho * (1 - rho 39748) -
      seg45Q4Il29 rho * (seg45Q4Pe29 rho * (1 - rho 39748)) := by
  constructor
  · exact seg45Q4Step28Pe rho r2672
  · rw [seg45Q4Step28Acc rho, seg45Q4Step28L rho r2670, seg45Q4Step28IlMul rho r2671, seg45Q4Step28L rho r2670]

theorem seg45_q4_chunk28 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 29 (seg45Q4PeState rho 29) (seg45Q4IlState rho 29) := by
  have htail := seg45_q4_chunk27 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2670, r2671, r2672, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 28 ≤ n → n < 29 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 28 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step28 rho r2670 r2671 r2672
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 28 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
