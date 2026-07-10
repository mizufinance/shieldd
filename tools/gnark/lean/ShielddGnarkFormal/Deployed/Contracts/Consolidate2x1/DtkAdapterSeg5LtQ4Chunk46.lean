import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk45

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step46L (rho : Nat -> Seg5.F) (r2634 : Seg5.relationRow2634 rho) :
    rho 2331 = seg5Q4Pe47 rho * (1 - rho 1233) := by
  unfold Seg5.relationRow2634 at r2634
  unfold seg5Q4Pe47
  linear_combination -r2634

theorem seg5Q4Step46IlMul (rho : Nat -> Seg5.F) (r2635 : Seg5.relationRow2635 rho) :
    rho 2332 = seg5Q4Il47 rho * (rho 2331) := by
  unfold Seg5.relationRow2635 at r2635
  rw [seg5Q4Step46IlLc rho] at r2635
  linear_combination -r2635

theorem seg5Q4Step46Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il46 rho = seg5Q4Il47 rho + (rho 2331) - (rho 2332) := by
  have hstate : seg5Q4Il46 rho = seg5Q4Il47 rho + seg5Q4IlAtom44 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom44
  ring

theorem seg5Q4Step46Pe (rho : Nat -> Seg5.F) (r2636 : Seg5.relationRow2636 rho) :
    seg5Q4Pe46 rho = seg5Q4Pe47 rho * rho 1233 := by
  unfold Seg5.relationRow2636 at r2636
  unfold seg5Q4Pe46 seg5Q4Pe47
  linear_combination -r2636

theorem seg5Q4Step46 (rho : Nat -> Seg5.F) (r2634 : Seg5.relationRow2634 rho) (r2635 : Seg5.relationRow2635 rho) (r2636 : Seg5.relationRow2636 rho) :
    seg5Q4Pe46 rho = seg5Q4Pe47 rho * rho 1233 ∧
    seg5Q4Il46 rho = seg5Q4Il47 rho + seg5Q4Pe47 rho * (1 - rho 1233) -
      seg5Q4Il47 rho * (seg5Q4Pe47 rho * (1 - rho 1233)) := by
  constructor
  · exact seg5Q4Step46Pe rho r2636
  · rw [seg5Q4Step46Acc rho, seg5Q4Step46L rho r2634, seg5Q4Step46IlMul rho r2635, seg5Q4Step46L rho r2634]

theorem seg5_q4_chunk46 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 47 (seg5Q4PeState rho 47) (seg5Q4IlState rho 47) := by
  have htail := seg5_q4_chunk45 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2634, r2635, r2636, _, _, _⟩
  have hsteps : ∀ n, 46 ≤ n → n < 47 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 46 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step46 rho r2634 r2635 r2636
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 46 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
