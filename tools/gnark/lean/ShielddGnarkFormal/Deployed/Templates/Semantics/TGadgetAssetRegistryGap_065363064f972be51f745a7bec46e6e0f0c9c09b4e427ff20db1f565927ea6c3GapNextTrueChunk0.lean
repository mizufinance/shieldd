import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapNextTrueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapNext_flag_step_chunk0 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 0 ≤ m → m < 16 → gapNextFlag rho m = trueFactor (nextBits rho) m * gapNextFlag rho (m + 1) := by
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapNextFlag rho 0 = rho 1020 from rfl, show gapNextFlag rho 1 = rho 1020 from rfl]
    have hb : pmBit 0 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 0 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 1 = rho 1020 from rfl, show gapNextFlag rho 2 = rho 1020 from rfl]
    have hb : pmBit 1 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 1 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 2 = rho 1020 from rfl, show gapNextFlag rho 3 = rho 1020 from rfl]
    have hb : pmBit 2 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 2 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 3 = rho 1020 from rfl, show gapNextFlag rho 4 = rho 1020 from rfl]
    have hb : pmBit 3 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 3 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 4 = rho 1020 from rfl, show gapNextFlag rho 5 = rho 1020 from rfl]
    have hb : pmBit 4 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 4 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 5 = rho 1020 from rfl, show gapNextFlag rho 6 = rho 1020 from rfl]
    have hb : pmBit 5 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 5 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 6 = rho 1020 from rfl, show gapNextFlag rho 7 = rho 1020 from rfl]
    have hb : pmBit 6 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 6 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 7 = rho 1020 from rfl, show gapNextFlag rho 8 = rho 1020 from rfl]
    have hb : pmBit 7 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 7 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 8 = rho 1020 from rfl, show gapNextFlag rho 9 = rho 1020 from rfl]
    have hb : pmBit 8 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 8 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 9 = rho 1020 from rfl, show gapNextFlag rho 10 = rho 1020 from rfl]
    have hb : pmBit 9 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 9 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 10 = rho 1020 from rfl, show gapNextFlag rho 11 = rho 1020 from rfl]
    have hb : pmBit 10 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 10 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 11 = rho 1020 from rfl, show gapNextFlag rho 12 = rho 1020 from rfl]
    have hb : pmBit 11 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 11 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 12 = rho 1020 from rfl, show gapNextFlag rho 13 = rho 1020 from rfl]
    have hb : pmBit 12 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 12 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 13 = rho 1020 from rfl, show gapNextFlag rho 14 = rho 1020 from rfl]
    have hb : pmBit 13 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 13 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 14 = rho 1020 from rfl, show gapNextFlag rho 15 = rho 1020 from rfl]
    have hb : pmBit 14 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 14 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapNextFlag rho 15 = rho 1020 from rfl, show gapNextFlag rho 16 = rho 1020 from rfl]
    have hb : pmBit 15 = false := by decide +kernel
    rw [show trueFactor (nextBits rho) 15 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
