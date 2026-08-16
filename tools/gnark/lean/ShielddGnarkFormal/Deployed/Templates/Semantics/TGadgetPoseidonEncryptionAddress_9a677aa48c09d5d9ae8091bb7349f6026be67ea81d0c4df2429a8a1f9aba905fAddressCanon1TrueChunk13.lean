import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1TrueChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_flag_step_chunk13 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 208 ≤ m → m < 224 → canon1Flag rho m = trueFactor (canon1Bits rho) m * canon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1315, r1316, r1317, r1318, r1319, r1320, r1321, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1315 at r1315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1316 at r1316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1317 at r1317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1318 at r1318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1319 at r1319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1320 at r1320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1321 at r1321
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon1Flag rho 208 = rho 986 from rfl, show canon1Flag rho 209 = rho 986 from rfl]
    have hb : pmBit 208 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 208 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 209 = rho 986 from rfl, show canon1Flag rho 210 = rho 986 from rfl]
    have hb : pmBit 209 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 209 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 210 = rho 986 from rfl, show canon1Flag rho 211 = rho 985 from rfl]
    have hb : pmBit 210 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 210 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1321
  · rw [show canon1Flag rho 211 = rho 985 from rfl, show canon1Flag rho 212 = rho 984 from rfl]
    have hb : pmBit 211 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 211 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1320
  · rw [show canon1Flag rho 212 = rho 984 from rfl, show canon1Flag rho 213 = rho 984 from rfl]
    have hb : pmBit 212 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 212 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 213 = rho 984 from rfl, show canon1Flag rho 214 = rho 983 from rfl]
    have hb : pmBit 213 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 213 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1319
  · rw [show canon1Flag rho 214 = rho 983 from rfl, show canon1Flag rho 215 = rho 983 from rfl]
    have hb : pmBit 214 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 214 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 215 = rho 983 from rfl, show canon1Flag rho 216 = rho 983 from rfl]
    have hb : pmBit 215 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 215 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 216 = rho 983 from rfl, show canon1Flag rho 217 = rho 983 from rfl]
    have hb : pmBit 216 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 216 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 217 = rho 983 from rfl, show canon1Flag rho 218 = rho 982 from rfl]
    have hb : pmBit 217 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 217 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1318
  · rw [show canon1Flag rho 218 = rho 982 from rfl, show canon1Flag rho 219 = rho 982 from rfl]
    have hb : pmBit 218 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 218 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 219 = rho 982 from rfl, show canon1Flag rho 220 = rho 981 from rfl]
    have hb : pmBit 219 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 219 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1317
  · rw [show canon1Flag rho 220 = rho 981 from rfl, show canon1Flag rho 221 = rho 980 from rfl]
    have hb : pmBit 220 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 220 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1316
  · rw [show canon1Flag rho 221 = rho 980 from rfl, show canon1Flag rho 222 = rho 980 from rfl]
    have hb : pmBit 221 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 221 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 222 = rho 980 from rfl, show canon1Flag rho 223 = rho 980 from rfl]
    have hb : pmBit 222 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 222 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 223 = rho 980 from rfl, show canon1Flag rho 224 = rho 979 from rfl]
    have hb : pmBit 223 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 223 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1315

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
