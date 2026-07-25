import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon1TrueChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_flag_step_chunk11 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ m, 176 ≤ m → m < 192 → seg6Canon1Flag rho m = trueFactor (seg6Canon1Bits rho) m * seg6Canon1Flag rho (m + 1) := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r312, r313, r314, r315, r316, r317, _, _⟩
  unfold Seg6.relationRow312 at r312
  unfold Seg6.relationRow313 at r313
  unfold Seg6.relationRow314 at r314
  unfold Seg6.relationRow315 at r315
  unfold Seg6.relationRow316 at r316
  unfold Seg6.relationRow317 at r317
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg6Canon1Flag rho 176 = rho 1222 from rfl, show seg6Canon1Flag rho 177 = rho 1222 from rfl]
    have hb : pmBit 176 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 176 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 177 = rho 1222 from rfl, show seg6Canon1Flag rho 178 = rho 1222 from rfl]
    have hb : pmBit 177 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 177 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 178 = rho 1222 from rfl, show seg6Canon1Flag rho 179 = rho 1221 from rfl]
    have hb : pmBit 178 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 178 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r317
  · rw [show seg6Canon1Flag rho 179 = rho 1221 from rfl, show seg6Canon1Flag rho 180 = rho 1221 from rfl]
    have hb : pmBit 179 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 179 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 180 = rho 1221 from rfl, show seg6Canon1Flag rho 181 = rho 1220 from rfl]
    have hb : pmBit 180 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 180 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r316
  · rw [show seg6Canon1Flag rho 181 = rho 1220 from rfl, show seg6Canon1Flag rho 182 = rho 1219 from rfl]
    have hb : pmBit 181 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 181 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r315
  · rw [show seg6Canon1Flag rho 182 = rho 1219 from rfl, show seg6Canon1Flag rho 183 = rho 1219 from rfl]
    have hb : pmBit 182 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 182 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 183 = rho 1219 from rfl, show seg6Canon1Flag rho 184 = rho 1218 from rfl]
    have hb : pmBit 183 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 183 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r314
  · rw [show seg6Canon1Flag rho 184 = rho 1218 from rfl, show seg6Canon1Flag rho 185 = rho 1218 from rfl]
    have hb : pmBit 184 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 184 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 185 = rho 1218 from rfl, show seg6Canon1Flag rho 186 = rho 1218 from rfl]
    have hb : pmBit 185 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 185 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 186 = rho 1218 from rfl, show seg6Canon1Flag rho 187 = rho 1218 from rfl]
    have hb : pmBit 186 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 186 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 187 = rho 1218 from rfl, show seg6Canon1Flag rho 188 = rho 1218 from rfl]
    have hb : pmBit 187 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 187 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 188 = rho 1218 from rfl, show seg6Canon1Flag rho 189 = rho 1218 from rfl]
    have hb : pmBit 188 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 188 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 189 = rho 1218 from rfl, show seg6Canon1Flag rho 190 = rho 1217 from rfl]
    have hb : pmBit 189 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 189 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r313
  · rw [show seg6Canon1Flag rho 190 = rho 1217 from rfl, show seg6Canon1Flag rho 191 = rho 1216 from rfl]
    have hb : pmBit 190 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 190 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r312
  · rw [show seg6Canon1Flag rho 191 = rho 1216 from rfl, show seg6Canon1Flag rho 192 = rho 1216 from rfl]
    have hb : pmBit 191 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 191 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
