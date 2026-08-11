import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2CompareChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_compare_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 80 ≤ j → j < 96 → pmBit j = false → (canon2Bits rho)[j]! * (1 - (canon2Bits rho)[j]! - canon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1971, r1972, r1973, r1974, r1975, r1976, r1977, r1978, r1979, r1980, r1981, r1982, r1983, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1971 at r1971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1972 at r1972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1973 at r1973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1974 at r1974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1975 at r1975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1976 at r1976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1977 at r1977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1978 at r1978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1979 at r1979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1980 at r1980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1981 at r1981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1982 at r1982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1983 at r1983
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon2Bits_get rho 80 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 81 = rho 1385 from rfl]
    linear_combination r1983
  · erw [canon2Bits_get rho 81 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 82 = rho 1385 from rfl]
    linear_combination r1982
  · erw [canon2Bits_get rho 82 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 83 = rho 1385 from rfl]
    linear_combination r1981
  · erw [canon2Bits_get rho 83 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 84 = rho 1385 from rfl]
    linear_combination r1980
  · erw [canon2Bits_get rho 84 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 85 = rho 1385 from rfl]
    linear_combination r1979
  · erw [canon2Bits_get rho 85 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 86 = rho 1385 from rfl]
    linear_combination r1978
  · erw [canon2Bits_get rho 86 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 87 = rho 1385 from rfl]
    linear_combination r1977
  · erw [canon2Bits_get rho 87 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 88 = rho 1385 from rfl]
    linear_combination r1976
  · erw [canon2Bits_get rho 88 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 89 = rho 1385 from rfl]
    linear_combination r1975
  · erw [canon2Bits_get rho 89 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 90 = rho 1385 from rfl]
    linear_combination r1974
  · erw [canon2Bits_get rho 90 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 91 = rho 1385 from rfl]
    linear_combination r1973
  · erw [canon2Bits_get rho 91 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 92 = rho 1385 from rfl]
    linear_combination r1972
  · have hb : pmBit 92 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 93 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 94 = rho 1384 from rfl]
    linear_combination r1971
  · have hb : pmBit 94 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 95 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
