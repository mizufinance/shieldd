import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapIdTrueChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_flag_step_chunk2 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 32 ≤ m → m < 48 → gapIdFlag rho m = trueFactor (idBits rho) m * gapIdFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r845, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow845 at r845
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapIdFlag rho 32 = rho 680 from rfl, show gapIdFlag rho 33 = rho 680 from rfl]
    have hb : pmBit 32 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 32 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 33 = rho 680 from rfl, show gapIdFlag rho 34 = rho 680 from rfl]
    have hb : pmBit 33 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 33 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 34 = rho 680 from rfl, show gapIdFlag rho 35 = rho 680 from rfl]
    have hb : pmBit 34 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 34 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 35 = rho 680 from rfl, show gapIdFlag rho 36 = rho 680 from rfl]
    have hb : pmBit 35 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 35 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 36 = rho 680 from rfl, show gapIdFlag rho 37 = rho 680 from rfl]
    have hb : pmBit 36 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 36 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 37 = rho 680 from rfl, show gapIdFlag rho 38 = rho 680 from rfl]
    have hb : pmBit 37 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 37 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 38 = rho 680 from rfl, show gapIdFlag rho 39 = rho 680 from rfl]
    have hb : pmBit 38 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 38 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 39 = rho 680 from rfl, show gapIdFlag rho 40 = rho 680 from rfl]
    have hb : pmBit 39 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 39 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 40 = rho 680 from rfl, show gapIdFlag rho 41 = rho 680 from rfl]
    have hb : pmBit 40 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 40 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 41 = rho 680 from rfl, show gapIdFlag rho 42 = rho 680 from rfl]
    have hb : pmBit 41 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 41 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 42 = rho 680 from rfl, show gapIdFlag rho 43 = rho 680 from rfl]
    have hb : pmBit 42 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 42 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 43 = rho 680 from rfl, show gapIdFlag rho 44 = rho 680 from rfl]
    have hb : pmBit 43 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 43 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 44 = rho 680 from rfl, show gapIdFlag rho 45 = rho 680 from rfl]
    have hb : pmBit 44 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 44 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 45 = rho 680 from rfl, show gapIdFlag rho 46 = rho 680 from rfl]
    have hb : pmBit 45 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 45 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 46 = rho 680 from rfl, show gapIdFlag rho 47 = rho 680 from rfl]
    have hb : pmBit 46 = false := by decide +kernel
    rw [show trueFactor (idBits rho) 46 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapIdFlag rho 47 = rho 680 from rfl, show gapIdFlag rho 48 = rho 679 from rfl]
    have hb : pmBit 47 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [idBits_get rho 47 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r845

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
