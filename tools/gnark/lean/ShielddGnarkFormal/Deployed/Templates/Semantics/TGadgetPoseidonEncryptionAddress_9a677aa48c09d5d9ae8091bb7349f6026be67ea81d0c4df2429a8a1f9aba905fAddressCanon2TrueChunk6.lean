import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk6 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 96 ≤ m → m < 112 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1871, r1872, r1873, r1874, r1875, r1876, r1877, r1878, r1879, r1880, r1881, r1882, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1871 at r1871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1872 at r1872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1873 at r1873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1874 at r1874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1875 at r1875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1876 at r1876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1877 at r1877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1878 at r1878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1879 at r1879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1880 at r1880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1881 at r1881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1882 at r1882
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 96 = rho 1382 from rfl, show canon2Flag rho 97 = rho 1382 from rfl]
    have hb : pmBit 96 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 96 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 97 = rho 1382 from rfl, show canon2Flag rho 98 = rho 1381 from rfl]
    have hb : pmBit 97 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 97 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1882
  · rw [show canon2Flag rho 98 = rho 1381 from rfl, show canon2Flag rho 99 = rho 1380 from rfl]
    have hb : pmBit 98 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 98 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1881
  · rw [show canon2Flag rho 99 = rho 1380 from rfl, show canon2Flag rho 100 = rho 1379 from rfl]
    have hb : pmBit 99 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 99 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1880
  · rw [show canon2Flag rho 100 = rho 1379 from rfl, show canon2Flag rho 101 = rho 1378 from rfl]
    have hb : pmBit 100 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 100 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1879
  · rw [show canon2Flag rho 101 = rho 1378 from rfl, show canon2Flag rho 102 = rho 1377 from rfl]
    have hb : pmBit 101 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 101 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1878
  · rw [show canon2Flag rho 102 = rho 1377 from rfl, show canon2Flag rho 103 = rho 1376 from rfl]
    have hb : pmBit 102 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 102 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1877
  · rw [show canon2Flag rho 103 = rho 1376 from rfl, show canon2Flag rho 104 = rho 1375 from rfl]
    have hb : pmBit 103 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 103 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1876
  · rw [show canon2Flag rho 104 = rho 1375 from rfl, show canon2Flag rho 105 = rho 1375 from rfl]
    have hb : pmBit 104 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 104 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 105 = rho 1375 from rfl, show canon2Flag rho 106 = rho 1374 from rfl]
    have hb : pmBit 105 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 105 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1875
  · rw [show canon2Flag rho 106 = rho 1374 from rfl, show canon2Flag rho 107 = rho 1373 from rfl]
    have hb : pmBit 106 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 106 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1874
  · rw [show canon2Flag rho 107 = rho 1373 from rfl, show canon2Flag rho 108 = rho 1373 from rfl]
    have hb : pmBit 107 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 107 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 108 = rho 1373 from rfl, show canon2Flag rho 109 = rho 1372 from rfl]
    have hb : pmBit 108 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 108 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1873
  · rw [show canon2Flag rho 109 = rho 1372 from rfl, show canon2Flag rho 110 = rho 1371 from rfl]
    have hb : pmBit 109 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 109 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1872
  · rw [show canon2Flag rho 110 = rho 1371 from rfl, show canon2Flag rho 111 = rho 1370 from rfl]
    have hb : pmBit 110 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 110 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1871
  · rw [show canon2Flag rho 111 = rho 1370 from rfl, show canon2Flag rho 112 = rho 1370 from rfl]
    have hb : pmBit 111 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 111 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
