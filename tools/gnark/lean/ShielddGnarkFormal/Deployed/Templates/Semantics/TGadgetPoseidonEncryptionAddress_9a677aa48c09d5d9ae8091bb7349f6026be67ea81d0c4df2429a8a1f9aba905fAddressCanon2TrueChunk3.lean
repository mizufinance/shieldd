import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 48 ≤ m → m < 64 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1887, r1888, r1889, r1890, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1887 at r1887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1888 at r1888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1889 at r1889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1890 at r1890
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 48 = rho 1390 from rfl, show canon2Flag rho 49 = rho 1389 from rfl]
    have hb : pmBit 48 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 48 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1890
  · rw [show canon2Flag rho 49 = rho 1389 from rfl, show canon2Flag rho 50 = rho 1389 from rfl]
    have hb : pmBit 49 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 49 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 50 = rho 1389 from rfl, show canon2Flag rho 51 = rho 1389 from rfl]
    have hb : pmBit 50 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 50 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 51 = rho 1389 from rfl, show canon2Flag rho 52 = rho 1389 from rfl]
    have hb : pmBit 51 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 51 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 52 = rho 1389 from rfl, show canon2Flag rho 53 = rho 1388 from rfl]
    have hb : pmBit 52 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 52 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1889
  · rw [show canon2Flag rho 53 = rho 1388 from rfl, show canon2Flag rho 54 = rho 1388 from rfl]
    have hb : pmBit 53 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 53 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 54 = rho 1388 from rfl, show canon2Flag rho 55 = rho 1388 from rfl]
    have hb : pmBit 54 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 54 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 55 = rho 1388 from rfl, show canon2Flag rho 56 = rho 1388 from rfl]
    have hb : pmBit 55 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 55 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 56 = rho 1388 from rfl, show canon2Flag rho 57 = rho 1388 from rfl]
    have hb : pmBit 56 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 56 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 57 = rho 1388 from rfl, show canon2Flag rho 58 = rho 1387 from rfl]
    have hb : pmBit 57 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 57 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1888
  · rw [show canon2Flag rho 58 = rho 1387 from rfl, show canon2Flag rho 59 = rho 1387 from rfl]
    have hb : pmBit 58 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 58 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 59 = rho 1387 from rfl, show canon2Flag rho 60 = rho 1386 from rfl]
    have hb : pmBit 59 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 59 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1887
  · rw [show canon2Flag rho 60 = rho 1386 from rfl, show canon2Flag rho 61 = rho 1386 from rfl]
    have hb : pmBit 60 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 60 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 61 = rho 1386 from rfl, show canon2Flag rho 62 = rho 1386 from rfl]
    have hb : pmBit 61 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 61 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 62 = rho 1386 from rfl, show canon2Flag rho 63 = rho 1386 from rfl]
    have hb : pmBit 62 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 62 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 63 = rho 1386 from rfl, show canon2Flag rho 64 = rho 1386 from rfl]
    have hb : pmBit 63 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 63 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
