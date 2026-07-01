import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk109

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step110L (rho : Nat -> Seg34.F) (r2506 : Seg34.relationRow2506 rho) :
    rho 33780 = seg34Q4Pe111 rho * (1 - rho 32874) := by
  unfold Seg34.relationRow2506 at r2506
  unfold seg34Q4Pe111
  linear_combination -r2506

theorem seg34Q4Step110IlMul (rho : Nat -> Seg34.F) (r2507 : Seg34.relationRow2507 rho) :
    rho 33781 = seg34Q4Il111 rho * (rho 33780) := by
  unfold Seg34.relationRow2507 at r2507
  rw [seg34Q4Il111Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom2 seg34Q4IlAtom3 seg34Q4IlAtom4 seg34Q4IlAtom5 seg34Q4IlAtom6 seg34Q4IlAtom7 seg34Q4IlAtom8 seg34Q4IlAtom9
  linear_combination -r2507

theorem seg34Q4Step110Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il110 rho = seg34Q4Il111 rho + (rho 33780) - (rho 33781) := by
  have hstate : seg34Q4Il110 rho = seg34Q4Il111 rho + seg34Q4IlAtom10 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom10
  ring

theorem seg34Q4Step110Pe (rho : Nat -> Seg34.F) (r2508 : Seg34.relationRow2508 rho) :
    seg34Q4Pe110 rho = seg34Q4Pe111 rho * rho 32874 := by
  unfold Seg34.relationRow2508 at r2508
  unfold seg34Q4Pe110 seg34Q4Pe111
  linear_combination -r2508

theorem seg34Q4Step110 (rho : Nat -> Seg34.F) (r2506 : Seg34.relationRow2506 rho) (r2507 : Seg34.relationRow2507 rho) (r2508 : Seg34.relationRow2508 rho) :
    seg34Q4Pe110 rho = seg34Q4Pe111 rho * rho 32874 ∧
    seg34Q4Il110 rho = seg34Q4Il111 rho + seg34Q4Pe111 rho * (1 - rho 32874) -
      seg34Q4Il111 rho * (seg34Q4Pe111 rho * (1 - rho 32874)) := by
  constructor
  · exact seg34Q4Step110Pe rho r2508
  · rw [seg34Q4Step110Acc rho, seg34Q4Step110L rho r2506, seg34Q4Step110IlMul rho r2507, seg34Q4Step110L rho r2506]

theorem seg34_q4_chunk110 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 111 (seg34Q4PeState rho 111) (seg34Q4IlState rho 111) := by
  have htail := seg34_q4_chunk109 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2506, r2507, r2508, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 110 ≤ n → n < 111 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 110 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step110 rho r2506 r2507 r2508
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 110 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
