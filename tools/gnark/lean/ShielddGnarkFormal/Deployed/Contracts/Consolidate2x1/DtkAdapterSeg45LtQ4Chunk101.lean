import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk100

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step101L (rho : Nat -> Seg45.F) (r2521 : Seg45.relationRow2521 rho) :
    rho 40751 = seg45Q4Pe102 rho * (1 - rho 39821) := by
  unfold Seg45.relationRow2521 at r2521
  unfold seg45Q4Pe102
  linear_combination -r2521

theorem seg45Q4Step101IlMul (rho : Nat -> Seg45.F) (r2522 : Seg45.relationRow2522 rho) :
    rho 40752 = seg45Q4Il102 rho * (rho 40751) := by
  unfold Seg45.relationRow2522 at r2522
  rw [seg45Q4Il102Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom10 seg45Q4IlAtom11 seg45Q4IlAtom12 seg45Q4IlAtom2 seg45Q4IlAtom3 seg45Q4IlAtom4 seg45Q4IlAtom5 seg45Q4IlAtom6 seg45Q4IlAtom7 seg45Q4IlAtom8 seg45Q4IlAtom9
  linear_combination -r2522

theorem seg45Q4Step101Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il101 rho = seg45Q4Il102 rho + (rho 40751) - (rho 40752) := by
  have hstate : seg45Q4Il101 rho = seg45Q4Il102 rho + seg45Q4IlAtom13 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom13
  ring

theorem seg45Q4Step101Pe (rho : Nat -> Seg45.F) (r2523 : Seg45.relationRow2523 rho) :
    seg45Q4Pe101 rho = seg45Q4Pe102 rho * rho 39821 := by
  unfold Seg45.relationRow2523 at r2523
  unfold seg45Q4Pe101 seg45Q4Pe102
  linear_combination -r2523

theorem seg45Q4Step101 (rho : Nat -> Seg45.F) (r2521 : Seg45.relationRow2521 rho) (r2522 : Seg45.relationRow2522 rho) (r2523 : Seg45.relationRow2523 rho) :
    seg45Q4Pe101 rho = seg45Q4Pe102 rho * rho 39821 ∧
    seg45Q4Il101 rho = seg45Q4Il102 rho + seg45Q4Pe102 rho * (1 - rho 39821) -
      seg45Q4Il102 rho * (seg45Q4Pe102 rho * (1 - rho 39821)) := by
  constructor
  · exact seg45Q4Step101Pe rho r2523
  · rw [seg45Q4Step101Acc rho, seg45Q4Step101L rho r2521, seg45Q4Step101IlMul rho r2522, seg45Q4Step101L rho r2521]

theorem seg45_q4_chunk101 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 102 (seg45Q4PeState rho 102) (seg45Q4IlState rho 102) := by
  have htail := seg45_q4_chunk100 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2521, r2522, r2523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 101 ≤ n → n < 102 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 101 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step101 rho r2521 r2522 r2523
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 101 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
