import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905fAddressCanon1TrueChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem canon1_flag_step_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation rho) :
    ∀ m, 80 ≤ m → m < 96 → canon1Flag rho m = trueFactor (canon1Bits rho) m * canon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1377, r1378, r1379, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1377 at r1377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1378 at r1378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.relationRow1379 at r1379
  intro m hmlo hmhi
  interval_cases m
  · rw [show canon1Flag rho 80 = rho 1044 from rfl, show canon1Flag rho 81 = rho 1044 from rfl]
    have hb : pmBit 80 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 80 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 81 = rho 1044 from rfl, show canon1Flag rho 82 = rho 1044 from rfl]
    have hb : pmBit 81 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 81 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 82 = rho 1044 from rfl, show canon1Flag rho 83 = rho 1044 from rfl]
    have hb : pmBit 82 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 82 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 83 = rho 1044 from rfl, show canon1Flag rho 84 = rho 1044 from rfl]
    have hb : pmBit 83 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 83 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 84 = rho 1044 from rfl, show canon1Flag rho 85 = rho 1044 from rfl]
    have hb : pmBit 84 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 84 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 85 = rho 1044 from rfl, show canon1Flag rho 86 = rho 1044 from rfl]
    have hb : pmBit 85 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 85 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 86 = rho 1044 from rfl, show canon1Flag rho 87 = rho 1044 from rfl]
    have hb : pmBit 86 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 86 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 87 = rho 1044 from rfl, show canon1Flag rho 88 = rho 1044 from rfl]
    have hb : pmBit 87 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 87 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 88 = rho 1044 from rfl, show canon1Flag rho 89 = rho 1044 from rfl]
    have hb : pmBit 88 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 88 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 89 = rho 1044 from rfl, show canon1Flag rho 90 = rho 1044 from rfl]
    have hb : pmBit 89 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 89 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 90 = rho 1044 from rfl, show canon1Flag rho 91 = rho 1044 from rfl]
    have hb : pmBit 90 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 90 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 91 = rho 1044 from rfl, show canon1Flag rho 92 = rho 1044 from rfl]
    have hb : pmBit 91 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 91 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 92 = rho 1044 from rfl, show canon1Flag rho 93 = rho 1043 from rfl]
    have hb : pmBit 92 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 92 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1379
  · rw [show canon1Flag rho 93 = rho 1043 from rfl, show canon1Flag rho 94 = rho 1043 from rfl]
    have hb : pmBit 93 = false := by decide +kernel
    rw [show trueFactor (canon1Bits rho) 93 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show canon1Flag rho 94 = rho 1043 from rfl, show canon1Flag rho 95 = rho 1042 from rfl]
    have hb : pmBit 94 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 94 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1378
  · rw [show canon1Flag rho 95 = rho 1042 from rfl, show canon1Flag rho 96 = rho 1041 from rfl]
    have hb : pmBit 95 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [canon1Bits_get rho 95 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r1377

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.AddressPacking
