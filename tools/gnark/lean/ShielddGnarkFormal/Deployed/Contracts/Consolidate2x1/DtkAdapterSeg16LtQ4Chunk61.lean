import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk60

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step61L (rho : Nat -> Seg16.F) (r2605 : Seg16.relationRow2605 rho) :
    rho 15179 = seg16Q4Pe62 rho * (1 - rho 14125) := by
  unfold Seg16.relationRow2605 at r2605
  unfold seg16Q4Pe62
  linear_combination -r2605

theorem seg16Q4Step61IlMul (rho : Nat -> Seg16.F) (r2606 : Seg16.relationRow2606 rho) :
    rho 15180 = seg16Q4Il62 rho * (rho 15179) := by
  unfold Seg16.relationRow2606 at r2606
  rw [seg16Q4Step61IlLc rho] at r2606
  linear_combination -r2606

theorem seg16Q4Step61Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il61 rho = seg16Q4Il62 rho + (rho 15179) - (rho 15180) := by
  have hstate : seg16Q4Il61 rho = seg16Q4Il62 rho + seg16Q4IlAtom37 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom37
  ring

theorem seg16Q4Step61Pe (rho : Nat -> Seg16.F) (r2607 : Seg16.relationRow2607 rho) :
    seg16Q4Pe61 rho = seg16Q4Pe62 rho * rho 14125 := by
  unfold Seg16.relationRow2607 at r2607
  unfold seg16Q4Pe61 seg16Q4Pe62
  linear_combination -r2607

theorem seg16Q4Step61 (rho : Nat -> Seg16.F) (r2605 : Seg16.relationRow2605 rho) (r2606 : Seg16.relationRow2606 rho) (r2607 : Seg16.relationRow2607 rho) :
    seg16Q4Pe61 rho = seg16Q4Pe62 rho * rho 14125 ∧
    seg16Q4Il61 rho = seg16Q4Il62 rho + seg16Q4Pe62 rho * (1 - rho 14125) -
      seg16Q4Il62 rho * (seg16Q4Pe62 rho * (1 - rho 14125)) := by
  constructor
  · exact seg16Q4Step61Pe rho r2607
  · rw [seg16Q4Step61Acc rho, seg16Q4Step61L rho r2605, seg16Q4Step61IlMul rho r2606, seg16Q4Step61L rho r2605]

theorem seg16_q4_chunk61 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 62 (seg16Q4PeState rho 62) (seg16Q4IlState rho 62) := by
  have htail := seg16_q4_chunk60 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2605, r2606, r2607, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 61 ≤ n → n < 62 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 61 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step61 rho r2605 r2606 r2607
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 61 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
