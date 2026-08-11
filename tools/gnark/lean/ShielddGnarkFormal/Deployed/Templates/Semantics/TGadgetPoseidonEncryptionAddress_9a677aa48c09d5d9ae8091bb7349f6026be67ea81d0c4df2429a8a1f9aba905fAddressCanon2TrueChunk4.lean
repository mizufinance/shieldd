import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk4 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 64 ≤ m → m < 80 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1886, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1886 at r1886
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 64 = rho 1386 from rfl, show canon2Flag rho 65 = rho 1385 from rfl]
    have hb : pmBit 64 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 64 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1886
  · rw [show canon2Flag rho 65 = rho 1385 from rfl, show canon2Flag rho 66 = rho 1385 from rfl]
    have hb : pmBit 65 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 65 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 66 = rho 1385 from rfl, show canon2Flag rho 67 = rho 1385 from rfl]
    have hb : pmBit 66 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 66 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 67 = rho 1385 from rfl, show canon2Flag rho 68 = rho 1385 from rfl]
    have hb : pmBit 67 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 67 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 68 = rho 1385 from rfl, show canon2Flag rho 69 = rho 1385 from rfl]
    have hb : pmBit 68 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 68 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 69 = rho 1385 from rfl, show canon2Flag rho 70 = rho 1385 from rfl]
    have hb : pmBit 69 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 69 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 70 = rho 1385 from rfl, show canon2Flag rho 71 = rho 1385 from rfl]
    have hb : pmBit 70 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 70 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 71 = rho 1385 from rfl, show canon2Flag rho 72 = rho 1385 from rfl]
    have hb : pmBit 71 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 71 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 72 = rho 1385 from rfl, show canon2Flag rho 73 = rho 1385 from rfl]
    have hb : pmBit 72 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 72 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 73 = rho 1385 from rfl, show canon2Flag rho 74 = rho 1385 from rfl]
    have hb : pmBit 73 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 73 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 74 = rho 1385 from rfl, show canon2Flag rho 75 = rho 1385 from rfl]
    have hb : pmBit 74 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 74 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 75 = rho 1385 from rfl, show canon2Flag rho 76 = rho 1385 from rfl]
    have hb : pmBit 75 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 75 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 76 = rho 1385 from rfl, show canon2Flag rho 77 = rho 1385 from rfl]
    have hb : pmBit 76 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 76 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 77 = rho 1385 from rfl, show canon2Flag rho 78 = rho 1385 from rfl]
    have hb : pmBit 77 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 77 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 78 = rho 1385 from rfl, show canon2Flag rho 79 = rho 1385 from rfl]
    have hb : pmBit 78 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 78 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 79 = rho 1385 from rfl, show canon2Flag rho 80 = rho 1385 from rfl]
    have hb : pmBit 79 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 79 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
