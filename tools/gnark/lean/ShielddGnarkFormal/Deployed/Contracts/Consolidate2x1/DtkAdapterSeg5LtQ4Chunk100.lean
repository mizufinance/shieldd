import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk99

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step100L (rho : Nat -> Seg5.F) (r2524 : Seg5.relationRow2524 rho) :
    rho 2221 = seg5Q4Pe101 rho * (1 - rho 1287) := by
  unfold Seg5.relationRow2524 at r2524
  unfold seg5Q4Pe101
  linear_combination -r2524

theorem seg5Q4Step100IlMul (rho : Nat -> Seg5.F) (r2525 : Seg5.relationRow2525 rho) :
    rho 2222 = seg5Q4Il101 rho * (rho 2221) := by
  unfold Seg5.relationRow2525 at r2525
  rw [seg5Q4Il101Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  linear_combination -r2525

theorem seg5Q4Step100Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il100 rho = seg5Q4Il101 rho + (rho 2221) - (rho 2222) := by
  have hstate : seg5Q4Il100 rho = seg5Q4Il101 rho + seg5Q4IlAtom14 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom14
  ring

theorem seg5Q4Step100Pe (rho : Nat -> Seg5.F) (r2526 : Seg5.relationRow2526 rho) :
    seg5Q4Pe100 rho = seg5Q4Pe101 rho * rho 1287 := by
  unfold Seg5.relationRow2526 at r2526
  unfold seg5Q4Pe100 seg5Q4Pe101
  linear_combination -r2526

theorem seg5Q4Step100 (rho : Nat -> Seg5.F) (r2524 : Seg5.relationRow2524 rho) (r2525 : Seg5.relationRow2525 rho) (r2526 : Seg5.relationRow2526 rho) :
    seg5Q4Pe100 rho = seg5Q4Pe101 rho * rho 1287 ∧
    seg5Q4Il100 rho = seg5Q4Il101 rho + seg5Q4Pe101 rho * (1 - rho 1287) -
      seg5Q4Il101 rho * (seg5Q4Pe101 rho * (1 - rho 1287)) := by
  constructor
  · exact seg5Q4Step100Pe rho r2526
  · rw [seg5Q4Step100Acc rho, seg5Q4Step100L rho r2524, seg5Q4Step100IlMul rho r2525, seg5Q4Step100L rho r2524]

theorem seg5_q4_chunk100 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 101 (seg5Q4PeState rho 101) (seg5Q4IlState rho 101) := by
  have htail := seg5_q4_chunk99 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2524, r2525, r2526, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 100 ≤ n → n < 101 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 100 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step100 rho r2524 r2525 r2526
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 100 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
