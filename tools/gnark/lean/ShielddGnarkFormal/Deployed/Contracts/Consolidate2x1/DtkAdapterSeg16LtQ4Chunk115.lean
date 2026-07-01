import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk114

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step115L (rho : Nat -> Seg16.F) (r2493 : Seg16.relationRow2493 rho) :
    rho 15067 = seg16Q4Pe116 rho * (1 - rho 14179) := by
  unfold Seg16.relationRow2493 at r2493
  unfold seg16Q4Pe116
  linear_combination -r2493

theorem seg16Q4Step115IlMul (rho : Nat -> Seg16.F) (r2494 : Seg16.relationRow2494 rho) :
    rho 15068 = seg16Q4Il116 rho * (rho 15067) := by
  unfold Seg16.relationRow2494 at r2494
  rw [seg16Q4Il116Atoms rho]
  unfold seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5
  linear_combination -r2494

theorem seg16Q4Step115Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il115 rho = seg16Q4Il116 rho + (rho 15067) - (rho 15068) := by
  have hstate : seg16Q4Il115 rho = seg16Q4Il116 rho + seg16Q4IlAtom6 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom6
  ring

theorem seg16Q4Step115Pe (rho : Nat -> Seg16.F) (r2495 : Seg16.relationRow2495 rho) :
    seg16Q4Pe115 rho = seg16Q4Pe116 rho * rho 14179 := by
  unfold Seg16.relationRow2495 at r2495
  unfold seg16Q4Pe115 seg16Q4Pe116
  linear_combination -r2495

theorem seg16Q4Step115 (rho : Nat -> Seg16.F) (r2493 : Seg16.relationRow2493 rho) (r2494 : Seg16.relationRow2494 rho) (r2495 : Seg16.relationRow2495 rho) :
    seg16Q4Pe115 rho = seg16Q4Pe116 rho * rho 14179 ∧
    seg16Q4Il115 rho = seg16Q4Il116 rho + seg16Q4Pe116 rho * (1 - rho 14179) -
      seg16Q4Il116 rho * (seg16Q4Pe116 rho * (1 - rho 14179)) := by
  constructor
  · exact seg16Q4Step115Pe rho r2495
  · rw [seg16Q4Step115Acc rho, seg16Q4Step115L rho r2493, seg16Q4Step115IlMul rho r2494, seg16Q4Step115L rho r2493]

theorem seg16_q4_chunk115 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 116 (seg16Q4PeState rho 116) (seg16Q4IlState rho 116) := by
  have htail := seg16_q4_chunk114 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2493, r2494, r2495, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 115 ≤ n → n < 116 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 115 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step115 rho r2493 r2494 r2495
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 115 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
