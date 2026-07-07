import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk106

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step107L (rho : Nat -> Seg34.F) (r2513 : Seg34.relationRow2513 rho) :
    rho 33787 = seg34Q4Pe108 rho * (1 - rho 32871) := by
  unfold Seg34.relationRow2513 at r2513
  unfold seg34Q4Pe108
  linear_combination -r2513

theorem seg34Q4Step107IlMul (rho : Nat -> Seg34.F) (r2514 : Seg34.relationRow2514 rho) :
    rho 33788 = seg34Q4Il108 rho * (rho 33787) := by
  unfold Seg34.relationRow2514 at r2514
  rw [seg34Q4Il108Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom10 seg34Q4IlAtom11 seg34Q4IlAtom2 seg34Q4IlAtom3 seg34Q4IlAtom4 seg34Q4IlAtom5 seg34Q4IlAtom6 seg34Q4IlAtom7 seg34Q4IlAtom8 seg34Q4IlAtom9
  linear_combination -r2514

theorem seg34Q4Step107Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il107 rho = seg34Q4Il108 rho + (rho 33787) - (rho 33788) := by
  have hstate : seg34Q4Il107 rho = seg34Q4Il108 rho + seg34Q4IlAtom12 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom12
  ring

theorem seg34Q4Step107Pe (rho : Nat -> Seg34.F) (r2515 : Seg34.relationRow2515 rho) :
    seg34Q4Pe107 rho = seg34Q4Pe108 rho * rho 32871 := by
  unfold Seg34.relationRow2515 at r2515
  unfold seg34Q4Pe107 seg34Q4Pe108
  linear_combination -r2515

theorem seg34Q4Step107 (rho : Nat -> Seg34.F) (r2513 : Seg34.relationRow2513 rho) (r2514 : Seg34.relationRow2514 rho) (r2515 : Seg34.relationRow2515 rho) :
    seg34Q4Pe107 rho = seg34Q4Pe108 rho * rho 32871 ∧
    seg34Q4Il107 rho = seg34Q4Il108 rho + seg34Q4Pe108 rho * (1 - rho 32871) -
      seg34Q4Il108 rho * (seg34Q4Pe108 rho * (1 - rho 32871)) := by
  constructor
  · exact seg34Q4Step107Pe rho r2515
  · rw [seg34Q4Step107Acc rho, seg34Q4Step107L rho r2513, seg34Q4Step107IlMul rho r2514, seg34Q4Step107L rho r2513]

theorem seg34_q4_chunk107 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 108 (seg34Q4PeState rho 108) (seg34Q4IlState rho 108) := by
  have htail := seg34_q4_chunk106 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2513, r2514, r2515, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 107 ≤ n → n < 108 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 107 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step107 rho r2513 r2514 r2515
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 107 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
