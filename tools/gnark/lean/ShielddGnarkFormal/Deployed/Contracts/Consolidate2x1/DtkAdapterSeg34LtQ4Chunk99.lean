import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk98

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step99L (rho : Nat -> Seg34.F) (r2527 : Seg34.relationRow2527 rho) :
    rho 33801 = seg34Q4Pe100 rho * (1 - rho 32863) := by
  unfold Seg34.relationRow2527 at r2527
  unfold seg34Q4Pe100
  linear_combination -r2527

theorem seg34Q4Step99IlMul (rho : Nat -> Seg34.F) (r2528 : Seg34.relationRow2528 rho) :
    rho 33802 = seg34Q4Il100 rho * (rho 33801) := by
  unfold Seg34.relationRow2528 at r2528
  rw [seg34Q4Il100Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom10 seg34Q4IlAtom11 seg34Q4IlAtom12 seg34Q4IlAtom13 seg34Q4IlAtom14 seg34Q4IlAtom2 seg34Q4IlAtom3 seg34Q4IlAtom4 seg34Q4IlAtom5 seg34Q4IlAtom6 seg34Q4IlAtom7 seg34Q4IlAtom8 seg34Q4IlAtom9
  linear_combination -r2528

theorem seg34Q4Step99Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il99 rho = seg34Q4Il100 rho + (rho 33801) - (rho 33802) := by
  have hstate : seg34Q4Il99 rho = seg34Q4Il100 rho + seg34Q4IlAtom15 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom15
  ring

theorem seg34Q4Step99Pe (rho : Nat -> Seg34.F) (r2529 : Seg34.relationRow2529 rho) :
    seg34Q4Pe99 rho = seg34Q4Pe100 rho * rho 32863 := by
  unfold Seg34.relationRow2529 at r2529
  unfold seg34Q4Pe99 seg34Q4Pe100
  linear_combination -r2529

theorem seg34Q4Step99 (rho : Nat -> Seg34.F) (r2527 : Seg34.relationRow2527 rho) (r2528 : Seg34.relationRow2528 rho) (r2529 : Seg34.relationRow2529 rho) :
    seg34Q4Pe99 rho = seg34Q4Pe100 rho * rho 32863 ∧
    seg34Q4Il99 rho = seg34Q4Il100 rho + seg34Q4Pe100 rho * (1 - rho 32863) -
      seg34Q4Il100 rho * (seg34Q4Pe100 rho * (1 - rho 32863)) := by
  constructor
  · exact seg34Q4Step99Pe rho r2529
  · rw [seg34Q4Step99Acc rho, seg34Q4Step99L rho r2527, seg34Q4Step99IlMul rho r2528, seg34Q4Step99L rho r2527]

theorem seg34_q4_chunk99 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 100 (seg34Q4PeState rho 100) (seg34Q4IlState rho 100) := by
  have htail := seg34_q4_chunk98 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2527, r2528, r2529, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 99 ≤ n → n < 100 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 99 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step99 rho r2527 r2528 r2529
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 99 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
