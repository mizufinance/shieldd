import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Canon1TrueChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_flag_step_chunk10 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ m, 160 ≤ m → m < 176 → seg6Canon1Flag rho m = trueFactor (seg6Canon1Bits rho) m * seg6Canon1Flag rho (m + 1) := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, p3, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r318, r319⟩
  unfold Seg6.relationPart4 at p4
  rcases p4 with ⟨r320, r321, r322, r323, r324, r325, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow318 at r318
  unfold Seg6.relationRow319 at r319
  unfold Seg6.relationRow320 at r320
  unfold Seg6.relationRow321 at r321
  unfold Seg6.relationRow322 at r322
  unfold Seg6.relationRow323 at r323
  unfold Seg6.relationRow324 at r324
  unfold Seg6.relationRow325 at r325
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg6Canon1Flag rho 160 = rho 1230 from rfl, show seg6Canon1Flag rho 161 = rho 1230 from rfl]
    have hb : pmBit 160 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 160 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 161 = rho 1230 from rfl, show seg6Canon1Flag rho 162 = rho 1229 from rfl]
    have hb : pmBit 161 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 161 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r325
  · rw [show seg6Canon1Flag rho 162 = rho 1229 from rfl, show seg6Canon1Flag rho 163 = rho 1228 from rfl]
    have hb : pmBit 162 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 162 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r324
  · rw [show seg6Canon1Flag rho 163 = rho 1228 from rfl, show seg6Canon1Flag rho 164 = rho 1227 from rfl]
    have hb : pmBit 163 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 163 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r323
  · rw [show seg6Canon1Flag rho 164 = rho 1227 from rfl, show seg6Canon1Flag rho 165 = rho 1226 from rfl]
    have hb : pmBit 164 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 164 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r322
  · rw [show seg6Canon1Flag rho 165 = rho 1226 from rfl, show seg6Canon1Flag rho 166 = rho 1226 from rfl]
    have hb : pmBit 165 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 165 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 166 = rho 1226 from rfl, show seg6Canon1Flag rho 167 = rho 1226 from rfl]
    have hb : pmBit 166 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 166 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 167 = rho 1226 from rfl, show seg6Canon1Flag rho 168 = rho 1226 from rfl]
    have hb : pmBit 167 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 167 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 168 = rho 1226 from rfl, show seg6Canon1Flag rho 169 = rho 1225 from rfl]
    have hb : pmBit 168 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 168 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r321
  · rw [show seg6Canon1Flag rho 169 = rho 1225 from rfl, show seg6Canon1Flag rho 170 = rho 1225 from rfl]
    have hb : pmBit 169 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 169 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 170 = rho 1225 from rfl, show seg6Canon1Flag rho 171 = rho 1224 from rfl]
    have hb : pmBit 170 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 170 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r320
  · rw [show seg6Canon1Flag rho 171 = rho 1224 from rfl, show seg6Canon1Flag rho 172 = rho 1223 from rfl]
    have hb : pmBit 171 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 171 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r319
  · rw [show seg6Canon1Flag rho 172 = rho 1223 from rfl, show seg6Canon1Flag rho 173 = rho 1223 from rfl]
    have hb : pmBit 172 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 172 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 173 = rho 1223 from rfl, show seg6Canon1Flag rho 174 = rho 1223 from rfl]
    have hb : pmBit 173 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 173 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 174 = rho 1223 from rfl, show seg6Canon1Flag rho 175 = rho 1222 from rfl]
    have hb : pmBit 174 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon1Bits_get rho 174 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r318
  · rw [show seg6Canon1Flag rho 175 = rho 1222 from rfl, show seg6Canon1Flag rho 176 = rho 1222 from rfl]
    have hb : pmBit 175 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 175 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
