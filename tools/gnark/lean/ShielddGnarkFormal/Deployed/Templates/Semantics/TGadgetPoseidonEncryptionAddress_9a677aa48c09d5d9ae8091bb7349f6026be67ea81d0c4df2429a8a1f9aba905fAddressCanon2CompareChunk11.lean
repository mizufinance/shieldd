import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2CompareChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_compare_chunk11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 176 ≤ j → j < 192 → pmBit j = false → (canon2Bits rho)[j]! * (1 - (canon2Bits rho)[j]! - canon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart24 at p24
  rcases p24 with ⟨_, _, r1922, r1923, r1924, r1925, r1926, r1927, r1928, r1929, r1930, r1931, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1922 at r1922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1923 at r1923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1924 at r1924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1925 at r1925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1926 at r1926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1927 at r1927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1928 at r1928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1929 at r1929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1930 at r1930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1931 at r1931
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon2Bits_get rho 176 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 177 = rho 1341 from rfl]
    linear_combination r1931
  · erw [canon2Bits_get rho 177 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 178 = rho 1341 from rfl]
    linear_combination r1930
  · have hb : pmBit 178 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 179 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 180 = rho 1340 from rfl]
    linear_combination r1929
  · have hb : pmBit 180 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 181 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 182 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 183 = rho 1338 from rfl]
    linear_combination r1928
  · have hb : pmBit 183 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 184 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 185 = rho 1337 from rfl]
    linear_combination r1927
  · erw [canon2Bits_get rho 185 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 186 = rho 1337 from rfl]
    linear_combination r1926
  · erw [canon2Bits_get rho 186 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 187 = rho 1337 from rfl]
    linear_combination r1925
  · erw [canon2Bits_get rho 187 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 188 = rho 1337 from rfl]
    linear_combination r1924
  · erw [canon2Bits_get rho 188 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 189 = rho 1337 from rfl]
    linear_combination r1923
  · have hb : pmBit 189 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 190 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 191 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 192 = rho 1335 from rfl]
    linear_combination r1922

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
