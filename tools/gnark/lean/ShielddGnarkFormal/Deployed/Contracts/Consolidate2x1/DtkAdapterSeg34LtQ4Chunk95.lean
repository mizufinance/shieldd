import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step95L (rho : Nat -> Seg34.F) (r2539 : Seg34.relationRow2539 rho) :
    rho 33813 = seg34Q4Pe96 rho * (1 - rho 32859) := by
  unfold Seg34.relationRow2539 at r2539
  unfold seg34Q4Pe96
  linear_combination -r2539

theorem seg34Q4Step95IlMul (rho : Nat -> Seg34.F) (r2540 : Seg34.relationRow2540 rho) :
    rho 33814 = seg34Q4Il96 rho * (rho 33813) := by
  unfold Seg34.relationRow2540 at r2540
  rw [seg34Q4Step95IlLc rho] at r2540
  linear_combination -r2540

theorem seg34Q4Step95Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il95 rho = seg34Q4Il96 rho + (rho 33813) - (rho 33814) := by
  have hstate : seg34Q4Il95 rho = seg34Q4Il96 rho + seg34Q4IlAtom20 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom20
  ring

theorem seg34Q4Step95Pe (rho : Nat -> Seg34.F) (r2541 : Seg34.relationRow2541 rho) :
    seg34Q4Pe95 rho = seg34Q4Pe96 rho * rho 32859 := by
  unfold Seg34.relationRow2541 at r2541
  unfold seg34Q4Pe95 seg34Q4Pe96
  linear_combination -r2541

theorem seg34Q4Step95 (rho : Nat -> Seg34.F) (r2539 : Seg34.relationRow2539 rho) (r2540 : Seg34.relationRow2540 rho) (r2541 : Seg34.relationRow2541 rho) :
    seg34Q4Pe95 rho = seg34Q4Pe96 rho * rho 32859 ∧
    seg34Q4Il95 rho = seg34Q4Il96 rho + seg34Q4Pe96 rho * (1 - rho 32859) -
      seg34Q4Il96 rho * (seg34Q4Pe96 rho * (1 - rho 32859)) := by
  constructor
  · exact seg34Q4Step95Pe rho r2541
  · rw [seg34Q4Step95Acc rho, seg34Q4Step95L rho r2539, seg34Q4Step95IlMul rho r2540, seg34Q4Step95L rho r2539]

theorem seg34_q4_chunk95 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 96 (seg34Q4PeState rho 96) (seg34Q4IlState rho 96) := by
  have htail := seg34_q4_chunk94 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2539, r2540, r2541, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 95 ≤ n → n < 96 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 95 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step95 rho r2539 r2540 r2541
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 95 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
