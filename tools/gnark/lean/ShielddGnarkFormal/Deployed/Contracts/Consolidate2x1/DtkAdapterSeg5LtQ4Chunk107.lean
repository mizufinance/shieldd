import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk106

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step107L (rho : Nat -> Seg5.F) (r2513 : Seg5.relationRow2513 rho) :
    rho 2210 = seg5Q4Pe108 rho * (1 - rho 1294) := by
  unfold Seg5.relationRow2513 at r2513
  unfold seg5Q4Pe108
  linear_combination -r2513

theorem seg5Q4Step107IlMul (rho : Nat -> Seg5.F) (r2514 : Seg5.relationRow2514 rho) :
    rho 2211 = seg5Q4Il108 rho * (rho 2210) := by
  unfold Seg5.relationRow2514 at r2514
  rw [seg5Q4Il108Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  linear_combination -r2514

theorem seg5Q4Step107Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il107 rho = seg5Q4Il108 rho + (rho 2210) - (rho 2211) := by
  have hstate : seg5Q4Il107 rho = seg5Q4Il108 rho + seg5Q4IlAtom12 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom12
  ring

theorem seg5Q4Step107Pe (rho : Nat -> Seg5.F) (r2515 : Seg5.relationRow2515 rho) :
    seg5Q4Pe107 rho = seg5Q4Pe108 rho * rho 1294 := by
  unfold Seg5.relationRow2515 at r2515
  unfold seg5Q4Pe107 seg5Q4Pe108
  linear_combination -r2515

theorem seg5Q4Step107 (rho : Nat -> Seg5.F) (r2513 : Seg5.relationRow2513 rho) (r2514 : Seg5.relationRow2514 rho) (r2515 : Seg5.relationRow2515 rho) :
    seg5Q4Pe107 rho = seg5Q4Pe108 rho * rho 1294 ∧
    seg5Q4Il107 rho = seg5Q4Il108 rho + seg5Q4Pe108 rho * (1 - rho 1294) -
      seg5Q4Il108 rho * (seg5Q4Pe108 rho * (1 - rho 1294)) := by
  constructor
  · exact seg5Q4Step107Pe rho r2515
  · rw [seg5Q4Step107Acc rho, seg5Q4Step107L rho r2513, seg5Q4Step107IlMul rho r2514, seg5Q4Step107L rho r2513]

theorem seg5_q4_chunk107 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 108 (seg5Q4PeState rho 108) (seg5Q4IlState rho 108) := by
  have htail := seg5_q4_chunk106 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2513, r2514, r2515, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 107 ≤ n → n < 108 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 107 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step107 rho r2513 r2514 r2515
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 107 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
