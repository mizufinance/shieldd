import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1CompareChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_compare_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 80 ≤ j → j < 96 → pmBit j = false → (canon1Bits rho)[j]! * (1 - (canon1Bits rho)[j]! - canon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1465, r1466, r1467, r1468, r1469, r1470, r1471, r1472, r1473, r1474, r1475, r1476, r1477, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1465 at r1465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1466 at r1466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1467 at r1467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1468 at r1468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1469 at r1469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1470 at r1470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1471 at r1471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1472 at r1472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1473 at r1473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1474 at r1474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1475 at r1475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1476 at r1476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1477 at r1477
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon1Bits_get rho 80 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 81 = rho 1044 from rfl]
    linear_combination r1477
  · erw [canon1Bits_get rho 81 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 82 = rho 1044 from rfl]
    linear_combination r1476
  · erw [canon1Bits_get rho 82 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 83 = rho 1044 from rfl]
    linear_combination r1475
  · erw [canon1Bits_get rho 83 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 84 = rho 1044 from rfl]
    linear_combination r1474
  · erw [canon1Bits_get rho 84 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 85 = rho 1044 from rfl]
    linear_combination r1473
  · erw [canon1Bits_get rho 85 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 86 = rho 1044 from rfl]
    linear_combination r1472
  · erw [canon1Bits_get rho 86 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 87 = rho 1044 from rfl]
    linear_combination r1471
  · erw [canon1Bits_get rho 87 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 88 = rho 1044 from rfl]
    linear_combination r1470
  · erw [canon1Bits_get rho 88 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 89 = rho 1044 from rfl]
    linear_combination r1469
  · erw [canon1Bits_get rho 89 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 90 = rho 1044 from rfl]
    linear_combination r1468
  · erw [canon1Bits_get rho 90 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 91 = rho 1044 from rfl]
    linear_combination r1467
  · erw [canon1Bits_get rho 91 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 92 = rho 1044 from rfl]
    linear_combination r1466
  · have hb : pmBit 92 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 93 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 94 = rho 1043 from rfl]
    linear_combination r1465
  · have hb : pmBit 94 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 95 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
