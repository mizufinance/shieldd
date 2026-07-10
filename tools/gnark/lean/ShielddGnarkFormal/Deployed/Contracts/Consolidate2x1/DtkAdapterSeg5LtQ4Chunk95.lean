import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step95L (rho : Nat -> Seg5.F) (r2539 : Seg5.relationRow2539 rho) :
    rho 2236 = seg5Q4Pe96 rho * (1 - rho 1282) := by
  unfold Seg5.relationRow2539 at r2539
  unfold seg5Q4Pe96
  linear_combination -r2539

theorem seg5Q4Step95IlMul (rho : Nat -> Seg5.F) (r2540 : Seg5.relationRow2540 rho) :
    rho 2237 = seg5Q4Il96 rho * (rho 2236) := by
  unfold Seg5.relationRow2540 at r2540
  rw [seg5Q4Step95IlLc rho] at r2540
  linear_combination -r2540

theorem seg5Q4Step95Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il95 rho = seg5Q4Il96 rho + (rho 2236) - (rho 2237) := by
  have hstate : seg5Q4Il95 rho = seg5Q4Il96 rho + seg5Q4IlAtom20 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom20
  ring

theorem seg5Q4Step95Pe (rho : Nat -> Seg5.F) (r2541 : Seg5.relationRow2541 rho) :
    seg5Q4Pe95 rho = seg5Q4Pe96 rho * rho 1282 := by
  unfold Seg5.relationRow2541 at r2541
  unfold seg5Q4Pe95 seg5Q4Pe96
  linear_combination -r2541

theorem seg5Q4Step95 (rho : Nat -> Seg5.F) (r2539 : Seg5.relationRow2539 rho) (r2540 : Seg5.relationRow2540 rho) (r2541 : Seg5.relationRow2541 rho) :
    seg5Q4Pe95 rho = seg5Q4Pe96 rho * rho 1282 ∧
    seg5Q4Il95 rho = seg5Q4Il96 rho + seg5Q4Pe96 rho * (1 - rho 1282) -
      seg5Q4Il96 rho * (seg5Q4Pe96 rho * (1 - rho 1282)) := by
  constructor
  · exact seg5Q4Step95Pe rho r2541
  · rw [seg5Q4Step95Acc rho, seg5Q4Step95L rho r2539, seg5Q4Step95IlMul rho r2540, seg5Q4Step95L rho r2539]

theorem seg5_q4_chunk95 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 96 (seg5Q4PeState rho 96) (seg5Q4IlState rho 96) := by
  have htail := seg5_q4_chunk94 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2539, r2540, r2541, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 95 ≤ n → n < 96 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 95 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step95 rho r2539 r2540 r2541
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 95 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
