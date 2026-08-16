import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 16 ≤ m → m < 32 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 16 = rho 1391 from rfl, show canon2Flag rho 17 = rho 1391 from rfl]
    have hb : pmBit 16 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 16 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 17 = rho 1391 from rfl, show canon2Flag rho 18 = rho 1391 from rfl]
    have hb : pmBit 17 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 17 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 18 = rho 1391 from rfl, show canon2Flag rho 19 = rho 1391 from rfl]
    have hb : pmBit 18 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 18 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 19 = rho 1391 from rfl, show canon2Flag rho 20 = rho 1391 from rfl]
    have hb : pmBit 19 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 19 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 20 = rho 1391 from rfl, show canon2Flag rho 21 = rho 1391 from rfl]
    have hb : pmBit 20 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 20 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 21 = rho 1391 from rfl, show canon2Flag rho 22 = rho 1391 from rfl]
    have hb : pmBit 21 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 21 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 22 = rho 1391 from rfl, show canon2Flag rho 23 = rho 1391 from rfl]
    have hb : pmBit 22 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 22 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 23 = rho 1391 from rfl, show canon2Flag rho 24 = rho 1391 from rfl]
    have hb : pmBit 23 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 23 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 24 = rho 1391 from rfl, show canon2Flag rho 25 = rho 1391 from rfl]
    have hb : pmBit 24 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 24 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 25 = rho 1391 from rfl, show canon2Flag rho 26 = rho 1391 from rfl]
    have hb : pmBit 25 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 25 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 26 = rho 1391 from rfl, show canon2Flag rho 27 = rho 1391 from rfl]
    have hb : pmBit 26 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 26 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 27 = rho 1391 from rfl, show canon2Flag rho 28 = rho 1391 from rfl]
    have hb : pmBit 27 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 27 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 28 = rho 1391 from rfl, show canon2Flag rho 29 = rho 1391 from rfl]
    have hb : pmBit 28 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 28 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 29 = rho 1391 from rfl, show canon2Flag rho 30 = rho 1391 from rfl]
    have hb : pmBit 29 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 29 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 30 = rho 1391 from rfl, show canon2Flag rho 31 = rho 1391 from rfl]
    have hb : pmBit 30 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 30 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 31 = rho 1391 from rfl, show canon2Flag rho 32 = rho 1391 from rfl]
    have hb : pmBit 31 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 31 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
