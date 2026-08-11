import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1CompareChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_compare_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 48 ≤ j → j < 64 → pmBit j = false → (canon1Bits rho)[j]! * (1 - (canon1Bits rho)[j]! - canon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1493, r1494, r1495, r1496, r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1493 at r1493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1494 at r1494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1495 at r1495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1496 at r1496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1497 at r1497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1498 at r1498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1499 at r1499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1500 at r1500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1501 at r1501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1502 at r1502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1503 at r1503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1504 at r1504
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 48 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 49 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 50 = rho 1048 from rfl]
    linear_combination r1504
  · erw [canon1Bits_get rho 50 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 51 = rho 1048 from rfl]
    linear_combination r1503
  · erw [canon1Bits_get rho 51 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 52 = rho 1048 from rfl]
    linear_combination r1502
  · have hb : pmBit 52 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 53 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 54 = rho 1047 from rfl]
    linear_combination r1501
  · erw [canon1Bits_get rho 54 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 55 = rho 1047 from rfl]
    linear_combination r1500
  · erw [canon1Bits_get rho 55 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 56 = rho 1047 from rfl]
    linear_combination r1499
  · erw [canon1Bits_get rho 56 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 57 = rho 1047 from rfl]
    linear_combination r1498
  · have hb : pmBit 57 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 58 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 59 = rho 1046 from rfl]
    linear_combination r1497
  · have hb : pmBit 59 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 60 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 61 = rho 1045 from rfl]
    linear_combination r1496
  · erw [canon1Bits_get rho 61 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 62 = rho 1045 from rfl]
    linear_combination r1495
  · erw [canon1Bits_get rho 62 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 63 = rho 1045 from rfl]
    linear_combination r1494
  · erw [canon1Bits_get rho 63 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 64 = rho 1045 from rfl]
    linear_combination r1493

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
