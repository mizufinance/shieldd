import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step12L (rho : Nat -> Seg45.F) (r2694 : Seg45.relationRow2694 rho) :
    rho 40924 = seg45Q4Pe13 rho * (1 - rho 39732) := by
  unfold Seg45.relationRow2694 at r2694
  unfold seg45Q4Pe13
  linear_combination -r2694

theorem seg45Q4Step12IlMul (rho : Nat -> Seg45.F) (r2695 : Seg45.relationRow2695 rho) :
    rho 40925 = seg45Q4Il13 rho * (rho 40924) := by
  unfold Seg45.relationRow2695 at r2695
  rw [seg45Q4Step12IlLc rho] at r2695
  linear_combination -r2695

theorem seg45Q4Step12Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il12 rho = seg45Q4Il13 rho + (rho 40924) - (rho 40925) := by
  have hstate : seg45Q4Il12 rho = seg45Q4Il13 rho + seg45Q4IlAtom58 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom58
  ring

theorem seg45Q4Step12Pe (rho : Nat -> Seg45.F) (r2696 : Seg45.relationRow2696 rho) :
    seg45Q4Pe12 rho = seg45Q4Pe13 rho * rho 39732 := by
  unfold Seg45.relationRow2696 at r2696
  unfold seg45Q4Pe12 seg45Q4Pe13
  linear_combination -r2696

theorem seg45Q4Step12 (rho : Nat -> Seg45.F) (r2694 : Seg45.relationRow2694 rho) (r2695 : Seg45.relationRow2695 rho) (r2696 : Seg45.relationRow2696 rho) :
    seg45Q4Pe12 rho = seg45Q4Pe13 rho * rho 39732 ∧
    seg45Q4Il12 rho = seg45Q4Il13 rho + seg45Q4Pe13 rho * (1 - rho 39732) -
      seg45Q4Il13 rho * (seg45Q4Pe13 rho * (1 - rho 39732)) := by
  constructor
  · exact seg45Q4Step12Pe rho r2696
  · rw [seg45Q4Step12Acc rho, seg45Q4Step12L rho r2694, seg45Q4Step12IlMul rho r2695, seg45Q4Step12L rho r2694]

theorem seg45_q4_chunk12 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 13 (seg45Q4PeState rho 13) (seg45Q4IlState rho 13) := by
  have htail := seg45_q4_chunk11 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2694, r2695, r2696, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 12 ≤ n → n < 13 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 12 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step12 rho r2694 r2695 r2696
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 12 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
