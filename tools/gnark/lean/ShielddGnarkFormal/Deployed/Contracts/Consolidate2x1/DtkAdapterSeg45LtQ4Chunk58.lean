import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk57

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step58L (rho : Nat -> Seg45.F) (r2610 : Seg45.relationRow2610 rho) :
    rho 40840 = seg45Q4Pe59 rho * (1 - rho 39778) := by
  unfold Seg45.relationRow2610 at r2610
  unfold seg45Q4Pe59
  linear_combination -r2610

theorem seg45Q4Step58IlMul (rho : Nat -> Seg45.F) (r2611 : Seg45.relationRow2611 rho) :
    rho 40841 = seg45Q4Il59 rho * (rho 40840) := by
  unfold Seg45.relationRow2611 at r2611
  rw [seg45Q4Step58IlLc rho] at r2611
  linear_combination -r2611

theorem seg45Q4Step58Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il58 rho = seg45Q4Il59 rho + (rho 40840) - (rho 40841) := by
  have hstate : seg45Q4Il58 rho = seg45Q4Il59 rho + seg45Q4IlAtom38 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom38
  ring

theorem seg45Q4Step58Pe (rho : Nat -> Seg45.F) (r2612 : Seg45.relationRow2612 rho) :
    seg45Q4Pe58 rho = seg45Q4Pe59 rho * rho 39778 := by
  unfold Seg45.relationRow2612 at r2612
  unfold seg45Q4Pe58 seg45Q4Pe59
  linear_combination -r2612

theorem seg45Q4Step58 (rho : Nat -> Seg45.F) (r2610 : Seg45.relationRow2610 rho) (r2611 : Seg45.relationRow2611 rho) (r2612 : Seg45.relationRow2612 rho) :
    seg45Q4Pe58 rho = seg45Q4Pe59 rho * rho 39778 ∧
    seg45Q4Il58 rho = seg45Q4Il59 rho + seg45Q4Pe59 rho * (1 - rho 39778) -
      seg45Q4Il59 rho * (seg45Q4Pe59 rho * (1 - rho 39778)) := by
  constructor
  · exact seg45Q4Step58Pe rho r2612
  · rw [seg45Q4Step58Acc rho, seg45Q4Step58L rho r2610, seg45Q4Step58IlMul rho r2611, seg45Q4Step58L rho r2610]

theorem seg45_q4_chunk58 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 59 (seg45Q4PeState rho 59) (seg45Q4IlState rho 59) := by
  have htail := seg45_q4_chunk57 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2610, r2611, r2612, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 58 ≤ n → n < 59 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 58 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step58 rho r2610 r2611 r2612
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 58 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
