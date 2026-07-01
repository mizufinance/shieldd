import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk75

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step76L (rho : Nat -> Seg16.F) (r2582 : Seg16.relationRow2582 rho) :
    rho 15156 = seg16Q4Pe77 rho * (1 - rho 14140) := by
  unfold Seg16.relationRow2582 at r2582
  unfold seg16Q4Pe77
  linear_combination -r2582

theorem seg16Q4Step76IlMul (rho : Nat -> Seg16.F) (r2583 : Seg16.relationRow2583 rho) :
    rho 15157 = seg16Q4Il77 rho * (rho 15156) := by
  unfold Seg16.relationRow2583 at r2583
  rw [seg16Q4Step76IlLc rho] at r2583
  linear_combination -r2583

theorem seg16Q4Step76Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il76 rho = seg16Q4Il77 rho + (rho 15156) - (rho 15157) := by
  have hstate : seg16Q4Il76 rho = seg16Q4Il77 rho + seg16Q4IlAtom32 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom32
  ring

theorem seg16Q4Step76Pe (rho : Nat -> Seg16.F) (r2584 : Seg16.relationRow2584 rho) :
    seg16Q4Pe76 rho = seg16Q4Pe77 rho * rho 14140 := by
  unfold Seg16.relationRow2584 at r2584
  unfold seg16Q4Pe76 seg16Q4Pe77
  linear_combination -r2584

theorem seg16Q4Step76 (rho : Nat -> Seg16.F) (r2582 : Seg16.relationRow2582 rho) (r2583 : Seg16.relationRow2583 rho) (r2584 : Seg16.relationRow2584 rho) :
    seg16Q4Pe76 rho = seg16Q4Pe77 rho * rho 14140 ∧
    seg16Q4Il76 rho = seg16Q4Il77 rho + seg16Q4Pe77 rho * (1 - rho 14140) -
      seg16Q4Il77 rho * (seg16Q4Pe77 rho * (1 - rho 14140)) := by
  constructor
  · exact seg16Q4Step76Pe rho r2584
  · rw [seg16Q4Step76Acc rho, seg16Q4Step76L rho r2582, seg16Q4Step76IlMul rho r2583, seg16Q4Step76L rho r2582]

theorem seg16_q4_chunk76 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 77 (seg16Q4PeState rho 77) (seg16Q4IlState rho 77) := by
  have htail := seg16_q4_chunk75 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2582, r2583, r2584, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 76 ≤ n → n < 77 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 76 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step76 rho r2582 r2583 r2584
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 76 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
