import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1TrueChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_flag_step_chunk10 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 160 ≤ m → m < 176 → canon1Flag rho m = trueFactor (canon1Bits rho) m * canon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1336, r1337, r1338, r1339, r1340, r1341, r1342, r1343, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1336 at r1336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1337 at r1337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1338 at r1338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1339 at r1339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1340 at r1340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1341 at r1341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1342 at r1342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1343 at r1343
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon1Flag rho 160 = rho 1008 from rfl, show canon1Flag rho 161 = rho 1008 from rfl]
    have hb : pmBit 160 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 160 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 161 = rho 1008 from rfl, show canon1Flag rho 162 = rho 1007 from rfl]
    have hb : pmBit 161 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 161 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1343
  · rw [show canon1Flag rho 162 = rho 1007 from rfl, show canon1Flag rho 163 = rho 1006 from rfl]
    have hb : pmBit 162 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 162 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1342
  · rw [show canon1Flag rho 163 = rho 1006 from rfl, show canon1Flag rho 164 = rho 1005 from rfl]
    have hb : pmBit 163 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 163 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1341
  · rw [show canon1Flag rho 164 = rho 1005 from rfl, show canon1Flag rho 165 = rho 1004 from rfl]
    have hb : pmBit 164 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 164 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1340
  · rw [show canon1Flag rho 165 = rho 1004 from rfl, show canon1Flag rho 166 = rho 1004 from rfl]
    have hb : pmBit 165 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 165 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 166 = rho 1004 from rfl, show canon1Flag rho 167 = rho 1004 from rfl]
    have hb : pmBit 166 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 166 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 167 = rho 1004 from rfl, show canon1Flag rho 168 = rho 1004 from rfl]
    have hb : pmBit 167 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 167 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 168 = rho 1004 from rfl, show canon1Flag rho 169 = rho 1003 from rfl]
    have hb : pmBit 168 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 168 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1339
  · rw [show canon1Flag rho 169 = rho 1003 from rfl, show canon1Flag rho 170 = rho 1003 from rfl]
    have hb : pmBit 169 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 169 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 170 = rho 1003 from rfl, show canon1Flag rho 171 = rho 1002 from rfl]
    have hb : pmBit 170 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 170 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1338
  · rw [show canon1Flag rho 171 = rho 1002 from rfl, show canon1Flag rho 172 = rho 1001 from rfl]
    have hb : pmBit 171 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 171 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1337
  · rw [show canon1Flag rho 172 = rho 1001 from rfl, show canon1Flag rho 173 = rho 1001 from rfl]
    have hb : pmBit 172 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 172 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 173 = rho 1001 from rfl, show canon1Flag rho 174 = rho 1001 from rfl]
    have hb : pmBit 173 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 173 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 174 = rho 1001 from rfl, show canon1Flag rho 175 = rho 1000 from rfl]
    have hb : pmBit 174 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 174 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1336
  · rw [show canon1Flag rho 175 = rho 1000 from rfl, show canon1Flag rho 176 = rho 1000 from rfl]
    have hb : pmBit 175 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 175 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
