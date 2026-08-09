import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk15 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 240 ≤ m → m < 253 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1806, r1807, r1808, r1809, r1810, r1811, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1806 at r1806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1807 at r1807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1808 at r1808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1809 at r1809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1810 at r1810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1811 at r1811
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 240 = rho 1311 from rfl, show canon2Flag rho 241 = rho 1310 from rfl]
    have hb : pmBit 240 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 240 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1811
  · rw [show canon2Flag rho 241 = rho 1310 from rfl, show canon2Flag rho 242 = rho 1309 from rfl]
    have hb : pmBit 241 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 241 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1810
  · rw [show canon2Flag rho 242 = rho 1309 from rfl, show canon2Flag rho 243 = rho 1309 from rfl]
    have hb : pmBit 242 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 242 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 243 = rho 1309 from rfl, show canon2Flag rho 244 = rho 1308 from rfl]
    have hb : pmBit 243 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 243 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1809
  · rw [show canon2Flag rho 244 = rho 1308 from rfl, show canon2Flag rho 245 = rho 1308 from rfl]
    have hb : pmBit 244 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 244 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 245 = rho 1308 from rfl, show canon2Flag rho 246 = rho 1307 from rfl]
    have hb : pmBit 245 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 245 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1808
  · rw [show canon2Flag rho 246 = rho 1307 from rfl, show canon2Flag rho 247 = rho 1307 from rfl]
    have hb : pmBit 246 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 246 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 247 = rho 1307 from rfl, show canon2Flag rho 248 = rho 1306 from rfl]
    have hb : pmBit 247 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 247 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1807
  · rw [show canon2Flag rho 248 = rho 1306 from rfl, show canon2Flag rho 249 = rho 1306 from rfl]
    have hb : pmBit 248 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 248 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 249 = rho 1306 from rfl, show canon2Flag rho 250 = rho 1303 from rfl]
    have hb : pmBit 249 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 249 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1806
  · rw [show canon2Flag rho 250 = rho 1303 from rfl, show canon2Flag rho 251 = rho 1303 from rfl]
    have hb : pmBit 250 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 250 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 251 = rho 1303 from rfl, show canon2Flag rho 252 = rho 1303 from rfl]
    have hb : pmBit 251 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 251 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 252 = rho 1303 from rfl, show canon2Flag rho 253 = 1 from rfl]
    have hb : pmBit 252 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 252 (by omega)]
    simp only [Nat.reduceAdd]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
