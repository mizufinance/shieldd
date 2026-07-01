import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk99

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step100L (rho : Nat -> Seg34.F) (r2524 : Seg34.relationRow2524 rho) :
    rho 33798 = seg34Q4Pe101 rho * (1 - rho 32864) := by
  unfold Seg34.relationRow2524 at r2524
  unfold seg34Q4Pe101
  linear_combination -r2524

theorem seg34Q4Step100IlMul (rho : Nat -> Seg34.F) (r2525 : Seg34.relationRow2525 rho) :
    rho 33799 = seg34Q4Il101 rho * (rho 33798) := by
  unfold Seg34.relationRow2525 at r2525
  rw [seg34Q4Il101Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom10 seg34Q4IlAtom11 seg34Q4IlAtom12 seg34Q4IlAtom13 seg34Q4IlAtom2 seg34Q4IlAtom3 seg34Q4IlAtom4 seg34Q4IlAtom5 seg34Q4IlAtom6 seg34Q4IlAtom7 seg34Q4IlAtom8 seg34Q4IlAtom9
  linear_combination -r2525

theorem seg34Q4Step100Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il100 rho = seg34Q4Il101 rho + (rho 33798) - (rho 33799) := by
  have hstate : seg34Q4Il100 rho = seg34Q4Il101 rho + seg34Q4IlAtom14 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom14
  ring

theorem seg34Q4Step100Pe (rho : Nat -> Seg34.F) (r2526 : Seg34.relationRow2526 rho) :
    seg34Q4Pe100 rho = seg34Q4Pe101 rho * rho 32864 := by
  unfold Seg34.relationRow2526 at r2526
  unfold seg34Q4Pe100 seg34Q4Pe101
  linear_combination -r2526

theorem seg34Q4Step100 (rho : Nat -> Seg34.F) (r2524 : Seg34.relationRow2524 rho) (r2525 : Seg34.relationRow2525 rho) (r2526 : Seg34.relationRow2526 rho) :
    seg34Q4Pe100 rho = seg34Q4Pe101 rho * rho 32864 ∧
    seg34Q4Il100 rho = seg34Q4Il101 rho + seg34Q4Pe101 rho * (1 - rho 32864) -
      seg34Q4Il101 rho * (seg34Q4Pe101 rho * (1 - rho 32864)) := by
  constructor
  · exact seg34Q4Step100Pe rho r2526
  · rw [seg34Q4Step100Acc rho, seg34Q4Step100L rho r2524, seg34Q4Step100IlMul rho r2525, seg34Q4Step100L rho r2524]

theorem seg34_q4_chunk100 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 101 (seg34Q4PeState rho 101) (seg34Q4IlState rho 101) := by
  have htail := seg34_q4_chunk99 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2524, r2525, r2526, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 100 ≤ n → n < 101 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 100 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step100 rho r2524 r2525 r2526
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 100 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
