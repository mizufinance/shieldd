import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1TrueChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_flag_step_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 112 ≤ m → m < 128 → canon1Flag rho m = trueFactor (canon1Bits rho) m * canon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1357, r1358, r1359⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart17 at p17
  rcases p17 with ⟨r1360, r1361, r1362, r1363, r1364, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1357 at r1357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1358 at r1358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1359 at r1359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1360 at r1360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1361 at r1361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1362 at r1362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1363 at r1363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1364 at r1364
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon1Flag rho 112 = rho 1029 from rfl, show canon1Flag rho 113 = rho 1029 from rfl]
    have hb : pmBit 112 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 112 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 113 = rho 1029 from rfl, show canon1Flag rho 114 = rho 1028 from rfl]
    have hb : pmBit 113 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 113 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1364
  · rw [show canon1Flag rho 114 = rho 1028 from rfl, show canon1Flag rho 115 = rho 1028 from rfl]
    have hb : pmBit 114 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 114 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 115 = rho 1028 from rfl, show canon1Flag rho 116 = rho 1027 from rfl]
    have hb : pmBit 115 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 115 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1363
  · rw [show canon1Flag rho 116 = rho 1027 from rfl, show canon1Flag rho 117 = rho 1027 from rfl]
    have hb : pmBit 116 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 116 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 117 = rho 1027 from rfl, show canon1Flag rho 118 = rho 1026 from rfl]
    have hb : pmBit 117 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 117 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1362
  · rw [show canon1Flag rho 118 = rho 1026 from rfl, show canon1Flag rho 119 = rho 1026 from rfl]
    have hb : pmBit 118 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 118 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 119 = rho 1026 from rfl, show canon1Flag rho 120 = rho 1025 from rfl]
    have hb : pmBit 119 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 119 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1361
  · rw [show canon1Flag rho 120 = rho 1025 from rfl, show canon1Flag rho 121 = rho 1024 from rfl]
    have hb : pmBit 120 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 120 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1360
  · rw [show canon1Flag rho 121 = rho 1024 from rfl, show canon1Flag rho 122 = rho 1024 from rfl]
    have hb : pmBit 121 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 121 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 122 = rho 1024 from rfl, show canon1Flag rho 123 = rho 1024 from rfl]
    have hb : pmBit 122 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 122 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 123 = rho 1024 from rfl, show canon1Flag rho 124 = rho 1023 from rfl]
    have hb : pmBit 123 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 123 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1359
  · rw [show canon1Flag rho 124 = rho 1023 from rfl, show canon1Flag rho 125 = rho 1022 from rfl]
    have hb : pmBit 124 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 124 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1358
  · rw [show canon1Flag rho 125 = rho 1022 from rfl, show canon1Flag rho 126 = rho 1022 from rfl]
    have hb : pmBit 125 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 125 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 126 = rho 1022 from rfl, show canon1Flag rho 127 = rho 1021 from rfl]
    have hb : pmBit 126 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 126 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1357
  · rw [show canon1Flag rho 127 = rho 1021 from rfl, show canon1Flag rho 128 = rho 1021 from rfl]
    have hb : pmBit 127 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 127 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
