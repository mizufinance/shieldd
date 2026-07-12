import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk114

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step115L (rho : Nat -> Seg6.F) (r2493 : Seg6.relationRow2493 rho) :
    rho 2893 = seg6Q4Pe116 rho * (1 - rho 2005) := by
  unfold Seg6.relationRow2493 at r2493
  unfold seg6Q4Pe116
  linear_combination -r2493

theorem seg6Q4Step115IlMul (rho : Nat -> Seg6.F) (r2494 : Seg6.relationRow2494 rho) :
    rho 2894 = seg6Q4Il116 rho * (rho 2893) := by
  unfold Seg6.relationRow2494 at r2494
  rw [seg6Q4Il116Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5
  linear_combination -r2494

theorem seg6Q4Step115Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il115 rho = seg6Q4Il116 rho + (rho 2893) - (rho 2894) := by
  have hstate : seg6Q4Il115 rho = seg6Q4Il116 rho + seg6Q4IlAtom6 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom6
  ring

theorem seg6Q4Step115Pe (rho : Nat -> Seg6.F) (r2495 : Seg6.relationRow2495 rho) :
    seg6Q4Pe115 rho = seg6Q4Pe116 rho * rho 2005 := by
  unfold Seg6.relationRow2495 at r2495
  unfold seg6Q4Pe115 seg6Q4Pe116
  linear_combination -r2495

theorem seg6Q4Step115 (rho : Nat -> Seg6.F) (r2493 : Seg6.relationRow2493 rho) (r2494 : Seg6.relationRow2494 rho) (r2495 : Seg6.relationRow2495 rho) :
    seg6Q4Pe115 rho = seg6Q4Pe116 rho * rho 2005 ∧
    seg6Q4Il115 rho = seg6Q4Il116 rho + seg6Q4Pe116 rho * (1 - rho 2005) -
      seg6Q4Il116 rho * (seg6Q4Pe116 rho * (1 - rho 2005)) := by
  constructor
  · exact seg6Q4Step115Pe rho r2495
  · rw [seg6Q4Step115Acc rho, seg6Q4Step115L rho r2493, seg6Q4Step115IlMul rho r2494, seg6Q4Step115L rho r2493]

theorem seg6_q4_chunk115 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 116 (seg6Q4PeState rho 116) (seg6Q4IlState rho 116) := by
  have htail := seg6_q4_chunk114 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2493, r2494, r2495, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 115 ≤ n → n < 116 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 115 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step115 rho r2493 r2494 r2495
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 115 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
