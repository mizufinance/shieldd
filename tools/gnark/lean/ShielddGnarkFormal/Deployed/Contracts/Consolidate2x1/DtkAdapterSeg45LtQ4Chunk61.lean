import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk60

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step61L (rho : Nat -> Seg45.F) (r2605 : Seg45.relationRow2605 rho) :
    rho 40835 = seg45Q4Pe62 rho * (1 - rho 39781) := by
  unfold Seg45.relationRow2605 at r2605
  unfold seg45Q4Pe62
  linear_combination -r2605

theorem seg45Q4Step61IlMul (rho : Nat -> Seg45.F) (r2606 : Seg45.relationRow2606 rho) :
    rho 40836 = seg45Q4Il62 rho * (rho 40835) := by
  unfold Seg45.relationRow2606 at r2606
  rw [seg45Q4Step61IlLc rho] at r2606
  linear_combination -r2606

theorem seg45Q4Step61Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il61 rho = seg45Q4Il62 rho + (rho 40835) - (rho 40836) := by
  have hstate : seg45Q4Il61 rho = seg45Q4Il62 rho + seg45Q4IlAtom37 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom37
  ring

theorem seg45Q4Step61Pe (rho : Nat -> Seg45.F) (r2607 : Seg45.relationRow2607 rho) :
    seg45Q4Pe61 rho = seg45Q4Pe62 rho * rho 39781 := by
  unfold Seg45.relationRow2607 at r2607
  unfold seg45Q4Pe61 seg45Q4Pe62
  linear_combination -r2607

theorem seg45Q4Step61 (rho : Nat -> Seg45.F) (r2605 : Seg45.relationRow2605 rho) (r2606 : Seg45.relationRow2606 rho) (r2607 : Seg45.relationRow2607 rho) :
    seg45Q4Pe61 rho = seg45Q4Pe62 rho * rho 39781 ∧
    seg45Q4Il61 rho = seg45Q4Il62 rho + seg45Q4Pe62 rho * (1 - rho 39781) -
      seg45Q4Il62 rho * (seg45Q4Pe62 rho * (1 - rho 39781)) := by
  constructor
  · exact seg45Q4Step61Pe rho r2607
  · rw [seg45Q4Step61Acc rho, seg45Q4Step61L rho r2605, seg45Q4Step61IlMul rho r2606, seg45Q4Step61L rho r2605]

theorem seg45_q4_chunk61 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 62 (seg45Q4PeState rho 62) (seg45Q4IlState rho 62) := by
  have htail := seg45_q4_chunk60 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2605, r2606, r2607, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 61 ≤ n → n < 62 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 61 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step61 rho r2605 r2606 r2607
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 61 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
