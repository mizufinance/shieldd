import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk114

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step115L (rho : Nat -> Seg5.F) (r2493 : Seg5.relationRow2493 rho) :
    rho 2190 = seg5Q4Pe116 rho * (1 - rho 1302) := by
  unfold Seg5.relationRow2493 at r2493
  unfold seg5Q4Pe116
  linear_combination -r2493

theorem seg5Q4Step115IlMul (rho : Nat -> Seg5.F) (r2494 : Seg5.relationRow2494 rho) :
    rho 2191 = seg5Q4Il116 rho * (rho 2190) := by
  unfold Seg5.relationRow2494 at r2494
  rw [seg5Q4Il116Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5
  linear_combination -r2494

theorem seg5Q4Step115Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il115 rho = seg5Q4Il116 rho + (rho 2190) - (rho 2191) := by
  have hstate : seg5Q4Il115 rho = seg5Q4Il116 rho + seg5Q4IlAtom6 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom6
  ring

theorem seg5Q4Step115Pe (rho : Nat -> Seg5.F) (r2495 : Seg5.relationRow2495 rho) :
    seg5Q4Pe115 rho = seg5Q4Pe116 rho * rho 1302 := by
  unfold Seg5.relationRow2495 at r2495
  unfold seg5Q4Pe115 seg5Q4Pe116
  linear_combination -r2495

theorem seg5Q4Step115 (rho : Nat -> Seg5.F) (r2493 : Seg5.relationRow2493 rho) (r2494 : Seg5.relationRow2494 rho) (r2495 : Seg5.relationRow2495 rho) :
    seg5Q4Pe115 rho = seg5Q4Pe116 rho * rho 1302 ∧
    seg5Q4Il115 rho = seg5Q4Il116 rho + seg5Q4Pe116 rho * (1 - rho 1302) -
      seg5Q4Il116 rho * (seg5Q4Pe116 rho * (1 - rho 1302)) := by
  constructor
  · exact seg5Q4Step115Pe rho r2495
  · rw [seg5Q4Step115Acc rho, seg5Q4Step115L rho r2493, seg5Q4Step115IlMul rho r2494, seg5Q4Step115L rho r2493]

theorem seg5_q4_chunk115 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 116 (seg5Q4PeState rho 116) (seg5Q4IlState rho 116) := by
  have htail := seg5_q4_chunk114 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2493, r2494, r2495, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 115 ≤ n → n < 116 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 115 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step115 rho r2493 r2494 r2495
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 115 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
