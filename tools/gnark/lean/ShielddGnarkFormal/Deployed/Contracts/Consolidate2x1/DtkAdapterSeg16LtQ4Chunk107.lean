import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk106

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step107L (rho : Nat -> Seg16.F) (r2513 : Seg16.relationRow2513 rho) :
    rho 15087 = seg16Q4Pe108 rho * (1 - rho 14171) := by
  unfold Seg16.relationRow2513 at r2513
  unfold seg16Q4Pe108
  linear_combination -r2513

theorem seg16Q4Step107IlMul (rho : Nat -> Seg16.F) (r2514 : Seg16.relationRow2514 rho) :
    rho 15088 = seg16Q4Il108 rho * (rho 15087) := by
  unfold Seg16.relationRow2514 at r2514
  rw [seg16Q4Il108Atoms rho]
  unfold seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  linear_combination -r2514

theorem seg16Q4Step107Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il107 rho = seg16Q4Il108 rho + (rho 15087) - (rho 15088) := by
  have hstate : seg16Q4Il107 rho = seg16Q4Il108 rho + seg16Q4IlAtom12 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom12
  ring

theorem seg16Q4Step107Pe (rho : Nat -> Seg16.F) (r2515 : Seg16.relationRow2515 rho) :
    seg16Q4Pe107 rho = seg16Q4Pe108 rho * rho 14171 := by
  unfold Seg16.relationRow2515 at r2515
  unfold seg16Q4Pe107 seg16Q4Pe108
  linear_combination -r2515

theorem seg16Q4Step107 (rho : Nat -> Seg16.F) (r2513 : Seg16.relationRow2513 rho) (r2514 : Seg16.relationRow2514 rho) (r2515 : Seg16.relationRow2515 rho) :
    seg16Q4Pe107 rho = seg16Q4Pe108 rho * rho 14171 ∧
    seg16Q4Il107 rho = seg16Q4Il108 rho + seg16Q4Pe108 rho * (1 - rho 14171) -
      seg16Q4Il108 rho * (seg16Q4Pe108 rho * (1 - rho 14171)) := by
  constructor
  · exact seg16Q4Step107Pe rho r2515
  · rw [seg16Q4Step107Acc rho, seg16Q4Step107L rho r2513, seg16Q4Step107IlMul rho r2514, seg16Q4Step107L rho r2513]

theorem seg16_q4_chunk107 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 108 (seg16Q4PeState rho 108) (seg16Q4IlState rho 108) := by
  have htail := seg16_q4_chunk106 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2513, r2514, r2515, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 107 ≤ n → n < 108 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 107 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step107 rho r2513 r2514 r2515
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 107 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
