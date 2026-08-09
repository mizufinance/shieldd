import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1TrueChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_flag_step_chunk2 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 32 ≤ m → m < 48 → canon1Flag rho m = trueFactor (canon1Bits rho) m * canon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1385, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1385 at r1385
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon1Flag rho 32 = rho 1050 from rfl, show canon1Flag rho 33 = rho 1050 from rfl]
    have hb : pmBit 32 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 32 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 33 = rho 1050 from rfl, show canon1Flag rho 34 = rho 1050 from rfl]
    have hb : pmBit 33 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 33 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 34 = rho 1050 from rfl, show canon1Flag rho 35 = rho 1050 from rfl]
    have hb : pmBit 34 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 34 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 35 = rho 1050 from rfl, show canon1Flag rho 36 = rho 1050 from rfl]
    have hb : pmBit 35 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 35 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 36 = rho 1050 from rfl, show canon1Flag rho 37 = rho 1050 from rfl]
    have hb : pmBit 36 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 36 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 37 = rho 1050 from rfl, show canon1Flag rho 38 = rho 1050 from rfl]
    have hb : pmBit 37 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 37 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 38 = rho 1050 from rfl, show canon1Flag rho 39 = rho 1050 from rfl]
    have hb : pmBit 38 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 38 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 39 = rho 1050 from rfl, show canon1Flag rho 40 = rho 1050 from rfl]
    have hb : pmBit 39 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 39 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 40 = rho 1050 from rfl, show canon1Flag rho 41 = rho 1050 from rfl]
    have hb : pmBit 40 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 40 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 41 = rho 1050 from rfl, show canon1Flag rho 42 = rho 1050 from rfl]
    have hb : pmBit 41 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 41 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 42 = rho 1050 from rfl, show canon1Flag rho 43 = rho 1050 from rfl]
    have hb : pmBit 42 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 42 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 43 = rho 1050 from rfl, show canon1Flag rho 44 = rho 1050 from rfl]
    have hb : pmBit 43 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 43 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 44 = rho 1050 from rfl, show canon1Flag rho 45 = rho 1050 from rfl]
    have hb : pmBit 44 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 44 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 45 = rho 1050 from rfl, show canon1Flag rho 46 = rho 1050 from rfl]
    have hb : pmBit 45 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 45 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 46 = rho 1050 from rfl, show canon1Flag rho 47 = rho 1050 from rfl]
    have hb : pmBit 46 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 46 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 47 = rho 1050 from rfl, show canon1Flag rho 48 = rho 1049 from rfl]
    have hb : pmBit 47 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 47 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1385

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
