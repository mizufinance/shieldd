import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk8 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 128 ≤ m → m < 144 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1859, r1860, r1861, r1862, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1859 at r1859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1860 at r1860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1861 at r1861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1862 at r1862
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 128 = rho 1362 from rfl, show canon2Flag rho 129 = rho 1361 from rfl]
    have hb : pmBit 128 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 128 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1862
  · rw [show canon2Flag rho 129 = rho 1361 from rfl, show canon2Flag rho 130 = rho 1361 from rfl]
    have hb : pmBit 129 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 129 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 130 = rho 1361 from rfl, show canon2Flag rho 131 = rho 1361 from rfl]
    have hb : pmBit 130 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 130 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 131 = rho 1361 from rfl, show canon2Flag rho 132 = rho 1361 from rfl]
    have hb : pmBit 131 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 131 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 132 = rho 1361 from rfl, show canon2Flag rho 133 = rho 1361 from rfl]
    have hb : pmBit 132 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 132 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 133 = rho 1361 from rfl, show canon2Flag rho 134 = rho 1361 from rfl]
    have hb : pmBit 133 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 133 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 134 = rho 1361 from rfl, show canon2Flag rho 135 = rho 1361 from rfl]
    have hb : pmBit 134 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 134 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 135 = rho 1361 from rfl, show canon2Flag rho 136 = rho 1361 from rfl]
    have hb : pmBit 135 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 135 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 136 = rho 1361 from rfl, show canon2Flag rho 137 = rho 1361 from rfl]
    have hb : pmBit 136 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 136 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 137 = rho 1361 from rfl, show canon2Flag rho 138 = rho 1361 from rfl]
    have hb : pmBit 137 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 137 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 138 = rho 1361 from rfl, show canon2Flag rho 139 = rho 1361 from rfl]
    have hb : pmBit 138 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 138 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 139 = rho 1361 from rfl, show canon2Flag rho 140 = rho 1361 from rfl]
    have hb : pmBit 139 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 139 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 140 = rho 1361 from rfl, show canon2Flag rho 141 = rho 1360 from rfl]
    have hb : pmBit 140 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 140 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1861
  · rw [show canon2Flag rho 141 = rho 1360 from rfl, show canon2Flag rho 142 = rho 1359 from rfl]
    have hb : pmBit 141 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 141 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1860
  · rw [show canon2Flag rho 142 = rho 1359 from rfl, show canon2Flag rho 143 = rho 1359 from rfl]
    have hb : pmBit 142 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 142 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 143 = rho 1359 from rfl, show canon2Flag rho 144 = rho 1358 from rfl]
    have hb : pmBit 143 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 143 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1859

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
