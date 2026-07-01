import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk45

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step46L (rho : Nat -> Seg16.F) (r2634 : Seg16.relationRow2634 rho) :
    rho 15208 = seg16Q4Pe47 rho * (1 - rho 14110) := by
  unfold Seg16.relationRow2634 at r2634
  unfold seg16Q4Pe47
  linear_combination -r2634

theorem seg16Q4Step46IlMul (rho : Nat -> Seg16.F) (r2635 : Seg16.relationRow2635 rho) :
    rho 15209 = seg16Q4Il47 rho * (rho 15208) := by
  unfold Seg16.relationRow2635 at r2635
  rw [seg16Q4Step46IlLc rho] at r2635
  linear_combination -r2635

theorem seg16Q4Step46Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il46 rho = seg16Q4Il47 rho + (rho 15208) - (rho 15209) := by
  have hstate : seg16Q4Il46 rho = seg16Q4Il47 rho + seg16Q4IlAtom44 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom44
  ring

theorem seg16Q4Step46Pe (rho : Nat -> Seg16.F) (r2636 : Seg16.relationRow2636 rho) :
    seg16Q4Pe46 rho = seg16Q4Pe47 rho * rho 14110 := by
  unfold Seg16.relationRow2636 at r2636
  unfold seg16Q4Pe46 seg16Q4Pe47
  linear_combination -r2636

theorem seg16Q4Step46 (rho : Nat -> Seg16.F) (r2634 : Seg16.relationRow2634 rho) (r2635 : Seg16.relationRow2635 rho) (r2636 : Seg16.relationRow2636 rho) :
    seg16Q4Pe46 rho = seg16Q4Pe47 rho * rho 14110 ∧
    seg16Q4Il46 rho = seg16Q4Il47 rho + seg16Q4Pe47 rho * (1 - rho 14110) -
      seg16Q4Il47 rho * (seg16Q4Pe47 rho * (1 - rho 14110)) := by
  constructor
  · exact seg16Q4Step46Pe rho r2636
  · rw [seg16Q4Step46Acc rho, seg16Q4Step46L rho r2634, seg16Q4Step46IlMul rho r2635, seg16Q4Step46L rho r2634]

theorem seg16_q4_chunk46 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 47 (seg16Q4PeState rho 47) (seg16Q4IlState rho 47) := by
  have htail := seg16_q4_chunk45 rho h k hk
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2634, r2635, r2636, _, _, _⟩
  have hsteps : ∀ n, 46 ≤ n → n < 47 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 46 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step46 rho r2634 r2635 r2636
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 46 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
