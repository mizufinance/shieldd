import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk90

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step91L (rho : Nat -> Seg34.F) (r2549 : Seg34.relationRow2549 rho) :
    rho 33823 = seg34Q4Pe92 rho * (1 - rho 32855) := by
  unfold Seg34.relationRow2549 at r2549
  unfold seg34Q4Pe92
  linear_combination -r2549

theorem seg34Q4Step91IlMul (rho : Nat -> Seg34.F) (r2550 : Seg34.relationRow2550 rho) :
    rho 33824 = seg34Q4Il92 rho * (rho 33823) := by
  unfold Seg34.relationRow2550 at r2550
  rw [seg34Q4Step91IlLc rho] at r2550
  linear_combination -r2550

theorem seg34Q4Step91Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il91 rho = seg34Q4Il92 rho + (rho 33823) - (rho 33824) := by
  have hstate : seg34Q4Il91 rho = seg34Q4Il92 rho + seg34Q4IlAtom23 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom23
  ring

theorem seg34Q4Step91Pe (rho : Nat -> Seg34.F) (r2551 : Seg34.relationRow2551 rho) :
    seg34Q4Pe91 rho = seg34Q4Pe92 rho * rho 32855 := by
  unfold Seg34.relationRow2551 at r2551
  unfold seg34Q4Pe91 seg34Q4Pe92
  linear_combination -r2551

theorem seg34Q4Step91 (rho : Nat -> Seg34.F) (r2549 : Seg34.relationRow2549 rho) (r2550 : Seg34.relationRow2550 rho) (r2551 : Seg34.relationRow2551 rho) :
    seg34Q4Pe91 rho = seg34Q4Pe92 rho * rho 32855 ∧
    seg34Q4Il91 rho = seg34Q4Il92 rho + seg34Q4Pe92 rho * (1 - rho 32855) -
      seg34Q4Il92 rho * (seg34Q4Pe92 rho * (1 - rho 32855)) := by
  constructor
  · exact seg34Q4Step91Pe rho r2551
  · rw [seg34Q4Step91Acc rho, seg34Q4Step91L rho r2549, seg34Q4Step91IlMul rho r2550, seg34Q4Step91L rho r2549]

theorem seg34_q4_chunk91 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 92 (seg34Q4PeState rho 92) (seg34Q4IlState rho 92) := by
  have htail := seg34_q4_chunk90 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2549, r2550, r2551, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 91 ≤ n → n < 92 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 91 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step91 rho r2549 r2550 r2551
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 91 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
