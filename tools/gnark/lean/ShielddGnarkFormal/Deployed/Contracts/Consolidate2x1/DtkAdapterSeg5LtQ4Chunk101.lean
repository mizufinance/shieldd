import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk100

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step101L (rho : Nat -> Seg5.F) (r2521 : Seg5.relationRow2521 rho) :
    rho 2218 = seg5Q4Pe102 rho * (1 - rho 1288) := by
  unfold Seg5.relationRow2521 at r2521
  unfold seg5Q4Pe102
  linear_combination -r2521

theorem seg5Q4Step101IlMul (rho : Nat -> Seg5.F) (r2522 : Seg5.relationRow2522 rho) :
    rho 2219 = seg5Q4Il102 rho * (rho 2218) := by
  unfold Seg5.relationRow2522 at r2522
  rw [seg5Q4Il102Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  linear_combination -r2522

theorem seg5Q4Step101Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il101 rho = seg5Q4Il102 rho + (rho 2218) - (rho 2219) := by
  have hstate : seg5Q4Il101 rho = seg5Q4Il102 rho + seg5Q4IlAtom13 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom13
  ring

theorem seg5Q4Step101Pe (rho : Nat -> Seg5.F) (r2523 : Seg5.relationRow2523 rho) :
    seg5Q4Pe101 rho = seg5Q4Pe102 rho * rho 1288 := by
  unfold Seg5.relationRow2523 at r2523
  unfold seg5Q4Pe101 seg5Q4Pe102
  linear_combination -r2523

theorem seg5Q4Step101 (rho : Nat -> Seg5.F) (r2521 : Seg5.relationRow2521 rho) (r2522 : Seg5.relationRow2522 rho) (r2523 : Seg5.relationRow2523 rho) :
    seg5Q4Pe101 rho = seg5Q4Pe102 rho * rho 1288 ∧
    seg5Q4Il101 rho = seg5Q4Il102 rho + seg5Q4Pe102 rho * (1 - rho 1288) -
      seg5Q4Il102 rho * (seg5Q4Pe102 rho * (1 - rho 1288)) := by
  constructor
  · exact seg5Q4Step101Pe rho r2523
  · rw [seg5Q4Step101Acc rho, seg5Q4Step101L rho r2521, seg5Q4Step101IlMul rho r2522, seg5Q4Step101L rho r2521]

theorem seg5_q4_chunk101 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 102 (seg5Q4PeState rho 102) (seg5Q4IlState rho 102) := by
  have htail := seg5_q4_chunk100 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2521, r2522, r2523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 101 ≤ n → n < 102 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 101 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step101 rho r2521 r2522 r2523
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 101 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
