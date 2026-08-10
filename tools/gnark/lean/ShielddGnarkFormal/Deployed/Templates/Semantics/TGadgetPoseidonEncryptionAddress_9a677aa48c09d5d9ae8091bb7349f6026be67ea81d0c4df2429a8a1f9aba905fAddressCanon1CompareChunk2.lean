import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1CompareChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_compare_chunk2 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 32 ≤ j → j < 48 → pmBit j = false → (canon1Bits rho)[j]! * (1 - (canon1Bits rho)[j]! - canon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1505, r1506, r1507, r1508, r1509, r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1505 at r1505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1506 at r1506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1507 at r1507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1508 at r1508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1509 at r1509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1510 at r1510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1511 at r1511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1512 at r1512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1513 at r1513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1514 at r1514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1515 at r1515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1516 at r1516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1517 at r1517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1518 at r1518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1519 at r1519
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon1Bits_get rho 32 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 33 = rho 1050 from rfl]
    linear_combination r1519
  · erw [canon1Bits_get rho 33 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 34 = rho 1050 from rfl]
    linear_combination r1518
  · erw [canon1Bits_get rho 34 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 35 = rho 1050 from rfl]
    linear_combination r1517
  · erw [canon1Bits_get rho 35 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 36 = rho 1050 from rfl]
    linear_combination r1516
  · erw [canon1Bits_get rho 36 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 37 = rho 1050 from rfl]
    linear_combination r1515
  · erw [canon1Bits_get rho 37 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 38 = rho 1050 from rfl]
    linear_combination r1514
  · erw [canon1Bits_get rho 38 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 39 = rho 1050 from rfl]
    linear_combination r1513
  · erw [canon1Bits_get rho 39 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 40 = rho 1050 from rfl]
    linear_combination r1512
  · erw [canon1Bits_get rho 40 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 41 = rho 1050 from rfl]
    linear_combination r1511
  · erw [canon1Bits_get rho 41 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 42 = rho 1050 from rfl]
    linear_combination r1510
  · erw [canon1Bits_get rho 42 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 43 = rho 1050 from rfl]
    linear_combination r1509
  · erw [canon1Bits_get rho 43 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 44 = rho 1050 from rfl]
    linear_combination r1508
  · erw [canon1Bits_get rho 44 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 45 = rho 1050 from rfl]
    linear_combination r1507
  · erw [canon1Bits_get rho 45 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 46 = rho 1050 from rfl]
    linear_combination r1506
  · erw [canon1Bits_get rho 46 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 47 = rho 1050 from rfl]
    linear_combination r1505
  · have hb : pmBit 47 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
