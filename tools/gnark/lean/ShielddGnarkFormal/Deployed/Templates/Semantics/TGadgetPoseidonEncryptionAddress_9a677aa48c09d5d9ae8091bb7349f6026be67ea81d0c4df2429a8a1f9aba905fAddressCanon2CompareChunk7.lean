import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2CompareChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_compare_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 112 ≤ j → j < 128 → pmBit j = false → (canon2Bits rho)[j]! * (1 - (canon2Bits rho)[j]! - canon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1959, r1960, r1961, r1962, r1963, r1964, r1965, r1966, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1959 at r1959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1960 at r1960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1961 at r1961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1962 at r1962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1963 at r1963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1964 at r1964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1965 at r1965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1966 at r1966
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon2Bits_get rho 112 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 113 = rho 1370 from rfl]
    linear_combination r1966
  · have hb : pmBit 113 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 114 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 115 = rho 1369 from rfl]
    linear_combination r1965
  · have hb : pmBit 115 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 116 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 117 = rho 1368 from rfl]
    linear_combination r1964
  · have hb : pmBit 117 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 118 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 119 = rho 1367 from rfl]
    linear_combination r1963
  · have hb : pmBit 119 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 120 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 121 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 122 = rho 1365 from rfl]
    linear_combination r1962
  · erw [canon2Bits_get rho 122 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 123 = rho 1365 from rfl]
    linear_combination r1961
  · have hb : pmBit 123 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 124 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 125 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 126 = rho 1363 from rfl]
    linear_combination r1960
  · have hb : pmBit 126 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 127 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 128 = rho 1362 from rfl]
    linear_combination r1959

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
