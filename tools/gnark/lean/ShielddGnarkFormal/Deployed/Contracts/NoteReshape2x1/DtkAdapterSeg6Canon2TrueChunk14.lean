import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Canon2TrueChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon2_flag_step_chunk14 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ m, 224 ≤ m → m < 240 → seg6Canon2Flag rho m = trueFactor (seg6Canon2Bits rho) m * seg6Canon2Flag rho (m + 1) := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r798, r799⟩
  unfold Seg6.relationPart10 at p10
  rcases p10 with ⟨r800, r801, r802, r803, r804, r805, r806, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow798 at r798
  unfold Seg6.relationRow799 at r799
  unfold Seg6.relationRow800 at r800
  unfold Seg6.relationRow801 at r801
  unfold Seg6.relationRow802 at r802
  unfold Seg6.relationRow803 at r803
  unfold Seg6.relationRow804 at r804
  unfold Seg6.relationRow805 at r805
  unfold Seg6.relationRow806 at r806
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg6Canon2Flag rho 224 = rho 1543 from rfl, show seg6Canon2Flag rho 225 = rho 1543 from rfl]
    have hb : pmBit 224 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 224 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 225 = rho 1543 from rfl, show seg6Canon2Flag rho 226 = rho 1542 from rfl]
    have hb : pmBit 225 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 225 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r806
  · rw [show seg6Canon2Flag rho 226 = rho 1542 from rfl, show seg6Canon2Flag rho 227 = rho 1541 from rfl]
    have hb : pmBit 226 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 226 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r805
  · rw [show seg6Canon2Flag rho 227 = rho 1541 from rfl, show seg6Canon2Flag rho 228 = rho 1540 from rfl]
    have hb : pmBit 227 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 227 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r804
  · rw [show seg6Canon2Flag rho 228 = rho 1540 from rfl, show seg6Canon2Flag rho 229 = rho 1539 from rfl]
    have hb : pmBit 228 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 228 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r803
  · rw [show seg6Canon2Flag rho 229 = rho 1539 from rfl, show seg6Canon2Flag rho 230 = rho 1539 from rfl]
    have hb : pmBit 229 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 229 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 230 = rho 1539 from rfl, show seg6Canon2Flag rho 231 = rho 1538 from rfl]
    have hb : pmBit 230 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 230 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r802
  · rw [show seg6Canon2Flag rho 231 = rho 1538 from rfl, show seg6Canon2Flag rho 232 = rho 1538 from rfl]
    have hb : pmBit 231 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 231 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 232 = rho 1538 from rfl, show seg6Canon2Flag rho 233 = rho 1537 from rfl]
    have hb : pmBit 232 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 232 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r801
  · rw [show seg6Canon2Flag rho 233 = rho 1537 from rfl, show seg6Canon2Flag rho 234 = rho 1537 from rfl]
    have hb : pmBit 233 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 233 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 234 = rho 1537 from rfl, show seg6Canon2Flag rho 235 = rho 1536 from rfl]
    have hb : pmBit 234 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 234 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r800
  · rw [show seg6Canon2Flag rho 235 = rho 1536 from rfl, show seg6Canon2Flag rho 236 = rho 1536 from rfl]
    have hb : pmBit 235 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 235 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 236 = rho 1536 from rfl, show seg6Canon2Flag rho 237 = rho 1536 from rfl]
    have hb : pmBit 236 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 236 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 237 = rho 1536 from rfl, show seg6Canon2Flag rho 238 = rho 1535 from rfl]
    have hb : pmBit 237 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 237 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r799
  · rw [show seg6Canon2Flag rho 238 = rho 1535 from rfl, show seg6Canon2Flag rho 239 = rho 1534 from rfl]
    have hb : pmBit 238 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 238 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r798
  · rw [show seg6Canon2Flag rho 239 = rho 1534 from rfl, show seg6Canon2Flag rho 240 = rho 1534 from rfl]
    have hb : pmBit 239 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 239 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
