import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk114

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step115L (rho : Nat -> Seg45.F) (r2493 : Seg45.relationRow2493 rho) :
    rho 40723 = seg45Q4Pe116 rho * (1 - rho 39835) := by
  unfold Seg45.relationRow2493 at r2493
  unfold seg45Q4Pe116
  linear_combination -r2493

theorem seg45Q4Step115IlMul (rho : Nat -> Seg45.F) (r2494 : Seg45.relationRow2494 rho) :
    rho 40724 = seg45Q4Il116 rho * (rho 40723) := by
  unfold Seg45.relationRow2494 at r2494
  rw [seg45Q4Il116Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom2 seg45Q4IlAtom3 seg45Q4IlAtom4 seg45Q4IlAtom5
  linear_combination -r2494

theorem seg45Q4Step115Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il115 rho = seg45Q4Il116 rho + (rho 40723) - (rho 40724) := by
  have hstate : seg45Q4Il115 rho = seg45Q4Il116 rho + seg45Q4IlAtom6 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom6
  ring

theorem seg45Q4Step115Pe (rho : Nat -> Seg45.F) (r2495 : Seg45.relationRow2495 rho) :
    seg45Q4Pe115 rho = seg45Q4Pe116 rho * rho 39835 := by
  unfold Seg45.relationRow2495 at r2495
  unfold seg45Q4Pe115 seg45Q4Pe116
  linear_combination -r2495

theorem seg45Q4Step115 (rho : Nat -> Seg45.F) (r2493 : Seg45.relationRow2493 rho) (r2494 : Seg45.relationRow2494 rho) (r2495 : Seg45.relationRow2495 rho) :
    seg45Q4Pe115 rho = seg45Q4Pe116 rho * rho 39835 ∧
    seg45Q4Il115 rho = seg45Q4Il116 rho + seg45Q4Pe116 rho * (1 - rho 39835) -
      seg45Q4Il116 rho * (seg45Q4Pe116 rho * (1 - rho 39835)) := by
  constructor
  · exact seg45Q4Step115Pe rho r2495
  · rw [seg45Q4Step115Acc rho, seg45Q4Step115L rho r2493, seg45Q4Step115IlMul rho r2494, seg45Q4Step115L rho r2493]

theorem seg45_q4_chunk115 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 116 (seg45Q4PeState rho 116) (seg45Q4IlState rho 116) := by
  have htail := seg45_q4_chunk114 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2493, r2494, r2495, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 115 ≤ n → n < 116 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 115 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step115 rho r2493 r2494 r2495
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 115 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
