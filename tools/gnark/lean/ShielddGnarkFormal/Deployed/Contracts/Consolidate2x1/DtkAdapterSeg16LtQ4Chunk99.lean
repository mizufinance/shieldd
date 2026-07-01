import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk98

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step99L (rho : Nat -> Seg16.F) (r2527 : Seg16.relationRow2527 rho) :
    rho 15101 = seg16Q4Pe100 rho * (1 - rho 14163) := by
  unfold Seg16.relationRow2527 at r2527
  unfold seg16Q4Pe100
  linear_combination -r2527

theorem seg16Q4Step99IlMul (rho : Nat -> Seg16.F) (r2528 : Seg16.relationRow2528 rho) :
    rho 15102 = seg16Q4Il100 rho * (rho 15101) := by
  unfold Seg16.relationRow2528 at r2528
  rw [seg16Q4Il100Atoms rho]
  unfold seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  linear_combination -r2528

theorem seg16Q4Step99Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il99 rho = seg16Q4Il100 rho + (rho 15101) - (rho 15102) := by
  have hstate : seg16Q4Il99 rho = seg16Q4Il100 rho + seg16Q4IlAtom15 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom15
  ring

theorem seg16Q4Step99Pe (rho : Nat -> Seg16.F) (r2529 : Seg16.relationRow2529 rho) :
    seg16Q4Pe99 rho = seg16Q4Pe100 rho * rho 14163 := by
  unfold Seg16.relationRow2529 at r2529
  unfold seg16Q4Pe99 seg16Q4Pe100
  linear_combination -r2529

theorem seg16Q4Step99 (rho : Nat -> Seg16.F) (r2527 : Seg16.relationRow2527 rho) (r2528 : Seg16.relationRow2528 rho) (r2529 : Seg16.relationRow2529 rho) :
    seg16Q4Pe99 rho = seg16Q4Pe100 rho * rho 14163 ∧
    seg16Q4Il99 rho = seg16Q4Il100 rho + seg16Q4Pe100 rho * (1 - rho 14163) -
      seg16Q4Il100 rho * (seg16Q4Pe100 rho * (1 - rho 14163)) := by
  constructor
  · exact seg16Q4Step99Pe rho r2529
  · rw [seg16Q4Step99Acc rho, seg16Q4Step99L rho r2527, seg16Q4Step99IlMul rho r2528, seg16Q4Step99L rho r2527]

theorem seg16_q4_chunk99 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 100 (seg16Q4PeState rho 100) (seg16Q4IlState rho 100) := by
  have htail := seg16_q4_chunk98 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2527, r2528, r2529, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 99 ≤ n → n < 100 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 99 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step99 rho r2527 r2528 r2529
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 99 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
