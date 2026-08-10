import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafTrueChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 48 ≤ m → m < 64 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r335, r336, r337, r338, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow335 at r335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow336 at r336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow337 at r337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow338 at r338
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 48 = rho 339 from rfl, show gapLeafFlag rho 49 = rho 338 from rfl]
    have hb : pmBit 48 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 48 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r338
  · rw [show gapLeafFlag rho 49 = rho 338 from rfl, show gapLeafFlag rho 50 = rho 338 from rfl]
    have hb : pmBit 49 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 49 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 50 = rho 338 from rfl, show gapLeafFlag rho 51 = rho 338 from rfl]
    have hb : pmBit 50 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 50 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 51 = rho 338 from rfl, show gapLeafFlag rho 52 = rho 338 from rfl]
    have hb : pmBit 51 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 51 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 52 = rho 338 from rfl, show gapLeafFlag rho 53 = rho 337 from rfl]
    have hb : pmBit 52 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 52 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r337
  · rw [show gapLeafFlag rho 53 = rho 337 from rfl, show gapLeafFlag rho 54 = rho 337 from rfl]
    have hb : pmBit 53 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 53 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 54 = rho 337 from rfl, show gapLeafFlag rho 55 = rho 337 from rfl]
    have hb : pmBit 54 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 54 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 55 = rho 337 from rfl, show gapLeafFlag rho 56 = rho 337 from rfl]
    have hb : pmBit 55 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 55 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 56 = rho 337 from rfl, show gapLeafFlag rho 57 = rho 337 from rfl]
    have hb : pmBit 56 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 56 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 57 = rho 337 from rfl, show gapLeafFlag rho 58 = rho 336 from rfl]
    have hb : pmBit 57 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 57 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r336
  · rw [show gapLeafFlag rho 58 = rho 336 from rfl, show gapLeafFlag rho 59 = rho 336 from rfl]
    have hb : pmBit 58 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 58 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 59 = rho 336 from rfl, show gapLeafFlag rho 60 = rho 335 from rfl]
    have hb : pmBit 59 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 59 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r335
  · rw [show gapLeafFlag rho 60 = rho 335 from rfl, show gapLeafFlag rho 61 = rho 335 from rfl]
    have hb : pmBit 60 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 60 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 61 = rho 335 from rfl, show gapLeafFlag rho 62 = rho 335 from rfl]
    have hb : pmBit 61 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 61 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 62 = rho 335 from rfl, show gapLeafFlag rho 63 = rho 335 from rfl]
    have hb : pmBit 62 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 62 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 63 = rho 335 from rfl, show gapLeafFlag rho 64 = rho 335 from rfl]
    have hb : pmBit 63 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 63 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
