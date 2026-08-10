import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2CompareChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_compare_chunk9 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 144 ≤ j → j < 160 → pmBit j = false → (canon2Bits rho)[j]! * (1 - (canon2Bits rho)[j]! - canon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1940, r1941, r1942, r1943, r1944, r1945, r1946, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1940 at r1940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1941 at r1941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1942 at r1942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1943 at r1943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1944 at r1944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1945 at r1945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1946 at r1946
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 144 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 145 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 146 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 147 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 148 = rho 1355 from rfl]
    linear_combination r1946
  · have hb : pmBit 148 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 149 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 150 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 151 = rho 1353 from rfl]
    linear_combination r1945
  · erw [canon2Bits_get rho 151 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 152 = rho 1353 from rfl]
    linear_combination r1944
  · erw [canon2Bits_get rho 152 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 153 = rho 1353 from rfl]
    linear_combination r1943
  · erw [canon2Bits_get rho 153 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 154 = rho 1353 from rfl]
    linear_combination r1942
  · have hb : pmBit 154 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 155 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 156 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 157 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 158 = rho 1350 from rfl]
    linear_combination r1941
  · have hb : pmBit 158 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 159 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 160 = rho 1349 from rfl]
    linear_combination r1940

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
