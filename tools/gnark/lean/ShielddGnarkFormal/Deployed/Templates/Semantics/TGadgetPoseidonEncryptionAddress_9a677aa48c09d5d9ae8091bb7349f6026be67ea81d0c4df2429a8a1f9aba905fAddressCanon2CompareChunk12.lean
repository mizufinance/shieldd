import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2CompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_compare_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (canon2Bits rho)[j]! * (1 - (canon2Bits rho)[j]! - canon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, p24, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1914, r1915, r1916, r1917, r1918, r1919⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart24 at p24
  rcases p24 with ⟨r1920, r1921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1914 at r1914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1915 at r1915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1916 at r1916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1917 at r1917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1918 at r1918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1919 at r1919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1920 at r1920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1921 at r1921
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [canon2Bits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 193 = rho 1335 from rfl]
    linear_combination r1921
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 196 = rho 1333 from rfl]
    linear_combination r1920
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 198 = rho 1332 from rfl]
    linear_combination r1919
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 200 = rho 1331 from rfl]
    linear_combination r1918
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 202 = rho 1330 from rfl]
    linear_combination r1917
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 204 = rho 1329 from rfl]
    linear_combination r1916
  · erw [canon2Bits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 205 = rho 1329 from rfl]
    linear_combination r1915
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 207 = rho 1328 from rfl]
    linear_combination r1914
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
