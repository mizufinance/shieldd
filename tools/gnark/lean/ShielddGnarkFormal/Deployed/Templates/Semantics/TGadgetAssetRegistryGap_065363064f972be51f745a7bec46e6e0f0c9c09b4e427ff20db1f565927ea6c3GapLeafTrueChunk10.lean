import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafTrueChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk10 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 160 ≤ m → m < 176 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r290, r291, r292, r293, r294, r295, r296, r297, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow290 at r290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow291 at r291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow292 at r292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow293 at r293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow294 at r294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow295 at r295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow296 at r296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow297 at r297
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 160 = rho 298 from rfl, show gapLeafFlag rho 161 = rho 298 from rfl]
    have hb : pmBit 160 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 160 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 161 = rho 298 from rfl, show gapLeafFlag rho 162 = rho 297 from rfl]
    have hb : pmBit 161 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 161 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r297
  · rw [show gapLeafFlag rho 162 = rho 297 from rfl, show gapLeafFlag rho 163 = rho 296 from rfl]
    have hb : pmBit 162 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 162 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r296
  · rw [show gapLeafFlag rho 163 = rho 296 from rfl, show gapLeafFlag rho 164 = rho 295 from rfl]
    have hb : pmBit 163 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 163 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r295
  · rw [show gapLeafFlag rho 164 = rho 295 from rfl, show gapLeafFlag rho 165 = rho 294 from rfl]
    have hb : pmBit 164 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 164 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r294
  · rw [show gapLeafFlag rho 165 = rho 294 from rfl, show gapLeafFlag rho 166 = rho 294 from rfl]
    have hb : pmBit 165 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 165 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 166 = rho 294 from rfl, show gapLeafFlag rho 167 = rho 294 from rfl]
    have hb : pmBit 166 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 166 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 167 = rho 294 from rfl, show gapLeafFlag rho 168 = rho 294 from rfl]
    have hb : pmBit 167 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 167 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 168 = rho 294 from rfl, show gapLeafFlag rho 169 = rho 293 from rfl]
    have hb : pmBit 168 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 168 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r293
  · rw [show gapLeafFlag rho 169 = rho 293 from rfl, show gapLeafFlag rho 170 = rho 293 from rfl]
    have hb : pmBit 169 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 169 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 170 = rho 293 from rfl, show gapLeafFlag rho 171 = rho 292 from rfl]
    have hb : pmBit 170 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 170 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r292
  · rw [show gapLeafFlag rho 171 = rho 292 from rfl, show gapLeafFlag rho 172 = rho 291 from rfl]
    have hb : pmBit 171 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 171 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r291
  · rw [show gapLeafFlag rho 172 = rho 291 from rfl, show gapLeafFlag rho 173 = rho 291 from rfl]
    have hb : pmBit 172 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 172 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 173 = rho 291 from rfl, show gapLeafFlag rho 174 = rho 291 from rfl]
    have hb : pmBit 173 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 173 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 174 = rho 291 from rfl, show gapLeafFlag rho 175 = rho 290 from rfl]
    have hb : pmBit 174 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 174 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r290
  · rw [show gapLeafFlag rho 175 = rho 290 from rfl, show gapLeafFlag rho 176 = rho 290 from rfl]
    have hb : pmBit 175 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 175 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
