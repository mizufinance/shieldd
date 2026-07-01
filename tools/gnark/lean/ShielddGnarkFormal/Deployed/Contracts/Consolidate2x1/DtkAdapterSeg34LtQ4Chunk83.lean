import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk82

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step83L (rho : Nat -> Seg34.F) (r2565 : Seg34.relationRow2565 rho) :
    rho 33839 = seg34Q4Pe84 rho * (1 - rho 32847) := by
  unfold Seg34.relationRow2565 at r2565
  unfold seg34Q4Pe84
  linear_combination -r2565

theorem seg34Q4Step83IlMul (rho : Nat -> Seg34.F) (r2566 : Seg34.relationRow2566 rho) :
    rho 33840 = seg34Q4Il84 rho * (rho 33839) := by
  unfold Seg34.relationRow2566 at r2566
  rw [seg34Q4Step83IlLc rho] at r2566
  linear_combination -r2566

theorem seg34Q4Step83Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il83 rho = seg34Q4Il84 rho + (rho 33839) - (rho 33840) := by
  have hstate : seg34Q4Il83 rho = seg34Q4Il84 rho + seg34Q4IlAtom27 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom27
  ring

theorem seg34Q4Step83Pe (rho : Nat -> Seg34.F) (r2567 : Seg34.relationRow2567 rho) :
    seg34Q4Pe83 rho = seg34Q4Pe84 rho * rho 32847 := by
  unfold Seg34.relationRow2567 at r2567
  unfold seg34Q4Pe83 seg34Q4Pe84
  linear_combination -r2567

theorem seg34Q4Step83 (rho : Nat -> Seg34.F) (r2565 : Seg34.relationRow2565 rho) (r2566 : Seg34.relationRow2566 rho) (r2567 : Seg34.relationRow2567 rho) :
    seg34Q4Pe83 rho = seg34Q4Pe84 rho * rho 32847 ∧
    seg34Q4Il83 rho = seg34Q4Il84 rho + seg34Q4Pe84 rho * (1 - rho 32847) -
      seg34Q4Il84 rho * (seg34Q4Pe84 rho * (1 - rho 32847)) := by
  constructor
  · exact seg34Q4Step83Pe rho r2567
  · rw [seg34Q4Step83Acc rho, seg34Q4Step83L rho r2565, seg34Q4Step83IlMul rho r2566, seg34Q4Step83L rho r2565]

theorem seg34_q4_chunk83 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 84 (seg34Q4PeState rho 84) (seg34Q4IlState rho 84) := by
  have htail := seg34_q4_chunk82 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, r2565, r2566, r2567, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 83 ≤ n → n < 84 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 83 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step83 rho r2565 r2566 r2567
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 83 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
