import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2TrueChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_flag_step_chunk13 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ m, 208 ≤ m → m < 224 → seg45Canon2Flag rho m = trueFactor (seg45Canon2Bits rho) m * seg45Canon2Flag rho (m + 1) := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, r807, r808, r809, r810, r811, r812, r813, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow807 at r807
  unfold Seg45.relationRow808 at r808
  unfold Seg45.relationRow809 at r809
  unfold Seg45.relationRow810 at r810
  unfold Seg45.relationRow811 at r811
  unfold Seg45.relationRow812 at r812
  unfold Seg45.relationRow813 at r813
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg45Canon2Flag rho 208 = rho 39380 from rfl, show seg45Canon2Flag rho 209 = rho 39380 from rfl]
    have hb : pmBit 208 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 208 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 209 = rho 39380 from rfl, show seg45Canon2Flag rho 210 = rho 39380 from rfl]
    have hb : pmBit 209 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 209 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 210 = rho 39380 from rfl, show seg45Canon2Flag rho 211 = rho 39379 from rfl]
    have hb : pmBit 210 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 210 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r813
  · rw [show seg45Canon2Flag rho 211 = rho 39379 from rfl, show seg45Canon2Flag rho 212 = rho 39378 from rfl]
    have hb : pmBit 211 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 211 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r812
  · rw [show seg45Canon2Flag rho 212 = rho 39378 from rfl, show seg45Canon2Flag rho 213 = rho 39378 from rfl]
    have hb : pmBit 212 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 212 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 213 = rho 39378 from rfl, show seg45Canon2Flag rho 214 = rho 39377 from rfl]
    have hb : pmBit 213 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 213 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r811
  · rw [show seg45Canon2Flag rho 214 = rho 39377 from rfl, show seg45Canon2Flag rho 215 = rho 39377 from rfl]
    have hb : pmBit 214 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 214 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 215 = rho 39377 from rfl, show seg45Canon2Flag rho 216 = rho 39377 from rfl]
    have hb : pmBit 215 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 215 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 216 = rho 39377 from rfl, show seg45Canon2Flag rho 217 = rho 39377 from rfl]
    have hb : pmBit 216 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 216 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 217 = rho 39377 from rfl, show seg45Canon2Flag rho 218 = rho 39376 from rfl]
    have hb : pmBit 217 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 217 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r810
  · rw [show seg45Canon2Flag rho 218 = rho 39376 from rfl, show seg45Canon2Flag rho 219 = rho 39376 from rfl]
    have hb : pmBit 218 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 218 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 219 = rho 39376 from rfl, show seg45Canon2Flag rho 220 = rho 39375 from rfl]
    have hb : pmBit 219 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 219 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r809
  · rw [show seg45Canon2Flag rho 220 = rho 39375 from rfl, show seg45Canon2Flag rho 221 = rho 39374 from rfl]
    have hb : pmBit 220 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 220 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r808
  · rw [show seg45Canon2Flag rho 221 = rho 39374 from rfl, show seg45Canon2Flag rho 222 = rho 39374 from rfl]
    have hb : pmBit 221 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 221 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 222 = rho 39374 from rfl, show seg45Canon2Flag rho 223 = rho 39374 from rfl]
    have hb : pmBit 222 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 222 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 223 = rho 39374 from rfl, show seg45Canon2Flag rho 224 = rho 39373 from rfl]
    have hb : pmBit 223 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 223 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r807

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
