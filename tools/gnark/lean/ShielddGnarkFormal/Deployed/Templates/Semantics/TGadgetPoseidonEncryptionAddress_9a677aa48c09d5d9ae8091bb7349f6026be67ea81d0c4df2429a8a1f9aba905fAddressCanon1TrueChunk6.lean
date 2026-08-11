import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1TrueChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_flag_step_chunk6 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 96 ≤ m → m < 112 → canon1Flag rho m = trueFactor (canon1Bits rho) m * canon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, r1365, r1366, r1367, r1368, r1369, r1370, r1371, r1372, r1373, r1374, r1375, r1376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1365 at r1365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1366 at r1366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1367 at r1367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1368 at r1368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1369 at r1369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1370 at r1370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1371 at r1371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1372 at r1372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1373 at r1373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1374 at r1374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1375 at r1375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1376 at r1376
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon1Flag rho 96 = rho 1041 from rfl, show canon1Flag rho 97 = rho 1041 from rfl]
    have hb : pmBit 96 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 96 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 97 = rho 1041 from rfl, show canon1Flag rho 98 = rho 1040 from rfl]
    have hb : pmBit 97 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 97 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1376
  · rw [show canon1Flag rho 98 = rho 1040 from rfl, show canon1Flag rho 99 = rho 1039 from rfl]
    have hb : pmBit 98 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 98 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1375
  · rw [show canon1Flag rho 99 = rho 1039 from rfl, show canon1Flag rho 100 = rho 1038 from rfl]
    have hb : pmBit 99 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 99 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1374
  · rw [show canon1Flag rho 100 = rho 1038 from rfl, show canon1Flag rho 101 = rho 1037 from rfl]
    have hb : pmBit 100 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 100 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1373
  · rw [show canon1Flag rho 101 = rho 1037 from rfl, show canon1Flag rho 102 = rho 1036 from rfl]
    have hb : pmBit 101 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 101 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1372
  · rw [show canon1Flag rho 102 = rho 1036 from rfl, show canon1Flag rho 103 = rho 1035 from rfl]
    have hb : pmBit 102 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 102 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1371
  · rw [show canon1Flag rho 103 = rho 1035 from rfl, show canon1Flag rho 104 = rho 1034 from rfl]
    have hb : pmBit 103 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 103 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1370
  · rw [show canon1Flag rho 104 = rho 1034 from rfl, show canon1Flag rho 105 = rho 1034 from rfl]
    have hb : pmBit 104 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 104 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 105 = rho 1034 from rfl, show canon1Flag rho 106 = rho 1033 from rfl]
    have hb : pmBit 105 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 105 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1369
  · rw [show canon1Flag rho 106 = rho 1033 from rfl, show canon1Flag rho 107 = rho 1032 from rfl]
    have hb : pmBit 106 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 106 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1368
  · rw [show canon1Flag rho 107 = rho 1032 from rfl, show canon1Flag rho 108 = rho 1032 from rfl]
    have hb : pmBit 107 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 107 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 108 = rho 1032 from rfl, show canon1Flag rho 109 = rho 1031 from rfl]
    have hb : pmBit 108 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 108 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1367
  · rw [show canon1Flag rho 109 = rho 1031 from rfl, show canon1Flag rho 110 = rho 1030 from rfl]
    have hb : pmBit 109 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 109 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1366
  · rw [show canon1Flag rho 110 = rho 1030 from rfl, show canon1Flag rho 111 = rho 1029 from rfl]
    have hb : pmBit 110 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 110 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1365
  · rw [show canon1Flag rho 111 = rho 1029 from rfl, show canon1Flag rho 112 = rho 1029 from rfl]
    have hb : pmBit 111 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 111 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
