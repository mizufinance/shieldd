import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafTrueChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk4 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 64 ≤ m → m < 80 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow334 at r334
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 64 = rho 335 from rfl, show gapLeafFlag rho 65 = rho 334 from rfl]
    have hb : pmBit 64 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 64 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r334
  · rw [show gapLeafFlag rho 65 = rho 334 from rfl, show gapLeafFlag rho 66 = rho 334 from rfl]
    have hb : pmBit 65 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 65 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 66 = rho 334 from rfl, show gapLeafFlag rho 67 = rho 334 from rfl]
    have hb : pmBit 66 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 66 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 67 = rho 334 from rfl, show gapLeafFlag rho 68 = rho 334 from rfl]
    have hb : pmBit 67 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 67 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 68 = rho 334 from rfl, show gapLeafFlag rho 69 = rho 334 from rfl]
    have hb : pmBit 68 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 68 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 69 = rho 334 from rfl, show gapLeafFlag rho 70 = rho 334 from rfl]
    have hb : pmBit 69 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 69 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 70 = rho 334 from rfl, show gapLeafFlag rho 71 = rho 334 from rfl]
    have hb : pmBit 70 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 70 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 71 = rho 334 from rfl, show gapLeafFlag rho 72 = rho 334 from rfl]
    have hb : pmBit 71 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 71 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 72 = rho 334 from rfl, show gapLeafFlag rho 73 = rho 334 from rfl]
    have hb : pmBit 72 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 72 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 73 = rho 334 from rfl, show gapLeafFlag rho 74 = rho 334 from rfl]
    have hb : pmBit 73 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 73 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 74 = rho 334 from rfl, show gapLeafFlag rho 75 = rho 334 from rfl]
    have hb : pmBit 74 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 74 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 75 = rho 334 from rfl, show gapLeafFlag rho 76 = rho 334 from rfl]
    have hb : pmBit 75 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 75 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 76 = rho 334 from rfl, show gapLeafFlag rho 77 = rho 334 from rfl]
    have hb : pmBit 76 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 76 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 77 = rho 334 from rfl, show gapLeafFlag rho 78 = rho 334 from rfl]
    have hb : pmBit 77 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 77 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 78 = rho 334 from rfl, show gapLeafFlag rho 79 = rho 334 from rfl]
    have hb : pmBit 78 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 78 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 79 = rho 334 from rfl, show gapLeafFlag rho 80 = rho 334 from rfl]
    have hb : pmBit 79 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 79 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
