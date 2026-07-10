import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk109

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step110L (rho : Nat -> Seg5.F) (r2506 : Seg5.relationRow2506 rho) :
    rho 2203 = seg5Q4Pe111 rho * (1 - rho 1297) := by
  unfold Seg5.relationRow2506 at r2506
  unfold seg5Q4Pe111
  linear_combination -r2506

theorem seg5Q4Step110IlMul (rho : Nat -> Seg5.F) (r2507 : Seg5.relationRow2507 rho) :
    rho 2204 = seg5Q4Il111 rho * (rho 2203) := by
  unfold Seg5.relationRow2507 at r2507
  rw [seg5Q4Il111Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  linear_combination -r2507

theorem seg5Q4Step110Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il110 rho = seg5Q4Il111 rho + (rho 2203) - (rho 2204) := by
  have hstate : seg5Q4Il110 rho = seg5Q4Il111 rho + seg5Q4IlAtom10 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom10
  ring

theorem seg5Q4Step110Pe (rho : Nat -> Seg5.F) (r2508 : Seg5.relationRow2508 rho) :
    seg5Q4Pe110 rho = seg5Q4Pe111 rho * rho 1297 := by
  unfold Seg5.relationRow2508 at r2508
  unfold seg5Q4Pe110 seg5Q4Pe111
  linear_combination -r2508

theorem seg5Q4Step110 (rho : Nat -> Seg5.F) (r2506 : Seg5.relationRow2506 rho) (r2507 : Seg5.relationRow2507 rho) (r2508 : Seg5.relationRow2508 rho) :
    seg5Q4Pe110 rho = seg5Q4Pe111 rho * rho 1297 ∧
    seg5Q4Il110 rho = seg5Q4Il111 rho + seg5Q4Pe111 rho * (1 - rho 1297) -
      seg5Q4Il111 rho * (seg5Q4Pe111 rho * (1 - rho 1297)) := by
  constructor
  · exact seg5Q4Step110Pe rho r2508
  · rw [seg5Q4Step110Acc rho, seg5Q4Step110L rho r2506, seg5Q4Step110IlMul rho r2507, seg5Q4Step110L rho r2506]

theorem seg5_q4_chunk110 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 111 (seg5Q4PeState rho 111) (seg5Q4IlState rho 111) := by
  have htail := seg5_q4_chunk109 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2506, r2507, r2508, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 110 ≤ n → n < 111 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 110 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step110 rho r2506 r2507 r2508
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 110 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
