import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk49

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step50L (rho : Nat -> Seg34.F) (r2624 : Seg34.relationRow2624 rho) :
    rho 33898 = seg34Q4Pe51 rho * (1 - rho 32814) := by
  unfold Seg34.relationRow2624 at r2624
  unfold seg34Q4Pe51
  linear_combination -r2624

theorem seg34Q4Step50IlMul (rho : Nat -> Seg34.F) (r2625 : Seg34.relationRow2625 rho) :
    rho 33899 = seg34Q4Il51 rho * (rho 33898) := by
  unfold Seg34.relationRow2625 at r2625
  rw [seg34Q4Step50IlLc rho] at r2625
  linear_combination -r2625

theorem seg34Q4Step50Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il50 rho = seg34Q4Il51 rho + (rho 33898) - (rho 33899) := by
  have hstate : seg34Q4Il50 rho = seg34Q4Il51 rho + seg34Q4IlAtom41 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom41
  ring

theorem seg34Q4Step50Pe (rho : Nat -> Seg34.F) (r2626 : Seg34.relationRow2626 rho) :
    seg34Q4Pe50 rho = seg34Q4Pe51 rho * rho 32814 := by
  unfold Seg34.relationRow2626 at r2626
  unfold seg34Q4Pe50 seg34Q4Pe51
  linear_combination -r2626

theorem seg34Q4Step50 (rho : Nat -> Seg34.F) (r2624 : Seg34.relationRow2624 rho) (r2625 : Seg34.relationRow2625 rho) (r2626 : Seg34.relationRow2626 rho) :
    seg34Q4Pe50 rho = seg34Q4Pe51 rho * rho 32814 ∧
    seg34Q4Il50 rho = seg34Q4Il51 rho + seg34Q4Pe51 rho * (1 - rho 32814) -
      seg34Q4Il51 rho * (seg34Q4Pe51 rho * (1 - rho 32814)) := by
  constructor
  · exact seg34Q4Step50Pe rho r2626
  · rw [seg34Q4Step50Acc rho, seg34Q4Step50L rho r2624, seg34Q4Step50IlMul rho r2625, seg34Q4Step50L rho r2624]

theorem seg34_q4_chunk50 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 51 (seg34Q4PeState rho 51) (seg34Q4IlState rho 51) := by
  have htail := seg34_q4_chunk49 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2624, r2625, r2626, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 50 ≤ n → n < 51 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 50 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step50 rho r2624 r2625 r2626
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 50 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
