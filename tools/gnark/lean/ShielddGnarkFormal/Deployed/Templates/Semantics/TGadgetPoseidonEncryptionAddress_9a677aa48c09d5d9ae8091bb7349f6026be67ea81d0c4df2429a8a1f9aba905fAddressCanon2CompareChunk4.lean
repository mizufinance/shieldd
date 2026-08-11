import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2CompareChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_compare_chunk4 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 64 ≤ j → j < 80 → pmBit j = false → (canon2Bits rho)[j]! * (1 - (canon2Bits rho)[j]! - canon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1984, r1985, r1986, r1987, r1988, r1989, r1990, r1991, r1992, r1993, r1994, r1995, r1996, r1997, r1998, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1984 at r1984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1985 at r1985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1986 at r1986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1987 at r1987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1988 at r1988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1989 at r1989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1990 at r1990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1991 at r1991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1992 at r1992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1993 at r1993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1994 at r1994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1995 at r1995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1996 at r1996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1997 at r1997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1998 at r1998
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 64 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 65 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 66 = rho 1385 from rfl]
    linear_combination r1998
  · erw [canon2Bits_get rho 66 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 67 = rho 1385 from rfl]
    linear_combination r1997
  · erw [canon2Bits_get rho 67 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 68 = rho 1385 from rfl]
    linear_combination r1996
  · erw [canon2Bits_get rho 68 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 69 = rho 1385 from rfl]
    linear_combination r1995
  · erw [canon2Bits_get rho 69 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 70 = rho 1385 from rfl]
    linear_combination r1994
  · erw [canon2Bits_get rho 70 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 71 = rho 1385 from rfl]
    linear_combination r1993
  · erw [canon2Bits_get rho 71 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 72 = rho 1385 from rfl]
    linear_combination r1992
  · erw [canon2Bits_get rho 72 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 73 = rho 1385 from rfl]
    linear_combination r1991
  · erw [canon2Bits_get rho 73 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 74 = rho 1385 from rfl]
    linear_combination r1990
  · erw [canon2Bits_get rho 74 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 75 = rho 1385 from rfl]
    linear_combination r1989
  · erw [canon2Bits_get rho 75 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 76 = rho 1385 from rfl]
    linear_combination r1988
  · erw [canon2Bits_get rho 76 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 77 = rho 1385 from rfl]
    linear_combination r1987
  · erw [canon2Bits_get rho 77 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 78 = rho 1385 from rfl]
    linear_combination r1986
  · erw [canon2Bits_get rho 78 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 79 = rho 1385 from rfl]
    linear_combination r1985
  · erw [canon2Bits_get rho 79 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 80 = rho 1385 from rfl]
    linear_combination r1984

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
