import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafTrueChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 192 ≤ m → m < 208 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r276, r277, r278, r279, r280, r281, r282, r283, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow276 at r276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow277 at r277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow278 at r278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow279 at r279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow280 at r280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow281 at r281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow282 at r282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow283 at r283
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 192 = rho 284 from rfl, show gapLeafFlag rho 193 = rho 284 from rfl]
    have hb : pmBit 192 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 192 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 193 = rho 284 from rfl, show gapLeafFlag rho 194 = rho 283 from rfl]
    have hb : pmBit 193 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 193 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r283
  · rw [show gapLeafFlag rho 194 = rho 283 from rfl, show gapLeafFlag rho 195 = rho 282 from rfl]
    have hb : pmBit 194 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 194 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r282
  · rw [show gapLeafFlag rho 195 = rho 282 from rfl, show gapLeafFlag rho 196 = rho 282 from rfl]
    have hb : pmBit 195 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 195 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 196 = rho 282 from rfl, show gapLeafFlag rho 197 = rho 281 from rfl]
    have hb : pmBit 196 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 196 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r281
  · rw [show gapLeafFlag rho 197 = rho 281 from rfl, show gapLeafFlag rho 198 = rho 281 from rfl]
    have hb : pmBit 197 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 197 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 198 = rho 281 from rfl, show gapLeafFlag rho 199 = rho 280 from rfl]
    have hb : pmBit 198 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 198 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r280
  · rw [show gapLeafFlag rho 199 = rho 280 from rfl, show gapLeafFlag rho 200 = rho 280 from rfl]
    have hb : pmBit 199 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 199 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 200 = rho 280 from rfl, show gapLeafFlag rho 201 = rho 279 from rfl]
    have hb : pmBit 200 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 200 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r279
  · rw [show gapLeafFlag rho 201 = rho 279 from rfl, show gapLeafFlag rho 202 = rho 279 from rfl]
    have hb : pmBit 201 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 201 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 202 = rho 279 from rfl, show gapLeafFlag rho 203 = rho 278 from rfl]
    have hb : pmBit 202 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 202 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r278
  · rw [show gapLeafFlag rho 203 = rho 278 from rfl, show gapLeafFlag rho 204 = rho 278 from rfl]
    have hb : pmBit 203 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 203 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 204 = rho 278 from rfl, show gapLeafFlag rho 205 = rho 278 from rfl]
    have hb : pmBit 204 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 204 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 205 = rho 278 from rfl, show gapLeafFlag rho 206 = rho 277 from rfl]
    have hb : pmBit 205 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 205 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r277
  · rw [show gapLeafFlag rho 206 = rho 277 from rfl, show gapLeafFlag rho 207 = rho 277 from rfl]
    have hb : pmBit 206 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 206 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 207 = rho 277 from rfl, show gapLeafFlag rho 208 = rho 276 from rfl]
    have hb : pmBit 207 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 207 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r276

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
