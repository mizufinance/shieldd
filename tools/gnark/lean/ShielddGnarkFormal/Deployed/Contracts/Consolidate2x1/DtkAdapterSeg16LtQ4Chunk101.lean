import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk100

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step101L (rho : Nat -> Seg16.F) (r2521 : Seg16.relationRow2521 rho) :
    rho 15095 = seg16Q4Pe102 rho * (1 - rho 14165) := by
  unfold Seg16.relationRow2521 at r2521
  unfold seg16Q4Pe102
  linear_combination -r2521

theorem seg16Q4Step101IlMul (rho : Nat -> Seg16.F) (r2522 : Seg16.relationRow2522 rho) :
    rho 15096 = seg16Q4Il102 rho * (rho 15095) := by
  unfold Seg16.relationRow2522 at r2522
  rw [seg16Q4Il102Atoms rho]
  unfold seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  linear_combination -r2522

theorem seg16Q4Step101Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il101 rho = seg16Q4Il102 rho + (rho 15095) - (rho 15096) := by
  have hstate : seg16Q4Il101 rho = seg16Q4Il102 rho + seg16Q4IlAtom13 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom13
  ring

theorem seg16Q4Step101Pe (rho : Nat -> Seg16.F) (r2523 : Seg16.relationRow2523 rho) :
    seg16Q4Pe101 rho = seg16Q4Pe102 rho * rho 14165 := by
  unfold Seg16.relationRow2523 at r2523
  unfold seg16Q4Pe101 seg16Q4Pe102
  linear_combination -r2523

theorem seg16Q4Step101 (rho : Nat -> Seg16.F) (r2521 : Seg16.relationRow2521 rho) (r2522 : Seg16.relationRow2522 rho) (r2523 : Seg16.relationRow2523 rho) :
    seg16Q4Pe101 rho = seg16Q4Pe102 rho * rho 14165 ∧
    seg16Q4Il101 rho = seg16Q4Il102 rho + seg16Q4Pe102 rho * (1 - rho 14165) -
      seg16Q4Il102 rho * (seg16Q4Pe102 rho * (1 - rho 14165)) := by
  constructor
  · exact seg16Q4Step101Pe rho r2523
  · rw [seg16Q4Step101Acc rho, seg16Q4Step101L rho r2521, seg16Q4Step101IlMul rho r2522, seg16Q4Step101L rho r2521]

theorem seg16_q4_chunk101 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 102 (seg16Q4PeState rho 102) (seg16Q4IlState rho 102) := by
  have htail := seg16_q4_chunk100 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2521, r2522, r2523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 101 ≤ n → n < 102 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 101 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step101 rho r2521 r2522 r2523
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 101 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
