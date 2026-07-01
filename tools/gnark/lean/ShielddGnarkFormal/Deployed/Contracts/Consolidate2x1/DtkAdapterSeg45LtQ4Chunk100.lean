import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk99

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step100L (rho : Nat -> Seg45.F) (r2524 : Seg45.relationRow2524 rho) :
    rho 40754 = seg45Q4Pe101 rho * (1 - rho 39820) := by
  unfold Seg45.relationRow2524 at r2524
  unfold seg45Q4Pe101
  linear_combination -r2524

theorem seg45Q4Step100IlMul (rho : Nat -> Seg45.F) (r2525 : Seg45.relationRow2525 rho) :
    rho 40755 = seg45Q4Il101 rho * (rho 40754) := by
  unfold Seg45.relationRow2525 at r2525
  rw [seg45Q4Il101Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom10 seg45Q4IlAtom11 seg45Q4IlAtom12 seg45Q4IlAtom13 seg45Q4IlAtom2 seg45Q4IlAtom3 seg45Q4IlAtom4 seg45Q4IlAtom5 seg45Q4IlAtom6 seg45Q4IlAtom7 seg45Q4IlAtom8 seg45Q4IlAtom9
  linear_combination -r2525

theorem seg45Q4Step100Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il100 rho = seg45Q4Il101 rho + (rho 40754) - (rho 40755) := by
  have hstate : seg45Q4Il100 rho = seg45Q4Il101 rho + seg45Q4IlAtom14 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom14
  ring

theorem seg45Q4Step100Pe (rho : Nat -> Seg45.F) (r2526 : Seg45.relationRow2526 rho) :
    seg45Q4Pe100 rho = seg45Q4Pe101 rho * rho 39820 := by
  unfold Seg45.relationRow2526 at r2526
  unfold seg45Q4Pe100 seg45Q4Pe101
  linear_combination -r2526

theorem seg45Q4Step100 (rho : Nat -> Seg45.F) (r2524 : Seg45.relationRow2524 rho) (r2525 : Seg45.relationRow2525 rho) (r2526 : Seg45.relationRow2526 rho) :
    seg45Q4Pe100 rho = seg45Q4Pe101 rho * rho 39820 ∧
    seg45Q4Il100 rho = seg45Q4Il101 rho + seg45Q4Pe101 rho * (1 - rho 39820) -
      seg45Q4Il101 rho * (seg45Q4Pe101 rho * (1 - rho 39820)) := by
  constructor
  · exact seg45Q4Step100Pe rho r2526
  · rw [seg45Q4Step100Acc rho, seg45Q4Step100L rho r2524, seg45Q4Step100IlMul rho r2525, seg45Q4Step100L rho r2524]

theorem seg45_q4_chunk100 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 101 (seg45Q4PeState rho 101) (seg45Q4IlState rho 101) := by
  have htail := seg45_q4_chunk99 rho h k hk
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2524, r2525, r2526, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 100 ≤ n → n < 101 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 100 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step100 rho r2524 r2525 r2526
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 100 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
