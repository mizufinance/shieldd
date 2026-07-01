import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk110

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step111L (rho : Nat -> Seg45.F) (r2503 : Seg45.relationRow2503 rho) :
    rho 40733 = seg45Q4Pe112 rho * (1 - rho 39831) := by
  unfold Seg45.relationRow2503 at r2503
  unfold seg45Q4Pe112
  linear_combination -r2503

theorem seg45Q4Step111IlMul (rho : Nat -> Seg45.F) (r2504 : Seg45.relationRow2504 rho) :
    rho 40734 = seg45Q4Il112 rho * (rho 40733) := by
  unfold Seg45.relationRow2504 at r2504
  rw [seg45Q4Il112Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom2 seg45Q4IlAtom3 seg45Q4IlAtom4 seg45Q4IlAtom5 seg45Q4IlAtom6 seg45Q4IlAtom7 seg45Q4IlAtom8
  linear_combination -r2504

theorem seg45Q4Step111Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il111 rho = seg45Q4Il112 rho + (rho 40733) - (rho 40734) := by
  have hstate : seg45Q4Il111 rho = seg45Q4Il112 rho + seg45Q4IlAtom9 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom9
  ring

theorem seg45Q4Step111Pe (rho : Nat -> Seg45.F) (r2505 : Seg45.relationRow2505 rho) :
    seg45Q4Pe111 rho = seg45Q4Pe112 rho * rho 39831 := by
  unfold Seg45.relationRow2505 at r2505
  unfold seg45Q4Pe111 seg45Q4Pe112
  linear_combination -r2505

theorem seg45Q4Step111 (rho : Nat -> Seg45.F) (r2503 : Seg45.relationRow2503 rho) (r2504 : Seg45.relationRow2504 rho) (r2505 : Seg45.relationRow2505 rho) :
    seg45Q4Pe111 rho = seg45Q4Pe112 rho * rho 39831 ∧
    seg45Q4Il111 rho = seg45Q4Il112 rho + seg45Q4Pe112 rho * (1 - rho 39831) -
      seg45Q4Il112 rho * (seg45Q4Pe112 rho * (1 - rho 39831)) := by
  constructor
  · exact seg45Q4Step111Pe rho r2505
  · rw [seg45Q4Step111Acc rho, seg45Q4Step111L rho r2503, seg45Q4Step111IlMul rho r2504, seg45Q4Step111L rho r2503]

theorem seg45_q4_chunk111 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 112 (seg45Q4PeState rho 112) (seg45Q4IlState rho 112) := by
  have htail := seg45_q4_chunk110 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2503, r2504, r2505, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 111 ≤ n → n < 112 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 111 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step111 rho r2503 r2504 r2505
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 111 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
