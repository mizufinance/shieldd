import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2CompareChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_compare_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ j, 48 ≤ j → j < 64 → pmBit j = false → (canon2Bits rho)[j]! * (1 - (canon2Bits rho)[j]! - canon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, p25, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1999⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart25 at p25
  rcases p25 with ⟨r2000, r2001, r2002, r2003, r2004, r2005, r2006, r2007, r2008, r2009, r2010, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1999 at r1999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2000 at r2000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2001 at r2001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2002 at r2002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2003 at r2003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2004 at r2004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2005 at r2005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2006 at r2006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2007 at r2007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2008 at r2008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2009 at r2009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow2010 at r2010
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 48 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 49 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 50 = rho 1389 from rfl]
    linear_combination r2010
  · erw [canon2Bits_get rho 50 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 51 = rho 1389 from rfl]
    linear_combination r2009
  · erw [canon2Bits_get rho 51 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 52 = rho 1389 from rfl]
    linear_combination r2008
  · have hb : pmBit 52 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 53 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 54 = rho 1388 from rfl]
    linear_combination r2007
  · erw [canon2Bits_get rho 54 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 55 = rho 1388 from rfl]
    linear_combination r2006
  · erw [canon2Bits_get rho 55 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 56 = rho 1388 from rfl]
    linear_combination r2005
  · erw [canon2Bits_get rho 56 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 57 = rho 1388 from rfl]
    linear_combination r2004
  · have hb : pmBit 57 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 58 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 59 = rho 1387 from rfl]
    linear_combination r2003
  · have hb : pmBit 59 = true := by decide +kernel
    simp [hb] at hpm
  · erw [canon2Bits_get rho 60 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 61 = rho 1386 from rfl]
    linear_combination r2002
  · erw [canon2Bits_get rho 61 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 62 = rho 1386 from rfl]
    linear_combination r2001
  · erw [canon2Bits_get rho 62 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 63 = rho 1386 from rfl]
    linear_combination r2000
  · erw [canon2Bits_get rho 63 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show canon2Flag rho 64 = rho 1386 from rfl]
    linear_combination r1999

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
