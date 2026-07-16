import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Canon2TrueChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon2_flag_step_chunk9 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ m, 144 ≤ m → m < 160 → seg6Canon2Flag rho m = trueFactor (seg6Canon2Bits rho) m * seg6Canon2Flag rho (m + 1) := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r836, r837, r838, r839, r840, r841, r842, r843, r844, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow836 at r836
  unfold Seg6.relationRow837 at r837
  unfold Seg6.relationRow838 at r838
  unfold Seg6.relationRow839 at r839
  unfold Seg6.relationRow840 at r840
  unfold Seg6.relationRow841 at r841
  unfold Seg6.relationRow842 at r842
  unfold Seg6.relationRow843 at r843
  unfold Seg6.relationRow844 at r844
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg6Canon2Flag rho 144 = rho 1581 from rfl, show seg6Canon2Flag rho 145 = rho 1580 from rfl]
    have hb : pmBit 144 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 144 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r844
  · rw [show seg6Canon2Flag rho 145 = rho 1580 from rfl, show seg6Canon2Flag rho 146 = rho 1579 from rfl]
    have hb : pmBit 145 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 145 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r843
  · rw [show seg6Canon2Flag rho 146 = rho 1579 from rfl, show seg6Canon2Flag rho 147 = rho 1578 from rfl]
    have hb : pmBit 146 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 146 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r842
  · rw [show seg6Canon2Flag rho 147 = rho 1578 from rfl, show seg6Canon2Flag rho 148 = rho 1578 from rfl]
    have hb : pmBit 147 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 147 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 148 = rho 1578 from rfl, show seg6Canon2Flag rho 149 = rho 1577 from rfl]
    have hb : pmBit 148 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 148 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r841
  · rw [show seg6Canon2Flag rho 149 = rho 1577 from rfl, show seg6Canon2Flag rho 150 = rho 1576 from rfl]
    have hb : pmBit 149 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 149 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r840
  · rw [show seg6Canon2Flag rho 150 = rho 1576 from rfl, show seg6Canon2Flag rho 151 = rho 1576 from rfl]
    have hb : pmBit 150 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 150 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 151 = rho 1576 from rfl, show seg6Canon2Flag rho 152 = rho 1576 from rfl]
    have hb : pmBit 151 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 151 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 152 = rho 1576 from rfl, show seg6Canon2Flag rho 153 = rho 1576 from rfl]
    have hb : pmBit 152 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 152 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 153 = rho 1576 from rfl, show seg6Canon2Flag rho 154 = rho 1576 from rfl]
    have hb : pmBit 153 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 153 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 154 = rho 1576 from rfl, show seg6Canon2Flag rho 155 = rho 1575 from rfl]
    have hb : pmBit 154 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 154 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r839
  · rw [show seg6Canon2Flag rho 155 = rho 1575 from rfl, show seg6Canon2Flag rho 156 = rho 1574 from rfl]
    have hb : pmBit 155 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 155 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r838
  · rw [show seg6Canon2Flag rho 156 = rho 1574 from rfl, show seg6Canon2Flag rho 157 = rho 1573 from rfl]
    have hb : pmBit 156 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 156 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r837
  · rw [show seg6Canon2Flag rho 157 = rho 1573 from rfl, show seg6Canon2Flag rho 158 = rho 1573 from rfl]
    have hb : pmBit 157 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 157 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 158 = rho 1573 from rfl, show seg6Canon2Flag rho 159 = rho 1572 from rfl]
    have hb : pmBit 158 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 158 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r836
  · rw [show seg6Canon2Flag rho 159 = rho 1572 from rfl, show seg6Canon2Flag rho 160 = rho 1572 from rfl]
    have hb : pmBit 159 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 159 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
