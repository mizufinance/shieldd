import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1TrueChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_flag_step_chunk8 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 128 ≤ m → m < 144 → canon1Flag rho m = trueFactor (canon1Bits rho) m * canon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1353, r1354, r1355, r1356, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1353 at r1353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1354 at r1354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1355 at r1355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1356 at r1356
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon1Flag rho 128 = rho 1021 from rfl, show canon1Flag rho 129 = rho 1020 from rfl]
    have hb : pmBit 128 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 128 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1356
  · rw [show canon1Flag rho 129 = rho 1020 from rfl, show canon1Flag rho 130 = rho 1020 from rfl]
    have hb : pmBit 129 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 129 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 130 = rho 1020 from rfl, show canon1Flag rho 131 = rho 1020 from rfl]
    have hb : pmBit 130 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 130 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 131 = rho 1020 from rfl, show canon1Flag rho 132 = rho 1020 from rfl]
    have hb : pmBit 131 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 131 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 132 = rho 1020 from rfl, show canon1Flag rho 133 = rho 1020 from rfl]
    have hb : pmBit 132 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 132 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 133 = rho 1020 from rfl, show canon1Flag rho 134 = rho 1020 from rfl]
    have hb : pmBit 133 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 133 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 134 = rho 1020 from rfl, show canon1Flag rho 135 = rho 1020 from rfl]
    have hb : pmBit 134 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 134 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 135 = rho 1020 from rfl, show canon1Flag rho 136 = rho 1020 from rfl]
    have hb : pmBit 135 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 135 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 136 = rho 1020 from rfl, show canon1Flag rho 137 = rho 1020 from rfl]
    have hb : pmBit 136 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 136 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 137 = rho 1020 from rfl, show canon1Flag rho 138 = rho 1020 from rfl]
    have hb : pmBit 137 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 137 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 138 = rho 1020 from rfl, show canon1Flag rho 139 = rho 1020 from rfl]
    have hb : pmBit 138 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 138 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 139 = rho 1020 from rfl, show canon1Flag rho 140 = rho 1020 from rfl]
    have hb : pmBit 139 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 139 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 140 = rho 1020 from rfl, show canon1Flag rho 141 = rho 1019 from rfl]
    have hb : pmBit 140 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 140 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1355
  · rw [show canon1Flag rho 141 = rho 1019 from rfl, show canon1Flag rho 142 = rho 1018 from rfl]
    have hb : pmBit 141 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 141 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1354
  · rw [show canon1Flag rho 142 = rho 1018 from rfl, show canon1Flag rho 143 = rho 1018 from rfl]
    have hb : pmBit 142 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 142 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 143 = rho 1018 from rfl, show canon1Flag rho 144 = rho 1017 from rfl]
    have hb : pmBit 143 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 143 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1353

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
