import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2True

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_compare_chunk0 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 0 ≤ j → j < 16 → pmBit j = false → (canon2Bits rho)[j]! * (1 - (canon2Bits rho)[j]! - canon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2042, r2043, r2044, r2045, r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055, r2056, r2057, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2042 at r2042
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2043 at r2043
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2044 at r2044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2045 at r2045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2046 at r2046
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2047 at r2047
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2048 at r2048
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2049 at r2049
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2050 at r2050
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2051 at r2051
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2052 at r2052
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2053 at r2053
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2054 at r2054
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2055 at r2055
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2056 at r2056
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2057 at r2057
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon2Bits_get rho 0 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 1 = rho 1391 from rfl]
    linear_combination r2057
  · erw [canon2Bits_get rho 1 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 2 = rho 1391 from rfl]
    linear_combination r2056
  · erw [canon2Bits_get rho 2 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 3 = rho 1391 from rfl]
    linear_combination r2055
  · erw [canon2Bits_get rho 3 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 4 = rho 1391 from rfl]
    linear_combination r2054
  · erw [canon2Bits_get rho 4 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 5 = rho 1391 from rfl]
    linear_combination r2053
  · erw [canon2Bits_get rho 5 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 6 = rho 1391 from rfl]
    linear_combination r2052
  · erw [canon2Bits_get rho 6 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 7 = rho 1391 from rfl]
    linear_combination r2051
  · erw [canon2Bits_get rho 7 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 8 = rho 1391 from rfl]
    linear_combination r2050
  · erw [canon2Bits_get rho 8 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 9 = rho 1391 from rfl]
    linear_combination r2049
  · erw [canon2Bits_get rho 9 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 10 = rho 1391 from rfl]
    linear_combination r2048
  · erw [canon2Bits_get rho 10 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 11 = rho 1391 from rfl]
    linear_combination r2047
  · erw [canon2Bits_get rho 11 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 12 = rho 1391 from rfl]
    linear_combination r2046
  · erw [canon2Bits_get rho 12 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 13 = rho 1391 from rfl]
    linear_combination r2045
  · erw [canon2Bits_get rho 13 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 14 = rho 1391 from rfl]
    linear_combination r2044
  · erw [canon2Bits_get rho 14 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 15 = rho 1391 from rfl]
    linear_combination r2043
  · erw [canon2Bits_get rho 15 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 16 = rho 1391 from rfl]
    linear_combination r2042

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
