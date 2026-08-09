import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1TrueChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_flag_step_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 192 ≤ m → m < 208 → canon1Flag rho m = trueFactor (canon1Bits rho) m * canon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1322, r1323, r1324, r1325, r1326, r1327, r1328, r1329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1322 at r1322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1323 at r1323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1324 at r1324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1325 at r1325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1326 at r1326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1327 at r1327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1328 at r1328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1329 at r1329
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon1Flag rho 192 = rho 994 from rfl, show canon1Flag rho 193 = rho 994 from rfl]
    have hb : pmBit 192 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 192 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 193 = rho 994 from rfl, show canon1Flag rho 194 = rho 993 from rfl]
    have hb : pmBit 193 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 193 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1329
  · rw [show canon1Flag rho 194 = rho 993 from rfl, show canon1Flag rho 195 = rho 992 from rfl]
    have hb : pmBit 194 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 194 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1328
  · rw [show canon1Flag rho 195 = rho 992 from rfl, show canon1Flag rho 196 = rho 992 from rfl]
    have hb : pmBit 195 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 195 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 196 = rho 992 from rfl, show canon1Flag rho 197 = rho 991 from rfl]
    have hb : pmBit 196 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 196 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1327
  · rw [show canon1Flag rho 197 = rho 991 from rfl, show canon1Flag rho 198 = rho 991 from rfl]
    have hb : pmBit 197 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 197 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 198 = rho 991 from rfl, show canon1Flag rho 199 = rho 990 from rfl]
    have hb : pmBit 198 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 198 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1326
  · rw [show canon1Flag rho 199 = rho 990 from rfl, show canon1Flag rho 200 = rho 990 from rfl]
    have hb : pmBit 199 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 199 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 200 = rho 990 from rfl, show canon1Flag rho 201 = rho 989 from rfl]
    have hb : pmBit 200 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 200 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1325
  · rw [show canon1Flag rho 201 = rho 989 from rfl, show canon1Flag rho 202 = rho 989 from rfl]
    have hb : pmBit 201 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 201 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 202 = rho 989 from rfl, show canon1Flag rho 203 = rho 988 from rfl]
    have hb : pmBit 202 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 202 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1324
  · rw [show canon1Flag rho 203 = rho 988 from rfl, show canon1Flag rho 204 = rho 988 from rfl]
    have hb : pmBit 203 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 203 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 204 = rho 988 from rfl, show canon1Flag rho 205 = rho 988 from rfl]
    have hb : pmBit 204 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 204 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 205 = rho 988 from rfl, show canon1Flag rho 206 = rho 987 from rfl]
    have hb : pmBit 205 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 205 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1323
  · rw [show canon1Flag rho 206 = rho 987 from rfl, show canon1Flag rho 207 = rho 987 from rfl]
    have hb : pmBit 206 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 206 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 207 = rho 987 from rfl, show canon1Flag rho 208 = rho 986 from rfl]
    have hb : pmBit 207 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 207 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1322

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
