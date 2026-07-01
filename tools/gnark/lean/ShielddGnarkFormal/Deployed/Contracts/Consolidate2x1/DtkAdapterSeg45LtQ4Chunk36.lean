import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk35

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step36L (rho : Nat -> Seg45.F) (r2652 : Seg45.relationRow2652 rho) :
    rho 40882 = seg45Q4Pe37 rho * (1 - rho 39756) := by
  unfold Seg45.relationRow2652 at r2652
  unfold seg45Q4Pe37
  linear_combination -r2652

theorem seg45Q4Step36IlMul (rho : Nat -> Seg45.F) (r2653 : Seg45.relationRow2653 rho) :
    rho 40883 = seg45Q4Il37 rho * (rho 40882) := by
  unfold Seg45.relationRow2653 at r2653
  rw [seg45Q4Step36IlLc rho] at r2653
  linear_combination -r2653

theorem seg45Q4Step36Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il36 rho = seg45Q4Il37 rho + (rho 40882) - (rho 40883) := by
  have hstate : seg45Q4Il36 rho = seg45Q4Il37 rho + seg45Q4IlAtom48 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom48
  ring

theorem seg45Q4Step36Pe (rho : Nat -> Seg45.F) (r2654 : Seg45.relationRow2654 rho) :
    seg45Q4Pe36 rho = seg45Q4Pe37 rho * rho 39756 := by
  unfold Seg45.relationRow2654 at r2654
  unfold seg45Q4Pe36 seg45Q4Pe37
  linear_combination -r2654

theorem seg45Q4Step36 (rho : Nat -> Seg45.F) (r2652 : Seg45.relationRow2652 rho) (r2653 : Seg45.relationRow2653 rho) (r2654 : Seg45.relationRow2654 rho) :
    seg45Q4Pe36 rho = seg45Q4Pe37 rho * rho 39756 ∧
    seg45Q4Il36 rho = seg45Q4Il37 rho + seg45Q4Pe37 rho * (1 - rho 39756) -
      seg45Q4Il37 rho * (seg45Q4Pe37 rho * (1 - rho 39756)) := by
  constructor
  · exact seg45Q4Step36Pe rho r2654
  · rw [seg45Q4Step36Acc rho, seg45Q4Step36L rho r2652, seg45Q4Step36IlMul rho r2653, seg45Q4Step36L rho r2652]

theorem seg45_q4_chunk36 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 37 (seg45Q4PeState rho 37) (seg45Q4IlState rho 37) := by
  have htail := seg45_q4_chunk35 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2652, r2653, r2654, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 36 ≤ n → n < 37 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 36 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step36 rho r2652 r2653 r2654
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 36 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
