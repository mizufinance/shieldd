import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon2TrueChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon2_flag_step_chunk10 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 160 ≤ m → m < 176 → canon2Flag rho m = trueFactor (canon2Bits rho) m * canon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart23 at p23
  rcases p23 with ⟨_, _, r1842, r1843, r1844, r1845, r1846, r1847, r1848, r1849, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1842 at r1842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1843 at r1843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1844 at r1844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1845 at r1845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1846 at r1846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1847 at r1847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1848 at r1848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1849 at r1849
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon2Flag rho 160 = rho 1349 from rfl, show canon2Flag rho 161 = rho 1349 from rfl]
    have hb : pmBit 160 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 160 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 161 = rho 1349 from rfl, show canon2Flag rho 162 = rho 1348 from rfl]
    have hb : pmBit 161 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 161 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1849
  · rw [show canon2Flag rho 162 = rho 1348 from rfl, show canon2Flag rho 163 = rho 1347 from rfl]
    have hb : pmBit 162 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 162 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1848
  · rw [show canon2Flag rho 163 = rho 1347 from rfl, show canon2Flag rho 164 = rho 1346 from rfl]
    have hb : pmBit 163 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 163 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1847
  · rw [show canon2Flag rho 164 = rho 1346 from rfl, show canon2Flag rho 165 = rho 1345 from rfl]
    have hb : pmBit 164 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 164 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1846
  · rw [show canon2Flag rho 165 = rho 1345 from rfl, show canon2Flag rho 166 = rho 1345 from rfl]
    have hb : pmBit 165 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 165 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 166 = rho 1345 from rfl, show canon2Flag rho 167 = rho 1345 from rfl]
    have hb : pmBit 166 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 166 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 167 = rho 1345 from rfl, show canon2Flag rho 168 = rho 1345 from rfl]
    have hb : pmBit 167 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 167 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 168 = rho 1345 from rfl, show canon2Flag rho 169 = rho 1344 from rfl]
    have hb : pmBit 168 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 168 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1845
  · rw [show canon2Flag rho 169 = rho 1344 from rfl, show canon2Flag rho 170 = rho 1344 from rfl]
    have hb : pmBit 169 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 169 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 170 = rho 1344 from rfl, show canon2Flag rho 171 = rho 1343 from rfl]
    have hb : pmBit 170 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 170 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1844
  · rw [show canon2Flag rho 171 = rho 1343 from rfl, show canon2Flag rho 172 = rho 1342 from rfl]
    have hb : pmBit 171 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 171 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1843
  · rw [show canon2Flag rho 172 = rho 1342 from rfl, show canon2Flag rho 173 = rho 1342 from rfl]
    have hb : pmBit 172 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 172 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 173 = rho 1342 from rfl, show canon2Flag rho 174 = rho 1342 from rfl]
    have hb : pmBit 173 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 173 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon2Flag rho 174 = rho 1342 from rfl, show canon2Flag rho 175 = rho 1341 from rfl]
    have hb : pmBit 174 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon2Bits_get rho 174 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1842
  · rw [show canon2Flag rho 175 = rho 1341 from rfl, show canon2Flag rho 176 = rho 1341 from rfl]
    have hb : pmBit 175 = false := by decide +kernel
    rw [show trueFactor (canon2Bits rho) 175 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
