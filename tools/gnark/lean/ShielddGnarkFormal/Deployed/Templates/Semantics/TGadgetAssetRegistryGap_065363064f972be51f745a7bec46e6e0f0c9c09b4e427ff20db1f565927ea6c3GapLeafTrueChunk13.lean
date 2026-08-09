import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLeafTrueChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapLeaf_flag_step_chunk13 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho) :
    ∀ m, 208 ≤ m → m < 224 → gapLeafFlag rho m = trueFactor (leafBits rho) m * gapLeafFlag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r269, r270, r271, r272, r273, r274, r275, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow269 at r269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow270 at r270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow271 at r271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow272 at r272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow273 at r273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow274 at r274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relationRow275 at r275
  intro m hmlo hmhi
  interval_cases m
  · rw [show gapLeafFlag rho 208 = rho 276 from rfl, show gapLeafFlag rho 209 = rho 276 from rfl]
    have hb : pmBit 208 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 208 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 209 = rho 276 from rfl, show gapLeafFlag rho 210 = rho 276 from rfl]
    have hb : pmBit 209 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 209 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 210 = rho 276 from rfl, show gapLeafFlag rho 211 = rho 275 from rfl]
    have hb : pmBit 210 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 210 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r275
  · rw [show gapLeafFlag rho 211 = rho 275 from rfl, show gapLeafFlag rho 212 = rho 274 from rfl]
    have hb : pmBit 211 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 211 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r274
  · rw [show gapLeafFlag rho 212 = rho 274 from rfl, show gapLeafFlag rho 213 = rho 274 from rfl]
    have hb : pmBit 212 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 212 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 213 = rho 274 from rfl, show gapLeafFlag rho 214 = rho 273 from rfl]
    have hb : pmBit 213 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 213 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r273
  · rw [show gapLeafFlag rho 214 = rho 273 from rfl, show gapLeafFlag rho 215 = rho 273 from rfl]
    have hb : pmBit 214 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 214 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 215 = rho 273 from rfl, show gapLeafFlag rho 216 = rho 273 from rfl]
    have hb : pmBit 215 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 215 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 216 = rho 273 from rfl, show gapLeafFlag rho 217 = rho 273 from rfl]
    have hb : pmBit 216 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 216 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 217 = rho 273 from rfl, show gapLeafFlag rho 218 = rho 272 from rfl]
    have hb : pmBit 217 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 217 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r272
  · rw [show gapLeafFlag rho 218 = rho 272 from rfl, show gapLeafFlag rho 219 = rho 272 from rfl]
    have hb : pmBit 218 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 218 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 219 = rho 272 from rfl, show gapLeafFlag rho 220 = rho 271 from rfl]
    have hb : pmBit 219 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 219 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r271
  · rw [show gapLeafFlag rho 220 = rho 271 from rfl, show gapLeafFlag rho 221 = rho 270 from rfl]
    have hb : pmBit 220 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 220 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r270
  · rw [show gapLeafFlag rho 221 = rho 270 from rfl, show gapLeafFlag rho 222 = rho 270 from rfl]
    have hb : pmBit 221 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 221 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 222 = rho 270 from rfl, show gapLeafFlag rho 223 = rho 270 from rfl]
    have hb : pmBit 222 = false := by decide +kernel
    rw [show trueFactor (leafBits rho) 222 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show gapLeafFlag rho 223 = rho 270 from rfl, show gapLeafFlag rho 224 = rho 269 from rfl]
    have hb : pmBit 223 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [leafBits_get rho 223 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r269

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
