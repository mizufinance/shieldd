import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk109

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step110L (rho : Nat -> Seg16.F) (r2506 : Seg16.relationRow2506 rho) :
    rho 15080 = seg16Q4Pe111 rho * (1 - rho 14174) := by
  unfold Seg16.relationRow2506 at r2506
  unfold seg16Q4Pe111
  linear_combination -r2506

theorem seg16Q4Step110IlMul (rho : Nat -> Seg16.F) (r2507 : Seg16.relationRow2507 rho) :
    rho 15081 = seg16Q4Il111 rho * (rho 15080) := by
  unfold Seg16.relationRow2507 at r2507
  rw [seg16Q4Il111Atoms rho]
  unfold seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  linear_combination -r2507

theorem seg16Q4Step110Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il110 rho = seg16Q4Il111 rho + (rho 15080) - (rho 15081) := by
  have hstate : seg16Q4Il110 rho = seg16Q4Il111 rho + seg16Q4IlAtom10 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom10
  ring

theorem seg16Q4Step110Pe (rho : Nat -> Seg16.F) (r2508 : Seg16.relationRow2508 rho) :
    seg16Q4Pe110 rho = seg16Q4Pe111 rho * rho 14174 := by
  unfold Seg16.relationRow2508 at r2508
  unfold seg16Q4Pe110 seg16Q4Pe111
  linear_combination -r2508

theorem seg16Q4Step110 (rho : Nat -> Seg16.F) (r2506 : Seg16.relationRow2506 rho) (r2507 : Seg16.relationRow2507 rho) (r2508 : Seg16.relationRow2508 rho) :
    seg16Q4Pe110 rho = seg16Q4Pe111 rho * rho 14174 ∧
    seg16Q4Il110 rho = seg16Q4Il111 rho + seg16Q4Pe111 rho * (1 - rho 14174) -
      seg16Q4Il111 rho * (seg16Q4Pe111 rho * (1 - rho 14174)) := by
  constructor
  · exact seg16Q4Step110Pe rho r2508
  · rw [seg16Q4Step110Acc rho, seg16Q4Step110L rho r2506, seg16Q4Step110IlMul rho r2507, seg16Q4Step110L rho r2506]

theorem seg16_q4_chunk110 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 111 (seg16Q4PeState rho 111) (seg16Q4IlState rho 111) := by
  have htail := seg16_q4_chunk109 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2506, r2507, r2508, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 110 ≤ n → n < 111 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 110 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step110 rho r2506 r2507 r2508
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 110 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
