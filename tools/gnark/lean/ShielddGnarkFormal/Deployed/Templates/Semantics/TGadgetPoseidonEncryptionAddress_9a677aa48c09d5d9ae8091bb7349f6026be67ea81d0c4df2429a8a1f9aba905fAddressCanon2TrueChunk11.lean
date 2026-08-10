import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 176 ≤ m → m < 192 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, p23, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1836, r1837, r1838, r1839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart23 at p23
  rcases p23 with ⟨r1840, r1841, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1836 at r1836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1837 at r1837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1838 at r1838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1839 at r1839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1840 at r1840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1841 at r1841
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 176 = rho 1341 from rfl, show canon2Flag rho 177 = rho 1341 from rfl]
    have hb : pmBit 176 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 176 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 177 = rho 1341 from rfl, show canon2Flag rho 178 = rho 1341 from rfl]
    have hb : pmBit 177 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 177 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 178 = rho 1341 from rfl, show canon2Flag rho 179 = rho 1340 from rfl]
    have hb : pmBit 178 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 178 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1841
  · rw [show canon2Flag rho 179 = rho 1340 from rfl, show canon2Flag rho 180 = rho 1340 from rfl]
    have hb : pmBit 179 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 179 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 180 = rho 1340 from rfl, show canon2Flag rho 181 = rho 1339 from rfl]
    have hb : pmBit 180 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 180 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1840
  · rw [show canon2Flag rho 181 = rho 1339 from rfl, show canon2Flag rho 182 = rho 1338 from rfl]
    have hb : pmBit 181 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 181 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1839
  · rw [show canon2Flag rho 182 = rho 1338 from rfl, show canon2Flag rho 183 = rho 1338 from rfl]
    have hb : pmBit 182 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 182 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 183 = rho 1338 from rfl, show canon2Flag rho 184 = rho 1337 from rfl]
    have hb : pmBit 183 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 183 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1838
  · rw [show canon2Flag rho 184 = rho 1337 from rfl, show canon2Flag rho 185 = rho 1337 from rfl]
    have hb : pmBit 184 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 184 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 185 = rho 1337 from rfl, show canon2Flag rho 186 = rho 1337 from rfl]
    have hb : pmBit 185 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 185 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 186 = rho 1337 from rfl, show canon2Flag rho 187 = rho 1337 from rfl]
    have hb : pmBit 186 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 186 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 187 = rho 1337 from rfl, show canon2Flag rho 188 = rho 1337 from rfl]
    have hb : pmBit 187 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 187 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 188 = rho 1337 from rfl, show canon2Flag rho 189 = rho 1337 from rfl]
    have hb : pmBit 188 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 188 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 189 = rho 1337 from rfl, show canon2Flag rho 190 = rho 1336 from rfl]
    have hb : pmBit 189 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 189 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1837
  · rw [show canon2Flag rho 190 = rho 1336 from rfl, show canon2Flag rho 191 = rho 1335 from rfl]
    have hb : pmBit 190 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 190 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1836
  · rw [show canon2Flag rho 191 = rho 1335 from rfl, show canon2Flag rho 192 = rho 1335 from rfl]
    have hb : pmBit 191 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 191 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
