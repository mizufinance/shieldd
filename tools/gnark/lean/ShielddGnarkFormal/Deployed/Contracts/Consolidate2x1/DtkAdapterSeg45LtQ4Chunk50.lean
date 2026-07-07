import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk49

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step50L (rho : Nat -> Seg45.F) (r2624 : Seg45.relationRow2624 rho) :
    rho 40854 = seg45Q4Pe51 rho * (1 - rho 39770) := by
  unfold Seg45.relationRow2624 at r2624
  unfold seg45Q4Pe51
  linear_combination -r2624

theorem seg45Q4Step50IlMul (rho : Nat -> Seg45.F) (r2625 : Seg45.relationRow2625 rho) :
    rho 40855 = seg45Q4Il51 rho * (rho 40854) := by
  unfold Seg45.relationRow2625 at r2625
  rw [seg45Q4Step50IlLc rho] at r2625
  linear_combination -r2625

theorem seg45Q4Step50Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il50 rho = seg45Q4Il51 rho + (rho 40854) - (rho 40855) := by
  have hstate : seg45Q4Il50 rho = seg45Q4Il51 rho + seg45Q4IlAtom41 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom41
  ring

theorem seg45Q4Step50Pe (rho : Nat -> Seg45.F) (r2626 : Seg45.relationRow2626 rho) :
    seg45Q4Pe50 rho = seg45Q4Pe51 rho * rho 39770 := by
  unfold Seg45.relationRow2626 at r2626
  unfold seg45Q4Pe50 seg45Q4Pe51
  linear_combination -r2626

theorem seg45Q4Step50 (rho : Nat -> Seg45.F) (r2624 : Seg45.relationRow2624 rho) (r2625 : Seg45.relationRow2625 rho) (r2626 : Seg45.relationRow2626 rho) :
    seg45Q4Pe50 rho = seg45Q4Pe51 rho * rho 39770 ∧
    seg45Q4Il50 rho = seg45Q4Il51 rho + seg45Q4Pe51 rho * (1 - rho 39770) -
      seg45Q4Il51 rho * (seg45Q4Pe51 rho * (1 - rho 39770)) := by
  constructor
  · exact seg45Q4Step50Pe rho r2626
  · rw [seg45Q4Step50Acc rho, seg45Q4Step50L rho r2624, seg45Q4Step50IlMul rho r2625, seg45Q4Step50L rho r2624]

theorem seg45_q4_chunk50 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 51 (seg45Q4PeState rho 51) (seg45Q4IlState rho 51) := by
  have htail := seg45_q4_chunk49 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2624, r2625, r2626, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 50 ≤ n → n < 51 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 50 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step50 rho r2624 r2625 r2626
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 50 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
