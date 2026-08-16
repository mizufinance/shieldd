import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk9 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 144 ≤ m → m < 160 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, r1850, r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1850 at r1850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1851 at r1851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1852 at r1852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1853 at r1853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1854 at r1854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1855 at r1855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1856 at r1856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1857 at r1857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1858 at r1858
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 144 = rho 1358 from rfl, show canon2Flag rho 145 = rho 1357 from rfl]
    have hb : pmBit 144 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 144 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1858
  · rw [show canon2Flag rho 145 = rho 1357 from rfl, show canon2Flag rho 146 = rho 1356 from rfl]
    have hb : pmBit 145 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 145 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1857
  · rw [show canon2Flag rho 146 = rho 1356 from rfl, show canon2Flag rho 147 = rho 1355 from rfl]
    have hb : pmBit 146 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 146 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1856
  · rw [show canon2Flag rho 147 = rho 1355 from rfl, show canon2Flag rho 148 = rho 1355 from rfl]
    have hb : pmBit 147 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 147 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 148 = rho 1355 from rfl, show canon2Flag rho 149 = rho 1354 from rfl]
    have hb : pmBit 148 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 148 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1855
  · rw [show canon2Flag rho 149 = rho 1354 from rfl, show canon2Flag rho 150 = rho 1353 from rfl]
    have hb : pmBit 149 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 149 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1854
  · rw [show canon2Flag rho 150 = rho 1353 from rfl, show canon2Flag rho 151 = rho 1353 from rfl]
    have hb : pmBit 150 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 150 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 151 = rho 1353 from rfl, show canon2Flag rho 152 = rho 1353 from rfl]
    have hb : pmBit 151 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 151 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 152 = rho 1353 from rfl, show canon2Flag rho 153 = rho 1353 from rfl]
    have hb : pmBit 152 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 152 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 153 = rho 1353 from rfl, show canon2Flag rho 154 = rho 1353 from rfl]
    have hb : pmBit 153 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 153 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 154 = rho 1353 from rfl, show canon2Flag rho 155 = rho 1352 from rfl]
    have hb : pmBit 154 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 154 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1853
  · rw [show canon2Flag rho 155 = rho 1352 from rfl, show canon2Flag rho 156 = rho 1351 from rfl]
    have hb : pmBit 155 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 155 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1852
  · rw [show canon2Flag rho 156 = rho 1351 from rfl, show canon2Flag rho 157 = rho 1350 from rfl]
    have hb : pmBit 156 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 156 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1851
  · rw [show canon2Flag rho 157 = rho 1350 from rfl, show canon2Flag rho 158 = rho 1350 from rfl]
    have hb : pmBit 157 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 157 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 158 = rho 1350 from rfl, show canon2Flag rho 159 = rho 1349 from rfl]
    have hb : pmBit 158 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 158 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1850
  · rw [show canon2Flag rho 159 = rho 1349 from rfl, show canon2Flag rho 160 = rho 1349 from rfl]
    have hb : pmBit 159 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 159 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
