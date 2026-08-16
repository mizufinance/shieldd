import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafTrueChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 80 ≤ m → m < 96 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, r331, r332, r333, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow331 at r331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow332 at r332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow333 at r333
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 80 = rho 334 from rfl, show gapLeafFlag rho 81 = rho 334 from rfl]
    have hb : pmBit 80 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 80 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 81 = rho 334 from rfl, show gapLeafFlag rho 82 = rho 334 from rfl]
    have hb : pmBit 81 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 81 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 82 = rho 334 from rfl, show gapLeafFlag rho 83 = rho 334 from rfl]
    have hb : pmBit 82 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 82 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 83 = rho 334 from rfl, show gapLeafFlag rho 84 = rho 334 from rfl]
    have hb : pmBit 83 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 83 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 84 = rho 334 from rfl, show gapLeafFlag rho 85 = rho 334 from rfl]
    have hb : pmBit 84 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 84 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 85 = rho 334 from rfl, show gapLeafFlag rho 86 = rho 334 from rfl]
    have hb : pmBit 85 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 85 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 86 = rho 334 from rfl, show gapLeafFlag rho 87 = rho 334 from rfl]
    have hb : pmBit 86 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 86 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 87 = rho 334 from rfl, show gapLeafFlag rho 88 = rho 334 from rfl]
    have hb : pmBit 87 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 87 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 88 = rho 334 from rfl, show gapLeafFlag rho 89 = rho 334 from rfl]
    have hb : pmBit 88 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 88 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 89 = rho 334 from rfl, show gapLeafFlag rho 90 = rho 334 from rfl]
    have hb : pmBit 89 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 89 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 90 = rho 334 from rfl, show gapLeafFlag rho 91 = rho 334 from rfl]
    have hb : pmBit 90 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 90 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 91 = rho 334 from rfl, show gapLeafFlag rho 92 = rho 334 from rfl]
    have hb : pmBit 91 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 91 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 92 = rho 334 from rfl, show gapLeafFlag rho 93 = rho 333 from rfl]
    have hb : pmBit 92 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 92 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r333
  · rw [show gapLeafFlag rho 93 = rho 333 from rfl, show gapLeafFlag rho 94 = rho 333 from rfl]
    have hb : pmBit 93 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 93 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 94 = rho 333 from rfl, show gapLeafFlag rho 95 = rho 332 from rfl]
    have hb : pmBit 94 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 94 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r332
  · rw [show gapLeafFlag rho 95 = rho 332 from rfl, show gapLeafFlag rho 96 = rho 331 from rfl]
    have hb : pmBit 95 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 95 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r331

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
