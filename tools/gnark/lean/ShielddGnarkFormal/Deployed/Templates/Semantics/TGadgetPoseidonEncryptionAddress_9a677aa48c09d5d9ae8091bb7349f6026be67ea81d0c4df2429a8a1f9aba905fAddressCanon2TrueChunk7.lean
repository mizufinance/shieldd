import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 112 ≤ m → m < 128 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1863, r1864, r1865, r1866, r1867, r1868, r1869, r1870, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1863 at r1863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1864 at r1864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1865 at r1865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1866 at r1866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1867 at r1867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1868 at r1868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1869 at r1869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1870 at r1870
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 112 = rho 1370 from rfl, show canon2Flag rho 113 = rho 1370 from rfl]
    have hb : pmBit 112 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 112 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 113 = rho 1370 from rfl, show canon2Flag rho 114 = rho 1369 from rfl]
    have hb : pmBit 113 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 113 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1870
  · rw [show canon2Flag rho 114 = rho 1369 from rfl, show canon2Flag rho 115 = rho 1369 from rfl]
    have hb : pmBit 114 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 114 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 115 = rho 1369 from rfl, show canon2Flag rho 116 = rho 1368 from rfl]
    have hb : pmBit 115 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 115 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1869
  · rw [show canon2Flag rho 116 = rho 1368 from rfl, show canon2Flag rho 117 = rho 1368 from rfl]
    have hb : pmBit 116 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 116 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 117 = rho 1368 from rfl, show canon2Flag rho 118 = rho 1367 from rfl]
    have hb : pmBit 117 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 117 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1868
  · rw [show canon2Flag rho 118 = rho 1367 from rfl, show canon2Flag rho 119 = rho 1367 from rfl]
    have hb : pmBit 118 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 118 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 119 = rho 1367 from rfl, show canon2Flag rho 120 = rho 1366 from rfl]
    have hb : pmBit 119 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 119 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1867
  · rw [show canon2Flag rho 120 = rho 1366 from rfl, show canon2Flag rho 121 = rho 1365 from rfl]
    have hb : pmBit 120 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 120 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1866
  · rw [show canon2Flag rho 121 = rho 1365 from rfl, show canon2Flag rho 122 = rho 1365 from rfl]
    have hb : pmBit 121 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 121 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 122 = rho 1365 from rfl, show canon2Flag rho 123 = rho 1365 from rfl]
    have hb : pmBit 122 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 122 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 123 = rho 1365 from rfl, show canon2Flag rho 124 = rho 1364 from rfl]
    have hb : pmBit 123 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 123 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1865
  · rw [show canon2Flag rho 124 = rho 1364 from rfl, show canon2Flag rho 125 = rho 1363 from rfl]
    have hb : pmBit 124 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 124 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1864
  · rw [show canon2Flag rho 125 = rho 1363 from rfl, show canon2Flag rho 126 = rho 1363 from rfl]
    have hb : pmBit 125 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 125 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 126 = rho 1363 from rfl, show canon2Flag rho 127 = rho 1362 from rfl]
    have hb : pmBit 126 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 126 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1863
  · rw [show canon2Flag rho 127 = rho 1362 from rfl, show canon2Flag rho 128 = rho 1362 from rfl]
    have hb : pmBit 127 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 127 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
