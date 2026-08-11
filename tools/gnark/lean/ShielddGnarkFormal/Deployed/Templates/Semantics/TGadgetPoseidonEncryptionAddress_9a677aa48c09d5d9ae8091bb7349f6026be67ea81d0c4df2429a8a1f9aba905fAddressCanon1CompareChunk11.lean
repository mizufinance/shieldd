import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1CompareChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_compare_chunk11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 176 ≤ j → j < 192 → pmBit j = false → (canon1Bits rho)[j]! * (1 - (canon1Bits rho)[j]! - canon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1416, r1417, r1418, r1419, r1420, r1421, r1422, r1423, r1424, r1425, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1416 at r1416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1417 at r1417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1418 at r1418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1419 at r1419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1420 at r1420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1421 at r1421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1422 at r1422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1423 at r1423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1424 at r1424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1425 at r1425
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon1Bits_get rho 176 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 177 = rho 1000 from rfl]
    linear_combination r1425
  · erw [canon1Bits_get rho 177 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 178 = rho 1000 from rfl]
    linear_combination r1424
  · have hb : pmBit 178 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 179 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 180 = rho 999 from rfl]
    linear_combination r1423
  · have hb : pmBit 180 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 181 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 182 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 183 = rho 997 from rfl]
    linear_combination r1422
  · have hb : pmBit 183 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 184 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 185 = rho 996 from rfl]
    linear_combination r1421
  · erw [canon1Bits_get rho 185 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 186 = rho 996 from rfl]
    linear_combination r1420
  · erw [canon1Bits_get rho 186 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 187 = rho 996 from rfl]
    linear_combination r1419
  · erw [canon1Bits_get rho 187 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 188 = rho 996 from rfl]
    linear_combination r1418
  · erw [canon1Bits_get rho 188 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 189 = rho 996 from rfl]
    linear_combination r1417
  · have hb : pmBit 189 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 190 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 191 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 192 = rho 994 from rfl]
    linear_combination r1416

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
