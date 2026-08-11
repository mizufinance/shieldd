import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1True

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_compare_chunk0 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 0 ≤ j → j < 16 → pmBit j = false → (canon1Bits rho)[j]! * (1 - (canon1Bits rho)[j]! - canon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p19,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart19 at p19
  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548, r1549, r1550, r1551, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1536 at r1536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1537 at r1537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1538 at r1538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1539 at r1539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1540 at r1540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1541 at r1541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1542 at r1542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1543 at r1543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1544 at r1544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1545 at r1545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1546 at r1546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1547 at r1547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1548 at r1548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1549 at r1549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1550 at r1550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1551 at r1551
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon1Bits_get rho 0 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 1 = rho 1050 from rfl]
    linear_combination r1551
  · erw [canon1Bits_get rho 1 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 2 = rho 1050 from rfl]
    linear_combination r1550
  · erw [canon1Bits_get rho 2 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 3 = rho 1050 from rfl]
    linear_combination r1549
  · erw [canon1Bits_get rho 3 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 4 = rho 1050 from rfl]
    linear_combination r1548
  · erw [canon1Bits_get rho 4 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 5 = rho 1050 from rfl]
    linear_combination r1547
  · erw [canon1Bits_get rho 5 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 6 = rho 1050 from rfl]
    linear_combination r1546
  · erw [canon1Bits_get rho 6 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 7 = rho 1050 from rfl]
    linear_combination r1545
  · erw [canon1Bits_get rho 7 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 8 = rho 1050 from rfl]
    linear_combination r1544
  · erw [canon1Bits_get rho 8 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 9 = rho 1050 from rfl]
    linear_combination r1543
  · erw [canon1Bits_get rho 9 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 10 = rho 1050 from rfl]
    linear_combination r1542
  · erw [canon1Bits_get rho 10 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 11 = rho 1050 from rfl]
    linear_combination r1541
  · erw [canon1Bits_get rho 11 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 12 = rho 1050 from rfl]
    linear_combination r1540
  · erw [canon1Bits_get rho 12 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 13 = rho 1050 from rfl]
    linear_combination r1539
  · erw [canon1Bits_get rho 13 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 14 = rho 1050 from rfl]
    linear_combination r1538
  · erw [canon1Bits_get rho 14 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 15 = rho 1050 from rfl]
    linear_combination r1537
  · erw [canon1Bits_get rho 15 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 16 = rho 1050 from rfl]
    linear_combination r1536

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
