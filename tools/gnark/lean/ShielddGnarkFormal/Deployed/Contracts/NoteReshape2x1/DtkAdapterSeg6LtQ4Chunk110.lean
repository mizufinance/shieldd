import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk109

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step110L (rho : Nat -> Seg6.F) (r2506 : Seg6.relationRow2506 rho) :
    rho 2906 = seg6Q4Pe111 rho * (1 - rho 2000) := by
  unfold Seg6.relationRow2506 at r2506
  unfold seg6Q4Pe111
  linear_combination -r2506

theorem seg6Q4Step110IlMul (rho : Nat -> Seg6.F) (r2507 : Seg6.relationRow2507 rho) :
    rho 2907 = seg6Q4Il111 rho * (rho 2906) := by
  unfold Seg6.relationRow2507 at r2507
  rw [seg6Q4Il111Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  linear_combination -r2507

theorem seg6Q4Step110Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il110 rho = seg6Q4Il111 rho + (rho 2906) - (rho 2907) := by
  have hstate : seg6Q4Il110 rho = seg6Q4Il111 rho + seg6Q4IlAtom10 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom10
  ring

theorem seg6Q4Step110Pe (rho : Nat -> Seg6.F) (r2508 : Seg6.relationRow2508 rho) :
    seg6Q4Pe110 rho = seg6Q4Pe111 rho * rho 2000 := by
  unfold Seg6.relationRow2508 at r2508
  unfold seg6Q4Pe110 seg6Q4Pe111
  linear_combination -r2508

theorem seg6Q4Step110 (rho : Nat -> Seg6.F) (r2506 : Seg6.relationRow2506 rho) (r2507 : Seg6.relationRow2507 rho) (r2508 : Seg6.relationRow2508 rho) :
    seg6Q4Pe110 rho = seg6Q4Pe111 rho * rho 2000 ∧
    seg6Q4Il110 rho = seg6Q4Il111 rho + seg6Q4Pe111 rho * (1 - rho 2000) -
      seg6Q4Il111 rho * (seg6Q4Pe111 rho * (1 - rho 2000)) := by
  constructor
  · exact seg6Q4Step110Pe rho r2508
  · rw [seg6Q4Step110Acc rho, seg6Q4Step110L rho r2506, seg6Q4Step110IlMul rho r2507, seg6Q4Step110L rho r2506]

theorem seg6_q4_chunk110 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 111 (seg6Q4PeState rho 111) (seg6Q4IlState rho 111) := by
  have htail := seg6_q4_chunk109 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2506, r2507, r2508, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 110 ≤ n → n < 111 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 110 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step110 rho r2506 r2507 r2508
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 110 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
