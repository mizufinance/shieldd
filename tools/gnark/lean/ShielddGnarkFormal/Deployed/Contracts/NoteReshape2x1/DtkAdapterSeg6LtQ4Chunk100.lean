import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk99

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step100L (rho : Nat -> Seg6.F) (r2524 : Seg6.relationRow2524 rho) :
    rho 2918 = seg6Q4Pe101 rho * (1 - rho 1984) := by
  unfold Seg6.relationRow2524 at r2524
  unfold seg6Q4Pe101
  linear_combination -r2524

theorem seg6Q4Step100IlMul (rho : Nat -> Seg6.F) (r2525 : Seg6.relationRow2525 rho) :
    rho 2919 = seg6Q4Il101 rho * (rho 2918) := by
  unfold Seg6.relationRow2525 at r2525
  rw [seg6Q4Il101Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  linear_combination -r2525

theorem seg6Q4Step100Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il100 rho = seg6Q4Il101 rho + (rho 2918) - (rho 2919) := by
  have hstate : seg6Q4Il100 rho = seg6Q4Il101 rho + seg6Q4IlAtom14 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom14
  ring

theorem seg6Q4Step100Pe (rho : Nat -> Seg6.F) (r2526 : Seg6.relationRow2526 rho) :
    seg6Q4Pe100 rho = seg6Q4Pe101 rho * rho 1984 := by
  unfold Seg6.relationRow2526 at r2526
  unfold seg6Q4Pe100 seg6Q4Pe101
  linear_combination -r2526

theorem seg6Q4Step100 (rho : Nat -> Seg6.F) (r2524 : Seg6.relationRow2524 rho) (r2525 : Seg6.relationRow2525 rho) (r2526 : Seg6.relationRow2526 rho) :
    seg6Q4Pe100 rho = seg6Q4Pe101 rho * rho 1984 ∧
    seg6Q4Il100 rho = seg6Q4Il101 rho + seg6Q4Pe101 rho * (1 - rho 1984) -
      seg6Q4Il101 rho * (seg6Q4Pe101 rho * (1 - rho 1984)) := by
  constructor
  · exact seg6Q4Step100Pe rho r2526
  · rw [seg6Q4Step100Acc rho, seg6Q4Step100L rho r2524, seg6Q4Step100IlMul rho r2525, seg6Q4Step100L rho r2524]

theorem seg6_q4_chunk100 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 101 (seg6Q4PeState rho 101) (seg6Q4IlState rho 101) := by
  have htail := seg6_q4_chunk99 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2524, r2525, r2526, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 100 ≤ n → n < 101 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 100 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step100 rho r2524 r2525 r2526
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 100 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
