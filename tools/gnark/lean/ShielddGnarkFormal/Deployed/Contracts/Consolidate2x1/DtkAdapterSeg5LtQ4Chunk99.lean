import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk98

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step99L (rho : Nat -> Seg5.F) (r2527 : Seg5.relationRow2527 rho) :
    rho 2224 = seg5Q4Pe100 rho * (1 - rho 1286) := by
  unfold Seg5.relationRow2527 at r2527
  unfold seg5Q4Pe100
  linear_combination -r2527

theorem seg5Q4Step99IlMul (rho : Nat -> Seg5.F) (r2528 : Seg5.relationRow2528 rho) :
    rho 2225 = seg5Q4Il100 rho * (rho 2224) := by
  unfold Seg5.relationRow2528 at r2528
  rw [seg5Q4Il100Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  linear_combination -r2528

theorem seg5Q4Step99Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il99 rho = seg5Q4Il100 rho + (rho 2224) - (rho 2225) := by
  have hstate : seg5Q4Il99 rho = seg5Q4Il100 rho + seg5Q4IlAtom15 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom15
  ring

theorem seg5Q4Step99Pe (rho : Nat -> Seg5.F) (r2529 : Seg5.relationRow2529 rho) :
    seg5Q4Pe99 rho = seg5Q4Pe100 rho * rho 1286 := by
  unfold Seg5.relationRow2529 at r2529
  unfold seg5Q4Pe99 seg5Q4Pe100
  linear_combination -r2529

theorem seg5Q4Step99 (rho : Nat -> Seg5.F) (r2527 : Seg5.relationRow2527 rho) (r2528 : Seg5.relationRow2528 rho) (r2529 : Seg5.relationRow2529 rho) :
    seg5Q4Pe99 rho = seg5Q4Pe100 rho * rho 1286 ∧
    seg5Q4Il99 rho = seg5Q4Il100 rho + seg5Q4Pe100 rho * (1 - rho 1286) -
      seg5Q4Il100 rho * (seg5Q4Pe100 rho * (1 - rho 1286)) := by
  constructor
  · exact seg5Q4Step99Pe rho r2529
  · rw [seg5Q4Step99Acc rho, seg5Q4Step99L rho r2527, seg5Q4Step99IlMul rho r2528, seg5Q4Step99L rho r2527]

theorem seg5_q4_chunk99 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 100 (seg5Q4PeState rho 100) (seg5Q4IlState rho 100) := by
  have htail := seg5_q4_chunk98 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2527, r2528, r2529, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 99 ≤ n → n < 100 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 99 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step99 rho r2527 r2528 r2529
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 99 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
