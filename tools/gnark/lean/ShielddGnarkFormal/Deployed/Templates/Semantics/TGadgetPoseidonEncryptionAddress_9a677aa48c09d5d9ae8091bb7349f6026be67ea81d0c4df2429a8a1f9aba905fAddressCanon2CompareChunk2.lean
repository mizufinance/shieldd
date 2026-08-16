import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2CompareChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_compare_chunk2 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 32 ≤ j → j < 48 → pmBit j = false → (canon2Bits rho)[j]! * (1 - (canon2Bits rho)[j]! - canon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2011, r2012, r2013, r2014, r2015, r2016, r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, r2025, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2011 at r2011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2012 at r2012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2013 at r2013
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2014 at r2014
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2015 at r2015
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2016 at r2016
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2017 at r2017
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2018 at r2018
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2019 at r2019
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2020 at r2020
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2021 at r2021
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2022 at r2022
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2023 at r2023
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2024 at r2024
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2025 at r2025
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon2Bits_get rho 32 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 33 = rho 1391 from rfl]
    linear_combination r2025
  · erw [canon2Bits_get rho 33 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 34 = rho 1391 from rfl]
    linear_combination r2024
  · erw [canon2Bits_get rho 34 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 35 = rho 1391 from rfl]
    linear_combination r2023
  · erw [canon2Bits_get rho 35 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 36 = rho 1391 from rfl]
    linear_combination r2022
  · erw [canon2Bits_get rho 36 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 37 = rho 1391 from rfl]
    linear_combination r2021
  · erw [canon2Bits_get rho 37 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 38 = rho 1391 from rfl]
    linear_combination r2020
  · erw [canon2Bits_get rho 38 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 39 = rho 1391 from rfl]
    linear_combination r2019
  · erw [canon2Bits_get rho 39 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 40 = rho 1391 from rfl]
    linear_combination r2018
  · erw [canon2Bits_get rho 40 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 41 = rho 1391 from rfl]
    linear_combination r2017
  · erw [canon2Bits_get rho 41 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 42 = rho 1391 from rfl]
    linear_combination r2016
  · erw [canon2Bits_get rho 42 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 43 = rho 1391 from rfl]
    linear_combination r2015
  · erw [canon2Bits_get rho 43 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 44 = rho 1391 from rfl]
    linear_combination r2014
  · erw [canon2Bits_get rho 44 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 45 = rho 1391 from rfl]
    linear_combination r2013
  · erw [canon2Bits_get rho 45 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 46 = rho 1391 from rfl]
    linear_combination r2012
  · erw [canon2Bits_get rho 46 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 47 = rho 1391 from rfl]
    linear_combination r2011
  · have hb : pmBit 47 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
