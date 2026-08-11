import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1TrueChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_flag_step_chunk15 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 240 ≤ m → m < 253 → canon1Flag rho m = trueFactor (canon1Bits rho) m * canon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1300, r1301, r1302, r1303, r1304, r1305, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1300 at r1300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1301 at r1301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1302 at r1302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1303 at r1303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1304 at r1304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1305 at r1305
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon1Flag rho 240 = rho 970 from rfl, show canon1Flag rho 241 = rho 969 from rfl]
    have hb : pmBit 240 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 240 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1305
  · rw [show canon1Flag rho 241 = rho 969 from rfl, show canon1Flag rho 242 = rho 968 from rfl]
    have hb : pmBit 241 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 241 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1304
  · rw [show canon1Flag rho 242 = rho 968 from rfl, show canon1Flag rho 243 = rho 968 from rfl]
    have hb : pmBit 242 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 242 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 243 = rho 968 from rfl, show canon1Flag rho 244 = rho 967 from rfl]
    have hb : pmBit 243 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 243 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1303
  · rw [show canon1Flag rho 244 = rho 967 from rfl, show canon1Flag rho 245 = rho 967 from rfl]
    have hb : pmBit 244 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 244 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 245 = rho 967 from rfl, show canon1Flag rho 246 = rho 966 from rfl]
    have hb : pmBit 245 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 245 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1302
  · rw [show canon1Flag rho 246 = rho 966 from rfl, show canon1Flag rho 247 = rho 966 from rfl]
    have hb : pmBit 246 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 246 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 247 = rho 966 from rfl, show canon1Flag rho 248 = rho 965 from rfl]
    have hb : pmBit 247 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 247 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1301
  · rw [show canon1Flag rho 248 = rho 965 from rfl, show canon1Flag rho 249 = rho 965 from rfl]
    have hb : pmBit 248 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 248 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 249 = rho 965 from rfl, show canon1Flag rho 250 = rho 962 from rfl]
    have hb : pmBit 249 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 249 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1300
  · rw [show canon1Flag rho 250 = rho 962 from rfl, show canon1Flag rho 251 = rho 962 from rfl]
    have hb : pmBit 250 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 250 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 251 = rho 962 from rfl, show canon1Flag rho 252 = rho 962 from rfl]
    have hb : pmBit 251 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 251 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 252 = rho 962 from rfl, show canon1Flag rho 253 = 1 from rfl]
    have hb : pmBit 252 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 252 (by omega)]
    simp only [Nat.reduceAdd]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
