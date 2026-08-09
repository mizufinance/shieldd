import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1CompareChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_compare_chunk13 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 208 ≤ j → j < 224 → pmBit j = false → (canon1Bits rho)[j]! * (1 - (canon1Bits rho)[j]! - canon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1399, r1400, r1401, r1402, r1403, r1404, r1405, r1406, r1407, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1399 at r1399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1400 at r1400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1401 at r1401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1402 at r1402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1403 at r1403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1404 at r1404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1405 at r1405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1406 at r1406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1407 at r1407
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon1Bits_get rho 208 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 209 = rho 986 from rfl]
    linear_combination r1407
  · erw [canon1Bits_get rho 209 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 210 = rho 986 from rfl]
    linear_combination r1406
  · have hb : pmBit 210 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 211 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 212 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 213 = rho 984 from rfl]
    linear_combination r1405
  · have hb : pmBit 213 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 214 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 215 = rho 983 from rfl]
    linear_combination r1404
  · erw [canon1Bits_get rho 215 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 216 = rho 983 from rfl]
    linear_combination r1403
  · erw [canon1Bits_get rho 216 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 217 = rho 983 from rfl]
    linear_combination r1402
  · have hb : pmBit 217 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 218 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 219 = rho 982 from rfl]
    linear_combination r1401
  · have hb : pmBit 219 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 220 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon1Bits_get rho 221 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 222 = rho 980 from rfl]
    linear_combination r1400
  · erw [canon1Bits_get rho 222 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon1Flag rho 223 = rho 980 from rfl]
    linear_combination r1399
  · have hb : pmBit 223 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
