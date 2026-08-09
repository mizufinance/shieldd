import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk13 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 208 ≤ m → m < 224 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1821, r1822, r1823, r1824, r1825, r1826, r1827, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1821 at r1821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1822 at r1822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1823 at r1823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1824 at r1824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1825 at r1825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1826 at r1826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1827 at r1827
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 208 = rho 1327 from rfl, show canon2Flag rho 209 = rho 1327 from rfl]
    have hb : pmBit 208 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 208 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 209 = rho 1327 from rfl, show canon2Flag rho 210 = rho 1327 from rfl]
    have hb : pmBit 209 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 209 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 210 = rho 1327 from rfl, show canon2Flag rho 211 = rho 1326 from rfl]
    have hb : pmBit 210 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 210 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1827
  · rw [show canon2Flag rho 211 = rho 1326 from rfl, show canon2Flag rho 212 = rho 1325 from rfl]
    have hb : pmBit 211 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 211 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1826
  · rw [show canon2Flag rho 212 = rho 1325 from rfl, show canon2Flag rho 213 = rho 1325 from rfl]
    have hb : pmBit 212 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 212 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 213 = rho 1325 from rfl, show canon2Flag rho 214 = rho 1324 from rfl]
    have hb : pmBit 213 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 213 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1825
  · rw [show canon2Flag rho 214 = rho 1324 from rfl, show canon2Flag rho 215 = rho 1324 from rfl]
    have hb : pmBit 214 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 214 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 215 = rho 1324 from rfl, show canon2Flag rho 216 = rho 1324 from rfl]
    have hb : pmBit 215 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 215 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 216 = rho 1324 from rfl, show canon2Flag rho 217 = rho 1324 from rfl]
    have hb : pmBit 216 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 216 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 217 = rho 1324 from rfl, show canon2Flag rho 218 = rho 1323 from rfl]
    have hb : pmBit 217 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 217 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1824
  · rw [show canon2Flag rho 218 = rho 1323 from rfl, show canon2Flag rho 219 = rho 1323 from rfl]
    have hb : pmBit 218 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 218 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 219 = rho 1323 from rfl, show canon2Flag rho 220 = rho 1322 from rfl]
    have hb : pmBit 219 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 219 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1823
  · rw [show canon2Flag rho 220 = rho 1322 from rfl, show canon2Flag rho 221 = rho 1321 from rfl]
    have hb : pmBit 220 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 220 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1822
  · rw [show canon2Flag rho 221 = rho 1321 from rfl, show canon2Flag rho 222 = rho 1321 from rfl]
    have hb : pmBit 221 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 221 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 222 = rho 1321 from rfl, show canon2Flag rho 223 = rho 1321 from rfl]
    have hb : pmBit 222 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 222 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 223 = rho 1321 from rfl, show canon2Flag rho 224 = rho 1320 from rfl]
    have hb : pmBit 223 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 223 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1821

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
