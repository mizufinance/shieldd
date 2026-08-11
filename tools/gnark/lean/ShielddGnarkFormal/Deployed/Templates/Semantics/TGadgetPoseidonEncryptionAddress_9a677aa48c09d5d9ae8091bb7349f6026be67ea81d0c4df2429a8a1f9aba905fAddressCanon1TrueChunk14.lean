import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1TrueChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_flag_step_chunk14 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 224 ≤ m → m < 240 → canon1Flag rho m = trueFactor (canon1Bits rho) m * canon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1306 at r1306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1307 at r1307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1308 at r1308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1309 at r1309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1310 at r1310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1311 at r1311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1312 at r1312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1313 at r1313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1314 at r1314
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon1Flag rho 224 = rho 979 from rfl, show canon1Flag rho 225 = rho 979 from rfl]
    have hb : pmBit 224 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 224 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 225 = rho 979 from rfl, show canon1Flag rho 226 = rho 978 from rfl]
    have hb : pmBit 225 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 225 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1314
  · rw [show canon1Flag rho 226 = rho 978 from rfl, show canon1Flag rho 227 = rho 977 from rfl]
    have hb : pmBit 226 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 226 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1313
  · rw [show canon1Flag rho 227 = rho 977 from rfl, show canon1Flag rho 228 = rho 976 from rfl]
    have hb : pmBit 227 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 227 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1312
  · rw [show canon1Flag rho 228 = rho 976 from rfl, show canon1Flag rho 229 = rho 975 from rfl]
    have hb : pmBit 228 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 228 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1311
  · rw [show canon1Flag rho 229 = rho 975 from rfl, show canon1Flag rho 230 = rho 975 from rfl]
    have hb : pmBit 229 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 229 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 230 = rho 975 from rfl, show canon1Flag rho 231 = rho 974 from rfl]
    have hb : pmBit 230 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 230 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1310
  · rw [show canon1Flag rho 231 = rho 974 from rfl, show canon1Flag rho 232 = rho 974 from rfl]
    have hb : pmBit 231 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 231 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 232 = rho 974 from rfl, show canon1Flag rho 233 = rho 973 from rfl]
    have hb : pmBit 232 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 232 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1309
  · rw [show canon1Flag rho 233 = rho 973 from rfl, show canon1Flag rho 234 = rho 973 from rfl]
    have hb : pmBit 233 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 233 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 234 = rho 973 from rfl, show canon1Flag rho 235 = rho 972 from rfl]
    have hb : pmBit 234 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 234 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1308
  · rw [show canon1Flag rho 235 = rho 972 from rfl, show canon1Flag rho 236 = rho 972 from rfl]
    have hb : pmBit 235 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 235 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 236 = rho 972 from rfl, show canon1Flag rho 237 = rho 972 from rfl]
    have hb : pmBit 236 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 236 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 237 = rho 972 from rfl, show canon1Flag rho 238 = rho 971 from rfl]
    have hb : pmBit 237 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 237 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1307
  · rw [show canon1Flag rho 238 = rho 971 from rfl, show canon1Flag rho 239 = rho 970 from rfl]
    have hb : pmBit 238 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 238 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1306
  · rw [show canon1Flag rho 239 = rho 970 from rfl, show canon1Flag rho 240 = rho 970 from rfl]
    have hb : pmBit 239 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 239 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
