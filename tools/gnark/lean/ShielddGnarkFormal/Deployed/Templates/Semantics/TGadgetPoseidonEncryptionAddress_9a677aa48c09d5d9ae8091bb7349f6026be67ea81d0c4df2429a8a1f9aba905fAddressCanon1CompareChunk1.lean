import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1CompareChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_compare_chunk1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 16 ≤ j → j < 32 → pmBit j = false → (canon1Bits rho)[j]! * (1 - (canon1Bits rho)[j]! - canon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p19,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart19 at p19
  rcases p19 with ⟨r1520, r1521, r1522, r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1520 at r1520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1521 at r1521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1522 at r1522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1523 at r1523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1524 at r1524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1525 at r1525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1526 at r1526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1527 at r1527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1528 at r1528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1529 at r1529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1530 at r1530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1531 at r1531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1532 at r1532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1533 at r1533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1534 at r1534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1535 at r1535
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon1Bits_get rho 16 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 17 = rho 1050 from rfl]
    linear_combination r1535
  · erw [canon1Bits_get rho 17 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 18 = rho 1050 from rfl]
    linear_combination r1534
  · erw [canon1Bits_get rho 18 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 19 = rho 1050 from rfl]
    linear_combination r1533
  · erw [canon1Bits_get rho 19 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 20 = rho 1050 from rfl]
    linear_combination r1532
  · erw [canon1Bits_get rho 20 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 21 = rho 1050 from rfl]
    linear_combination r1531
  · erw [canon1Bits_get rho 21 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 22 = rho 1050 from rfl]
    linear_combination r1530
  · erw [canon1Bits_get rho 22 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 23 = rho 1050 from rfl]
    linear_combination r1529
  · erw [canon1Bits_get rho 23 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 24 = rho 1050 from rfl]
    linear_combination r1528
  · erw [canon1Bits_get rho 24 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 25 = rho 1050 from rfl]
    linear_combination r1527
  · erw [canon1Bits_get rho 25 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 26 = rho 1050 from rfl]
    linear_combination r1526
  · erw [canon1Bits_get rho 26 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 27 = rho 1050 from rfl]
    linear_combination r1525
  · erw [canon1Bits_get rho 27 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 28 = rho 1050 from rfl]
    linear_combination r1524
  · erw [canon1Bits_get rho 28 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 29 = rho 1050 from rfl]
    linear_combination r1523
  · erw [canon1Bits_get rho 29 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 30 = rho 1050 from rfl]
    linear_combination r1522
  · erw [canon1Bits_get rho 30 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 31 = rho 1050 from rfl]
    linear_combination r1521
  · erw [canon1Bits_get rho 31 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 32 = rho 1050 from rfl]
    linear_combination r1520

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
