import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk75

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step76L (rho : Nat -> Seg34.F) (r2582 : Seg34.relationRow2582 rho) :
    rho 33856 = seg34Q4Pe77 rho * (1 - rho 32840) := by
  unfold Seg34.relationRow2582 at r2582
  unfold seg34Q4Pe77
  linear_combination -r2582

theorem seg34Q4Step76IlMul (rho : Nat -> Seg34.F) (r2583 : Seg34.relationRow2583 rho) :
    rho 33857 = seg34Q4Il77 rho * (rho 33856) := by
  unfold Seg34.relationRow2583 at r2583
  rw [seg34Q4Step76IlLc rho] at r2583
  linear_combination -r2583

theorem seg34Q4Step76Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il76 rho = seg34Q4Il77 rho + (rho 33856) - (rho 33857) := by
  have hstate : seg34Q4Il76 rho = seg34Q4Il77 rho + seg34Q4IlAtom32 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom32
  ring

theorem seg34Q4Step76Pe (rho : Nat -> Seg34.F) (r2584 : Seg34.relationRow2584 rho) :
    seg34Q4Pe76 rho = seg34Q4Pe77 rho * rho 32840 := by
  unfold Seg34.relationRow2584 at r2584
  unfold seg34Q4Pe76 seg34Q4Pe77
  linear_combination -r2584

theorem seg34Q4Step76 (rho : Nat -> Seg34.F) (r2582 : Seg34.relationRow2582 rho) (r2583 : Seg34.relationRow2583 rho) (r2584 : Seg34.relationRow2584 rho) :
    seg34Q4Pe76 rho = seg34Q4Pe77 rho * rho 32840 ∧
    seg34Q4Il76 rho = seg34Q4Il77 rho + seg34Q4Pe77 rho * (1 - rho 32840) -
      seg34Q4Il77 rho * (seg34Q4Pe77 rho * (1 - rho 32840)) := by
  constructor
  · exact seg34Q4Step76Pe rho r2584
  · rw [seg34Q4Step76Acc rho, seg34Q4Step76L rho r2582, seg34Q4Step76IlMul rho r2583, seg34Q4Step76L rho r2582]

theorem seg34_q4_chunk76 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 77 (seg34Q4PeState rho 77) (seg34Q4IlState rho 77) := by
  have htail := seg34_q4_chunk75 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2582, r2583, r2584, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 76 ≤ n → n < 77 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 76 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step76 rho r2582 r2583 r2584
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 76 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
