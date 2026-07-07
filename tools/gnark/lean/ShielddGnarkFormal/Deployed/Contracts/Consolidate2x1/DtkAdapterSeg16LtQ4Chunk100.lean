import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk99

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step100L (rho : Nat -> Seg16.F) (r2524 : Seg16.relationRow2524 rho) :
    rho 15098 = seg16Q4Pe101 rho * (1 - rho 14164) := by
  unfold Seg16.relationRow2524 at r2524
  unfold seg16Q4Pe101
  linear_combination -r2524

theorem seg16Q4Step100IlMul (rho : Nat -> Seg16.F) (r2525 : Seg16.relationRow2525 rho) :
    rho 15099 = seg16Q4Il101 rho * (rho 15098) := by
  unfold Seg16.relationRow2525 at r2525
  rw [seg16Q4Il101Atoms rho]
  unfold seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  linear_combination -r2525

theorem seg16Q4Step100Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il100 rho = seg16Q4Il101 rho + (rho 15098) - (rho 15099) := by
  have hstate : seg16Q4Il100 rho = seg16Q4Il101 rho + seg16Q4IlAtom14 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom14
  ring

theorem seg16Q4Step100Pe (rho : Nat -> Seg16.F) (r2526 : Seg16.relationRow2526 rho) :
    seg16Q4Pe100 rho = seg16Q4Pe101 rho * rho 14164 := by
  unfold Seg16.relationRow2526 at r2526
  unfold seg16Q4Pe100 seg16Q4Pe101
  linear_combination -r2526

theorem seg16Q4Step100 (rho : Nat -> Seg16.F) (r2524 : Seg16.relationRow2524 rho) (r2525 : Seg16.relationRow2525 rho) (r2526 : Seg16.relationRow2526 rho) :
    seg16Q4Pe100 rho = seg16Q4Pe101 rho * rho 14164 ∧
    seg16Q4Il100 rho = seg16Q4Il101 rho + seg16Q4Pe101 rho * (1 - rho 14164) -
      seg16Q4Il101 rho * (seg16Q4Pe101 rho * (1 - rho 14164)) := by
  constructor
  · exact seg16Q4Step100Pe rho r2526
  · rw [seg16Q4Step100Acc rho, seg16Q4Step100L rho r2524, seg16Q4Step100IlMul rho r2525, seg16Q4Step100L rho r2524]

theorem seg16_q4_chunk100 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 101 (seg16Q4PeState rho 101) (seg16Q4IlState rho 101) := by
  have htail := seg16_q4_chunk99 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2524, r2525, r2526, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 100 ≤ n → n < 101 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 100 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step100 rho r2524 r2525 r2526
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 100 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
