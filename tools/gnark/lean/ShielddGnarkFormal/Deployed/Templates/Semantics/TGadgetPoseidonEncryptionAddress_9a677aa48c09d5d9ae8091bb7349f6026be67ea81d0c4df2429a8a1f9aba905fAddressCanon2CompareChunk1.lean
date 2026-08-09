import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2CompareChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_compare_chunk1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 16 ≤ j → j < 32 → pmBit j = false → (canon2Bits rho)[j]! * (1 - (canon2Bits rho)[j]! - canon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2026, r2027, r2028, r2029, r2030, r2031, r2032, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2026 at r2026
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2027 at r2027
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2028 at r2028
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2029 at r2029
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2030 at r2030
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2031 at r2031
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2032 at r2032
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2033 at r2033
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2034 at r2034
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2035 at r2035
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2036 at r2036
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2037 at r2037
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2038 at r2038
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2039 at r2039
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2040 at r2040
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2041 at r2041
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon2Bits_get rho 16 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 17 = rho 1391 from rfl]
    linear_combination r2041
  · erw [canon2Bits_get rho 17 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 18 = rho 1391 from rfl]
    linear_combination r2040
  · erw [canon2Bits_get rho 18 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 19 = rho 1391 from rfl]
    linear_combination r2039
  · erw [canon2Bits_get rho 19 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 20 = rho 1391 from rfl]
    linear_combination r2038
  · erw [canon2Bits_get rho 20 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 21 = rho 1391 from rfl]
    linear_combination r2037
  · erw [canon2Bits_get rho 21 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 22 = rho 1391 from rfl]
    linear_combination r2036
  · erw [canon2Bits_get rho 22 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 23 = rho 1391 from rfl]
    linear_combination r2035
  · erw [canon2Bits_get rho 23 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 24 = rho 1391 from rfl]
    linear_combination r2034
  · erw [canon2Bits_get rho 24 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 25 = rho 1391 from rfl]
    linear_combination r2033
  · erw [canon2Bits_get rho 25 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 26 = rho 1391 from rfl]
    linear_combination r2032
  · erw [canon2Bits_get rho 26 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 27 = rho 1391 from rfl]
    linear_combination r2031
  · erw [canon2Bits_get rho 27 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 28 = rho 1391 from rfl]
    linear_combination r2030
  · erw [canon2Bits_get rho 28 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 29 = rho 1391 from rfl]
    linear_combination r2029
  · erw [canon2Bits_get rho 29 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 30 = rho 1391 from rfl]
    linear_combination r2028
  · erw [canon2Bits_get rho 30 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 31 = rho 1391 from rfl]
    linear_combination r2027
  · erw [canon2Bits_get rho 31 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 32 = rho 1391 from rfl]
    linear_combination r2026

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
