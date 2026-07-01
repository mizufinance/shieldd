import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk98

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step99L (rho : Nat -> Seg45.F) (r2527 : Seg45.relationRow2527 rho) :
    rho 40757 = seg45Q4Pe100 rho * (1 - rho 39819) := by
  unfold Seg45.relationRow2527 at r2527
  unfold seg45Q4Pe100
  linear_combination -r2527

theorem seg45Q4Step99IlMul (rho : Nat -> Seg45.F) (r2528 : Seg45.relationRow2528 rho) :
    rho 40758 = seg45Q4Il100 rho * (rho 40757) := by
  unfold Seg45.relationRow2528 at r2528
  rw [seg45Q4Il100Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom10 seg45Q4IlAtom11 seg45Q4IlAtom12 seg45Q4IlAtom13 seg45Q4IlAtom14 seg45Q4IlAtom2 seg45Q4IlAtom3 seg45Q4IlAtom4 seg45Q4IlAtom5 seg45Q4IlAtom6 seg45Q4IlAtom7 seg45Q4IlAtom8 seg45Q4IlAtom9
  linear_combination -r2528

theorem seg45Q4Step99Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il99 rho = seg45Q4Il100 rho + (rho 40757) - (rho 40758) := by
  have hstate : seg45Q4Il99 rho = seg45Q4Il100 rho + seg45Q4IlAtom15 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom15
  ring

theorem seg45Q4Step99Pe (rho : Nat -> Seg45.F) (r2529 : Seg45.relationRow2529 rho) :
    seg45Q4Pe99 rho = seg45Q4Pe100 rho * rho 39819 := by
  unfold Seg45.relationRow2529 at r2529
  unfold seg45Q4Pe99 seg45Q4Pe100
  linear_combination -r2529

theorem seg45Q4Step99 (rho : Nat -> Seg45.F) (r2527 : Seg45.relationRow2527 rho) (r2528 : Seg45.relationRow2528 rho) (r2529 : Seg45.relationRow2529 rho) :
    seg45Q4Pe99 rho = seg45Q4Pe100 rho * rho 39819 ∧
    seg45Q4Il99 rho = seg45Q4Il100 rho + seg45Q4Pe100 rho * (1 - rho 39819) -
      seg45Q4Il100 rho * (seg45Q4Pe100 rho * (1 - rho 39819)) := by
  constructor
  · exact seg45Q4Step99Pe rho r2529
  · rw [seg45Q4Step99Acc rho, seg45Q4Step99L rho r2527, seg45Q4Step99IlMul rho r2528, seg45Q4Step99L rho r2527]

theorem seg45_q4_chunk99 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 100 (seg45Q4PeState rho 100) (seg45Q4IlState rho 100) := by
  have htail := seg45_q4_chunk98 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2527, r2528, r2529, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 99 ≤ n → n < 100 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 99 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step99 rho r2527 r2528 r2529
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 99 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
