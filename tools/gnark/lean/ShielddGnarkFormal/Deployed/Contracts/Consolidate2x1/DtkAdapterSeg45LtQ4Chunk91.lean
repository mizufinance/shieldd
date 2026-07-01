import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk90

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step91L (rho : Nat -> Seg45.F) (r2549 : Seg45.relationRow2549 rho) :
    rho 40779 = seg45Q4Pe92 rho * (1 - rho 39811) := by
  unfold Seg45.relationRow2549 at r2549
  unfold seg45Q4Pe92
  linear_combination -r2549

theorem seg45Q4Step91IlMul (rho : Nat -> Seg45.F) (r2550 : Seg45.relationRow2550 rho) :
    rho 40780 = seg45Q4Il92 rho * (rho 40779) := by
  unfold Seg45.relationRow2550 at r2550
  rw [seg45Q4Step91IlLc rho] at r2550
  linear_combination -r2550

theorem seg45Q4Step91Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il91 rho = seg45Q4Il92 rho + (rho 40779) - (rho 40780) := by
  have hstate : seg45Q4Il91 rho = seg45Q4Il92 rho + seg45Q4IlAtom23 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom23
  ring

theorem seg45Q4Step91Pe (rho : Nat -> Seg45.F) (r2551 : Seg45.relationRow2551 rho) :
    seg45Q4Pe91 rho = seg45Q4Pe92 rho * rho 39811 := by
  unfold Seg45.relationRow2551 at r2551
  unfold seg45Q4Pe91 seg45Q4Pe92
  linear_combination -r2551

theorem seg45Q4Step91 (rho : Nat -> Seg45.F) (r2549 : Seg45.relationRow2549 rho) (r2550 : Seg45.relationRow2550 rho) (r2551 : Seg45.relationRow2551 rho) :
    seg45Q4Pe91 rho = seg45Q4Pe92 rho * rho 39811 ∧
    seg45Q4Il91 rho = seg45Q4Il92 rho + seg45Q4Pe92 rho * (1 - rho 39811) -
      seg45Q4Il92 rho * (seg45Q4Pe92 rho * (1 - rho 39811)) := by
  constructor
  · exact seg45Q4Step91Pe rho r2551
  · rw [seg45Q4Step91Acc rho, seg45Q4Step91L rho r2549, seg45Q4Step91IlMul rho r2550, seg45Q4Step91L rho r2549]

theorem seg45_q4_chunk91 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 92 (seg45Q4PeState rho 92) (seg45Q4IlState rho 92) := by
  have htail := seg45_q4_chunk90 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2549, r2550, r2551, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 91 ≤ n → n < 92 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 91 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step91 rho r2549 r2550 r2551
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 91 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
