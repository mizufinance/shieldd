import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1TrueChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_flag_step_chunk9 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 144 ≤ m → m < 160 → canon1Flag rho m = trueFactor (canon1Bits rho) m * canon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1344 at r1344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1345 at r1345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1346 at r1346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1347 at r1347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1348 at r1348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1349 at r1349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1350 at r1350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1351 at r1351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1352 at r1352
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon1Flag rho 144 = rho 1017 from rfl, show canon1Flag rho 145 = rho 1016 from rfl]
    have hb : pmBit 144 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 144 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1352
  · rw [show canon1Flag rho 145 = rho 1016 from rfl, show canon1Flag rho 146 = rho 1015 from rfl]
    have hb : pmBit 145 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 145 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1351
  · rw [show canon1Flag rho 146 = rho 1015 from rfl, show canon1Flag rho 147 = rho 1014 from rfl]
    have hb : pmBit 146 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 146 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1350
  · rw [show canon1Flag rho 147 = rho 1014 from rfl, show canon1Flag rho 148 = rho 1014 from rfl]
    have hb : pmBit 147 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 147 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 148 = rho 1014 from rfl, show canon1Flag rho 149 = rho 1013 from rfl]
    have hb : pmBit 148 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 148 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1349
  · rw [show canon1Flag rho 149 = rho 1013 from rfl, show canon1Flag rho 150 = rho 1012 from rfl]
    have hb : pmBit 149 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 149 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1348
  · rw [show canon1Flag rho 150 = rho 1012 from rfl, show canon1Flag rho 151 = rho 1012 from rfl]
    have hb : pmBit 150 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 150 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 151 = rho 1012 from rfl, show canon1Flag rho 152 = rho 1012 from rfl]
    have hb : pmBit 151 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 151 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 152 = rho 1012 from rfl, show canon1Flag rho 153 = rho 1012 from rfl]
    have hb : pmBit 152 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 152 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 153 = rho 1012 from rfl, show canon1Flag rho 154 = rho 1012 from rfl]
    have hb : pmBit 153 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 153 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 154 = rho 1012 from rfl, show canon1Flag rho 155 = rho 1011 from rfl]
    have hb : pmBit 154 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 154 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1347
  · rw [show canon1Flag rho 155 = rho 1011 from rfl, show canon1Flag rho 156 = rho 1010 from rfl]
    have hb : pmBit 155 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 155 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1346
  · rw [show canon1Flag rho 156 = rho 1010 from rfl, show canon1Flag rho 157 = rho 1009 from rfl]
    have hb : pmBit 156 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 156 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1345
  · rw [show canon1Flag rho 157 = rho 1009 from rfl, show canon1Flag rho 158 = rho 1009 from rfl]
    have hb : pmBit 157 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 157 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 158 = rho 1009 from rfl, show canon1Flag rho 159 = rho 1008 from rfl]
    have hb : pmBit 158 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 158 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1344
  · rw [show canon1Flag rho 159 = rho 1008 from rfl, show canon1Flag rho 160 = rho 1008 from rfl]
    have hb : pmBit 159 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 159 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
