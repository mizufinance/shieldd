import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 192 ≤ m → m < 208 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1828, r1829, r1830, r1831, r1832, r1833, r1834, r1835, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1828 at r1828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1829 at r1829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1830 at r1830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1831 at r1831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1832 at r1832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1833 at r1833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1834 at r1834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1835 at r1835
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 192 = rho 1335 from rfl, show canon2Flag rho 193 = rho 1335 from rfl]
    have hb : pmBit 192 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 192 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 193 = rho 1335 from rfl, show canon2Flag rho 194 = rho 1334 from rfl]
    have hb : pmBit 193 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 193 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1835
  · rw [show canon2Flag rho 194 = rho 1334 from rfl, show canon2Flag rho 195 = rho 1333 from rfl]
    have hb : pmBit 194 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 194 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1834
  · rw [show canon2Flag rho 195 = rho 1333 from rfl, show canon2Flag rho 196 = rho 1333 from rfl]
    have hb : pmBit 195 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 195 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 196 = rho 1333 from rfl, show canon2Flag rho 197 = rho 1332 from rfl]
    have hb : pmBit 196 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 196 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1833
  · rw [show canon2Flag rho 197 = rho 1332 from rfl, show canon2Flag rho 198 = rho 1332 from rfl]
    have hb : pmBit 197 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 197 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 198 = rho 1332 from rfl, show canon2Flag rho 199 = rho 1331 from rfl]
    have hb : pmBit 198 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 198 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1832
  · rw [show canon2Flag rho 199 = rho 1331 from rfl, show canon2Flag rho 200 = rho 1331 from rfl]
    have hb : pmBit 199 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 199 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 200 = rho 1331 from rfl, show canon2Flag rho 201 = rho 1330 from rfl]
    have hb : pmBit 200 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 200 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1831
  · rw [show canon2Flag rho 201 = rho 1330 from rfl, show canon2Flag rho 202 = rho 1330 from rfl]
    have hb : pmBit 201 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 201 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 202 = rho 1330 from rfl, show canon2Flag rho 203 = rho 1329 from rfl]
    have hb : pmBit 202 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 202 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1830
  · rw [show canon2Flag rho 203 = rho 1329 from rfl, show canon2Flag rho 204 = rho 1329 from rfl]
    have hb : pmBit 203 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 203 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 204 = rho 1329 from rfl, show canon2Flag rho 205 = rho 1329 from rfl]
    have hb : pmBit 204 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 204 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 205 = rho 1329 from rfl, show canon2Flag rho 206 = rho 1328 from rfl]
    have hb : pmBit 205 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 205 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1829
  · rw [show canon2Flag rho 206 = rho 1328 from rfl, show canon2Flag rho 207 = rho 1328 from rfl]
    have hb : pmBit 206 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 206 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 207 = rho 1328 from rfl, show canon2Flag rho 208 = rho 1327 from rfl]
    have hb : pmBit 207 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 207 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1828

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
