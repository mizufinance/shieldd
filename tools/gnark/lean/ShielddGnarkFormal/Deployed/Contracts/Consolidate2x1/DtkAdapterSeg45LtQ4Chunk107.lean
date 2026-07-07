import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk106

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step107L (rho : Nat -> Seg45.F) (r2513 : Seg45.relationRow2513 rho) :
    rho 40743 = seg45Q4Pe108 rho * (1 - rho 39827) := by
  unfold Seg45.relationRow2513 at r2513
  unfold seg45Q4Pe108
  linear_combination -r2513

theorem seg45Q4Step107IlMul (rho : Nat -> Seg45.F) (r2514 : Seg45.relationRow2514 rho) :
    rho 40744 = seg45Q4Il108 rho * (rho 40743) := by
  unfold Seg45.relationRow2514 at r2514
  rw [seg45Q4Il108Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom10 seg45Q4IlAtom11 seg45Q4IlAtom2 seg45Q4IlAtom3 seg45Q4IlAtom4 seg45Q4IlAtom5 seg45Q4IlAtom6 seg45Q4IlAtom7 seg45Q4IlAtom8 seg45Q4IlAtom9
  linear_combination -r2514

theorem seg45Q4Step107Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il107 rho = seg45Q4Il108 rho + (rho 40743) - (rho 40744) := by
  have hstate : seg45Q4Il107 rho = seg45Q4Il108 rho + seg45Q4IlAtom12 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom12
  ring

theorem seg45Q4Step107Pe (rho : Nat -> Seg45.F) (r2515 : Seg45.relationRow2515 rho) :
    seg45Q4Pe107 rho = seg45Q4Pe108 rho * rho 39827 := by
  unfold Seg45.relationRow2515 at r2515
  unfold seg45Q4Pe107 seg45Q4Pe108
  linear_combination -r2515

theorem seg45Q4Step107 (rho : Nat -> Seg45.F) (r2513 : Seg45.relationRow2513 rho) (r2514 : Seg45.relationRow2514 rho) (r2515 : Seg45.relationRow2515 rho) :
    seg45Q4Pe107 rho = seg45Q4Pe108 rho * rho 39827 ∧
    seg45Q4Il107 rho = seg45Q4Il108 rho + seg45Q4Pe108 rho * (1 - rho 39827) -
      seg45Q4Il108 rho * (seg45Q4Pe108 rho * (1 - rho 39827)) := by
  constructor
  · exact seg45Q4Step107Pe rho r2515
  · rw [seg45Q4Step107Acc rho, seg45Q4Step107L rho r2513, seg45Q4Step107IlMul rho r2514, seg45Q4Step107L rho r2513]

theorem seg45_q4_chunk107 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 108 (seg45Q4PeState rho 108) (seg45Q4IlState rho 108) := by
  have htail := seg45_q4_chunk106 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2513, r2514, r2515, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 107 ≤ n → n < 108 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 107 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step107 rho r2513 r2514 r2515
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 107 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
