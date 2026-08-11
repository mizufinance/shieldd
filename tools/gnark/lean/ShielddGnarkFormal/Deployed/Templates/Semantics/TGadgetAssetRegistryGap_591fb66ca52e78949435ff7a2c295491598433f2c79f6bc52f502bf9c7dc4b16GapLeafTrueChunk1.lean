import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapLeafTrueChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 16 ≤ m → m < 32 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 16 = rho 340 from rfl, show gapLeafFlag rho 17 = rho 340 from rfl]
    have hb : pmBit 16 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 16 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 17 = rho 340 from rfl, show gapLeafFlag rho 18 = rho 340 from rfl]
    have hb : pmBit 17 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 17 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 18 = rho 340 from rfl, show gapLeafFlag rho 19 = rho 340 from rfl]
    have hb : pmBit 18 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 18 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 19 = rho 340 from rfl, show gapLeafFlag rho 20 = rho 340 from rfl]
    have hb : pmBit 19 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 19 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 20 = rho 340 from rfl, show gapLeafFlag rho 21 = rho 340 from rfl]
    have hb : pmBit 20 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 20 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 21 = rho 340 from rfl, show gapLeafFlag rho 22 = rho 340 from rfl]
    have hb : pmBit 21 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 21 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 22 = rho 340 from rfl, show gapLeafFlag rho 23 = rho 340 from rfl]
    have hb : pmBit 22 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 22 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 23 = rho 340 from rfl, show gapLeafFlag rho 24 = rho 340 from rfl]
    have hb : pmBit 23 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 23 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 24 = rho 340 from rfl, show gapLeafFlag rho 25 = rho 340 from rfl]
    have hb : pmBit 24 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 24 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 25 = rho 340 from rfl, show gapLeafFlag rho 26 = rho 340 from rfl]
    have hb : pmBit 25 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 25 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 26 = rho 340 from rfl, show gapLeafFlag rho 27 = rho 340 from rfl]
    have hb : pmBit 26 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 26 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 27 = rho 340 from rfl, show gapLeafFlag rho 28 = rho 340 from rfl]
    have hb : pmBit 27 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 27 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 28 = rho 340 from rfl, show gapLeafFlag rho 29 = rho 340 from rfl]
    have hb : pmBit 28 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 28 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 29 = rho 340 from rfl, show gapLeafFlag rho 30 = rho 340 from rfl]
    have hb : pmBit 29 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 29 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 30 = rho 340 from rfl, show gapLeafFlag rho 31 = rho 340 from rfl]
    have hb : pmBit 30 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 30 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 31 = rho 340 from rfl, show gapLeafFlag rho 32 = rho 340 from rfl]
    have hb : pmBit 31 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 31 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
