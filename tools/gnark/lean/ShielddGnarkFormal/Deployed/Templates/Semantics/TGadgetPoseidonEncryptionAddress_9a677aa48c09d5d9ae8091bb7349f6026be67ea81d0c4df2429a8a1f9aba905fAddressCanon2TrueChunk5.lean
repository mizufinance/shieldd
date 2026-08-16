import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 80 ≤ m → m < 96 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1883, r1884, r1885, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1883 at r1883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1884 at r1884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1885 at r1885
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 80 = rho 1385 from rfl, show canon2Flag rho 81 = rho 1385 from rfl]
    have hb : pmBit 80 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 80 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 81 = rho 1385 from rfl, show canon2Flag rho 82 = rho 1385 from rfl]
    have hb : pmBit 81 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 81 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 82 = rho 1385 from rfl, show canon2Flag rho 83 = rho 1385 from rfl]
    have hb : pmBit 82 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 82 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 83 = rho 1385 from rfl, show canon2Flag rho 84 = rho 1385 from rfl]
    have hb : pmBit 83 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 83 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 84 = rho 1385 from rfl, show canon2Flag rho 85 = rho 1385 from rfl]
    have hb : pmBit 84 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 84 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 85 = rho 1385 from rfl, show canon2Flag rho 86 = rho 1385 from rfl]
    have hb : pmBit 85 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 85 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 86 = rho 1385 from rfl, show canon2Flag rho 87 = rho 1385 from rfl]
    have hb : pmBit 86 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 86 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 87 = rho 1385 from rfl, show canon2Flag rho 88 = rho 1385 from rfl]
    have hb : pmBit 87 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 87 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 88 = rho 1385 from rfl, show canon2Flag rho 89 = rho 1385 from rfl]
    have hb : pmBit 88 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 88 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 89 = rho 1385 from rfl, show canon2Flag rho 90 = rho 1385 from rfl]
    have hb : pmBit 89 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 89 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 90 = rho 1385 from rfl, show canon2Flag rho 91 = rho 1385 from rfl]
    have hb : pmBit 90 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 90 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 91 = rho 1385 from rfl, show canon2Flag rho 92 = rho 1385 from rfl]
    have hb : pmBit 91 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 91 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 92 = rho 1385 from rfl, show canon2Flag rho 93 = rho 1384 from rfl]
    have hb : pmBit 92 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 92 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1885
  · rw [show canon2Flag rho 93 = rho 1384 from rfl, show canon2Flag rho 94 = rho 1384 from rfl]
    have hb : pmBit 93 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 93 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 94 = rho 1384 from rfl, show canon2Flag rho 95 = rho 1383 from rfl]
    have hb : pmBit 94 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 94 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1884
  · rw [show canon2Flag rho 95 = rho 1383 from rfl, show canon2Flag rho 96 = rho 1382 from rfl]
    have hb : pmBit 95 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 95 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1883

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
