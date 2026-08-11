import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextTrueChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 16 ≤ m → m < 32 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 16 = rho 1020 from rfl, show gapNextFlag rho 17 = rho 1020 from rfl]
    have hb : pmBit 16 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 16 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 17 = rho 1020 from rfl, show gapNextFlag rho 18 = rho 1020 from rfl]
    have hb : pmBit 17 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 17 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 18 = rho 1020 from rfl, show gapNextFlag rho 19 = rho 1020 from rfl]
    have hb : pmBit 18 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 18 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 19 = rho 1020 from rfl, show gapNextFlag rho 20 = rho 1020 from rfl]
    have hb : pmBit 19 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 19 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 20 = rho 1020 from rfl, show gapNextFlag rho 21 = rho 1020 from rfl]
    have hb : pmBit 20 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 20 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 21 = rho 1020 from rfl, show gapNextFlag rho 22 = rho 1020 from rfl]
    have hb : pmBit 21 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 21 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 22 = rho 1020 from rfl, show gapNextFlag rho 23 = rho 1020 from rfl]
    have hb : pmBit 22 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 22 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 23 = rho 1020 from rfl, show gapNextFlag rho 24 = rho 1020 from rfl]
    have hb : pmBit 23 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 23 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 24 = rho 1020 from rfl, show gapNextFlag rho 25 = rho 1020 from rfl]
    have hb : pmBit 24 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 24 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 25 = rho 1020 from rfl, show gapNextFlag rho 26 = rho 1020 from rfl]
    have hb : pmBit 25 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 25 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 26 = rho 1020 from rfl, show gapNextFlag rho 27 = rho 1020 from rfl]
    have hb : pmBit 26 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 26 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 27 = rho 1020 from rfl, show gapNextFlag rho 28 = rho 1020 from rfl]
    have hb : pmBit 27 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 27 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 28 = rho 1020 from rfl, show gapNextFlag rho 29 = rho 1020 from rfl]
    have hb : pmBit 28 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 28 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 29 = rho 1020 from rfl, show gapNextFlag rho 30 = rho 1020 from rfl]
    have hb : pmBit 29 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 29 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 30 = rho 1020 from rfl, show gapNextFlag rho 31 = rho 1020 from rfl]
    have hb : pmBit 30 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 30 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 31 = rho 1020 from rfl, show gapNextFlag rho 32 = rho 1020 from rfl]
    have hb : pmBit 31 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 31 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
