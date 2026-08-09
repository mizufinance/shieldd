import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2CompareChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_compare_chunk13 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 208 ≤ j → j < 224 → pmBit j = false → (canon2Bits rho)[j]! * (1 - (canon2Bits rho)[j]! - canon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912, r1913, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1905 at r1905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1906 at r1906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1907 at r1907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1908 at r1908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1909 at r1909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1910 at r1910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1911 at r1911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1912 at r1912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1913 at r1913
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon2Bits_get rho 208 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 209 = rho 1327 from rfl]
    linear_combination r1913
  · erw [canon2Bits_get rho 209 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 210 = rho 1327 from rfl]
    linear_combination r1912
  · have hb : pmBit 210 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 211 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 212 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 213 = rho 1325 from rfl]
    linear_combination r1911
  · have hb : pmBit 213 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 214 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 215 = rho 1324 from rfl]
    linear_combination r1910
  · erw [canon2Bits_get rho 215 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 216 = rho 1324 from rfl]
    linear_combination r1909
  · erw [canon2Bits_get rho 216 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 217 = rho 1324 from rfl]
    linear_combination r1908
  · have hb : pmBit 217 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 218 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 219 = rho 1323 from rfl]
    linear_combination r1907
  · have hb : pmBit 219 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 220 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 221 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 222 = rho 1321 from rfl]
    linear_combination r1906
  · erw [canon2Bits_get rho 222 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 223 = rho 1321 from rfl]
    linear_combination r1905
  · have hb : pmBit 223 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
