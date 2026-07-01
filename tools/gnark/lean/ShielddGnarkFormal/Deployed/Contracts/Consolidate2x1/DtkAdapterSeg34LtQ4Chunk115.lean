import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk114

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step115L (rho : Nat -> Seg34.F) (r2493 : Seg34.relationRow2493 rho) :
    rho 33767 = seg34Q4Pe116 rho * (1 - rho 32879) := by
  unfold Seg34.relationRow2493 at r2493
  unfold seg34Q4Pe116
  linear_combination -r2493

theorem seg34Q4Step115IlMul (rho : Nat -> Seg34.F) (r2494 : Seg34.relationRow2494 rho) :
    rho 33768 = seg34Q4Il116 rho * (rho 33767) := by
  unfold Seg34.relationRow2494 at r2494
  rw [seg34Q4Il116Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom2 seg34Q4IlAtom3 seg34Q4IlAtom4 seg34Q4IlAtom5
  linear_combination -r2494

theorem seg34Q4Step115Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il115 rho = seg34Q4Il116 rho + (rho 33767) - (rho 33768) := by
  have hstate : seg34Q4Il115 rho = seg34Q4Il116 rho + seg34Q4IlAtom6 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom6
  ring

theorem seg34Q4Step115Pe (rho : Nat -> Seg34.F) (r2495 : Seg34.relationRow2495 rho) :
    seg34Q4Pe115 rho = seg34Q4Pe116 rho * rho 32879 := by
  unfold Seg34.relationRow2495 at r2495
  unfold seg34Q4Pe115 seg34Q4Pe116
  linear_combination -r2495

theorem seg34Q4Step115 (rho : Nat -> Seg34.F) (r2493 : Seg34.relationRow2493 rho) (r2494 : Seg34.relationRow2494 rho) (r2495 : Seg34.relationRow2495 rho) :
    seg34Q4Pe115 rho = seg34Q4Pe116 rho * rho 32879 ∧
    seg34Q4Il115 rho = seg34Q4Il116 rho + seg34Q4Pe116 rho * (1 - rho 32879) -
      seg34Q4Il116 rho * (seg34Q4Pe116 rho * (1 - rho 32879)) := by
  constructor
  · exact seg34Q4Step115Pe rho r2495
  · rw [seg34Q4Step115Acc rho, seg34Q4Step115L rho r2493, seg34Q4Step115IlMul rho r2494, seg34Q4Step115L rho r2493]

theorem seg34_q4_chunk115 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 116 (seg34Q4PeState rho 116) (seg34Q4IlState rho 116) := by
  have htail := seg34_q4_chunk114 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2493, r2494, r2495, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 115 ≤ n → n < 116 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 115 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step115 rho r2493 r2494 r2495
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 115 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
