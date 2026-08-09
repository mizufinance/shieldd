import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1TrueChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_flag_step_chunk11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 176 ≤ m → m < 192 → canon1Flag rho m = trueFactor (canon1Bits rho) m * canon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1330, r1331, r1332, r1333, r1334, r1335, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1330 at r1330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1331 at r1331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1332 at r1332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1333 at r1333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1334 at r1334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1335 at r1335
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon1Flag rho 176 = rho 1000 from rfl, show canon1Flag rho 177 = rho 1000 from rfl]
    have hb : pmBit 176 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 176 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 177 = rho 1000 from rfl, show canon1Flag rho 178 = rho 1000 from rfl]
    have hb : pmBit 177 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 177 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 178 = rho 1000 from rfl, show canon1Flag rho 179 = rho 999 from rfl]
    have hb : pmBit 178 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 178 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1335
  · rw [show canon1Flag rho 179 = rho 999 from rfl, show canon1Flag rho 180 = rho 999 from rfl]
    have hb : pmBit 179 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 179 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 180 = rho 999 from rfl, show canon1Flag rho 181 = rho 998 from rfl]
    have hb : pmBit 180 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 180 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1334
  · rw [show canon1Flag rho 181 = rho 998 from rfl, show canon1Flag rho 182 = rho 997 from rfl]
    have hb : pmBit 181 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 181 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1333
  · rw [show canon1Flag rho 182 = rho 997 from rfl, show canon1Flag rho 183 = rho 997 from rfl]
    have hb : pmBit 182 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 182 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 183 = rho 997 from rfl, show canon1Flag rho 184 = rho 996 from rfl]
    have hb : pmBit 183 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 183 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1332
  · rw [show canon1Flag rho 184 = rho 996 from rfl, show canon1Flag rho 185 = rho 996 from rfl]
    have hb : pmBit 184 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 184 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 185 = rho 996 from rfl, show canon1Flag rho 186 = rho 996 from rfl]
    have hb : pmBit 185 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 185 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 186 = rho 996 from rfl, show canon1Flag rho 187 = rho 996 from rfl]
    have hb : pmBit 186 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 186 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 187 = rho 996 from rfl, show canon1Flag rho 188 = rho 996 from rfl]
    have hb : pmBit 187 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 187 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 188 = rho 996 from rfl, show canon1Flag rho 189 = rho 996 from rfl]
    have hb : pmBit 188 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 188 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 189 = rho 996 from rfl, show canon1Flag rho 190 = rho 995 from rfl]
    have hb : pmBit 189 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 189 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1331
  · rw [show canon1Flag rho 190 = rho 995 from rfl, show canon1Flag rho 191 = rho 994 from rfl]
    have hb : pmBit 190 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 190 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1330
  · rw [show canon1Flag rho 191 = rho 994 from rfl, show canon1Flag rho 192 = rho 994 from rfl]
    have hb : pmBit 191 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 191 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
