import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafTrueChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk14 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 224 ≤ m → m < 240 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r260, r261, r262, r263, r264, r265, r266, r267, r268, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow260 at r260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow261 at r261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow262 at r262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow263 at r263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow264 at r264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow265 at r265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow266 at r266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow267 at r267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow268 at r268
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 224 = rho 269 from rfl, show gapLeafFlag rho 225 = rho 269 from rfl]
    have hb : pmBit 224 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 224 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 225 = rho 269 from rfl, show gapLeafFlag rho 226 = rho 268 from rfl]
    have hb : pmBit 225 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 225 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r268
  · rw [show gapLeafFlag rho 226 = rho 268 from rfl, show gapLeafFlag rho 227 = rho 267 from rfl]
    have hb : pmBit 226 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 226 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r267
  · rw [show gapLeafFlag rho 227 = rho 267 from rfl, show gapLeafFlag rho 228 = rho 266 from rfl]
    have hb : pmBit 227 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 227 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r266
  · rw [show gapLeafFlag rho 228 = rho 266 from rfl, show gapLeafFlag rho 229 = rho 265 from rfl]
    have hb : pmBit 228 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 228 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r265
  · rw [show gapLeafFlag rho 229 = rho 265 from rfl, show gapLeafFlag rho 230 = rho 265 from rfl]
    have hb : pmBit 229 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 229 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 230 = rho 265 from rfl, show gapLeafFlag rho 231 = rho 264 from rfl]
    have hb : pmBit 230 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 230 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r264
  · rw [show gapLeafFlag rho 231 = rho 264 from rfl, show gapLeafFlag rho 232 = rho 264 from rfl]
    have hb : pmBit 231 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 231 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 232 = rho 264 from rfl, show gapLeafFlag rho 233 = rho 263 from rfl]
    have hb : pmBit 232 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 232 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r263
  · rw [show gapLeafFlag rho 233 = rho 263 from rfl, show gapLeafFlag rho 234 = rho 263 from rfl]
    have hb : pmBit 233 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 233 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 234 = rho 263 from rfl, show gapLeafFlag rho 235 = rho 262 from rfl]
    have hb : pmBit 234 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 234 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r262
  · rw [show gapLeafFlag rho 235 = rho 262 from rfl, show gapLeafFlag rho 236 = rho 262 from rfl]
    have hb : pmBit 235 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 235 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 236 = rho 262 from rfl, show gapLeafFlag rho 237 = rho 262 from rfl]
    have hb : pmBit 236 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 236 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 237 = rho 262 from rfl, show gapLeafFlag rho 238 = rho 261 from rfl]
    have hb : pmBit 237 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 237 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r261
  · rw [show gapLeafFlag rho 238 = rho 261 from rfl, show gapLeafFlag rho 239 = rho 260 from rfl]
    have hb : pmBit 238 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 238 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r260
  · rw [show gapLeafFlag rho 239 = rho 260 from rfl, show gapLeafFlag rho 240 = rho 260 from rfl]
    have hb : pmBit 239 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 239 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
