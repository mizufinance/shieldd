import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk45

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step46L (rho : Nat -> Seg34.F) (r2634 : Seg34.relationRow2634 rho) :
    rho 33908 = seg34Q4Pe47 rho * (1 - rho 32810) := by
  unfold Seg34.relationRow2634 at r2634
  unfold seg34Q4Pe47
  linear_combination -r2634

theorem seg34Q4Step46IlMul (rho : Nat -> Seg34.F) (r2635 : Seg34.relationRow2635 rho) :
    rho 33909 = seg34Q4Il47 rho * (rho 33908) := by
  unfold Seg34.relationRow2635 at r2635
  rw [seg34Q4Step46IlLc rho] at r2635
  linear_combination -r2635

theorem seg34Q4Step46Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il46 rho = seg34Q4Il47 rho + (rho 33908) - (rho 33909) := by
  have hstate : seg34Q4Il46 rho = seg34Q4Il47 rho + seg34Q4IlAtom44 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom44
  ring

theorem seg34Q4Step46Pe (rho : Nat -> Seg34.F) (r2636 : Seg34.relationRow2636 rho) :
    seg34Q4Pe46 rho = seg34Q4Pe47 rho * rho 32810 := by
  unfold Seg34.relationRow2636 at r2636
  unfold seg34Q4Pe46 seg34Q4Pe47
  linear_combination -r2636

theorem seg34Q4Step46 (rho : Nat -> Seg34.F) (r2634 : Seg34.relationRow2634 rho) (r2635 : Seg34.relationRow2635 rho) (r2636 : Seg34.relationRow2636 rho) :
    seg34Q4Pe46 rho = seg34Q4Pe47 rho * rho 32810 ∧
    seg34Q4Il46 rho = seg34Q4Il47 rho + seg34Q4Pe47 rho * (1 - rho 32810) -
      seg34Q4Il47 rho * (seg34Q4Pe47 rho * (1 - rho 32810)) := by
  constructor
  · exact seg34Q4Step46Pe rho r2636
  · rw [seg34Q4Step46Acc rho, seg34Q4Step46L rho r2634, seg34Q4Step46IlMul rho r2635, seg34Q4Step46L rho r2634]

theorem seg34_q4_chunk46 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 47 (seg34Q4PeState rho 47) (seg34Q4IlState rho 47) := by
  have htail := seg34_q4_chunk45 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2634, r2635, r2636, _, _, _⟩
  have hsteps : ∀ n, 46 ≤ n → n < 47 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 46 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step46 rho r2634 r2635 r2636
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 46 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
