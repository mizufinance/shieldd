import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk100

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step101L (rho : Nat -> Seg34.F) (r2521 : Seg34.relationRow2521 rho) :
    rho 33795 = seg34Q4Pe102 rho * (1 - rho 32865) := by
  unfold Seg34.relationRow2521 at r2521
  unfold seg34Q4Pe102
  linear_combination -r2521

theorem seg34Q4Step101IlMul (rho : Nat -> Seg34.F) (r2522 : Seg34.relationRow2522 rho) :
    rho 33796 = seg34Q4Il102 rho * (rho 33795) := by
  unfold Seg34.relationRow2522 at r2522
  rw [seg34Q4Il102Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom10 seg34Q4IlAtom11 seg34Q4IlAtom12 seg34Q4IlAtom2 seg34Q4IlAtom3 seg34Q4IlAtom4 seg34Q4IlAtom5 seg34Q4IlAtom6 seg34Q4IlAtom7 seg34Q4IlAtom8 seg34Q4IlAtom9
  linear_combination -r2522

theorem seg34Q4Step101Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il101 rho = seg34Q4Il102 rho + (rho 33795) - (rho 33796) := by
  have hstate : seg34Q4Il101 rho = seg34Q4Il102 rho + seg34Q4IlAtom13 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom13
  ring

theorem seg34Q4Step101Pe (rho : Nat -> Seg34.F) (r2523 : Seg34.relationRow2523 rho) :
    seg34Q4Pe101 rho = seg34Q4Pe102 rho * rho 32865 := by
  unfold Seg34.relationRow2523 at r2523
  unfold seg34Q4Pe101 seg34Q4Pe102
  linear_combination -r2523

theorem seg34Q4Step101 (rho : Nat -> Seg34.F) (r2521 : Seg34.relationRow2521 rho) (r2522 : Seg34.relationRow2522 rho) (r2523 : Seg34.relationRow2523 rho) :
    seg34Q4Pe101 rho = seg34Q4Pe102 rho * rho 32865 ∧
    seg34Q4Il101 rho = seg34Q4Il102 rho + seg34Q4Pe102 rho * (1 - rho 32865) -
      seg34Q4Il102 rho * (seg34Q4Pe102 rho * (1 - rho 32865)) := by
  constructor
  · exact seg34Q4Step101Pe rho r2523
  · rw [seg34Q4Step101Acc rho, seg34Q4Step101L rho r2521, seg34Q4Step101IlMul rho r2522, seg34Q4Step101L rho r2521]

theorem seg34_q4_chunk101 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 102 (seg34Q4PeState rho 102) (seg34Q4IlState rho 102) := by
  have htail := seg34_q4_chunk100 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2521, r2522, r2523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 101 ≤ n → n < 102 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 101 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step101 rho r2521 r2522 r2523
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 101 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
