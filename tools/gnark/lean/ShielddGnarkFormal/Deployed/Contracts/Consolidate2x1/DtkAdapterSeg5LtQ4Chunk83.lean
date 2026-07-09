import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk82

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step83L (rho : Nat -> Seg5.F) (r2565 : Seg5.relationRow2565 rho) :
    rho 2262 = seg5Q4Pe84 rho * (1 - rho 1270) := by
  unfold Seg5.relationRow2565 at r2565
  unfold seg5Q4Pe84
  linear_combination -r2565

theorem seg5Q4Step83IlMul (rho : Nat -> Seg5.F) (r2566 : Seg5.relationRow2566 rho) :
    rho 2263 = seg5Q4Il84 rho * (rho 2262) := by
  unfold Seg5.relationRow2566 at r2566
  rw [seg5Q4Step83IlLc rho] at r2566
  linear_combination -r2566

theorem seg5Q4Step83Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il83 rho = seg5Q4Il84 rho + (rho 2262) - (rho 2263) := by
  have hstate : seg5Q4Il83 rho = seg5Q4Il84 rho + seg5Q4IlAtom27 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom27
  ring

theorem seg5Q4Step83Pe (rho : Nat -> Seg5.F) (r2567 : Seg5.relationRow2567 rho) :
    seg5Q4Pe83 rho = seg5Q4Pe84 rho * rho 1270 := by
  unfold Seg5.relationRow2567 at r2567
  unfold seg5Q4Pe83 seg5Q4Pe84
  linear_combination -r2567

theorem seg5Q4Step83 (rho : Nat -> Seg5.F) (r2565 : Seg5.relationRow2565 rho) (r2566 : Seg5.relationRow2566 rho) (r2567 : Seg5.relationRow2567 rho) :
    seg5Q4Pe83 rho = seg5Q4Pe84 rho * rho 1270 ∧
    seg5Q4Il83 rho = seg5Q4Il84 rho + seg5Q4Pe84 rho * (1 - rho 1270) -
      seg5Q4Il84 rho * (seg5Q4Pe84 rho * (1 - rho 1270)) := by
  constructor
  · exact seg5Q4Step83Pe rho r2567
  · rw [seg5Q4Step83Acc rho, seg5Q4Step83L rho r2565, seg5Q4Step83IlMul rho r2566, seg5Q4Step83L rho r2565]

theorem seg5_q4_chunk83 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 84 (seg5Q4PeState rho 84) (seg5Q4IlState rho 84) := by
  have htail := seg5_q4_chunk82 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, r2565, r2566, r2567, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 83 ≤ n → n < 84 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 83 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step83 rho r2565 r2566 r2567
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 83 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
