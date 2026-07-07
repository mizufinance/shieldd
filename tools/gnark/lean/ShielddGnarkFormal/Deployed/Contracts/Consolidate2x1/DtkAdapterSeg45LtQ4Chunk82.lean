import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk81

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step82L (rho : Nat -> Seg45.F) (r2568 : Seg45.relationRow2568 rho) :
    rho 40798 = seg45Q4Pe83 rho * (1 - rho 39802) := by
  unfold Seg45.relationRow2568 at r2568
  unfold seg45Q4Pe83
  linear_combination -r2568

theorem seg45Q4Step82IlMul (rho : Nat -> Seg45.F) (r2569 : Seg45.relationRow2569 rho) :
    rho 40799 = seg45Q4Il83 rho * (rho 40798) := by
  unfold Seg45.relationRow2569 at r2569
  rw [seg45Q4Step82IlLc rho] at r2569
  linear_combination -r2569

theorem seg45Q4Step82Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il82 rho = seg45Q4Il83 rho + (rho 40798) - (rho 40799) := by
  have hstate : seg45Q4Il82 rho = seg45Q4Il83 rho + seg45Q4IlAtom28 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom28
  ring

theorem seg45Q4Step82Pe (rho : Nat -> Seg45.F) (r2570 : Seg45.relationRow2570 rho) :
    seg45Q4Pe82 rho = seg45Q4Pe83 rho * rho 39802 := by
  unfold Seg45.relationRow2570 at r2570
  unfold seg45Q4Pe82 seg45Q4Pe83
  linear_combination -r2570

theorem seg45Q4Step82 (rho : Nat -> Seg45.F) (r2568 : Seg45.relationRow2568 rho) (r2569 : Seg45.relationRow2569 rho) (r2570 : Seg45.relationRow2570 rho) :
    seg45Q4Pe82 rho = seg45Q4Pe83 rho * rho 39802 ∧
    seg45Q4Il82 rho = seg45Q4Il83 rho + seg45Q4Pe83 rho * (1 - rho 39802) -
      seg45Q4Il83 rho * (seg45Q4Pe83 rho * (1 - rho 39802)) := by
  constructor
  · exact seg45Q4Step82Pe rho r2570
  · rw [seg45Q4Step82Acc rho, seg45Q4Step82L rho r2568, seg45Q4Step82IlMul rho r2569, seg45Q4Step82L rho r2568]

theorem seg45_q4_chunk82 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 83 (seg45Q4PeState rho 83) (seg45Q4IlState rho 83) := by
  have htail := seg45_q4_chunk81 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, r2568, r2569, r2570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 82 ≤ n → n < 83 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 82 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step82 rho r2568 r2569 r2570
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 82 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
