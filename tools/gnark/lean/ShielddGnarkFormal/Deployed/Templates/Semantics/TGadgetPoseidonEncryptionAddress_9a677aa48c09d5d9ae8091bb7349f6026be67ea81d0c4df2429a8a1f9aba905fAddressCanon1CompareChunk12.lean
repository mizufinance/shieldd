import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1CompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_compare_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (canon1Bits rho)[j]! * (1 - (canon1Bits rho)[j]! - canon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1408 at r1408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1409 at r1409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1410 at r1410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1411 at r1411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1412 at r1412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1413 at r1413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1414 at r1414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1415 at r1415
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon1Bits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 193 = rho 994 from rfl]
    linear_combination r1415
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 196 = rho 992 from rfl]
    linear_combination r1414
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 198 = rho 991 from rfl]
    linear_combination r1413
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 200 = rho 990 from rfl]
    linear_combination r1412
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 202 = rho 989 from rfl]
    linear_combination r1411
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 204 = rho 988 from rfl]
    linear_combination r1410
  · erw [canon1Bits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 205 = rho 988 from rfl]
    linear_combination r1409
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 207 = rho 987 from rfl]
    linear_combination r1408
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
