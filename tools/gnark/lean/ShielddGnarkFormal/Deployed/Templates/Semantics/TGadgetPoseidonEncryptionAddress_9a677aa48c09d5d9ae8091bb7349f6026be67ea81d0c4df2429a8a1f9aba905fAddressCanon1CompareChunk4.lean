import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1CompareChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_compare_chunk4 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 64 ≤ j → j < 80 → pmBit j = false → (canon1Bits rho)[j]! * (1 - (canon1Bits rho)[j]! - canon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1478, r1479, r1480, r1481, r1482, r1483, r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1478 at r1478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1479 at r1479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1480 at r1480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1481 at r1481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1482 at r1482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1483 at r1483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1484 at r1484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1485 at r1485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1486 at r1486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1487 at r1487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1488 at r1488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1489 at r1489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1490 at r1490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1491 at r1491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1492 at r1492
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 64 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 65 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 66 = rho 1044 from rfl]
    linear_combination r1492
  · erw [canon1Bits_get rho 66 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 67 = rho 1044 from rfl]
    linear_combination r1491
  · erw [canon1Bits_get rho 67 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 68 = rho 1044 from rfl]
    linear_combination r1490
  · erw [canon1Bits_get rho 68 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 69 = rho 1044 from rfl]
    linear_combination r1489
  · erw [canon1Bits_get rho 69 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 70 = rho 1044 from rfl]
    linear_combination r1488
  · erw [canon1Bits_get rho 70 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 71 = rho 1044 from rfl]
    linear_combination r1487
  · erw [canon1Bits_get rho 71 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 72 = rho 1044 from rfl]
    linear_combination r1486
  · erw [canon1Bits_get rho 72 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 73 = rho 1044 from rfl]
    linear_combination r1485
  · erw [canon1Bits_get rho 73 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 74 = rho 1044 from rfl]
    linear_combination r1484
  · erw [canon1Bits_get rho 74 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 75 = rho 1044 from rfl]
    linear_combination r1483
  · erw [canon1Bits_get rho 75 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 76 = rho 1044 from rfl]
    linear_combination r1482
  · erw [canon1Bits_get rho 76 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 77 = rho 1044 from rfl]
    linear_combination r1481
  · erw [canon1Bits_get rho 77 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 78 = rho 1044 from rfl]
    linear_combination r1480
  · erw [canon1Bits_get rho 78 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 79 = rho 1044 from rfl]
    linear_combination r1479
  · erw [canon1Bits_get rho 79 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 80 = rho 1044 from rfl]
    linear_combination r1478

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
