import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk73

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step74L (rho : Nat -> Seg45.F) (r2586 : Seg45.relationRow2586 rho) :
    rho 40816 = seg45Q4Pe75 rho * (1 - rho 39794) := by
  unfold Seg45.relationRow2586 at r2586
  unfold seg45Q4Pe75
  linear_combination -r2586

theorem seg45Q4Step74IlMul (rho : Nat -> Seg45.F) (r2587 : Seg45.relationRow2587 rho) :
    rho 40817 = seg45Q4Il75 rho * (rho 40816) := by
  unfold Seg45.relationRow2587 at r2587
  rw [seg45Q4Step74IlLc rho] at r2587
  linear_combination -r2587

theorem seg45Q4Step74Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il74 rho = seg45Q4Il75 rho + (rho 40816) - (rho 40817) := by
  have hstate : seg45Q4Il74 rho = seg45Q4Il75 rho + seg45Q4IlAtom33 rho + (-1 : Seg45.F) * seg45Q4IlAtom34 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom33 seg45Q4IlAtom34
  ring

theorem seg45Q4Step74Pe (rho : Nat -> Seg45.F) (r2588 : Seg45.relationRow2588 rho) :
    seg45Q4Pe74 rho = seg45Q4Pe75 rho * rho 39794 := by
  unfold Seg45.relationRow2588 at r2588
  unfold seg45Q4Pe74 seg45Q4Pe75
  linear_combination -r2588

theorem seg45Q4Step74 (rho : Nat -> Seg45.F) (r2586 : Seg45.relationRow2586 rho) (r2587 : Seg45.relationRow2587 rho) (r2588 : Seg45.relationRow2588 rho) :
    seg45Q4Pe74 rho = seg45Q4Pe75 rho * rho 39794 ∧
    seg45Q4Il74 rho = seg45Q4Il75 rho + seg45Q4Pe75 rho * (1 - rho 39794) -
      seg45Q4Il75 rho * (seg45Q4Pe75 rho * (1 - rho 39794)) := by
  constructor
  · exact seg45Q4Step74Pe rho r2588
  · rw [seg45Q4Step74Acc rho, seg45Q4Step74L rho r2586, seg45Q4Step74IlMul rho r2587, seg45Q4Step74L rho r2586]

theorem seg45_q4_chunk74 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 75 (seg45Q4PeState rho 75) (seg45Q4IlState rho 75) := by
  have htail := seg45_q4_chunk73 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2586, r2587, r2588, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 74 ≤ n → n < 75 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 74 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step74 rho r2586 r2587 r2588
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 74 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
