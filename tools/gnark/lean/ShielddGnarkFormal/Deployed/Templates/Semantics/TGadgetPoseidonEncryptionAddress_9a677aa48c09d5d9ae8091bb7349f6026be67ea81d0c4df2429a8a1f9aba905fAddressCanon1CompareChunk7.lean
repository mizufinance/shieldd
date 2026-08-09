import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1CompareChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_compare_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 112 ≤ j → j < 128 → pmBit j = false → (canon1Bits rho)[j]! * (1 - (canon1Bits rho)[j]! - canon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r1453, r1454, r1455, r1456, r1457, r1458, r1459, r1460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1453 at r1453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1454 at r1454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1455 at r1455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1456 at r1456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1457 at r1457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1458 at r1458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1459 at r1459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1460 at r1460
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon1Bits_get rho 112 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 113 = rho 1029 from rfl]
    linear_combination r1460
  · have hb : pmBit 113 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 114 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 115 = rho 1028 from rfl]
    linear_combination r1459
  · have hb : pmBit 115 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 116 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 117 = rho 1027 from rfl]
    linear_combination r1458
  · have hb : pmBit 117 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 118 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 119 = rho 1026 from rfl]
    linear_combination r1457
  · have hb : pmBit 119 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 120 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 121 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 122 = rho 1024 from rfl]
    linear_combination r1456
  · erw [canon1Bits_get rho 122 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 123 = rho 1024 from rfl]
    linear_combination r1455
  · have hb : pmBit 123 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 124 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 125 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 126 = rho 1022 from rfl]
    linear_combination r1454
  · have hb : pmBit 126 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 127 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 128 = rho 1021 from rfl]
    linear_combination r1453

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
