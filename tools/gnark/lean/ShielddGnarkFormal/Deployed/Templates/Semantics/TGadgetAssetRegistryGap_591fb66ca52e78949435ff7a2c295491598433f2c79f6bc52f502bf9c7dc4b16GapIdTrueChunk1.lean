import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapIdTrueChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ m, 16 ≤ m → m < 32 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 16 = rho 680 from rfl, show gapIdFlag rho 17 = rho 680 from rfl]
    have hb : pmBit 16 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 16 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 17 = rho 680 from rfl, show gapIdFlag rho 18 = rho 680 from rfl]
    have hb : pmBit 17 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 17 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 18 = rho 680 from rfl, show gapIdFlag rho 19 = rho 680 from rfl]
    have hb : pmBit 18 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 18 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 19 = rho 680 from rfl, show gapIdFlag rho 20 = rho 680 from rfl]
    have hb : pmBit 19 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 19 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 20 = rho 680 from rfl, show gapIdFlag rho 21 = rho 680 from rfl]
    have hb : pmBit 20 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 20 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 21 = rho 680 from rfl, show gapIdFlag rho 22 = rho 680 from rfl]
    have hb : pmBit 21 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 21 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 22 = rho 680 from rfl, show gapIdFlag rho 23 = rho 680 from rfl]
    have hb : pmBit 22 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 22 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 23 = rho 680 from rfl, show gapIdFlag rho 24 = rho 680 from rfl]
    have hb : pmBit 23 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 23 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 24 = rho 680 from rfl, show gapIdFlag rho 25 = rho 680 from rfl]
    have hb : pmBit 24 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 24 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 25 = rho 680 from rfl, show gapIdFlag rho 26 = rho 680 from rfl]
    have hb : pmBit 25 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 25 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 26 = rho 680 from rfl, show gapIdFlag rho 27 = rho 680 from rfl]
    have hb : pmBit 26 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 26 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 27 = rho 680 from rfl, show gapIdFlag rho 28 = rho 680 from rfl]
    have hb : pmBit 27 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 27 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 28 = rho 680 from rfl, show gapIdFlag rho 29 = rho 680 from rfl]
    have hb : pmBit 28 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 28 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 29 = rho 680 from rfl, show gapIdFlag rho 30 = rho 680 from rfl]
    have hb : pmBit 29 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 29 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 30 = rho 680 from rfl, show gapIdFlag rho 31 = rho 680 from rfl]
    have hb : pmBit 30 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 30 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 31 = rho 680 from rfl, show gapIdFlag rho 32 = rho 680 from rfl]
    have hb : pmBit 31 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 31 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
