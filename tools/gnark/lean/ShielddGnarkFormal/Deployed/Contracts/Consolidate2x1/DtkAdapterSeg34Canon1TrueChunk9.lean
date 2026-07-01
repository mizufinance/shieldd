import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon1TrueChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon1_flag_step_chunk9 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    ∀ m, 144 ≤ m → m < 160 → seg34Canon1Flag rho m = trueFactor (seg34Canon1Bits rho) m * seg34Canon1Flag rho (m + 1) := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, r326, r327, r328, r329, r330, r331, r332, r333, r334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow326 at r326
  unfold Seg34.relationRow327 at r327
  unfold Seg34.relationRow328 at r328
  unfold Seg34.relationRow329 at r329
  unfold Seg34.relationRow330 at r330
  unfold Seg34.relationRow331 at r331
  unfold Seg34.relationRow332 at r332
  unfold Seg34.relationRow333 at r333
  unfold Seg34.relationRow334 at r334
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg34Canon1Flag rho 144 = rho 32113 from rfl, show seg34Canon1Flag rho 145 = rho 32112 from rfl]
    have hb : pmBit 144 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 144 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r334
  · rw [show seg34Canon1Flag rho 145 = rho 32112 from rfl, show seg34Canon1Flag rho 146 = rho 32111 from rfl]
    have hb : pmBit 145 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 145 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r333
  · rw [show seg34Canon1Flag rho 146 = rho 32111 from rfl, show seg34Canon1Flag rho 147 = rho 32110 from rfl]
    have hb : pmBit 146 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 146 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r332
  · rw [show seg34Canon1Flag rho 147 = rho 32110 from rfl, show seg34Canon1Flag rho 148 = rho 32110 from rfl]
    have hb : pmBit 147 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 147 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 148 = rho 32110 from rfl, show seg34Canon1Flag rho 149 = rho 32109 from rfl]
    have hb : pmBit 148 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 148 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r331
  · rw [show seg34Canon1Flag rho 149 = rho 32109 from rfl, show seg34Canon1Flag rho 150 = rho 32108 from rfl]
    have hb : pmBit 149 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 149 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r330
  · rw [show seg34Canon1Flag rho 150 = rho 32108 from rfl, show seg34Canon1Flag rho 151 = rho 32108 from rfl]
    have hb : pmBit 150 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 150 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 151 = rho 32108 from rfl, show seg34Canon1Flag rho 152 = rho 32108 from rfl]
    have hb : pmBit 151 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 151 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 152 = rho 32108 from rfl, show seg34Canon1Flag rho 153 = rho 32108 from rfl]
    have hb : pmBit 152 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 152 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 153 = rho 32108 from rfl, show seg34Canon1Flag rho 154 = rho 32108 from rfl]
    have hb : pmBit 153 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 153 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 154 = rho 32108 from rfl, show seg34Canon1Flag rho 155 = rho 32107 from rfl]
    have hb : pmBit 154 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 154 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r329
  · rw [show seg34Canon1Flag rho 155 = rho 32107 from rfl, show seg34Canon1Flag rho 156 = rho 32106 from rfl]
    have hb : pmBit 155 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 155 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r328
  · rw [show seg34Canon1Flag rho 156 = rho 32106 from rfl, show seg34Canon1Flag rho 157 = rho 32105 from rfl]
    have hb : pmBit 156 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 156 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r327
  · rw [show seg34Canon1Flag rho 157 = rho 32105 from rfl, show seg34Canon1Flag rho 158 = rho 32105 from rfl]
    have hb : pmBit 157 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 157 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 158 = rho 32105 from rfl, show seg34Canon1Flag rho 159 = rho 32104 from rfl]
    have hb : pmBit 158 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 158 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r326
  · rw [show seg34Canon1Flag rho 159 = rho 32104 from rfl, show seg34Canon1Flag rho 160 = rho 32104 from rfl]
    have hb : pmBit 159 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 159 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
