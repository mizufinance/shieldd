import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk109

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step110L (rho : Nat -> Seg45.F) (r2506 : Seg45.relationRow2506 rho) :
    rho 40736 = seg45Q4Pe111 rho * (1 - rho 39830) := by
  unfold Seg45.relationRow2506 at r2506
  unfold seg45Q4Pe111
  linear_combination -r2506

theorem seg45Q4Step110IlMul (rho : Nat -> Seg45.F) (r2507 : Seg45.relationRow2507 rho) :
    rho 40737 = seg45Q4Il111 rho * (rho 40736) := by
  unfold Seg45.relationRow2507 at r2507
  rw [seg45Q4Il111Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom2 seg45Q4IlAtom3 seg45Q4IlAtom4 seg45Q4IlAtom5 seg45Q4IlAtom6 seg45Q4IlAtom7 seg45Q4IlAtom8 seg45Q4IlAtom9
  linear_combination -r2507

theorem seg45Q4Step110Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il110 rho = seg45Q4Il111 rho + (rho 40736) - (rho 40737) := by
  have hstate : seg45Q4Il110 rho = seg45Q4Il111 rho + seg45Q4IlAtom10 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom10
  ring

theorem seg45Q4Step110Pe (rho : Nat -> Seg45.F) (r2508 : Seg45.relationRow2508 rho) :
    seg45Q4Pe110 rho = seg45Q4Pe111 rho * rho 39830 := by
  unfold Seg45.relationRow2508 at r2508
  unfold seg45Q4Pe110 seg45Q4Pe111
  linear_combination -r2508

theorem seg45Q4Step110 (rho : Nat -> Seg45.F) (r2506 : Seg45.relationRow2506 rho) (r2507 : Seg45.relationRow2507 rho) (r2508 : Seg45.relationRow2508 rho) :
    seg45Q4Pe110 rho = seg45Q4Pe111 rho * rho 39830 ∧
    seg45Q4Il110 rho = seg45Q4Il111 rho + seg45Q4Pe111 rho * (1 - rho 39830) -
      seg45Q4Il111 rho * (seg45Q4Pe111 rho * (1 - rho 39830)) := by
  constructor
  · exact seg45Q4Step110Pe rho r2508
  · rw [seg45Q4Step110Acc rho, seg45Q4Step110L rho r2506, seg45Q4Step110IlMul rho r2507, seg45Q4Step110L rho r2506]

theorem seg45_q4_chunk110 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 111 (seg45Q4PeState rho 111) (seg45Q4IlState rho 111) := by
  have htail := seg45_q4_chunk109 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2506, r2507, r2508, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 110 ≤ n → n < 111 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 110 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step110 rho r2506 r2507 r2508
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 110 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
