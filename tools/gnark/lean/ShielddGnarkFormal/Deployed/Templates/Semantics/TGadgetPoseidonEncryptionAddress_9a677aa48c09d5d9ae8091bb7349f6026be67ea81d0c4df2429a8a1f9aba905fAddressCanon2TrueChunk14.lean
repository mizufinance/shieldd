import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk14 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 224 ≤ m → m < 240 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1812 at r1812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1813 at r1813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1814 at r1814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1815 at r1815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1816 at r1816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1817 at r1817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1818 at r1818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1819 at r1819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1820 at r1820
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 224 = rho 1320 from rfl, show canon2Flag rho 225 = rho 1320 from rfl]
    have hb : pmBit 224 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 224 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 225 = rho 1320 from rfl, show canon2Flag rho 226 = rho 1319 from rfl]
    have hb : pmBit 225 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 225 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1820
  · rw [show canon2Flag rho 226 = rho 1319 from rfl, show canon2Flag rho 227 = rho 1318 from rfl]
    have hb : pmBit 226 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 226 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1819
  · rw [show canon2Flag rho 227 = rho 1318 from rfl, show canon2Flag rho 228 = rho 1317 from rfl]
    have hb : pmBit 227 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 227 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1818
  · rw [show canon2Flag rho 228 = rho 1317 from rfl, show canon2Flag rho 229 = rho 1316 from rfl]
    have hb : pmBit 228 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 228 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1817
  · rw [show canon2Flag rho 229 = rho 1316 from rfl, show canon2Flag rho 230 = rho 1316 from rfl]
    have hb : pmBit 229 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 229 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 230 = rho 1316 from rfl, show canon2Flag rho 231 = rho 1315 from rfl]
    have hb : pmBit 230 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 230 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1816
  · rw [show canon2Flag rho 231 = rho 1315 from rfl, show canon2Flag rho 232 = rho 1315 from rfl]
    have hb : pmBit 231 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 231 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 232 = rho 1315 from rfl, show canon2Flag rho 233 = rho 1314 from rfl]
    have hb : pmBit 232 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 232 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1815
  · rw [show canon2Flag rho 233 = rho 1314 from rfl, show canon2Flag rho 234 = rho 1314 from rfl]
    have hb : pmBit 233 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 233 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 234 = rho 1314 from rfl, show canon2Flag rho 235 = rho 1313 from rfl]
    have hb : pmBit 234 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 234 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1814
  · rw [show canon2Flag rho 235 = rho 1313 from rfl, show canon2Flag rho 236 = rho 1313 from rfl]
    have hb : pmBit 235 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 235 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 236 = rho 1313 from rfl, show canon2Flag rho 237 = rho 1313 from rfl]
    have hb : pmBit 236 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 236 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 237 = rho 1313 from rfl, show canon2Flag rho 238 = rho 1312 from rfl]
    have hb : pmBit 237 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 237 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1813
  · rw [show canon2Flag rho 238 = rho 1312 from rfl, show canon2Flag rho 239 = rho 1311 from rfl]
    have hb : pmBit 238 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 238 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1812
  · rw [show canon2Flag rho 239 = rho 1311 from rfl, show canon2Flag rho 240 = rho 1311 from rfl]
    have hb : pmBit 239 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 239 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
