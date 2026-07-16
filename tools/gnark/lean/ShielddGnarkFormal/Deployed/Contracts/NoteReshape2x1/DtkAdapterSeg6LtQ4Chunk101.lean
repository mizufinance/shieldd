import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk100

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step101L (rho : Nat -> Seg6.F) (r2521 : Seg6.relationRow2521 rho) :
    rho 2921 = seg6Q4Pe102 rho * (1 - rho 1991) := by
  unfold Seg6.relationRow2521 at r2521
  unfold seg6Q4Pe102
  linear_combination -r2521

theorem seg6Q4Step101IlMul (rho : Nat -> Seg6.F) (r2522 : Seg6.relationRow2522 rho) :
    rho 2922 = seg6Q4Il102 rho * (rho 2921) := by
  unfold Seg6.relationRow2522 at r2522
  rw [seg6Q4Il102Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  linear_combination -r2522

theorem seg6Q4Step101Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il101 rho = seg6Q4Il102 rho + (rho 2921) - (rho 2922) := by
  have hstate : seg6Q4Il101 rho = seg6Q4Il102 rho + seg6Q4IlAtom13 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom13
  ring

theorem seg6Q4Step101Pe (rho : Nat -> Seg6.F) (r2523 : Seg6.relationRow2523 rho) :
    seg6Q4Pe101 rho = seg6Q4Pe102 rho * rho 1991 := by
  unfold Seg6.relationRow2523 at r2523
  unfold seg6Q4Pe101 seg6Q4Pe102
  linear_combination -r2523

theorem seg6Q4Step101 (rho : Nat -> Seg6.F) (r2521 : Seg6.relationRow2521 rho) (r2522 : Seg6.relationRow2522 rho) (r2523 : Seg6.relationRow2523 rho) :
    seg6Q4Pe101 rho = seg6Q4Pe102 rho * rho 1991 ∧
    seg6Q4Il101 rho = seg6Q4Il102 rho + seg6Q4Pe102 rho * (1 - rho 1991) -
      seg6Q4Il102 rho * (seg6Q4Pe102 rho * (1 - rho 1991)) := by
  constructor
  · exact seg6Q4Step101Pe rho r2523
  · rw [seg6Q4Step101Acc rho, seg6Q4Step101L rho r2521, seg6Q4Step101IlMul rho r2522, seg6Q4Step101L rho r2521]

theorem seg6_q4_chunk101 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 102 (seg6Q4PeState rho 102) (seg6Q4IlState rho 102) := by
  have htail := seg6_q4_chunk100 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2521, r2522, r2523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 101 ≤ n → n < 102 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 101 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step101 rho r2521 r2522 r2523
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 101 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
