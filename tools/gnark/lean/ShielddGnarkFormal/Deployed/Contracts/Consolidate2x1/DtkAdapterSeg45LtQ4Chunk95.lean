import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step95L (rho : Nat -> Seg45.F) (r2539 : Seg45.relationRow2539 rho) :
    rho 40769 = seg45Q4Pe96 rho * (1 - rho 39815) := by
  unfold Seg45.relationRow2539 at r2539
  unfold seg45Q4Pe96
  linear_combination -r2539

theorem seg45Q4Step95IlMul (rho : Nat -> Seg45.F) (r2540 : Seg45.relationRow2540 rho) :
    rho 40770 = seg45Q4Il96 rho * (rho 40769) := by
  unfold Seg45.relationRow2540 at r2540
  rw [seg45Q4Step95IlLc rho] at r2540
  linear_combination -r2540

theorem seg45Q4Step95Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il95 rho = seg45Q4Il96 rho + (rho 40769) - (rho 40770) := by
  have hstate : seg45Q4Il95 rho = seg45Q4Il96 rho + seg45Q4IlAtom20 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom20
  ring

theorem seg45Q4Step95Pe (rho : Nat -> Seg45.F) (r2541 : Seg45.relationRow2541 rho) :
    seg45Q4Pe95 rho = seg45Q4Pe96 rho * rho 39815 := by
  unfold Seg45.relationRow2541 at r2541
  unfold seg45Q4Pe95 seg45Q4Pe96
  linear_combination -r2541

theorem seg45Q4Step95 (rho : Nat -> Seg45.F) (r2539 : Seg45.relationRow2539 rho) (r2540 : Seg45.relationRow2540 rho) (r2541 : Seg45.relationRow2541 rho) :
    seg45Q4Pe95 rho = seg45Q4Pe96 rho * rho 39815 ∧
    seg45Q4Il95 rho = seg45Q4Il96 rho + seg45Q4Pe96 rho * (1 - rho 39815) -
      seg45Q4Il96 rho * (seg45Q4Pe96 rho * (1 - rho 39815)) := by
  constructor
  · exact seg45Q4Step95Pe rho r2541
  · rw [seg45Q4Step95Acc rho, seg45Q4Step95L rho r2539, seg45Q4Step95IlMul rho r2540, seg45Q4Step95L rho r2539]

theorem seg45_q4_chunk95 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 96 (seg45Q4PeState rho 96) (seg45Q4IlState rho 96) := by
  have htail := seg45_q4_chunk94 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2539, r2540, r2541, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 95 ≤ n → n < 96 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 95 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step95 rho r2539 r2540 r2541
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 95 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
