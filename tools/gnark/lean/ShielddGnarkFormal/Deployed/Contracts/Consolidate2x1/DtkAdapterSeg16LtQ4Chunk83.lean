import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk82

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step83L (rho : Nat -> Seg16.F) (r2565 : Seg16.relationRow2565 rho) :
    rho 15139 = seg16Q4Pe84 rho * (1 - rho 14147) := by
  unfold Seg16.relationRow2565 at r2565
  unfold seg16Q4Pe84
  linear_combination -r2565

theorem seg16Q4Step83IlMul (rho : Nat -> Seg16.F) (r2566 : Seg16.relationRow2566 rho) :
    rho 15140 = seg16Q4Il84 rho * (rho 15139) := by
  unfold Seg16.relationRow2566 at r2566
  rw [seg16Q4Step83IlLc rho] at r2566
  linear_combination -r2566

theorem seg16Q4Step83Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il83 rho = seg16Q4Il84 rho + (rho 15139) - (rho 15140) := by
  have hstate : seg16Q4Il83 rho = seg16Q4Il84 rho + seg16Q4IlAtom27 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom27
  ring

theorem seg16Q4Step83Pe (rho : Nat -> Seg16.F) (r2567 : Seg16.relationRow2567 rho) :
    seg16Q4Pe83 rho = seg16Q4Pe84 rho * rho 14147 := by
  unfold Seg16.relationRow2567 at r2567
  unfold seg16Q4Pe83 seg16Q4Pe84
  linear_combination -r2567

theorem seg16Q4Step83 (rho : Nat -> Seg16.F) (r2565 : Seg16.relationRow2565 rho) (r2566 : Seg16.relationRow2566 rho) (r2567 : Seg16.relationRow2567 rho) :
    seg16Q4Pe83 rho = seg16Q4Pe84 rho * rho 14147 ∧
    seg16Q4Il83 rho = seg16Q4Il84 rho + seg16Q4Pe84 rho * (1 - rho 14147) -
      seg16Q4Il84 rho * (seg16Q4Pe84 rho * (1 - rho 14147)) := by
  constructor
  · exact seg16Q4Step83Pe rho r2567
  · rw [seg16Q4Step83Acc rho, seg16Q4Step83L rho r2565, seg16Q4Step83IlMul rho r2566, seg16Q4Step83L rho r2565]

theorem seg16_q4_chunk83 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 84 (seg16Q4PeState rho 84) (seg16Q4IlState rho 84) := by
  have htail := seg16_q4_chunk82 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, r2565, r2566, r2567, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 83 ≤ n → n < 84 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 83 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step83 rho r2565 r2566 r2567
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 83 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
